package br.com.pfalves;

import br.com.pfalves.visao.Inicio;

import javax.swing.*;

public class Main {
    public static int acertos = 0; // Variável global para acertos

    public static void main(String[] args) {
        JFrame tela = new JFrame();
        tela.setContentPane(new Inicio().getquiz());
        tela.setSize(300,200);
        tela.setTitle(">>>>>> Quiz para a aula de LPOO <<<<<");
        tela.setVisible(true);
        tela.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        tela.pack();


    }

}
