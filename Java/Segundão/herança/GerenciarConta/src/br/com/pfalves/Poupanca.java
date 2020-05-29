package br.com.pfalves;

public class Poupanca  extends Conta{

    //atributo
    private int diaaniversario;

    // get and set
    public int getDiaaniversario() {
        return diaaniversario;
    }

    public void setDiaaniversario(int diaaniversario) {
        this.diaaniversario = diaaniversario;
    }


    @Override
    public boolean sacar(double valor) {
        if(valor <= getSaldo()){
            setSaldo(getSaldo()-valor);
            return true;
        }
        return false;
    }
}
