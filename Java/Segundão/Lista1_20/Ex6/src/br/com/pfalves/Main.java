package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        // Exe 6 -

        Scanner sc = new Scanner(System.in);
        // Variavéis
        int a,a2,a3,m;
        double d;
        System.out.print(" Digite um valor: \t");
        a = Integer.parseInt(sc.nextLine());

        a2 = a*2;
        a3 = a*3;
        m = a2*a3;
        d = a2/a3;

        System.out.println(" O dobro de "+a+" é: "+a2+" e o triplo é: "+ a3);
        System.out.println(" A multiplicação entre o dobro e o triplo é: "+m+" a divisão do dobro e do triplo é: "+d);

    }
}
