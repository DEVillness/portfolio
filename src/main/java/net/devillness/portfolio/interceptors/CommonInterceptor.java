package net.devillness.portfolio.interceptors;

import net.devillness.portfolio.exceptions.InvalidClientException;
import net.devillness.portfolio.models.ClientModel;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CommonInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws InvalidClientException {
        ClientModel clientModel = new ClientModel(request, response);
        request.setAttribute("clientModel", clientModel);
        return true;
    }
}
