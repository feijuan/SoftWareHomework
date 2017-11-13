package sh.ssm.tcp;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.Socket;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import sh.ssm.util.HttpUtil;


/** 
 * 多线程处理socket接收的数�?
 * @author zhangzhongwen 
 * 
 */ 

public class SocketOperate extends Thread{  
     private Socket socket;  
     public SocketOperate(Socket socket) {  
        this.socket=socket;  
     }  
     @SuppressWarnings("unused")
     public static void sendGet(String url,String param)
     {
         String result = "";
         BufferedReader in = null;
         try {
             String urlNameString = url + "?" + param;
             URL realUrl = new URL(urlNameString);
             URLConnection connection = realUrl.openConnection();
             connection.setRequestProperty("accept", "*/*");
             connection.setRequestProperty("connection", "Keep-Alive");
             connection.setRequestProperty("user-agent",
                     "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
             connection.connect();
             /*Map<String, List<String>> map = connection.getHeaderFields();*/
             in = new BufferedReader(new InputStreamReader(
                     connection.getInputStream()));
             String line;
             while ((line = in.readLine()) != null) {
                 result += line;
             }
         } catch (Exception e) {

                     e.printStackTrace();
         }
         finally {
             try {
                 if (in != null) {
                     in.close();
                 }
             } catch (Exception e2) {
                 e2.printStackTrace();
             }
         }

     }
    @SuppressWarnings("unused")
    public void run()  
     {  
         try{     
                InputStream in= socket.getInputStream();
                BufferedInputStream bi=new BufferedInputStream(in);
                byte[] buffer=new byte[1024];
              	int len;
                String data=null;
             while((len=bi.read(buffer))!=-1) {
                 data=new String(buffer, 0, len); 
               // sendGet("http://localhost:8088/SmartHome/fule.action", "data=" + data);  
                String url = "http://localhost:8080/SmartHome/tcpdata.action";
                Map<String,String> map = new HashMap<String,String>();
                map.put("data", data);     
                String result = HttpUtil.sendPost(url, map);
             }
            }catch(IOException ex){     
  
            }   
     } 
     
}  