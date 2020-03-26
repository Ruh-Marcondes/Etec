package br.com.pfalves;

import javax.swing.*;

public class Custos {
    private double totalPercurso;

    public double getTotalPercurso() {
        return totalPercurso;
    }

    public void setTotalPercurso(double totalPercurso) {
        this.totalPercurso = totalPercurso;
    }

    public void calcularViagem(Percurso p){
        this.totalPercurso = p.getKmPercorrida()/10*p.getValorCombustivel()+
                p.getValorPedagio();
        JOptionPane.showMessageDialog(null,
                "Total do Percurso: "+this.totalPercurso);

    }
}

