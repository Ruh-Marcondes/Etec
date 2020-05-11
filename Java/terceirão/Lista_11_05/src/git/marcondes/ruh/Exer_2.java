package git.marcondes.ruh;

import sun.awt.windows.WPrinterJob;

import java.util.Random;

public class Exer_2 {
    public static void main(String[] args){

        // Num ale até 20 end stop when 20 is print
        Random num = new Random();
        int n;
        do{
            n = num.nextInt(21);
            System.out.println(n);

        }while (n !=20);
    }
}
