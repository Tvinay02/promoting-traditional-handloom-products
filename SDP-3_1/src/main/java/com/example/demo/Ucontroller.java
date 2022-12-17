package com.example.demo;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.zip.ZipInputStream;
import org.springframework.util.*;

import javax.persistence.Index;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@MultipartConfig
@Controller
public class Ucontroller {
	public static String uploadDirectory = System.getProperty("user.dir")+"/src/main/webapp/imagedata";
       @Autowired
	   Dao curdope;
       @Autowired
       manufacturerdao mdao;
       @Autowired
	   HttpSession session;
       
	@RequestMapping("/")
	public String basic()
	{
		return "homepage.jsp";
	}
	@RequestMapping("/add")
	public String adddetalis(Uregister ur)
	{
		System.out.println(+ur.getId() +ur.getName());
		curdope.save(ur);
		
		return "login.jsp";
		
	}
	@RequestMapping("/shop")
	public String shoping(ModelMap model)
	{
		List<manufacturer> l= mdao.findAll();
        model.addAttribute("data",l);
	     model.addAttribute("cartCount",cart.cartprod.size());

        session.setAttribute("prodetails", l);
        
        return "Logged_in_product_page.jsp";

	}  
	@RequestMapping("/add1")
	public String checkdetails(@RequestParam("id") int id,@RequestParam("password") String pswd,ModelMap model) throws Exception
	{
	   String password =  curdope.checkdetalis(id);
	  Uregister ur= curdope.findById(id);
	   String name = ur.getNames();
	   System.out.println(password);
	   System.out.println(pswd);
	   if(pswd.equals(password))
	   {
			List<manufacturer> l= mdao.findAll();
	        model.addAttribute("data",l);
	        session.setAttribute("id", id);
	        session.setAttribute("name",name);
	        return "Logged_in_product_page.jsp";
	        

	   }
	   else {
		   model.addAttribute("message","Wrong Password");
		   return "login.jsp";
	   }
	   		
	 }
	@RequestMapping("/manlogin")
	public String login(ModelMap model,@RequestParam("name")String uname,@RequestParam("password")String pwd) {
			if(uname.equals("admin") && pwd.equals("admin")) {
				return "redirect:/manufacture.jsp";
			}
			else
			{
				   model.addAttribute("message","Wrong Password");
                   return"manufacturerlogin.jsp";
			}
	}
	@RequestMapping("/manufacture")
	public String manufacture(ModelMap model,manufacturer man ,@RequestParam("img") MultipartFile file,@RequestParam("id") int mid) throws IOException 
	{	
		StringBuilder fileName =  new StringBuilder();
		String filename= man.getId() + file.getOriginalFilename().substring(file.getOriginalFilename().length()-5);
		Path fileNameAndPath = Paths.get(uploadDirectory,filename);
		Files.write(fileNameAndPath,file.getBytes());
		man.setImage(filename);
		mdao.save(man);
		List<manufacturer> l= mdao.findAll();
        model.addAttribute("data",l);
        return "Logged_in_product_page.jsp";
		
	}
	
	@RequestMapping("/logout")
	  public String logout() {
	    session.invalidate();
	    cart.cartprod=null;
	    return "redirect:/";
	  }
	   @RequestMapping("/product/{id}")
	   public String sproduct(@PathVariable("id")int id,ModelMap model)
	   {
		   List<manufacturer> imagename = (List<manufacturer>)mdao.findAll();
		    manufacturer m=null;
		    for(int i=0;i<imagename.size();i++) {
		      if(imagename.get(i).getId() == id) {
		        m=imagename.get(i);
		        break;
		      }
		    }
		   model.addAttribute("cartCount",cart.cartprod.size());
		   model.addAttribute("img", m);
		   return "/sproduct.jsp";
	   }
	   @GetMapping("/cart/{id}")
	   public String cart(@PathVariable int id) {
		   List<manufacturer> imagename = (List<manufacturer>)mdao.findAll();

	     manufacturer m=null;
	     for(int i=0;i<imagename.size();i++) {
	       if(imagename.get(i).getId()==id) {
	         m=imagename.get(i);
	       }
	     }
	     cart.cartprod.add(m);
	     return "redirect:/shop";
	   }
	   @GetMapping("/cart")
	   public String cartof(ModelMap model) {
		 model.addAttribute("cart",cart.cartprod);
	     model.addAttribute("cartCount",cart.cartprod.size());
	     model.addAttribute("total",cart.cartprod.stream().mapToDouble(manufacturer::getPrice).sum());

	     System.out.println();
	     return "cart.jsp";
	   }

}

