package br.com.pfalves.visao.QuetaoFriends;

import br.com.pfalves.Main;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QFriends_5 {
    private JPanel QFriends_5;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public JPanel getQFriends_5(){
        return QFriends_5;
    }
    public QFriends_5() {
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos++;
                fim();
            }
        });
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
    }

    private void fim() {
        QFriends_4.qf5.setVisible(false);
        JOptionPane.showMessageDialog(null,"Você teve " + Main.acertos  + " acertos nesta rodada","Quantidade de acertos",JOptionPane.INFORMATION_MESSAGE);

    }
}
