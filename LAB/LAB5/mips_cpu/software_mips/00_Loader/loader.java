import java.io.*;
import java.util.*;

public class loader
{
        static String filename = new String();
        static String mainfilename = new String();
        static String subfilename = new String();

        public static void main(String[] args) throws Exception
        {

		System.out.println(" ");
		System.out.println("��������������������������������������������������������������������������");
		System.out.println("����                                                                  ����");
		System.out.println("����    Simple Loader                                                 ����");
		System.out.println("����                                                                  ����");
		System.out.println("����------------------------------------------------------------------����");
		System.out.println("����	Computer Architecture and System Laboratory                   ����");
		System.out.println("����	Department of Electrical Engineering,                         ����");
		System.out.println("����	National Cheng Kung University.                               ����");
		System.out.println("����                                                                  ����");
		System.out.println("����	Chen-Chieh Wang (Jay)                                         ����");
		System.out.println("����	ccwang@mail.ee.ncku.edu.tw                                    ����");
		System.out.println("����	http://caslab.ee.ncku.edu.tw/~jay/                            ����");
		System.out.println("����	2005/08/23                                                    ����");
		System.out.println("����                                                                  ����");
		System.out.println("��������������������������������������������������������������������������");
		System.out.println(" ");

        	String readstring = new String();
		System.out.println("	Please! Entering the Application MIF file name. ");
		System.out.print("	MIF File name = ");
                readstring = readkeying();

                int dot_num = -1;
                for(int i=0; i<readstring.length();i++)
                        if(readstring.charAt(i)=='.')
                                dot_num = i;

                switch(dot_num){
                        case -1:
                                System.out.println("	Error! => <filename> error! ");
                                System.exit(1);
                                break;
                        case 0:
                                System.out.println("	Error! => <filename> error! ");
                                System.exit(1);
                                break;
                        default:
                                mainfilename = readstring.substring(0,dot_num);
                                subfilename = readstring.substring(dot_num+1,readstring.length());;
                                filename = readstring;
                }

                loader();

                System.out.println("	Completed!");

        }


	static void loader(){
            try{

		FileReader sys_mif = new FileReader("system.mif");
		BufferedReader sys_buf = new BufferedReader(sys_mif);
		FileReader usr_mif = new FileReader(filename);
		BufferedReader usr_buf = new BufferedReader(usr_mif);
                FileWriter out_mif = new FileWriter("code.mif");
		String instring;


                out_mif.write("@0000\n");

                while((instring = sys_buf.readLine())!=null)
                	out_mif.write(instring+"\n");

                out_mif.write("\n");
                out_mif.write("@2000\n");

                while((instring = usr_buf.readLine())!=null)
                	out_mif.write(instring+"\n");


		sys_mif.close();
		usr_mif.close();
                out_mif.close();

            }catch(IOException e1){System.out.println("	Error!");
                                   System.exit(1);}
	}

	static public String readkeying() throws IOException{
		String result = new String();
	    	try {
	    		InputStreamReader is = new InputStreamReader(System.in);
	    		BufferedReader br = new BufferedReader(is);
	    		result = br.readLine();
		} catch (IOException e){}

	    	return result;
	}


}