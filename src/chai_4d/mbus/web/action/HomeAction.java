package chai_4d.mbus.web.action;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.model.PointName;
import chai_4d.mbus.web.service.HomeService;

public class HomeAction extends BaseAction
{
    private static final long serialVersionUID = -4025729548366701044L;
    private static final Logger log = LogManager.getLogger(HomeAction.class);

    private List<PointName> pointNames;

    public String execute() throws Exception
    {
        log.debug("In execute method");
        pointNames = HomeService.getPointNames("en");
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
