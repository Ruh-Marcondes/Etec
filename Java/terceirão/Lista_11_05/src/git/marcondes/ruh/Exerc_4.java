package git.marcondes.ruh;

import java.util.Scanner;

// leia 10 números e escreva a média aritmética
// a quantidade de valores pares e de valores ímpares digitados.
public class Exerc_4 {
    public static void main(String[] args){

        Scanner sc = new Scanner(System.in);
        int num[] = new int[10], par = 0,impar = 0;
        for (int i = 0; i < 10 ; i++) {
            System.out.print("Digite um número: ");
            num[i] = Integer.parseInt(sc.nextLine());
        }
        for (int i = 0; i <10 ; i++) {
            System.out.printf("\t | %d |",num[i]);
        }
        System.out.println();
        for (int i = 0; i <10 ; i++) {
            if(num[i]%2 == 0 ) {
                par ++;
            }
            else {
                impar ++;
            }
        }
    }
}
