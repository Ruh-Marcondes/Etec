package br.com.pfalves;

import java.security.SecureRandom;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// Criar um vetror de 100 valores e dar tres palpites pro user e ver se acertou

        Scanner sc = new Scanner(System.in);
       int n[] = new int[100];
        //gerando nuns aleatórios
        SecureRandom ale = new SecureRandom();
        // atribuindo valores
        for (int i = 0; i <100 ; i++) {
            n[i] = ale.nextInt(100);
        }
        //palpites do user
        int p[]=new int[3];

        for (int i = 0; i <3 ; i++) {
            System.out.println();
            System.out.println("Digite um numero entre 0 e 100; ");
            p[i] = Integer.parseInt(sc.nextLine());
        }
        for (int i = 0; i < 100; i++) {
            if((n[i] == p[0])|| (n[i] == p[1])||(n[i] == p[2])){
                System.out.println("Você acertou! ");
                System.out.println();
            }else {
                System.out.println("VC  errou!");
                System.out.println();
            }
        }
    }
}
