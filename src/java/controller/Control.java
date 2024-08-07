/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import config.Connextion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.Student;
import org.springframework.jdbc.core.JdbcTemplate;
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
public class Control {

    Connextion con = new Connextion();
    JdbcTemplate jdbctemp = new JdbcTemplate(con.Connect());
    ModelAndView mav = new ModelAndView();
    List datas;

    @RequestMapping("index.htm")
    public ModelAndView Lists() {
        String sql = "select * from student";
        datas = this.jdbctemp.queryForList(sql);
        System.out.println(datas);
        mav.addObject("StudentList", datas);
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping(value = "regist.htm", method = RequestMethod.GET)
    public ModelAndView AddStudent() {
        mav.addObject(new Student());
        mav.setViewName("regist");
        return mav;
    }

    @RequestMapping(value = "regist.htm", method = RequestMethod.POST)
    public ModelAndView AddStudent(Student s) {
        String sql = "insert into student values(?,?,?,?,?)";
        this.jdbctemp.update(sql, s.getId(), s.getFullnames(), s.getGender(), s.getAge(), s.getDepartment());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "edit.htm", method = RequestMethod.GET)
    public ModelAndView Edit(@RequestParam("id") int id) {
        String sql = "select * from student where id = ?";
        datas = this.jdbctemp.queryForList(sql, id);
        mav.addObject("EditStud", datas);
        mav.setViewName("edit");
        return mav;
    }

    @RequestMapping(value = "edit.htm", method = RequestMethod.POST)
    public ModelAndView Editing(Student s) {
        String sql = "update student set fullnames = ?, gender = ?, age = ?, department = ? where id = ?";
        this.jdbctemp.update(sql, s.getFullnames(), s.getGender(), s.getAge(), s.getDepartment(), s.getId());
        return new ModelAndView("redirect:/index.htm");
    }
    

    @RequestMapping("delete.htm")
    public ModelAndView Delete(@RequestParam("id") int id) {
        String sql = "delete from student where id = ?";
        this.jdbctemp.update(sql, id);
        return new ModelAndView("redirect:/index.htm");
    }
}
