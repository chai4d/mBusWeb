package chai_4d.mbus.web.action;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class BusPathAction extends BaseAction
{
    private static final long serialVersionUID = -7156189988833412324L;
    private static final Logger log = LogManager.getLogger(BusPathAction.class);

    private String sourceId;
    private String destinationId;

    public String execute() throws Exception
    {
        log.debug("In execute method");
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
}
