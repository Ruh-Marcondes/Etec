package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// exe 3-
        // variavel

        Scanner sc = new Scanner(System.in);
        float num,r2,r3;

        // cod
        System.out.print(" Digite um numero ");
        num = Float.parseFloat(sc.nextLine());
        r2 = (float) Math.sqrt(num);
        r3 = (float) Math.cbrt(num);
        System.out.println(" A raiz quadrada do numero "+num+" é: "+r2+" \n E a raiz cubica é: "+r3);
    }
}
