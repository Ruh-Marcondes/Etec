package br.com.pfalves;

import br.com.pfalves.Visão.FrmVeia;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
	// jogo Da Velha Virtual

        JFrame tela = new JFrame();
        tela.setContentPane(new FrmVeia().getPanelVeia());
        tela.setTitle("Jogo da veia");
        tela.setVisible(true);
        tela.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        tela.pack();
    }
}