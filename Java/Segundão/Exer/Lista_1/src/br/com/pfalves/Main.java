package br.com.pfalves;

import java.util.Scanner;

import java.io.IOException;

public class Main {

    public static void ex(){
         Scanner sc = new Scanner(System.in);
        System.out.println("\t\tAntecessor & Sucessor");
        int a;
         System.out.println("Digite um valor: ");
         a = Integer.parseInt(sc.nextLine());
         a -=1;
         System.out.println("Antecessor: "+a);
         a += 2;
         System.out.println("Sucessor: "+a);
    }
    public static void ex2(){
         /*
         * O Preço de um automóvel é calculado pela soma do preço de fábrica,
         * mais o preçodos impostos (45% do preço de fábrica),
         * mais o percentual dos vendedores (28% dopreço de fábrica). */
         Scanner sc = new Scanner(System.in);
         double pr,inp,per;
        System.out.println();
        System.out.println("\t Digite o preço de fábrica: ");
        pr = Double.parseDouble(sc.nextLine());
        // Contas
        inp = pr *45/100;
        per = pr *28/100;
        pr += inp+per;
        //final
        System.out.println("Preço do Automovél: "+pr);
    }
    public static void ex3(){
    /*
    * Elabore um algoritmo que faça a leitura de dois números reais,
    *  calcule as operações de soma, subtração, divisão e multiplicação;
    */
    Scanner sc = new Scanner(System.in);
    double a,b,c;
        System.out.println();
        System.out.println("\t Digite o valor 1: ");
        a = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o valor 2: ");
        b = Double.parseDouble(sc.nextLine());
        //contas
        System.out.println();
        c = a+b;
        System.out.println("\t Soma: "+ a +" + "+ b +" = "+ c);
        c = a-b;
        System.out.println("\t Sub: "+ a +" - "+ b +" = "+ c);
        c = a*b;
        System.out.println("\t Mult: "+ a +" * "+ b +" = "+ c);
        c = a/b;
        System.out.println("\t Div: "+ a +" / "+ b +" = "+ c);
    }
    public static void ex4(){
    /*
    * Faça um algoritmo que receba 4 números calcule,
    *  imprima a soma e a média dos números lidos
    */
    Scanner sc = new Scanner(System.in);
     double a,b,c,d,e;
        System.out.println("\t Digite o valor 1: ");
     a = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o valor 2: ");
     b = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o valor 3: ");
     c = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o valor 4: ");
     d = Double.parseDouble(sc.nextLine());
     // contas
        e = a + b + c + d;
        System.out.println("e = " + e);
        e = e/4;
        System.out.println("e = " + e);
    }
    public static void ex5(){
        /*
        * Faça um algoritmo que receba o salário mínimo atual,
        * valor do salário de um funcionário.
        * Calcule e mostre a quantidade de salários mínimos.
        */
        Scanner sc = new Scanner(System.in);
        double a,salmin, salfun;
        System.out.println();
        System.out.println("\t Digite o salário minímo: ");
        salmin = Double.parseDouble(sc.nextLine());
        System.out.println("\t Digite o salário do Funcionário: ");
        salfun = Double.parseDouble(sc.nextLine());
        // contas
        a = salfun/salmin;
        System.out.println("O funcionário recebe " + a + " salários mínimos...");
    }
    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int opc;
        System.out.println(" \t\t Lista de Ex_1");
        System.out.println("Press Enter...");
        System.in.read();
        System.out.println(" ");
        do{
        System.out.println("\tEscolha o exercicio: ");
        System.out.println("\t0.... Sair");
        System.out.println("\t1.... Antecessor&Sucessor");
        System.out.println("\t2.... Preço Automovél");
        System.out.println("\t3.... Mini Calc");
        System.out.println("\t4.... Media e soma");
        System.out.println("\t5.... Saláro Funcionário");
        opc = Integer.parseInt(sc.nextLine());

        switch (opc) {
            case 1:
                ex();
                System.out.println("Press Enter...");
                System.in.read();
            break;
            case 2:
                ex2();
                System.out.println("Press Enter...");
                System.in.read();
                break;
            case 3:
                ex3();
                System.out.println("Press Enter...");
                System.in.read();
                break;
            case 4:
                ex4();
                System.out.println("Press Enter...");
                System.in.read();
                break;
            case 5:
                ex5();
                System.out.println("Press Enter...");
                System.in.read();
                break;
        }
    }while(opc!=0);
    }
}
