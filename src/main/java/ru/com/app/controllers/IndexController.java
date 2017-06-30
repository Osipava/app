package ru.com.app.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ru.com.app.dao.UsersDao;
import ru.com.app.model.UsersEntity;
import ru.com.app.service.UsersService;

import java.util.List;


/**
 * Created by saurabh on 2/10/17.
 */

@Controller
public class IndexController {

    @Autowired
    UsersService usersService;


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userJSP", new UsersEntity());
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping(value = "/viewemp/{pageid}")
    public ModelAndView list(@PathVariable int pageid) {
        int total = 5;
        if (pageid == 1) {
        } else {
            pageid = (pageid - 1) * total + 1;
        }
        List<UsersEntity> list = usersService.getUsersEntityByPage(pageid, total);

        return new ModelAndView("viewemp", "list", list);
    }


    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String getAdd(Model model) {

        model.addAttribute("userJSP", new UsersEntity());

        return "addUser";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String postAdd(@ModelAttribute("userJSP") UsersEntity user) {
       usersService.addUsersEntity(user);

        return "redirect:/viewemp/1";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
       usersService.deleteUsersEntity(id);

        return "redirect:/viewemp/1";
    }

    @RequestMapping(value = "/editUser/{id}", method = RequestMethod.GET)
    public String getEdit(@PathVariable("id") int id, Model model) {
        UsersEntity usersEntity = usersService.getUsersEntityById(id);
        model.addAttribute("user", usersEntity);

        return "editUser";
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String postEdit(@ModelAttribute("user") UsersEntity user) {
        usersService.editUsersEntity(user);
        return "redirect:/viewemp/1";
    }

    @RequestMapping(value = "/searchUser", method = RequestMethod.GET)
    public ModelAndView getSearch(Model model) {
        model.addAttribute("searchName", new UsersEntity());
        return new ModelAndView("viewemp");
    }

    @RequestMapping(value = "/searchUser", method = RequestMethod.POST)
    public ModelAndView postSearch(@ModelAttribute("searchName") String name) {
        List<UsersEntity> list = usersService.getUsersEntityByName(name);
        return new ModelAndView("resultSearchUser", "listUsers", list);
    }
}

