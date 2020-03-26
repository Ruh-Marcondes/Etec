package br.com.pfalves;

public abstract class Conta { // Classe generalização n vira objeto.
    // Ou seja Classe,  objeto abistrato

    private int idconta;
    private Cliente cliente; // conta tem cliente
    private double saldo;

    public Conta(){
        cliente = new Cliente();
    } // Tota vez que cria uma conta cria um novo cliente




    public int getIdconta() {
        return idconta;
    }

    public void setIdconta(int idconta) {
        this.idconta = idconta;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }


    // Metódo para efetuar deposito para qualquer conta;
    public void despositar(double valor){
        saldo+= valor;
    }
    //metodo abstrato sacar. Ele n possui códgo
    public  abstract boolean sacar (double valor);
}
