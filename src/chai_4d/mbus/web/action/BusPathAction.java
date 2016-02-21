package chai_4d.mbus.web.action;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.interceptor.SessionAware;

import chai_4d.mbus.map.model.BusChoice;
import chai_4d.mbus.web.service.BusPathService;

public class BusPathAction extends BaseAction implements SessionAware
{
    private static final long serialVersionUID = -7156189988833412324L;
    private static final Logger log = LogManager.getLogger(BusPathAction.class);

    public static final String sessionKey = "busPath.busChoices";

    private Map<String, Object> session;

    private String source;
    private String sourceId;
    private String destination;
    private String destinationId;
    private String choiceNo;
    private List<BusChoice> busChoices;

    public void setSession(Map<String, Object> session)
    {
        this.session = session;
    }

    @SuppressWarnings("unchecked")
    public String execute() throws Exception
    {
        log.debug("In execute method");

        if (session.containsKey(sessionKey))
        {
            busChoices = (List<BusChoice>) session.get(sessionKey);
        }
        else
        {
            busChoices = BusPathService.calcBusChoices(sourceId, destinationId);
            session.put(sessionKey, busChoices);
        }

        return SUCCESS;
    }

    public String getSourceId()
    {
        return sourceId;
    }

    public void setSourceId(String sourceId)
    {
        this.sourceId = sourceId;
    }

    public String getDestinationId()
    {
        return destinationId;
    }

    public void setDestinationId(String destinationId)
    {
        this.destinationId = destinationId;
    }

    public List<BusChoice> getBusChoices()
    {
        return busChoices;
    }

    public void setBusChoices(List<BusChoice> busChoices)
    {
        this.busChoices = busChoices;
    }

    public String getSource()
    {
        return source;
    }

    public void setSource(String source)
    {
        this.source = source;
    }

    public String getDestination()
    {
        return destination;
    }

    public void setDestination(String destination)
    {
        this.destination = destination;
    }

    public String getChoiceNo()
    {
        return choiceNo;
    }

    public void setChoiceNo(String choiceNo)
    {
        this.choiceNo = choiceNo;
    }
}
