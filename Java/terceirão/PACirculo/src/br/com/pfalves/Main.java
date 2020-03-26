package br.com.pfalves;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
	// Exe 2


        // Variavel p=2.pi.r
        // ac = pi.r*=r
        Scanner sc = new Scanner(System.in);

        float diametro,r,per, ac;
        System.out.print("Digite o *DIAMETRO* da Circunferencia:\t");
        diametro = Float.parseFloat(sc.nextLine());
        r = diametro/2;
        per = (float) (2*Math.PI*r);
        ac = (float)(Math.PI*Math.pow(r,2));
        System.out.println("O perimetro dessa circunferencia é:  " +per+" a area: "+ac+" e o raio: "+r);


    }
}
