/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizador_v2;

import java.io.File;
import java.io.IOException;

/**
 *
 * @author Stevep
 */
public class Analizador_v2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
        String path = "C:/Users/Stevep/Documents/NetBeansProjects/Analizador_v2/src/Analizadores/Lexer.flex";
        generarLexer(path);
       // generarCup();
               
    }
    public static void generarLexer(String path){
        File file=new File(path);
        JFlex.Main.generate(file);
    }
    
    public static void generarCup() throws IOException, Exception{
        String a[]={"-parser","Parsito","C:/Users/Stevep/Documents/NetBeansProjects/Analizador_v2/src/Analizadores/Java.cup"};
        java_cup.Main.main(a);
       
    } 

}
