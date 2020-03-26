package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// ex 7 -

        // Váriaeis
        Scanner sc = new Scanner(System.in);
        int idade,idade2,d;

        System.out.print(" Digite sua idade: ");
        idade = Integer.parseInt(sc.nextLine());
        System.out.print(" Digite a idade da sua mãe: ");
        idade2 = Integer.parseInt(sc.nextLine());
        d = idade2 - idade;
        System.out.println(" A diferença entre as idades é: "+d);
    }
}
