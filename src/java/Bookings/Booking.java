/**
 * 
 * Booking class
 * 
 */

package Bookings;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(XmlAccessType.FIELD)
public class Booking implements Serializable {

    @XmlElement(name = "time")//fields
    private String time;

    @XmlElement(name = "date")
    private String date;

    @XmlElement(name = "name")
    private String name;

    @XmlElement(name = "contact")
    private String contact;

    @XmlElement(name = "email")
    private String email;

    @XmlElement(name = "description")
    private String description;

    @XmlElement(name = "booker")
    private String booker;

    public Booking() {
        super();
        // TODO Auto-generated constructor stub
    }

    public Booking(String time, String date, String name, String contact, String email, String description, String booker) {
        super();//constructor
        this.time = time;
        this.date = date;
        this.name = name;
        this.contact = contact;
        this.email = email;
        this.description = description;
        this.booker = booker;
    }

    public String getTime() {//getters
        return time;
    }

    public String getDate() {
        return date;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }
    
        public String getContact() {
        return contact;
    }
        
            public String getEmail() {
        return email;
    }

    public String getBooker() {
        return booker;
    }

    public void setDate(String date) {//setters
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public void setContact(String contact) {
        this.contact = contact;
    }
    
        public void setEmail(String email) {
        this.email = email;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setBooker(String booker) {
        this.booker = booker;
    }

}
