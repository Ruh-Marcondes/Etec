import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        /*
        * Peça ao usuário que digite um número inteiro. Em seguida, guarde no array
            “tabuada” todos os valores da tabuada do número digitado. Crie também o array
            cubo e guarde nele todos os valores da tabuada elevados ao cubo. Depois, exiba
            todos os Arrays na tela, separando por “Tabuada” e Tabuada ao Cubo”.*/

        int[] tabuada = new int[10];
        int[] tabuadaAocubo = new int[10];
        int num;
        Scanner sc = new Scanner(System.in);

        System.out.println("Digite um número: ");
        num = Integer.parseInt(sc.nextLine());

        for (int i = 0; i < tabuada.length; i++) {
            tabuada[i] = num*i;
            tabuadaAocubo[i] = (int) Math.pow(tabuada[i],3);
        }

        System.out.println("Tabuada: "+num);
        for (int i = 0; i < tabuada.length; i++) {
            System.out.println(" "+i+" X "+num+" = "+tabuada[i]);
        }
        System.out.println("Tabuada ao Cubo: ");
        for (int i = 0; i < tabuadaAocubo.length; i++) {
            System.out.println(tabuada[i]+"³ = "+ tabuadaAocubo[i]);
        }
    }
}
