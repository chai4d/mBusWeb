package chai_4d.mbus.web.action;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.model.PointName;
import chai_4d.mbus.web.service.HomeService;

public class JSONAction extends BaseAction
{
    private static final long serialVersionUID = -2804891508299782800L;
    private static final Logger log = LogManager.getLogger(JSONAction.class);

    private List<PointName> pointNames;

    public String doExecute() throws Exception
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
