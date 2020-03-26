package br.com.pfalves;

import br.com.pfalves.visao.CaixaTela;

import javax.swing.*;

public class GerenciarCaixa {

    public static void main(String[] args) {
	// Cód pra abrir janena

    JFrame tela = new JFrame();
    tela.setContentPane(new CaixaTela().getPanelCaixa());
    tela.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    tela.pack();
    tela.setVisible(true);
    }
}
