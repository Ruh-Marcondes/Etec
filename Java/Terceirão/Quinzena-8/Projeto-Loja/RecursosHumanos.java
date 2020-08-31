public class RecursosHumanos  extends Pessoa{

    // Inprementou o  metodo Automaticamente
    @Override
    public void exibirDados() {
       

    }
    // Isso é possível graças a sobrecarga de Methodos
    public void pagarSalario(String cargo){

    }
    public void pagarSalario(int vendas){

    }

    // Quando ele percebe que há um retorno necessita de um return
    public String contratar(int xp, boolean formado){
          return "Contratado";  
    }
    
}