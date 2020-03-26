package br.com.pfalves;

import java.security.SecureRandom;
import java.util.Random;

public class Cartela {

    // Gereando uma matriz 5x5
      private int m[][] = new int[5][5];

    //Método construtor
    public Cartela(){
        // Lógica para preencher a cartela
        SecureRandom ale = new SecureRandom(); // Gera num ALEatórios sem repetir

        for (int i = 0; i < 5 ; i++) {
            for (int j = 0; j < 5; j++) {
             m[i][j] = ale.nextInt(75) + 1; // gerar um numero aleatório de 0 até 74 somando um vira 1 a 75
            }
        }

        m[2][2] = 89;
        imprimir();
    }
    private void imprimir(){
        System.out.println();
        System.out.println("Cartela Nova pra VC <#>");
        System.out.println("------------ '-' -------------");

        for (int i = 0; i < 5 ; i++) {
            for (int j = 0; j < 5 ; j++) {
                if ((i==2) && (j==2)){
                    System.out.printf("['-'] ");
                }else{
                    System.out.printf("[%3d] " , m[i][j]);
                }
            }
            System.out.println();
        }
    }
}
