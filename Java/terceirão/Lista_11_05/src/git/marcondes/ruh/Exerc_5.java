package git.marcondes.ruh;

import sun.awt.windows.WPrinterJob;

import java.util.Scanner;

public class Exerc_5 {
    static int nct;
    static   Scanner exo = new Scanner(System.in);

   public  static void main(String[] args) {

       int f1 = 0,f2 = 0,f3 = 0,f4 = 0;
       ler();
       while (nct>=0 && nct <=100){
           if (nct <= 25){
                f1++;
           }else {
               if (nct <= 50){
                    f2 ++;
               }else {
                   if (nct <= 75){
                        f3++;
                   }else {
                        f4++;
                   }
               }
           }
           ler();
       }
       System.out.printf("\t Números 0-25: %d; \n\t Números 26-50: %d; \n\t Números 51-75: %d; \n\t Números 76-100: %d.",f1,f2,f3,f4);
   }
    public static void ler(){
        System.out.print("数値を入力してください(Sūji o nyūryoku shite kudasai)\n Por favor digite um número: "
        );
        nct = Integer.parseInt(exo.nextLine());
    }
}
