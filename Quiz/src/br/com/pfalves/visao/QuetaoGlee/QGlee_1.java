package br.com.pfalves.visao.QuetaoGlee;

import br.com.pfalves.Main;
import br.com.pfalves.visao.Inicio;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QGlee_1 {
    public static  JFrame q2 = new JFrame(); // Tela da pergunta 2

    private JPanel JPGlee1;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public QGlee_1() {

        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                 Main.acertos ++;
                 proximaq2();
                 fechar();
            }
        });
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq2();
                fechar();
            }
        });
        
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                proximaq2();
                fechar();
            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
               proximaq2();
               fechar();
            }
        });
    }

    private void fechar() {

        Inicio.frame.setVisible(false);
    }

    private void proximaq2() {

        q2.setContentPane(new QGlee_2().getJPGlee2());
        q2.setVisible(true);
        q2.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        q2.pack();

    }


    public JPanel getJPGlee1(){
        return JPGlee1;
    }
}
