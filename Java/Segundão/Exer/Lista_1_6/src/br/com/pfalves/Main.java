package br.com.pfalves;

import java.io.IOException;
import java.util.Scanner;

public class Main {

    public static void ex6(){
        /**
        * Elabore um algoritmo que receba o valor de um produto,
        * seu percentual de desconto.
        * Calcule e mostre o preço do produto após o desconto.
        **/
        Scanner sc = new Scanner(System.in);
        double prod,perprod,desc,newprod;
        System.out.println("\n\tDigite o valor do produto: ");
        prod = Double.parseDouble(sc.nextLine());
        System.out.println("\n\tDigite o percentual de aumento do segunte modo " +
                "ex--> 40% 0.40");
        perprod = Double.parseDouble(sc.nextLine());
        // Calculos
        desc = perprod * prod;
        prod -= desc;
        System.out.println("\tO novo valor do produto é: " + prod);
    }
    public static void ex7(){
    /**
    * Desenvolva um algoritmo que receba os valores dos catetos de um triangulo,
    * calcule e mostre o valor da hipotenusa.*/
    Scanner cs = new Scanner(System.in);
    int h,c1,c2;
    System.out.println("\n\tDigite um cateto: ");
    c1 = Integer.parseInt(cs.nextLine());
    System.out.println("\tDigite volor do segundo cateto: ");
    c2 = Integer.parseInt(cs.nextLine());
    h = c1*c1 + c2*c2;
        System.out.println("\tHipotenusa  = " + h);
    }
    public static void ex8(){
    /*
    * Faça um algoritmo que receba o número de horas trabalhadas,
    * o valor do salário mínimo.
    * Calcule e mostre o salário a receber seguindo as regras abaixo:
    * > a. A hora trabalhada vale a metade do salário mínimo;
    * > b. O salário bruto equivale ao número de horas trabalhadas multiplicado pelo
    * >>>> valor da hora trabalhada
    * > c. O imposto equivale a 3% do salário bruto;
    * > d. O salário a receber equivale ao salário bruto menos o imposto
    */
    Scanner sc = new Scanner(System.in);
    int h;
    double salmin,sal,imp;
        System.out.println("\tDigite o num de horas trabalhadas: ");
        h = Integer.parseInt(sc.nextLine());
        System.out.println("\tDigite o valor o valor do salário Minímo");
        salmin = Double.parseDouble(sc.nextLine());
                // contas
        sal = (salmin/2)*h;
        imp = sal * 0.03;
        sal -= imp;
        System.out.println("\tSalário ah receber  = " + sal);
    }
    public static void ex9(){
        /**
         * João recebeu seu salário e precisa pagar duas contas, com as contas estão atrasadas,
         * João terá que pagar 2% de multa sobre cada conta.
         * Desenvolva um algoritmo que calcule e mostre quanto restará do pagamento de
         */
        Scanner sc = new Scanner(System.in);
        double sal, c1,c2;
        System.out.println("\n\t João digite seu salário: ");
        sal = Double.parseDouble(sc.nextLine());
        System.out.println("\tDigite o valor da conta 1: ");
        c1 = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o valor da conta 2: ");
        c2 = Double.parseDouble(sc.nextLine());
        // --->> Contas
        sal -= (((c1*0.02)+c1)+((c2*0.02)+c2));
        System.out.println("\tSalário  = " + sal);
    }
    public static void main(String[] args) throws IOException {
	// Continuação da lista exer  do 6 ao 9;
        Scanner sc = new Scanner(System.in);
        int opc;
        System.out.println("\t Lista um de exers do 6 ao 9 ");
        do {
            System.out.println("");
            System.out.println("\t0.....Sair");
            System.out.println("\t1..... Valor produto");
            System.out.println("\t2..... Triangulo retângulo");
            System.out.println("\t3..... Salário");
            System.out.println("\t4..... João");
            System.out.println("\t Digite sua opc: ");
            opc = Integer.parseInt(sc.nextLine());
            switch (opc){
                case 0:
                    break;
                case 1:
                    ex6();
                    System.out.println("\n\t Press Enter.....");
                    System.in.read();
                    break;
                case 2:
                    ex7();
                    System.out.println("\n\t Press Enter.....");
                    System.in.read();
                    break;
                case 3:
                    ex8();
                    System.out.println("\n\t Press Enter.....");
                    System.in.read();
                    break;
                case 4:
                    ex9();
                    System.out.println("\n\t Press Enter.....");
                    System.in.read();
                    break;
                default:
                    System.out.println("\t Opição Inválida !");
                    break;
            }
        }while (opc!=0);
    }
}
