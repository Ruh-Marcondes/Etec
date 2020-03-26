package br.com.pfalves.visao;

import br.com.pfalves.Main;
import br.com.pfalves.visao.QuetaoFriends.QFriends_1;
import br.com.pfalves.visao.QuetaoGlee.QGlee_1;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class Inicio {
    public static JFrame frame = new JFrame(); // Tela da pergunta 1

    private JPanel P1;
    private JPanel P2;
    private JButton Friends;
    private JButton glee;

    public Inicio() {
        glee.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos =0;
                frame.setContentPane(new QGlee_1().getJPGlee1());
                frame.setVisible(true);
                frame.pack();

            }
        });
        Friends.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos = 0;
                frame.setContentPane(new QFriends_1().getQFriends_1());
                frame.setVisible(true);
                frame.pack();
            }
        });
    }



    public JPanel getquiz() {
        return P1;
    }
}