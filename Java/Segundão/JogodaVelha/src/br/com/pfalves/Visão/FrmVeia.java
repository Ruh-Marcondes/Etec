package br.com.pfalves.Visão;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class FrmVeia {
    private JPanel panelVeia;
    private JButton btn1;
    private JButton btn2;
    private JButton btn3;
    private JButton btn4;
    private JButton btn5;
    private JButton btn6;
    private JButton btn7;
    private JButton btn8;
    private JButton btn9;
    private JButton btnNovo;
    private JButton btnSair;

    public int vez = 0;

    public FrmVeia() {
        iniciar();

        btnNovo.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                //Limpar Valores
               iniciar();

            }
        });
        btnSair.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                JOptionPane.showMessageDialog(null, "Fim de Jogo", "Pronto", JOptionPane.INFORMATION_MESSAGE);
                System.exit(0); //sinal para finalizar programa
            }
        });
        btn1.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                // Primeiro Botão
                jogar(e);
            }
        });
        MouseAdapter listener = new MouseAdapter() {
        };
        btn2.addMouseListener(listener);
        btn3.addMouseListener(listener);
        btn4.addMouseListener(listener);
        btn5.addMouseListener(listener);
        btn6.addMouseListener(listener);
        btn7.addMouseListener(listener);
        btn8.addMouseListener(listener);
        btn9.addMouseListener(listener);
        btn2.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn3.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn4.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn5.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn6.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn7.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn8.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
        btn9.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                jogar(e);
            }
        });
    }

    private void iniciar() {
        btn1.setText(null);
        btn2.setText(null);
        btn3.setText(null);
        btn4.setText(null);
        btn5.setText(null);
        btn6.setText(null);
        btn7.setText(null);
        btn8.setText(null);
        btn9.setText(null);
        vez = 0;
    }

    private void jogar(MouseEvent e) {
        //Passar componete para meuBotao
        JButton meuBotao = (JButton)e.getComponent();
        if(meuBotao.getText()!=null){
            JOptionPane.showMessageDialog(null,"Local já jogado", "Erro",JOptionPane.ERROR_MESSAGE);
            return;
        }
        vez++;
        if (vez % 2 == 1){
            meuBotao.setText("X");
        }else{
            meuBotao.setText("O");
        }
        if(vez<5){
            return;
        }else{
            VerQuemGanhou();
        }
    }

    private void VerQuemGanhou() {
        //Pro X
        if (btn1.getText()=="X" && btn2.getText()=="X" && btn3.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn4.getText()=="X" && btn5.getText()=="X" && btn6.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn7.getText()=="X" && btn8.getText()=="X" && btn9.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn1.getText()=="X" && btn5.getText()=="X" && btn9.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn3.getText()=="X" && btn5.getText()=="X" && btn7.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn1.getText()=="X" && btn4.getText()=="X" && btn7.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn2.getText()=="X" && btn5.getText()=="X" && btn8.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        if (btn3.getText()=="X" && btn6.getText()=="X" && btn9.getText()=="X"){
            VX(); // venceu X
            iniciar();
        }
        
        // Pro O

        if (btn1.getText()=="O" && btn2.getText()=="O" && btn3.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn4.getText()=="O" && btn5.getText()=="O" && btn6.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn7.getText()=="O" && btn8.getText()=="O" && btn9.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn1.getText()=="O" && btn5.getText()=="O" && btn9.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn3.getText()=="O" && btn5.getText()=="O" && btn7.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn1.getText()=="O" && btn4.getText()=="O" && btn7.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn2.getText()=="O" && btn5.getText()=="O" && btn8.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        if (btn3.getText()=="O" && btn6.getText()=="O" && btn9.getText()=="O"){
            VO(); // venceu O
            iniciar();
        }
        
    }

    private void VO() {
        JOptionPane.showMessageDialog(null," 'O' Venceu","Vencedor",JOptionPane.INFORMATION_MESSAGE);
    }

    private void VX() {
        JOptionPane.showMessageDialog(null," 'X' Venceu","Vencedor",JOptionPane.INFORMATION_MESSAGE);
    }

    public JPanel getPanelVeia(){
        return panelVeia;
    }
}
