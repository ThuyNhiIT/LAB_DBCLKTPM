/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;


import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/hello")
public class HelloWorldController {
    @RequestMapping("/showForm")
    public String showForm() {
       return "helloworld-form";}
    
    @RequestMapping("/processForm")
    public String processForm()	{
       return "helloworld";}
    

    
    @RequestMapping("/processFormVersionTwo")
    public String letShoutDude(HttpServletRequest request, Model model) {
        //read the request parameter form html form
        String theName = request.getParameter("studentName");
        //convert data to all caps
        theName= theName.toUpperCase();
      
        //create the message 
        String result = "Yo! " + theName;
        //add message to Model
        model.addAttribute("message", result);
        //return the name of view (jsp page)
        return "helloworld";}
    
    @RequestMapping("processFormVersionThree")
    public String processFormVersionThree(
	@RequestParam("studentName") String theName, Model model) {
        theName= theName.toUpperCase();
        //create the message 
        String result = "Hey My Friend from v3!  " + theName;
        //add message to MOdel
        model.addAttribute("message", result);
        //return the name of view (jsp page)
        return "helloworld";}
}
