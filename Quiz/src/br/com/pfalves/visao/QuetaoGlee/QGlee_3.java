package br.com.pfalves.visao.QuetaoGlee;

import br.com.pfalves.Main;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QGlee_3 {
    public static JFrame q4 = new JFrame();

    private JPanel JPGlee3;
    private JPanel JPGlee2;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;


    public QGlee_3() {
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos++;
                proximaq4();
                fechar();
            }
        });
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq4();
                fechar();
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq4();
                fechar();
            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq4();
                fechar();
            }
        });
    }

    public JPanel getJPGlee3(){
        return JPGlee3;
    }
    private void proximaq4() {
         q4.setContentPane(new QGlee_4().getJPGlee4());
        q4.setVisible(true);
        q4.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        q4.pack();
    }
    private void fechar() {
        QGlee_2.q3.setVisible(false);
    }
}
