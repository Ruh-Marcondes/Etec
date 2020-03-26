package br.com.pfalves;

public class Main {

    public static void main(String[] args) {

        //Criar um cli e 2 contas
        //Sacar e Depositar delas
        Cliente cliente = new Cliente();
        cliente.setIgclient(11);
        cliente.setNome("Rodrigo Henrique Martins");
        //Definir uma conta corrente para o mesmo
        Corrente conta1 = new Corrente();
        conta1.setIdconta(1);
        conta1.setCliente(cliente);
        conta1.despositar(2000);
        conta1.setLimite(1000);
        System.out.println("Saldo da conta 1: ");
        System.out.println("R$ " + conta1.getSaldo());
        boolean resultado = conta1.sacar(2500);
        if(resultado){
            System.out.println("Saque efetuado");
        }else{
            System.out.println("Nao tem Saldo");
        }
        System.out.println("Novo Saldo: " + conta1.getSaldo());
        Poupanca conta2 = new Poupanca();
        conta2.setIdconta(2);
        conta2.setCliente(cliente);
        conta2.despositar(1000);
        boolean r = conta2.sacar(1001);
        if(r){
            System.out.println("Saque efetuado com sucesso");
        }else{
            System.out.println("Poupe mais, por favor");
        }
        System.out.println("Saldo atual da conta 2: ");
        System.out.println(conta2.getSaldo());
    }
}


