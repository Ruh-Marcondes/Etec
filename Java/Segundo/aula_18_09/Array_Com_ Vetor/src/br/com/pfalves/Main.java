package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	    // Arrays - Vetor e Matriz

        //Guardar 10 valores inteiros (vetor)
        int n[] = new int[10];
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite os valores");

        // Receber valores
        for (int i = 0; i < 10; i++) {
            System.out.println("Elemento: "+(i+1));
            n[i] = Integer.parseInt(sc.nextLine());
        }

        // Exibir valores
        for (int i = 0; i < 10; i++) {
            System.out.println("Elemento n["+ i +"] = "+n[i]);
        }
    }
}
