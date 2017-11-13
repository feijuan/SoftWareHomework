package sh.ssm.po;

public class SensorStatus {
    private Integer id;

    private String homeId;

    private Integer homeArea;

    private Integer sensorType;

    private String status;

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

    public Integer getSensorType() {
        return sensorType;
    }

    public void setSensorType(Integer sensorType) {
        this.sensorType = sensorType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}