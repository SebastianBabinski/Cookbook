package babinski.sebastian.controller;

import babinski.sebastian.entity.User;
import babinski.sebastian.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;


@Controller
public class AppController {

    @Autowired
    private UserRepository userRepo;

    @RequestMapping("")
    public String viewHomePage() {
        return "index";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "user/registerForm";
    }

    @PostMapping("/register")
    public String processRegister(@Valid User user, BindingResult result) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);

        if (result.hasErrors()) {
            return "user/registerForm";
        } else {
            userRepo.save(user);
        }
        return "user/registerSuccess";
    }

    @GetMapping("/login")
    public String showLoginForm () {
        return "user/login";
    }
}
