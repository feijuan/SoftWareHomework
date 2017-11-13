package sh.ssm.po;

public class Member {
    private String idcard;

    private String password;

    private String name;

    private Integer ownerFlag;

    private String homeId;
    
    private String telphone;

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getOwnerFlag() {
        return ownerFlag;
    }

    public void setOwnerFlag(Integer ownerFlag) {
        this.ownerFlag = ownerFlag;
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId;
    }
    
    public void setTelphone(String telphone)
    {
    	this.telphone=telphone;
    }
    
    public String getTelphone()
    {
    	return telphone;
    }

	@Override
	public String toString() {
		return "Member [idcard=" + idcard + ", password=" + password
				+ ", name=" + name + ", ownerFlag=" + ownerFlag + ", homeId="
				+ homeId + ", telphone=" + telphone + "]";
	}
    
}