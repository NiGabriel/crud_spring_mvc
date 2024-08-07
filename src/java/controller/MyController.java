/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author HP
 */
@Controller
public class MyController {
  
    @RequestMapping(path = "/result.htm", method = RequestMethod.POST)
    public ModelAndView getN(@RequestParam("name") String name) {
        ModelAndView mv = new ModelAndView();
        System.out.println("Received name: " + name);
        mv.addObject("Myn", name);
     
        mv.setViewName("result");
        System.out.println("ModelAndView: " + mv);
        return mv;
    }

//    @RequestMapping(value = "/index.htm")
//    public ModelAndView display() {
//        ModelAndView mv = new ModelAndView();
//        mv.setViewName("index");
//        return mv;
//    }
    
}
