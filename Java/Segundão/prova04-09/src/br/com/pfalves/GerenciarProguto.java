package br.com.pfalves;

import br.com.pfalves.view.FrmProduto;

import javax.swing.*;

public class GerenciarProguto {

    public static void main(String[] args) {
	// Prova
        JFrame tela = new JFrame();
        tela.setContentPane(new FrmProduto().getPanel());
        tela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        tela.setTitle("Movimentação Produto");
	 tela.pack();
        tela.setVisible(true);
    }
}
