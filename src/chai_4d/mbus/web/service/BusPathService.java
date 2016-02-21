package chai_4d.mbus.web.service;

import java.util.Date;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.bean.MapDbBean;
import chai_4d.mbus.map.model.BusChoice;
import chai_4d.mbus.map.util.DateUtil;
import chai_4d.mbus.map.util.StringUtil;

public class BusPathService
{
    private static final Logger log = LogManager.getLogger(BusPathService.class);

    public static List<BusChoice> calcBusChoices(String sourceId, String destinationId)
    {
        long sId = StringUtil.toLong(sourceId);
        long dId = StringUtil.toLong(destinationId);
        Date timeToGo = DateUtil.getCurrentTime();
        log.debug("Calc. Bus Choices (" + sId + ", " + dId + ")");

        return MapDbBean.calcBusChoices(sId, dId, timeToGo);
    }
}
