package br.com.pfalves;

public class Conta {
    public String  agencia, nomeCliente;
    public double saldo;
    int conta;
    public void depositar(double deposito) {

    }

    public void imprimir() {
        System.out.println("nomeCliente = " + nomeCliente);
        System.out.println("agencia = " + agencia);
        System.out.println("conta = " + conta);
        System.out.println("saldo = " + saldo);
    }

    public int sacar(double saque) {

        if (saque > saldo){
            return 1;
        }else {
            return 0;
        }


    }
}