/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author DAW206
 */
public class Utilidades {
    public static ArrayList<String> getMeses(){
        ArrayList<String> meses = new ArrayList<String>();
        for (int i=1; i<= 15; i++){
            meses.add(String.valueOf(i * 12));
        }
        return meses;
    }
    public static ArrayList<Cuota> genereListaCuotas(int num_Cuotas, double importeTotalPrestamo){
        ArrayList<Cuota> cuotas = new ArrayList<Cuota>();
        double importeCuota = importeTotalPrestamo / num_Cuotas;
        for (int i=1; i<= num_Cuotas; i++){
            double intereses = importeCuota - importeCuota * (i - 1) / num_Cuotas;
            double capital = importeCuota - intereses;
            Cuota cuota = new Cuota(i, importeCuota, capital, intereses);
            cuotas.add(cuota);
        }
        return cuotas;
    }
}
