package br.com.pfalves;

import java.util.Scanner;

public class Principal {

    public static void main(String[] args) {
        Percurso p = new Percurso();
      Custos c = new Custos();

        Scanner sc = new Scanner(System.in);
        int opc;
        do {
            System.out.println(" Escolha uma opc: ");
            System.out.println(" 0.... Sair");
            System.out.println(" 1.... Cadartrar Percurso");
            System.out.println(" 2.... Listar Percurso");
            System.out.println(" 3.... Calcular Viagem");
            System.out.println(" >>>> ");
            opc = Integer.parseInt(sc.nextLine());
            // ----------------------------- /  ----------------------------------------
            switch (opc)
            {
                case 1:
                    p.cadastrarPercurso();
                    System.out.println();
                    System.out.println(" -------------------------------------------- ");
                    System.out.println();
                    break;
                case 2:
                    p.listarPercurso();
                    System.out.println();
                    System.out.println(" -------------------------------------------- ");
                    System.out.println();
                    break;
                case 3:
                   c.calcularViagem(p);
                    System.out.println();
                    System.out.println(" -------------------------------------------- ");
                    System.out.println();
                    break;
                case 0:
                    break;
                    default:
                        System.out.println("Escolhe Direito");
            }

        }while(opc != 0);

    }
}
