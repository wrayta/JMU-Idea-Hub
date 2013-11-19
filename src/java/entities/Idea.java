package entities;

import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Represents an Idea
 * @author Joe Otis
 */
public class Idea
{
    private int ideaNumber;
    private int supports;
    
    private String idea;
    private Date date;

    /**
     * Default Constructor
     */
    public Idea()
    {
        //ideaNumber = WHATTT???????????????;
        supports = 0;
        
        idea = "";
        date = new Date();
    }
    
    public Idea(int supports, int ideaNumber, String idea)
    {
        this.idea = idea;
        this.ideaNumber = ideaNumber;
        supports = 0;
        date = new Date();
    }
    /**
     * @return idea number 
     */
    public int getIdeaNumber() {
        return ideaNumber;
    }
    
    /**
     * Increments the supports
     */
    public void incrementSupport()
    {
        supports++;
    }
    /**
     * @param ideaNumber 
     */
    public void setIdeaNumber(int ideaNumber) {
        this.ideaNumber = ideaNumber;
    }

    /**
     * @return number of supports
     */
    public int getSupports() {
        return supports;
    }

    /**
     * @param supports 
     */
    public void setSupports(int supports) {
        this.supports = supports;
    }

    /**
     * @return idea 
     */
    public String getIdea() {
        return idea;
    }

    /**
     * @param idea 
     */
    public void setIdea(String idea) {
        this.idea = idea;
    }

    /**
     * @return date created
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date date created
     */
    public void setDate(Date date) {
        this.date = date;
    }
    
}
