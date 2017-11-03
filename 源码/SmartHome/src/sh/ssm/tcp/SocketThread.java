package sh.ssm.tcp;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

/** 
 * socket 线程类 
 * @author zhangzhongwen 
 * 
 */  
public class SocketThread extends Thread{  
    private ServerSocket serverSocket = null;  
      
    public SocketThread(){  
        try {  
            if(serverSocket==null){  
                this.serverSocket = new ServerSocket(9999);
                System.out.println("socket start");  
            }  
        } catch (Exception e) {  
            System.out.println("SocketThread创建socket服务出错");  
            e.printStackTrace();  
        }  
  
    }  
      
    public void run(){  
        while(!this.isInterrupted()){  
            try {  
                Socket socket = serverSocket.accept();  
                  
                if(socket!=null && !socket.isClosed()){     
                    //处理接受的数据  
                    new SocketOperate(socket).start();  
                }  
                socket.setSoTimeout(30000);         
            }catch (Exception e) {  
                e.printStackTrace();  
            }  
        }  
    }  
      
    public void closeSocketServer(){  
       try {  
            if(serverSocket!=null && !serverSocket.isClosed())  
            {  
             serverSocket.close();  
            }  
       } catch (IOException e) {  
  
        e.printStackTrace();  
       }  
     }  
        
      
}  