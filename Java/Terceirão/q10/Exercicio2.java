import java.util.Scanner;

public class Exercicio2 {
    public static void main(String[] args) {
        /*
        * Crie um array com dez valores. Depois, exiba de forma separada, os valores
        * que estiverem em índices pares e os que estiverem em índices ímpares.
        *  */

        int[] valores = new int[10];
        Scanner sc = new Scanner(System.in);

        for (int i = 0; i < valores.length; i++) {
            System.out.println(" Digite um número: ");
            valores[i] = Integer.parseInt(sc.nextLine());
        }

        System.out.println("Pares: ");
        for (int i = 0; i < valores.length; i++) {
            if(valores[i] %2 == 0){
                System.out.println(valores[i]);
            }
        }
            System.out.println("Impares: ");
        for (int i = 0; i < valores.length; i++){
            if(valores[i] %2 != 0){
                System.out.println(valores[i]);
            }
        }
    }
}
