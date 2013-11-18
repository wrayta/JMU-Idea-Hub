package entities;

/**
 * Represents a User
 * 
 * @author Joe Otis
 * @version 11/14/13
 */
public abstract class User 
{
    public static int nextNumber = 0;
    private int accountNumber;
    
    private String email;
    private String firstName;
    private String lastName;
    private String password;
    private String userName;
    
    public User()
    {
        accountNumber = nextNumber;
        nextNumber++;
        email = "";
        firstName = "";
        lastName = "";
        password = "";
        userName = "";
    }
    
    /**
     * Explicit value constructor
     * @param first
     * @param last
     * @param email
     * @param password
     * @param userName
     * @param accountNumber 
     */
    public User( String first, String last, String email, String password,
            String userName )
    {
        firstName = first;
        lastName = last;
        this.email = email;
        this.password = password;
        this.userName = userName;
        this.accountNumber = nextNumber;
        nextNumber++;
    }
    /**
     * @return email
     */
    public String getEmail()
    {
        return email;
    }
    
    /**
     * @param email 
     */
    public void setEmail( String email )
    {
        this.email = email;
    }
    /**
     * @return the accountNumber 
     */
    public int getAccountNumber()
    {
        return accountNumber;
    }
    
    /**
     * @param num account Number 
     */
    public void setAccountNumber( int num )
    {
        accountNumber = num;
    }
    
    /**
     * @return the first name 
     */
    public String getFirstName()
    {
        return firstName;
    }
    
    /**
     * @param name the first name 
     */
    public void setFirstName( String name )
    {
        firstName = name;
    }
    
    /**
     * @return the last name
     */
    public String getLastName()
    {
        return lastName;
    }
    
    /**
     * @param name the last name 
     */
    public void setLastName( String name )
    {
        lastName = name;
    }
    
    /**
     * Not sure if we want this in here!!!!!!!!
     * @return the password
     */
    public String getPassword()
    {
        return password;
    }
    
    /**
     * Not sure if we want this in here!!!!!!!!
     * @param pass the password
     */
    public void setPassword( String pass )
    {
        password = pass;
    }
    
    /**
     * @return the userName
     */
    public String getUserName()
    {
        return userName;
    }
    
    /**
     * @param user userName
     */
    public void setUserName( String user )
    {
        userName = user;
    }
    
    
}
