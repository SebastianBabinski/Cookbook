package babinski.sebastian.controller;

import babinski.sebastian.entity.Recipe;
import babinski.sebastian.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
public class RecipeController {

    @Autowired
    RecipeRepository recipeRepository;

    @RequestMapping("/recipes")
    public String showMealTypes() {
        return "recipe/mealTypes";
    }

    @GetMapping("/add")
    public String addRecipe(Model model) {
        model.addAttribute("recipe", new Recipe());
        return "recipe/addRecipe";
    }

    @PostMapping("/add")
    public String saveRecipe(@Valid Recipe recipe, BindingResult result) {
        if(result.hasErrors()) {
            return "recipe/addRecipe";
        }
        recipeRepository.save(recipe);
        return "recipe/success";
    }

    @RequestMapping("/recipes/all")
    public String allRecipes() {
        return "recipe/all";
    }

    @ModelAttribute("recipes")
    public List<Recipe> getAllRecipes() {
        return recipeRepository.findAll();
    }

}
