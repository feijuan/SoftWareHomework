


import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.PrintWriter;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.border.BevelBorder;

import net.sf.json.JSONObject;

public class TCPClient extends JFrame { // 创建类继承JFrame类
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PrintWriter writer; // 声明PrintWriter类对象
	Socket socket; // 声明Socket对象
	private JTextArea ta = new JTextArea(); // 创建JtextArea对象
	private JTextField tf = new JTextField(); // 创建JtextField对象
	Container cc; // 声明Container对象
	
	public TCPClient(String title) { // 构造方法
		super(title); // 调用父类的构造方法
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		cc = this.getContentPane(); // 实例化对象

		final JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBorder(new BevelBorder(BevelBorder.RAISED));
		getContentPane().add(scrollPane, BorderLayout.CENTER);
		scrollPane.setViewportView(ta);		
		cc.add(tf, "South"); // 将文本框放在窗体的下部
		tf.addActionListener(new ActionListener() {
			// 绑定事件
			public void actionPerformed(ActionEvent e) {
				// 将文本框中信息写入流
				writer.println(getString(tf.getText()));
				// 将文本框中信息显示在文本域中
				ta.append(getString(tf.getText()) + '\n');
				ta.setSelectionEnd(getString(tf.getText()).length());
				tf.setText(""); // 将文本框清空
			}
		});
	}
	public static String getString(String Text)
	{
	
	    HashMap<String ,JSONObject> map=new HashMap<>();
	    map.put("1", getjsonObject());
	    map.put("2", getjsonObject());
	    
		return map.get(Text).toString();   
	}
	public static JSONObject getjsonObject()
	{
		/*1:温度   2：湿度  3：光照  4：烟雾
		 * 
		 * */
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("homeid",CommonUtil.getHomeid());
		jsonObject.put("bedroom",setHomeJson());
		jsonObject.put("kitchen",setHomeJson());
		jsonObject.put("livingroom",setHomeJson());
		jsonObject.put("time",df.format(new Date()));
		
		return jsonObject;
	}
	public static JSONObject setHomeJson()
	{
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("1", CommonUtil.random1(15, 30));
		jsonObject.put("2", CommonUtil.random1(40, 60));
		jsonObject.put("3", CommonUtil.random1(300, 750));
		jsonObject.put("4", CommonUtil.random1(160, 220));
		return jsonObject;
	}
	private void connect() { // 连接套接字方法
		ta.append("尝试连接\n"); // 文本域中提示信息
		try { // 捕捉异常
			socket = new Socket("10.175.248.219", 9999); // 实例化Socket对象
			writer = new PrintWriter(socket.getOutputStream(), true);
			ta.append("完成连接\n"); // 文本域中提示信息
		} catch (Exception e) {
			e.printStackTrace(); // 输出异常信息
		}
	}
	
	public static void main(String[] args) { // 主方法
		TCPClient clien = new TCPClient("向服务器送数据"); // 创建本例对象
		clien.setSize(500, 500); // 设置窗体大小
		clien.setVisible(true); // 将窗体显示
		clien.connect(); // 调用连接方法
	}
}
