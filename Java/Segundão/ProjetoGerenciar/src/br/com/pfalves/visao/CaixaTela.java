package br.com.pfalves.visao;

import br.com.pfalves.Caixa;

import javax.swing.*;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class CaixaTela {
    private JTextField txtValor;
    private JButton btnDepositar;
    private JButton btnRetirar;
    private JButton btnSair;
    private JButton btnConsultar;
    private JTextField txtSaldo;
    private JTextArea txtMensagem;
    private JPanel panelCaixa;

    public JPanel getPanelCaixa() {
        return panelCaixa;
    }

    // objeto tipo caixa '-'
    private Caixa caixa;

    public CaixaTela() {

        caixa = new Caixa(); //instancia caixa;

        btnDepositar.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
              double valor;
              valor = Double.parseDouble(txtValor.getText());
              boolean deuCerto = caixa.depositar(valor);
              if(deuCerto){
                  txtMensagem.append("\tDepósito feito com sucesso\n");
              }else{
                  txtMensagem.append("\tValor incorreto pra depósito\n");
              }
              limparTextos();
            }
        });

        btnRetirar.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                double valor;
                valor = Double.parseDouble(txtValor.getText());
                boolean deuCerto = caixa.sacar(valor);
                if(deuCerto){
                    txtMensagem.append("Saque efetuado com sucesso \n");
                }else{
                    txtMensagem.append("Valor insuficiente na conta \n");
                }
                limparTextos();
            }
        });
        btnConsultar.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                txtSaldo.setText(Double.toString(caixa.consultar()));
                txtMensagem.append("Saldo consultado em tela \n");
            }
        });

        btnSair.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                JOptionPane.showMessageDialog(null,
                        "fim de programa",
                        "mensagem",
                        JOptionPane.INFORMATION_MESSAGE);

            }
        });
    }

    private void limparTextos() {
        txtValor.setText(null);
        txtSaldo.setText(null);
        txtValor.requestFocus();
    }
}
// ;-; '-'