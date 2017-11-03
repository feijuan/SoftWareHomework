import java.sql.Blob;


public class CommonUtil
{
	/**
	 * @param
	 * @param 
	 * return
	 * 
	 * */
	public static double random1(double a,double b){
		double a1;
		a1=a+Math.random()*(b-a);
		String resule=String.format("%.1f", a1);
		double resule1=Double.valueOf(resule);
		return resule1;
	}
	public static int random(int a,int b){
		double a1;
		int b1;
		a1=a+Math.random()*(b-a)+0.5;
		b1=(int)a1;
		return b1;
	}

	public static String getHomeid()
	{
		String homeid=null;
		
		if(random(1,2)==1)
		{
			homeid="370782199511282618";
		}
		else
		{
			homeid="370782199511282619";
		}
		System.out.println(homeid);
		return homeid;
	}

}
