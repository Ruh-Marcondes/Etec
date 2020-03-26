package br.com.pfalves;

public class Corrente extends Conta {
    //Criar a herança isso significa que a Corrente e sub classe de Conta
    //Tipo Específico

    //atributo
    private double limite;

    //get and set

    public double getLimite() {
        return limite;
    }

    public void setLimite(double limite) {
        this.limite = limite;
    }

    @Override
    public boolean sacar(double valor) {
      if(valor<=(getSaldo()+limite)){
          setSaldo(getSaldo()-valor);
          return true;
      }
      return false;
    }
}
