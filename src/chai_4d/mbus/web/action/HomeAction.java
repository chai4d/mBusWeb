package chai_4d.mbus.web.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;

import chai_4d.mbus.map.model.PointName;
import chai_4d.mbus.web.service.HomeService;

public class HomeAction extends BaseAction implements SessionAware
{
    private static final long serialVersionUID = -4025729548366701044L;
    private static final Logger log = LogManager.getLogger(HomeAction.class);

    public static final String sessionKey = "home.pointNames";

    private Map<String, Object> session;

    private List<PointName> pointNames;

    public void setSession(Map<String, Object> session)
    {
        this.session = session;
    }

    @SuppressWarnings("unchecked")
    public String execute() throws Exception
    {
        log.debug("In execute method");

        session.remove(BusPathAction.sessionKey);

        if (session.containsKey(sessionKey))
        {
            pointNames = (List<PointName>) session.get(sessionKey);
        }
        else
        {
            pointNames = HomeService.getPointNames("en");
            session.put(sessionKey, pointNames);
        }

        return SUCCESS;
    }

    public List<PointName> getPointNames()
    {
        return pointNames;
    }

    public void setPointNames(List<PointName> pointNames)
    {
        this.pointNames = pointNames;
    }
}
