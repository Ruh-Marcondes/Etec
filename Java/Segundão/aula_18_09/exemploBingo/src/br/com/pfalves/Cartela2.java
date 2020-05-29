package br.com.pfalves;

import java.security.SecureRandom;
import java.util.Random;

public class Cartela2 {

    // Gereando uma matriz 5x5
    private int m[][] = new int[5][5];

    //Método construtor
    public Cartela2() {
        // Lógica para preencher a cartela
        SecureRandom ale = new SecureRandom(); // Gera num ALEatórios sem repetir

        for (int i = 0; i < 5; i++) {
            m[i][0] = ale.nextInt(15) + 01;    // gera entre 1 e 15
            m[i][1] = ale.nextInt(15) + 16;
            m[i][2] = ale.nextInt(15) + 31;
            m[i][3] = ale.nextInt(15) + 46;
            m[i][4] = ale.nextInt(15) + 61;
        }
        m[2][2] = 89;
    imprimiir();

}
    private void imprimiir(){
        System.out.println();
        System.out.println("Cartela Nova pra VC <#> 2");
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
