package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// ex 8 -

        // Váriaveis
        double n1,n2,n3,n4,media;
        String nome;
        Scanner sc = new Scanner(System.in);

        System.out.print(" Digite seu nome: ");
        nome = sc.nextLine();
        nome = Character.toUpperCase(nome.charAt(0))+nome.substring(1);
        System.out.print(nome + " digite suas notas: ");
        n1 = Double.parseDouble(sc.next());
        n2 = Double.parseDouble(sc.next());
        n3 = Double.parseDouble(sc.next());
        n4 = Double.parseDouble(sc.next());

        media = ((n1+n2+n3+n4)/4);
        System.out.println(nome + " Sua media em Matemática é: "+media);
    }
}
