/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

/**
 *
 * @author root
 */
public class Major {
    
    private int num;
    private String name;
    
    /**
     * Default Constructor
     */
    public Major()
    {
        num = 0;
        name = "NA";
    }
    
    /**
     * Explicit value constructor
     * @param num
     * @param name 
     */
    public Major(int num, String name)
    {
        this.num = num;
        this.name = name;
    }

    /**
     * @return major number 
     */
    public int getNum() {
        return num;
    }

    /**
     * Sets the number
     * @param num 
     */
    public void setNum(int num) {
        this.num = num;
    }

    /**
     * @return major name
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the name
     * @param name 
     */
    public void setName(String name) {
        this.name = name;
    }
    
}
