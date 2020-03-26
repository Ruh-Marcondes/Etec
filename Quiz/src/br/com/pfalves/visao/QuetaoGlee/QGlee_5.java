package br.com.pfalves.visao.QuetaoGlee;

import br.com.pfalves.Main;
import br.com.pfalves.visao.QuetaoFriends.QFriends_4;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QGlee_5 {
    private JPanel JPGlee5;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public QGlee_5() {
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos++;
                fim();
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                fim();
            }
        });
    }

    private void fim() {
        QGlee_4.q5.setVisible(false);
        JOptionPane.showMessageDialog(null,"Você teve " + Main.acertos  + " acertos nesta rodada","Quantidade de acertos",JOptionPane.INFORMATION_MESSAGE);

    }

    public JPanel getJPGlee5(){
        return JPGlee5;
    }
}
