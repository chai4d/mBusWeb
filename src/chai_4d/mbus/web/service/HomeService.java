package chai_4d.mbus.web.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.bean.MapDbBean;
import chai_4d.mbus.map.model.PointName;

public class HomeService
{
    private static final Logger log = LogManager.getLogger(HomeService.class);

    public static List<PointName> getPointNames(String lang)
    {
        log.debug("Load Point Name (" + lang + ")");

        return MapDbBean.loadPointName(lang);
    }

    public static List<PointName> getPointNames(String lang, String query)
    {
        log.debug("Load Point Name (" + lang + ", " + query + ")");

        return MapDbBean.loadPointName(lang, query);
    }
}
