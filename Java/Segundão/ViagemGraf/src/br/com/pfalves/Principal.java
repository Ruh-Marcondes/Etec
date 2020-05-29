package br.com.pfalves;

import javax.swing.*;

public class Principal {

    public static void main(String[] args) {
        Percurso perc = new Percurso();
        Custos custos = new Custos();
        int op;
        do{
            op = Integer.parseInt(JOptionPane.showInputDialog("Digite: \n1-Cadastrar Percurso" +
                    "\n2-Listar Percurso\n3-Calcular Viagem\n0-SAIR "));
            switch (op){
                case 1:
                    perc.cadastrarPercurso();
                    break;
                case 2:
                    perc.listarPercurso();
                    break;
                case 3:
                    custos.calcularViagem(perc);
                    break;
                case 0:
                    break;
            }
        }
        while (op!=0);
    }
}

