package br.com.pfalves;

import javax.swing.*;

public class Percurso {
    private double kmPercorrida;
    private double valorCombustivel;
    private double valorPedagio;

    public double getKmPercorrida() {
        return kmPercorrida;
    }

    public void setKmPercorrida(double kmPercorrida) {
        this.kmPercorrida = kmPercorrida;
    }

    public double getValorCombustivel() {
        return valorCombustivel;
    }

    public void setValorCombustivel(double valorCombustivel) {
        this.valorCombustivel = valorCombustivel;
    }

    public double getValorPedagio() {
        return valorPedagio;
    }

    public void setValorPedagio(double valorPedagio) {
        this.valorPedagio = valorPedagio;
    }

    public void cadastrarPercurso(){
        this.kmPercorrida = Double.parseDouble(JOptionPane.showInputDialog(
                "Digite o KM Percorrido: "));
        this.valorCombustivel = Double.parseDouble(JOptionPane.showInputDialog(
                "Digite o Valor do Combustível: "));
        this.valorPedagio = Double.parseDouble(JOptionPane.showInputDialog(
                "Digite o Valor do Pedágio: "));
    }

    public void listarPercurso(){
        JOptionPane.showMessageDialog(null,
                "KM Percorrida: "+this.kmPercorrida+"" +
                        "\nValor do Combustível: "+this.valorCombustivel+ "\n" +
                        "Valor do Pedágio: "+this.valorPedagio);
    }
}


