package sh.ssm.po;

public class DeviceStatus {
    private Integer id;

    private String homeId;

    private Integer homeArea;

    private String deviceName;

    private String deviceStatue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId == null ? null : homeId.trim();
    }

    public Integer getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(Integer homeArea) {
        this.homeArea = homeArea;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName == null ? null : deviceName.trim();
    }

    public String getDeviceStatue() {
        return deviceStatue;
    }

    public void setDeviceStatue(String deviceStatue) {
        this.deviceStatue = deviceStatue == null ? null : deviceStatue.trim();
    }
}