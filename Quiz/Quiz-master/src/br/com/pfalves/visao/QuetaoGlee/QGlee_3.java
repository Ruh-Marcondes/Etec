package br.com.pfalves.visao.QuetaoGlee;

import javax.swing.*;

public class QGlee_3 {
    public static JFrame q4 = new JFrame();

    private JPanel JPGlee3;


    public JPanel getJPGlee3(){
        return JPGlee3;
    }
    private void proximaq4() {
        // q4.setContentPane(new QGlee_4().getJPGlee3());
        q4.setTitle(">>>>>> Quiz Me Fudi <<<<<");
        q4.setVisible(true);
        q4.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        q4.pack();
    }
    private void fechar() {
        QGlee_2.q3.setVisible(false);
    }
}
