
package br.com.pfalves.visao.QuetaoGlee;

import br.com.pfalves.Main;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QGlee_4 {
    
    public static JFrame q5 = new JFrame();
    
    private JPanel JPGlee4;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;
    
    public JPanel getJPGlee4(){
        return JPGlee4;
    }

    public QGlee_4() {
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
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
                Main.acertos++;
                proximaq();
            }
        });
    }

    private void proximaq() {
        q5.setContentPane(new QGlee_5().getJPGlee5());
        q5.setVisible(true);
        QGlee_3.q4.setVisible(false);
        q5.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        q5.pack();
    
    }
}
