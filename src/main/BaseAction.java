package main;

import com.opensymphony.xwork2.ActionSupport;

public abstract class BaseAction extends ActionSupport
{
    private static final long serialVersionUID = 693253150429468473L;

    private String message;

    public String getMessage()
    {
        return message;
    }

    public void setMessage(String message)
    {
        this.message = message;
    }
}
