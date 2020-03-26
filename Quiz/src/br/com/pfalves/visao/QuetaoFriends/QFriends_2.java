package br.com.pfalves.visao.QuetaoFriends;

import br.com.pfalves.Main;
import br.com.pfalves.visao.QuetaoGlee.QGlee_1;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QFriends_2 {
    public static JFrame qf3 = new JFrame();

    private JPanel QFriends_2;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public QFriends_2() {
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos++;
                proximaq();
            }
        });
        btn2.addMouseListener(new MouseAdapter() {
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

        qf3.setContentPane(new QFriends_3().getQFriends_3());
        qf3.setVisible(true);
       QFriends_1.qf2.setVisible(false);
        qf3.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        qf3.pack();
    }

    public JPanel getQFriends_2(){
    return QFriends_2;
    }
}