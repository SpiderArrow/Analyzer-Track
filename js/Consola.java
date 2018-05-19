/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizador_v2;

import Complementos.Lexer;
import Complementos.Parsito;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;

/**
 *
 * @author Stevep
 */
public class Consola {
      
    String path = "";
    
    public Consola(String ruta){
        path = ruta;
    }
    public Consola(){
        path = "";
    }
    
    
    public String LecturaArchivo() throws IOException{     
        
        String resultado = "";        
        String fichero = this.path;        
        File f = new File(fichero); 

        //System.out.println("INICIO--NOMBRE DE PROCESO: "+f.getName());//get.Name() PARA OBTENER EL NOMBRE DEL ARCHIVO
     
        try{
            FileReader fr = new FileReader(f);
            BufferedReader br = new BufferedReader(fr); 
            
            Lexer lex = new Lexer(br);
            lex.next_token();
            //System.out.println("impresion"+lex.yytext()+"impresion");
                    
            //lex.next_token();
            
            Parsito pr= new Parsito(lex);
            
            try {
                pr.parse();
                String resultado1 = pr.resultado;
                System.out.println("Analisis");
                System.out.println(resultado1);
            } catch (Exception e) {
                System.out.println("Excepcion de analizadores: "+e);
            }
            
//            String linea = "";
//            while((linea = br.readLine())!=null){
//          
//            }
        }catch(Exception e){
            System.out.println("Excepcion leyendo fichero "+fichero+" : "+e);
        }
        
        //System.out.println("FIN--NOMBRE DE PROCESO: "+f.getName());
        
        
        return resultado;
    }
    
    public void Consoleprove() throws IOException{
        String datos = " jump"
                + "";
        StringReader sr= new StringReader(datos);
        BufferedReader br = new  BufferedReader(sr);
        
        Lexer lexico = new Lexer(br);
        lexico.next_token();
        System.out.println(br.readLine()+" "+ lexico.yylength());
       
     
    }
    
    public static void main(String[] args) throws IOException{
        
       String path = "C:/Users/Stevep/Documents/NetBeansProjects/Analys_lexer_v1/src/Analys_lexer_v1/Entrada.txt";
        Consola c= new Consola(path);
        //c.LecturaArchivo();
        c.Consoleprove();
    }
    
}
