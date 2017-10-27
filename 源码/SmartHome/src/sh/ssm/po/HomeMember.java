package sh.ssm.po;

public class HomeMember {
    private String idcardNum;

    private String homeId;

    private String username;

    private String password;

    private String telephone;

    private Integer ownerFlag;

    public String getIdcardNum() {
        return idcardNum;
    }

    public void setIdcardNum(String idcardNum) {
        this.idcardNum = idcardNum == null ? null : idcardNum.trim();
    }

    public String getHomeId() {
        return homeId;
    }

    public void setHomeId(String homeId) {
        this.homeId = homeId == null ? null : homeId.trim();
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public Integer getOwnerFlag() {
        return ownerFlag;
    }

    public void setOwnerFlag(Integer ownerFlag) {
        this.ownerFlag = ownerFlag;
    }
}