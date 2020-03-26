package br.com.pfalves;

import java.util.Scanner;

import static java.lang.Math.sqrt;

public class Main {

    public static void main(String[] args) {
	// ex 1 - CALCULO IMC

        Scanner sc = new Scanner(System.in);
                // Váriaveis

        String nome;
        float altura,massa,IMC;
        int idade;

        // entrada de dados

        System.out.print("Digite seu nome:\t");
        nome = sc.nextLine();
         System.out.print(nome +" digite sua idade:\t");
        idade = Integer.parseInt(sc.nextLine());
        System.out.print(nome+" digite sua altura:\t");
        altura = Float.parseFloat(sc.nextLine());
        System.out.print(nome+" digite sua massa:\t");
        massa = Float.parseFloat(sc.nextLine());

        // Calculo
        IMC = (massa/(altura*altura));
        System.out.println(nome+", idade: "+ idade+", altura:  "+altura+", massa: "+massa+", IMC = "+IMC);
    }
}
