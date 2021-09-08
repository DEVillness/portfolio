package net.devillness.portfolio.controller;

import net.devillness.portfolio.entities.MessageEntity;
import net.devillness.portfolio.services.RootService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "dev.yhp.fin.controllers.RootController")
@RequestMapping(value = "/")
public class RootController {
    private final RootService rootService;

    @Autowired
    public RootController(RootService rootService) {
        this.rootService = rootService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String indexGet() {
        return "root/index";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST, produces = MediaType.TEXT_HTML_VALUE)
    public String indexPost(MessageEntity messageEntity) {
        this.rootService.insertMessage(messageEntity);
        return "root/index";
    }
    // https://837477.github.io/
}