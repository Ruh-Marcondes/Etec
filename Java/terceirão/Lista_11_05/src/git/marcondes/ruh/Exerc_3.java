package git.marcondes.ruh;

import sun.awt.windows.WPrinterJob;

import java.util.Scanner;

//tabuada
public class Exerc_3 {
    public  static void main(String[] args){

       Scanner sc = new Scanner(System.in);
       int opc = 0;
       do{
           System.out.println("\nDigite qual tabuda você quer: ");
           System.out.print("OBS: para encerrar digite -1: ");
           opc = Integer.parseInt(sc.nextLine());
           if (opc <0){
               break;
           }else {
           System.out.printf("\tTabuada: %s",opc);
               for (int i = 0; i <=10 ; i++) {
                   System.out.printf("\n \t %d X %d = %d", opc,i,opc*i);
               }
           }
       }  while(true);
    }
}
