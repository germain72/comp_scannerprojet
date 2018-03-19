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
public class PlusDeCarotte extends Exception {

    /**
     * Creates a new instance of <code>PlusDeCarotte</code> without detail
     * message.
     */
    public PlusDeCarotte() {
        super("Plus de Carotte !");
    }

    /**
     * Constructs an instance of <code>PlusDeCarotte</code> with the specified
     * detail message.
     *
     * @param msg the detail message.
     */
    public PlusDeCarotte(String msg) {
        super(msg);
    }
}
