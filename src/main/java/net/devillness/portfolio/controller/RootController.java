package net.devillness.portfolio.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller(value = "dev.yhp.fin.controllers.RootController")
@RequestMapping(value = "/")
public class RootController {
    @RequestMapping(value = "/", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String indexGet() {
        return "root/index";
    }

    // TODO: POST Controller, Mybatis Mapper, Create DB, Service
    // https://837477.github.io/
}