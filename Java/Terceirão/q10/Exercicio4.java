import java.util.Scanner;

public class Exercicio4 {
    public static void main(String[] args) {
        /*
        * Crie um programa que recebe um array de inteiros positivos e substitui seus
           elementos de valor ímpar por 1 e os pares por 0*/

        int[] recebernum = new int[10];
        Scanner sc = new Scanner(System.in);

        System.out.println(" Digite 10 numeros: ");
        for (int i = 0; i < recebernum.length; i++) {
            recebernum[i] = Integer.parseInt(sc.nextLine());
        }
        for (int i = 0; i < recebernum.length; i++) {
            if(recebernum[i] %2 == 0) {
                recebernum[i] = 0;
            }
        }
        for (int i = 0; i < recebernum.length; i++) {
            if(recebernum[i] %2 != 0) {
                recebernum[i] = 1;
            }
        }

        for (int i = 0; i < recebernum.length; i++) {
            System.out.println(recebernum[i]);
        }
    }
}

