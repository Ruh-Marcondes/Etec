package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// exe 4 -

        Scanner sc = new Scanner(System.in);
        float num;
        int num2;
        System.out.print("Digite um numero: ");
        num =  Float.parseFloat(sc.nextLine());

        num2 = Math.round(num);
        System.out.println(num2);
    }
}
