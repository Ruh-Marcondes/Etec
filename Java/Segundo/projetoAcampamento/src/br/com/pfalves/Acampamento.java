package br.com.pfalves;

public class Acampamento {

    public String nome;
    public char equipe;
    public int idade;

    public void separarEquipe(){
        if(idade<=5){
            equipe = ' ';
        }
        else{
            if(idade<=10){
                equipe = 'A';
            }
            else{
                if(idade<=20){
                    equipe = 'B';
                }
                else{
                    equipe = 'C';
                }
            }
        }
    }
    public void imprimir(){
        System.out.println("acampante: " + nome);
        System.out.println("idade: " + idade);
        System.out.println("Equipe: " + equipe );
    }
}
