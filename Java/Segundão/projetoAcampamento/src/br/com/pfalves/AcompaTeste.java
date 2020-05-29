package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	Acampamento acampante = new Acampamento();
	Scanner sc = new Scanner(System.in);
        System.out.println("Escreva o nome do(a) acampante: ");
        acampante.nome = sc.nextLine();
        System.out.println("Idade do(a) acampante: ");
        acampante.idade = Integer.parseInt(sc.nextLine());
        acampante.imprimir();
        acampante.separarEquipe();
        acampante.imprimir();
    }
}
