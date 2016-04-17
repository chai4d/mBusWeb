package chai_4d.mbus.json.action;

import org.apache.logging.log4j.ThreadContext;

import chai_4d.mbus.map.util.StringUtil;
import chai_4d.mbus.web.action.BaseAction;

public abstract class BaseJsonAction extends BaseAction
{
    private static final long serialVersionUID = -4665191420336811970L;

    private String uuid;
    private String platform;
    private String model;
    private String version;
    private String manufacturer;

    public String getDeviceInfo()
    {
        String aPlatform = StringUtil.toString(platform, "N/A");
        String aModel = StringUtil.toString(model, "?");
        String aVersion = StringUtil.toString(version, "?");
        String aManufacturer = StringUtil.toString(manufacturer, "?");
        String aUUID = StringUtil.toString(uuid, "?");

        if (aUUID.length() > 5)
        {
            aUUID = aUUID.substring(aUUID.length() - 5);
        }

        return aPlatform + "-" + aModel + "-" + aVersion + "-" + aManufacturer + "-" + aUUID;
    }

    public String execute() throws Exception
    {
        ThreadContext.put("deviceInfo", getDeviceInfo());
        return super.execute();
    }

    public String getUuid()
    {
        return uuid;
    }

    public void setUuid(String uuid)
    {
        this.uuid = uuid;
    }

    public String getPlatform()
    {
        return platform;
    }

    public void setPlatform(String platform)
    {
        this.platform = platform;
    }

    public String getModel()
    {
        return model;
    }

    public void setModel(String model)
    {
        this.model = model;
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        this.version = version;
    }

    public String getManufacturer()
    {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer)
    {
        this.manufacturer = manufacturer;
    }
}
