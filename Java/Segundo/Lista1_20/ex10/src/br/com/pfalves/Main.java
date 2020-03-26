package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// Ex 10

        // váriaeis

        Scanner sc = new Scanner(System.in);
        double peso,masa,gravidade;

        gravidade = 9.8*17/100;

        System.out.println("Digite sua masa: ");
        masa = Double.parseDouble(sc.nextLine());

        peso = gravidade*masa;
        System.out.println("Seu eso na lua seria: "+peso);

    }
}
