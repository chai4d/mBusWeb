package chai_4d.mbus.web.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import chai_4d.mbus.map.bean.MapDbBean;
import chai_4d.mbus.map.model.PointName;
import chai_4d.mbus.map.util.StringUtil;

public class HomeService
{
    private static final Logger log = LogManager.getLogger(HomeService.class);

    public static List<PointName> getPointNames(String lang)
    {
        String aLang = StringUtil.toString(lang);
        log.debug("Load Point Name (" + aLang + ")");

        return MapDbBean.loadPointName(aLang);
    }

    public static List<PointName> getPointNames(String lang, String query)
    {
        String aLang = StringUtil.toString(lang);
        String aQuery = StringUtil.toString(query);
        log.debug("Load Point Name (" + aLang + ", " + aQuery + ")");

        return MapDbBean.loadPointName(aLang, aQuery);
    }
}
