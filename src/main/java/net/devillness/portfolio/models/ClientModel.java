package net.devillness.portfolio.models;

import net.devillness.portfolio.exceptions.InvalidClientException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ClientModel {
    private static final List<String> IP_WHITELIST;

    static {
        ArrayList<String> ipWhitelist = new ArrayList<>();
        ipWhitelist.add("127.0.0.1");
        ipWhitelist.add("58.149.46.252");
        ipWhitelist.add("118.41.233.116");
        IP_WHITELIST = Collections.unmodifiableList(ipWhitelist);
    }

    private static class RegExp {
        public static final String IP = "((^\\s*((([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))\\s*$)|(^\\s*((([0-9A-Fa-f]{1,4}:){7}([0-9A-Fa-f]{1,4}|:))|(([0-9A-Fa-f]{1,4}:){6}(:[0-9A-Fa-f]{1,4}|((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){5}(((:[0-9A-Fa-f]{1,4}){1,2})|:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3})|:))|(([0-9A-Fa-f]{1,4}:){4}(((:[0-9A-Fa-f]{1,4}){1,3})|((:[0-9A-Fa-f]{1,4})?:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){3}(((:[0-9A-Fa-f]{1,4}){1,4})|((:[0-9A-Fa-f]{1,4}){0,2}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){2}(((:[0-9A-Fa-f]{1,4}){1,5})|((:[0-9A-Fa-f]{1,4}){0,3}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(([0-9A-Fa-f]{1,4}:){1}(((:[0-9A-Fa-f]{1,4}){1,6})|((:[0-9A-Fa-f]{1,4}){0,4}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:))|(:(((:[0-9A-Fa-f]{1,4}){1,7})|((:[0-9A-Fa-f]{1,4}){0,5}:((25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)(\\.(25[0-5]|2[0-4]\\d|1\\d\\d|[1-9]?\\d)){3}))|:)))(%.+)?\\s*$))";
        public static final String USER_AGENT = "^([0-9a-zA-Z()\\-_\\[\\];:,./ ]{8,500})$";
        public static final String REQUEST_URI = "^(?=.{1,500}$)(\\/)([0-9a-zA-Z~%\\-_+.]{1,}(\\/)?)*$";
    }

    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private final String ip;
    private final String userAgent;
    private final String requestUri;

    public static boolean checkIp(String s) {
        return s != null && s.matches(RegExp.IP);
    }

    public static boolean checkUserAgent(String s) {
        return s != null && s.matches(RegExp.USER_AGENT);
    }

    public static boolean checkRequestUri(String s) {
        return s != null && s.matches(RegExp.REQUEST_URI);
    }

    public ClientModel(HttpServletRequest request, HttpServletResponse response) throws InvalidClientException {
        this.request = request;
        this.response = response;
        if (ClientModel.IP_WHITELIST.stream().anyMatch(x -> x.equals(this.request.getRemoteAddr()))) {
            this.ip = this.request.getRemoteAddr();
        } else {
            this.ip = request.getHeader("CF-Connecting-IP");
        }

        this.userAgent = request.getHeader("User-Agent");
        this.requestUri = request.getRequestURI();

        if (!ClientModel.checkIp(this.ip) ||
                !ClientModel.checkUserAgent(this.userAgent) ||
                !ClientModel.checkRequestUri(this.requestUri)) {
            throw new InvalidClientException(String.format("IP : %s\nUser Agent : %s\nRequest URI : %s",
                    this.ip == null ? "(NULL)" : this.ip,
                    this.userAgent == null ? "(NULL)" : this.userAgent,
                    this.requestUri == null ? "(NULL)" : this.requestUri));
        }
    }

    public HttpServletRequest getRequest() {
        return this.request;
    }

    public HttpServletResponse getResponse() {
        return this.response;
    }

    public String getIp() {
        return this.ip;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getRequestUri() {
        return this.requestUri;
    }

    public String getUrlPrefix() {
        String port;
        if ((this.request.getScheme().equals("http") && this.request.getServerPort() == 80) ||
                (this.request.getScheme().equals("https") && this.request.getServerPort() == 443)) {
            port = "";
        } else {
            port = String.format(":%d", this.request.getServerPort());
        }
        return String.format("%s://%s%s%s",
                this.request.getScheme(),
                this.request.getServerName(),
                port,
                this.request.getContextPath());
    }
}
