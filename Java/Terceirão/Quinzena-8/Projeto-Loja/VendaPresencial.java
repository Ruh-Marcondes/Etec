import java.lang.reflect.Constructor;

public class VendaPresencial extends Pessoa implements Vendas {

    protected String produto;
    protected double valorCompra;
    private double valorPagar;
    private int codVendedor;


    //Metodo Contrutor
    public VendaPresencial(String produto, double valorCompra){
        this.produto = produto;
        this.valorCompra = valorCompra;
    }
    @Override
    public void cadastrarCliente() {
        

    }

    @Override
    public void entregarProduto() {
        

    }

    @Override
    public void atenderPosVenda() {
        
    }

    @Override
    public void exibirDados() {
        

    }

    //#region Get and Set
    public double getValorPagar() {
        return valorPagar;
    }
    public double getValorCompra() {
        return valorCompra;
    }
    public String getProduto() {
        return produto;
    }
    public int getCodVendedor() {
        return codVendedor;
    }

    public void setCodVendedor(int codVendedor) {
        this.codVendedor = codVendedor;
    }
    public void setValorCompra(double valorCompra) {
        this.valorCompra = valorCompra;
    }
    public void setProduto(String produto) {
        this.produto = produto;
    }
    public void setValorPagar(double valorPagar) {
        this.valorPagar = valorPagar;
    }
//#endregion
}