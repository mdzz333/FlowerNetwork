package test;
public class Demo{
	
	//int a;//a涓烘垚鍛樺彉閲�
	public static void main(String[] args){
		int intMax = Integer.MAX_VALUE;
		System.out.println(intMax);
		int a,b;
		a = 3;b = 5;
		//寮曞叆杩囨浮鍙橀噺
		int c;
		c = a;
		a = b;
		b = c;
		System.out.println("a="+a+",b="+b);
		
		a = 3;b = 5;
		//鏁板�艰繃澶ф椂锛屽彲鑳戒細鏈夋孩鍑猴紝瓒呭嚭int鑼冨洿锛屾暟鎹細鏀瑰彉
		a = a + b;
		b = a - b;
		a = a - b;
		System.out.println("a="+a+",b="+b);
		
		a = 3;b = 5;
		//浣嶈繍绠楃
		a = a ^ b;
		b = a ^ b;
		a = a ^ b;
		System.out.println("a="+a+",b="+b);
		
		//{int d = 0;}
		//System.out.println("d="+d);
	}
}