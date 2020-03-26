package br.com.pfalves.visao.QuetaoFriends;

import br.com.pfalves.Main;
import br.com.pfalves.visao.Inicio;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QFriends_1 {

    public static JFrame qf2 = new JFrame();

    private JPanel QFriends_1;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public JPanel getQFriends_1() {
        return QFriends_1;
    }

    public QFriends_1() {
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos ++;
                proximaq();
            }
        });
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq();
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq();
            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq();
            }
        });
    }

    private void proximaq() {
        qf2.setContentPane(new QFriends_2().getQFriends_2());
        qf2.setVisible(true);
        Inicio.frame.setVisible(false);
        qf2.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        qf2.pack();
    }
}
