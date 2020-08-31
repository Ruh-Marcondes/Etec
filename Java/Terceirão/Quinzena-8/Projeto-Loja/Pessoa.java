//Essa class é abistrata portanto não pode ser intanciada 
public abstract class Pessoa {

    protected String cpf;
    protected String nome;
    protected String cargo;
    protected double salario;
    protected String email;
    protected String senha;

    public abstract void exibirDados();

    //#region GetEndSet 
    public String getCargo() {
        return cargo;
    }
    public String getCpf() {
        return cpf;
    }
    public String getEmail() {
        return email;
    }public String getNome() {
        return nome;
    }
    public double getSalario() {
        return salario;
    }
    public String getSenha() {
        return senha;
    }
    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setSalario(double salario) {
        this.salario = salario;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
    //#endregion
}