package sh.ssm.tcp;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class SocketListener implements ServletContextListener{
    private SocketThread socketThread;
    public void contextDestroyed(ServletContextEvent arg) {
        if(socketThread!=null && !socketThread.isInterrupted()) {
            socketThread.closeSocketServer();
            socketThread.interrupt();
        }
    }
    public void contextInitialized(ServletContextEvent arg) {
        if(socketThread==null)
        {
            //新建线程类
            socketThread=new SocketThread();
            //启动线程
            socketThread.start();
        }
    }
}