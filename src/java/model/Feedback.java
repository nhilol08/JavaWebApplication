/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author NAWAL
 */
public class Feedback {
    private String name;
    private String email;
    private String feedback;
    
    public Feedback(){};
    
    public Feedback(String name, String email, String feedback) {
        this.name = name;
        this.email = email;
        this.feedback = feedback;
    }

//setters and getters  
    public String getName() {
        return name;
    }

    public String getFeedback() {
        return feedback;
    }

    public String getEmail() {
        return email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}

    
    
    
