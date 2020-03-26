package br.com.pfalves.view;

import br.com.pfalves.Produto;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;

public class FrmProduto {
   
    Produto produto = new Produto();
    private JPanel panelProduto;
    private JTextField textQuantidade;
    private JTextField textSaldo;
    private JButton buttonConsultar;
    private JButton buttonRegistrarSaida;
    private JButton SAIR;
    private JButton buttonRegistrarEntrada;

    public JPanel getPanel() {
        return panelProduto;
    }
    public FrmProduto() {


        // Registra
        buttonRegistrarEntrada.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int valor;
                valor = Integer.parseInt(textQuantidade.getText());
                boolean resultado = produto.registar(valor); // faltou isso;
              //  if(resultado==true){
              // JOptionPane.showMenssageDi
              // }
            }
        });

        // Consultar -- ok
        buttonConsultar.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                textSaldo.setText(Integer.toString(produto.exibirEstoque()));
            }
        });

        //Registrar saída de um produto
        buttonRegistrarSaida.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                int valor;
                valor = Integer.parseInt(textQuantidade.getText());
                boolean resultado = produto.registar(valor); // faltou isso;

            }
        });
        SAIR.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                JOptionPane.showMessageDialog(null,
                        "fim de programa",
                        "mensagem",
                        JOptionPane.INFORMATION_MESSAGE);
               System.exit(0);
            }
        });

    }
}
