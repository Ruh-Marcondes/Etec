import java.util.Scanner;

public class Exercicio1 {
    public static void main(String[] args) {
        String[] nomes = new String[5];
        Scanner sc = new Scanner(System.in);

        for (int i = 0; i < nomes.length ; i++) {
            System.out.println("Digite um nome: ");
            nomes[i] = sc.nextLine();
        }
        for (int i = 0; i < nomes.length; i++) {
            System.out.println(nomes[i]);
        }
    }
}
