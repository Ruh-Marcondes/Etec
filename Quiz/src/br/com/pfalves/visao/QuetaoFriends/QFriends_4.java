package br.com.pfalves.visao.QuetaoFriends;

import br.com.pfalves.Main;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class QFriends_4 {
    
    public static JFrame qf5 = new JFrame();

    private JPanel QFriends_4;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;

    public JPanel getQFriends_4(){
        return QFriends_4;
    }
    public QFriends_4() {
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Main.acertos++;
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
        qf5.setContentPane(new QFriends_5().getQFriends_5());
        qf5.setVisible(true);
        QFriends_3.qf4.setVisible(false);
        qf5.setDefaultCloseOperation(WindowConstants.DISPOSE_ON_CLOSE);
        qf5.pack();
    }
}
