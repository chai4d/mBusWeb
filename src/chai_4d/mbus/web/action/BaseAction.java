package chai_4d.mbus.web.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.ThreadContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport implements ServletRequestAware, SessionAware
{
    private static final long serialVersionUID = 693253150429468473L;

    private static final String[] HEADERS_TO_TRY = {
        "X-Forwarded-For",
        "Proxy-Client-IP",
        "WL-Proxy-Client-IP",
        "HTTP_X_FORWARDED_FOR",
        "HTTP_X_FORWARDED",
        "HTTP_X_CLUSTER_CLIENT_IP",
        "HTTP_CLIENT_IP",
        "HTTP_FORWARDED_FOR",
        "HTTP_FORWARDED",
        "HTTP_VIA",
        "REMOTE_ADDR" };

    protected HttpServletRequest httpRequest;
    protected Map<String, Object> sessionMap;
    protected String message;

    public static String getClientIpAddress(HttpServletRequest request)
    {
        for (String header : HEADERS_TO_TRY)
        {
            String ip = request.getHeader(header);
            if (ip != null && ip.length() != 0 && !"unknown".equalsIgnoreCase(ip))
            {
                return ip;
            }
        }
        return request.getRemoteAddr();
    }

    public abstract String doExecute() throws Exception;

    public String execute() throws Exception
    {
        if (httpRequest != null)
        {
            HttpSession httpSession = httpRequest.getSession();
            if (httpSession != null)
            {
                ThreadContext.put("sessionId", httpSession.getId());
            }
            ThreadContext.put("clientIpAddress", getClientIpAddress(httpRequest));
        }
        return doExecute();
    }

    public void setServletRequest(HttpServletRequest httpRequest)
    {
        this.httpRequest = httpRequest;
        if (this.httpRequest != null)
        {
            try
            {
                this.httpRequest.setCharacterEncoding("UTF-8");
            }
            catch (Exception e)
            {
            }
        }
    }

    public void setSession(Map<String, Object> sessionMap)
    {
        this.sessionMap = sessionMap;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }
}
