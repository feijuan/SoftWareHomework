package sh.ssm.po;

public class DataTranser {
  private int sensorId;
  private String areaNameString;
  private String sensorTypeString;
  private String data;
  private String collecttime;
  public void setCollecttime(String collecttime){
	  this.collecttime=collecttime;
  }
  public String getCollecttime(){
	  return collecttime;
  }
  public void setSensorId(int sensorId)
  {
	  this.sensorId=sensorId;
  }
  public int getSensorId()
  {
	  return sensorId;
  }
  public void setAreaNameString(String areaString)
  {
	  this.areaNameString=areaString;
  }
  public String getAreaNameString()
  {
	  return areaNameString;
  }
  public void setSensorTypeString(String sensorTypeString){
	  this.sensorTypeString=sensorTypeString;
  }
  public String getSensorTypeString(){
	  return sensorTypeString;
  }
  public void setData(String data){
	  this.data=data;
  }
  public String getData(){
	  return data;
  }
}
