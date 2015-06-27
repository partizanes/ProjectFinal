package main.by.bigsoft.project.controller;

import main.by.bigsoft.project.persistence.IUserDao;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

/* Controller used for handling application specific requests  */

@Controller
public class ApplicationController {

    private static Logger logger = Logger.getLogger(ApplicationController.class);

    @Autowired
    private IUserDao userDao;

    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public String getHomePage(Model model, Principal principal) {

        // get the active user
        String username = principal.getName();
        //UserEntity user = userDao.getUserByUsername(username);

        logger.info("Home with user '" + username + "'");

        model.addAttribute("username", username);

        return "home";
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String getTestPage(Model model, Principal principal) {

        logger.info("getIndexPage");

        return "index";
    }

}
