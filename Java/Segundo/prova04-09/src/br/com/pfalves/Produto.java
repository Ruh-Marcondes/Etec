package br.com.pfalves;

public class Produto {
    private String descricao;
    private int quantidade;


    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean registrar(int valor){
        if(valor <=0){
            return false;
        }
        quantidade += valor;
        return true;

    }
    public boolean saida(int valor){
        if(valor > quantidade){
            return false;
        }
        quantidade -= valor;
        return true;

    }
    public int exibirEstoque(){

        return quantidade ;
    }

}
