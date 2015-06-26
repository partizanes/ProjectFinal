package main.by.bigsoft.project.controller;

import main.by.bigsoft.project.form.Registration;
import main.by.bigsoft.project.model.UserEntity;
import main.by.bigsoft.project.persistence.IUserDao;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;


/* Controller used for handling authentication and registration requests */

@Controller
public class AuthController {

    private static Logger logger = Logger.getLogger(AuthController.class);

    @Autowired
    private IUserDao userDao;

    @Autowired
    @Qualifier("registrationValidator")
    private Validator validator;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout,
            Model model, HttpServletRequest req) {

        if (error != null) {
            model.addAttribute("error", "Неправильное имя пользователя или пароль");
        }

        if (logout != null) {
            req.getSession().invalidate();
            model.addAttribute("msg", "Вы успешно вышли из системы!");
        }
        return "login";

    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String getLogoutPage(Model model, HttpServletRequest req) {
        req.getSession().invalidate();

        return "logout";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String getRegister(Model model, HttpServletRequest req) {

        // provide a new registration form to the user
        model.addAttribute("registration", new Registration());

        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String postRegister(
            @Valid Registration registration,
            BindingResult bindingResult, Model model) {

        // validate the registration form submitted
        validator.validate(registration, bindingResult);
        if (bindingResult.hasErrors()) {
            logger.info("Регистрация неудачна. Отображение ошибок...");
            return "register";
        }

        // registration was successfully validated, now persist the new user's data
        logger.info("Регистрация завершена. Сохранение информации о новом пользователе.");

        UserEntity newUser = registration.createUser();
        userDao.addUser(newUser);

        logger.info("Пользователь успешно добавлен.");

        // to the login page
        return "redirect:login";
    }
}
