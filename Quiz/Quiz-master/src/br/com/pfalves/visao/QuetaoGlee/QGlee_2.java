package br.com.pfalves.visao.QuetaoGlee;


import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QGlee_2 {

    public static JFrame q3 = new JFrame(); // Quetão 3

    private JPanel JPGlee2;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;


    public QGlee_2() {
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                // 2° temp
                fechar();
                proximaq3();
            }
        });
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                // 3° temp
                fechar();
                proximaq3();
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                // 4° temp
                fechar();
                proximaq3();

            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                // 5° temp
                fechar();
                proximaq3();
            }
        });
    }

    private void proximaq3() {
        q3.setContentPane(new QGlee_3().getJPGlee3());
        q3.setTitle(">>>>>> Quiz Me Fudi <<<<<");
        q3.setVisible(true);
        q3.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        q3.pack();
    }

    private void fechar() {
        QGlee_1.q2.setVisible(false);
    }

    public JPanel getJPGlee2(){
        return JPGlee2;
    }



}
