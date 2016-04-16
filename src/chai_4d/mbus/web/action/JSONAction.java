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

    public static final String sessionKey = "json.pointNames";

    private List<PointName> pointNames;

    @SuppressWarnings("unchecked")
    public String doExecute() throws Exception
    {
        log.debug("In execute method");

        if (sessionMap.containsKey(sessionKey))
        {
            pointNames = (List<PointName>) sessionMap.get(sessionKey);
        }
        else
        {
            pointNames = HomeService.getPointNames("en");

            // TODO -- put some mock up data
            if (pointNames.size() == 0)
            {
                pointNames.add(new PointName(1, "Name-1", "Name-1"));
                pointNames.add(new PointName(2, "Name-2", "Name-2"));
                pointNames.add(new PointName(3, "Name-3", "Name-3"));
                pointNames.add(new PointName(4, "Name-4", "Name-4"));
                pointNames.add(new PointName(5, "Name-5", "Name-5"));
                pointNames.add(new PointName(6, "Name-6", "Name-6"));
            }

            sessionMap.put(sessionKey, pointNames);
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
