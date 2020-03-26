package br.com.pfalves;

public class Custos {
    private double totalPercurso;

        // 10 km por litro

    public void calcularViagem(Percurso p ){

        double v1;
        v1 = (p.getKmPercorrido()/10);
        totalPercurso = (v1* p.getValorCombustivel()) + p.getValorPedagio();
        System.out.println("Custo total deste percurso é  " + totalPercurso);
    }
}
