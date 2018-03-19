/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PackageException;

/**
 *
 * @author Formation
 */
public class TropDeau extends Exception {
    //Déclaration de la constante Limite à 100
    final public static int Limite = 100;
        
    /**
     * Creates a new instance of <code>TropDeau</code> without detail message.
     */
    public TropDeau() {
        super("trop d'eau ! Vous avez dépassé la limite : "+Limite);
    }

    /**
     * Constructs an instance of <code>TropDeau</code> with the specified detail
     * message.
     *
     * @param msg the detail message.
     */
    public TropDeau(String msg) {
        super(msg+" : "+Limite);
    }
}
