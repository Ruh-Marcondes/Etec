package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// ex 9 -

        // Váriaeis

        Scanner sc = new Scanner(System.in);
        double p,a,l,c;

        System.out.print(" Digite a largura: ");
        l = Double.parseDouble(sc.nextLine());
        System.out.print(" Digite o comprimento: ");
        c = Double.parseDouble(sc.nextLine());

        p = 2*l + 2*c;
        a = c *l;
        System.out.println(" A area e o perimetro do retangulo são respectivamente: "+a+", "+p);
    }
}
