package ch.conceptforge.mavenprojecthibernatetuto;
// Generated 22 mars 2018 14:44:30 by Hibernate Tools 4.3.1



/**
 * Client generated by hbm2java
 */
public class Client  implements java.io.Serializable {


     private Integer id;
     private String nom;
     private String prenom;

    public Client() {
    }

    public Client(String nom, String prenom) {
       this.nom = nom;
       this.prenom = prenom;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNom() {
        return this.nom;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    public String getPrenom() {
        return this.prenom;
    }
    
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }




}


