package chai_4d.mbus.web.action;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.model.BusChoice;
import chai_4d.mbus.web.service.BusPathService;

public class BusPathAction extends BaseAction
{
    private static final long serialVersionUID = -7156189988833412324L;
    private static final Logger log = LogManager.getLogger(BusPathAction.class);

    public static final String sessionKey = "busPath.busChoices";

    private String source;
    private String sourceId;
    private String destination;
    private String destinationId;
    private String choiceNo;
    private List<BusChoice> busChoices;
    private String busNo;

    @SuppressWarnings("unchecked")
    public String doExecute() throws Exception
    {
        log.debug("In execute method");

        if (sessionMap.containsKey(sessionKey))
        {
            busChoices = (List<BusChoice>) sessionMap.get(sessionKey);
        }
        else
        {
            busChoices = BusPathService.calcBusChoices(sourceId, destinationId);
            sessionMap.put(sessionKey, busChoices);
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

    public String getBusNo()
    {
        return busNo;
    }

    public void setBusNo(String busNo)
    {
        this.busNo = busNo;
    }
}
