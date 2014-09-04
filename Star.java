import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;


public class Star {

	/**
	 * @param args
	 * @throws IOException 
	 */
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		int i, m, o = 1, p=1, k, j, buf = 0, s, f=30, e=27, ns = 0;
		BufferedReader br= new BufferedReader(new InputStreamReader(System.in));
   	 	System.out.println("Enter the number of steps :");
   		String val=br.readLine();
   		m=Integer.parseInt(val);
   		e=27 - (m-1)*2;
   		System.out.println("ROCK");
   		for(i=1;i<=m;i++){
   			
   			for(k=0;k<f;k++){
   				System.out.print(" ");
   			}
   			f--;
   			
   			for(j=0;j<o;j++){
   				System.out.print("*");
   			}
   			o+=2;
   			System.out.println();
   		}
   		
   		ns = m*4+1;
   		for(i=m;i>=0;i--){
   			for(s=0;s<e+1;s++){
   				System.out.print(" ");
   				
   			}
   			e++;
   			
   			for(j=ns;j>0;j--){
   				System.out.print("*");
   			}
   			ns-=2;
   			System.out.println();
   		}
   		
   		e--;
   		ns+=4;
   		for(i=1;i<=m;i++){
   			
   				for(k=0;k<e;k++){
   					System.out.print(" ");
   				}
   				e--;
   			
   				for(j=0;j<ns;j++){
   					System.out.print("*");
   				}
   				ns+=2;
   				System.out.println();
   		}
   		
   		o=o-2;
   		for(i=m;i>=1;i--){
   			for(s=0;s<f+1;s++){
   				System.out.print(" ");
   				
   			}
   			f++;
   			
   			for(j=o;j>0;j--){
   				System.out.print("*");
   			}
   			o-=2;
   			System.out.println();
   		}
   	
	}

}
