package br.com.pfalves;

import java.util.Scanner;

public class ContaTeste {

    public static void main(String[] args) {
        Conta cc = new Conta();
        int opc;
        Scanner sc = new Scanner(System.in);

    //Menu
        System.out.println("1..... sacar");
        System.out.println("2..... depositar");
        System.out.println("3..... consultar");
        System.out.println("4..... cadastrar");
        System.out.println("0..... sair");
        System.out.println("\n Escolha sua opção: ");
        opc = Integer.parseInt(sc.nextLine());

        switch(opc){
            case 1:
                exeCadastrar();
            break;
        }


    }


// função sacar
    public static void exeCadastrar(){
        Conta cc = new Conta();
        cc.nomeCliente = "marcello";
        cc.agencia = "KKKKKKKKKK";
        cc.saldo = 121212.00;
        cc.conta = 001;
    }
    public void execConsultar(){

    }
    public void exeSacar(){

    }
    public void Depositar(){

    }
}

