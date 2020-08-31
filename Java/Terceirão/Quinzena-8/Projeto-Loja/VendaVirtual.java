public class VendaVirtual extends VendaPresencial implements Vendas{

    public VendaVirtual(String produto, double valorCompra) {
        super(produto, valorCompra);
        // super chama o metodo contrutor da SuperClass
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
    public void exibirDados(){
        
    }
    
}