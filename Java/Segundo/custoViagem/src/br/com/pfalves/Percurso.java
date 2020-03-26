package br.com.pfalves;

import java.util.Scanner;

public class Percurso {
    private double kmPercorrido, valorCombustivel, valorPedagio;
    Scanner sc = new Scanner(System.in);

    public double getKmPercorrido() {
        return kmPercorrido;
    }

    public void setKmPercorrido(double kmPercorrido) {
        this.kmPercorrido = kmPercorrido;
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
        System.out.println();
        System.out.println("KM Percorrido: ");
        kmPercorrido = Double.parseDouble(sc.nextLine());
        System.out.println("Valor do Combustível: ");
        valorCombustivel = Double.parseDouble(sc.nextLine());
        System.out.println("Valor do Pedágio: ");
        valorPedagio = Double.parseDouble(sc.nextLine());
    }
    public void listarPercurso(){
        System.out.println("kmPercorrido = " + kmPercorrido);
        System.out.println("valorCombustivel = " + valorCombustivel);
        System.out.println("valorPedagio = " + valorPedagio);
    }
}
