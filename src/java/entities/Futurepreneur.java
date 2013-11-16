/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

//import java.util.Date;

import java.sql.Date;


/**
 *
 * @author root
 */
public class Futurepreneur extends User
{
    private String academic;
    private String[] major; // also an int??????
    private String[] minor; // same  thinggggg
    private Date gradDate; // Should we use SQL version of Date
    private double gpa;

    /**
     * Default Constructor
     */
    public Futurepreneur()
    {
        super();
        
        academic = "Freshman";
        gradDate = new Date(2018, 5, 8);
        gpa = 4.0;
    }
    
    /**
     * Explicit value constructor
     * @param first
     * @param last
     * @param email
     * @param password
     * @param userName
     * @param accountNumber
     * @param academic
     * @param gradDate
     * @param gpa 
     */
    public Futurepreneur(String first, String last, String email, String password,
            String userName, String academic, Date gradDate,
            double gpa )
    {
        super(first, last, email, password, userName );
        this.academic = academic;
        this.gradDate = gradDate;
        this.gpa = gpa;
    }
    /**
     * @return academic standing 
     */
    public String getAcademic() {
        return academic;
    }

    /**
     * Must be "Freshman", "Sophomore", "Junior", "Senior"
     * or "Senior+"
     * @param academic academic standing 
     */
    public void setAcademic(String academic) {
        if ( academic.equalsIgnoreCase("freshman") || 
             academic.equalsIgnoreCase("sophomore") ||
             academic.equalsIgnoreCase("junior") || 
             academic.equalsIgnoreCase("senior") || 
             academic.equalsIgnoreCase("senior+") )
            this.academic = academic;
        else
            academic = "Senior+";
    }

    /**
     * @return major
     */
    public String[] getMajor() {
        return major;
    }

    /**
     * @param major 
     */
    public void setMajor(String[] major) {
        this.major = major;
    }

    /**
     * @return minor 
     */
    public String[] getMinor() {
        return minor;
    }

    /**
     * @param minor 
     */
    public void setMinor(String[] minor) {
        this.minor = minor;
    }

    /**
     * @return expected graduation date 
     */
    public Date getGradDate() {
        return gradDate;
    }

    /**
     * @param gradDate expected graduation date 
     */
    public void setGradDate(Date gradDate) {
        this.gradDate = gradDate;
    }

    /**
     * @return gpa 
     */
    public double getGpa() {
        return gpa;
    }

    /**
     * @param gpa 
     */
    public void setGpa(double gpa) {
        this.gpa = gpa;
    }
}
