package br.com.pfalves.visao.QuetaoFriends;

import br.com.pfalves.Main;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QFriends_3 {

    public static JFrame qf4 = new JFrame();

    private JPanel QFriends_3;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public QFriends_3() {
        btn3.addMouseListener(new MouseAdapter() {
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
        btn1.addMouseListener(new MouseAdapter() {
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
        qf4.setContentPane(new QFriends_4().getQFriends_4());
        qf4.setVisible(true);
        QFriends_2.qf3.setVisible(false);
        qf4.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        qf4.pack();
    }

    public JPanel getQFriends_3(){
        return QFriends_3;
    }
}
