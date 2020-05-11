package git.marcondes.ruh;

import javax.swing.*;

public class Exer_1 {
    public static void main(String[] args) {

        // mostrar todos os anos que a copa aconteceu
        // 1930 init 1
        // ñ - 1942 e 1946 II Guerra Mundial

        for (int i = 1930; i <= 2018; i += 4) {
            if (i == 1958 || i == 1962 || i == 1970 || i == 1994 || i == 2002) {
                System.out.printf("\t Brasil ganhou em %d, Vai Brasil ", i);
            } else {
                if (i == 1942 || i == 1946) {
                    System.out.println("II Guerra Mundial");
                } else {
                    System.out.print("\t " + i);
                }
            }
        }
    }
}
