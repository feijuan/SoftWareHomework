package sh.ssm.po;

public class Sensor {
    private Integer sensorId;

    private Integer roomId;

    private String sensorType;

    private String buidTime;

    private String remark;
    
    private String homeId;

    public Integer getSensorId() {
        return sensorId;
    }
    

    public void setSensorId(Integer sensorId) {
        this.sensorId = sensorId;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getSensorType() {
        return sensorType;
    }

    public void setSensorType(String sensorType) {
        this.sensorType = sensorType == null ? null : sensorType.trim();
    }

    public String getBuidTime() {
        return buidTime;
    }

    public void setBuidTime(String buidTime) {
        this.buidTime = buidTime == null ? null : buidTime.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
    
    public String getHomeId()
    {
    	return homeId;
    }
    
    public void setHomeId(String homeId)
    {
    	this.homeId=homeId;
    }
}