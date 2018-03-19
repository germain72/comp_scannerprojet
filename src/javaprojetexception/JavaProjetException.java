/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaprojetexception;
import PackageException.*;

/**
 *
 * @author Formation
 */
public class JavaProjetException {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
   
        int compteur = 0;
        try
        {
            //Déclenche l'exception PlusDeCarotte
            
            for(compteur=0;compteur<=TropDeau.Limite;compteur++)
            {
                if(compteur>=TropDeau.Limite)
                {
                    throw new TropDeau();
                }
            }
            throw new PlusDeCarotte();
        }
        catch(TropDeau ex)
        {
             System.out.println(ex.getMessage());
        }
       catch(PlusDeCarotte ex)
        {
            System.out.println(ex.getMessage()); 
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage()); 
        }
    }
    
}
