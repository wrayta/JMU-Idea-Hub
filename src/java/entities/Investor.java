/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

/**
 * Represents an Investor
 * @author Joe Otis
 * @version 11/14/13
 */
public class Investor extends User
{
    private String occupation;
    private String[] degrees; // We might want this to be ints for easier storage
    private String[] certifications; // and this
    private String[] patents;  // and this
    private String interest;
    private String website;

    /**
     * Default Constructor
     */
    public Investor()
    {
        super();
        
        occupation = "";
        interest = "";
        website = "";
    }
    
    /**
     * Explicit value constructor
     * @param first
     * @param last
     * @param email
     * @param password
     * @param userName
     * @param accountNumber
     * @param occupation
     * @param interest
     * @param website 
     */
    public Investor(String first, String last, String email, String password,
            String userName, int accountNumber, String occupation, String interest,
            String website )
    {
        super(first, last, email, password, userName, accountNumber);
        this.occupation = occupation;
        this.interest = interest;
        this.website = website;
    }
    /**
     * @return occupation 
     */
    public String getOccupation() {
        return occupation;
    }

    /**
     * @param occupation 
     */
    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    /**
     * @return degrees 
     */
    public String[] getDegrees() {
        return degrees;
    }

    /**
     * @param degrees 
     */
    public void setDegrees(String[] degrees) {
        this.degrees = degrees;
    }

    /**
     * @return certifications 
     */
    public String[] getCertifications() {
        return certifications;
    }

    /**
     * @param certifications 
     */
    public void setCertifications(String[] certifications) {
        this.certifications = certifications;
    }

    /**
     * @return patents 
     */
    public String[] getPatents() {
        return patents;
    }

    /**
     * @param patents 
     */
    public void setPatents(String[] patents) {
        this.patents = patents;
    }

    /**
     * @return interests 
     */
    public String getInterest() {
        return interest;
    }

    /**
     * @param interest 
     */
    public void setInterest(String interest) {
        this.interest = interest;
    }

    /**
     * @return website
     */
    public String getWebsite() {
        return website;
    }

    /**
     * @param website 
     */
    public void setWebsite(String website) {
        this.website = website;
    }
}
