package net.devillness.portfolio.controller;

import net.devillness.portfolio.enums.MessageResult;
import net.devillness.portfolio.models.ClientModel;
import net.devillness.portfolio.services.SecurityService;
import net.devillness.portfolio.vos.MessageVo;
import net.devillness.portfolio.services.RootService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller(value = "dev.yhp.fin.controllers.RootController")
@RequestMapping(value = "/")
public class RootController {
    private final RootService rootService;
    private final SecurityService securityService;

    @Autowired
    public RootController(RootService rootService, SecurityService securityService) {
        this.rootService = rootService;
        this.securityService = securityService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET, produces = MediaType.TEXT_HTML_VALUE)
    public String indexGet() {
        return "root/index";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST, produces = MediaType.TEXT_HTML_VALUE)
    public String indexPost(@RequestAttribute("clientModel") ClientModel clientModel,
                            MessageVo messageVo,
                            HttpServletRequest request) {
        this.rootService.insertMessage(messageVo);
        if (messageVo.getResult() != MessageResult.SUCCESS) {
            this.securityService.putIllegalLog(clientModel, messageVo);
        }
        request.setAttribute("messageResult", messageVo.getResult());
        return "root/index";
    }
}