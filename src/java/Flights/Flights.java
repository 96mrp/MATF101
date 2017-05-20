/**
 * 
 * Flights class
 * 
 */

package Flights;


import java.util.*;
import java.io.Serializable;
import javax.xml.bind.annotation.*;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "flights")
public class Flights implements Serializable {

    @XmlElement(name = "flight")
    private ArrayList<Flight> list = new ArrayList<Flight>();

    public ArrayList<Flight> getflights() {
        return list;
    }

    public void addflight(Flight flight) {
        list.add(flight);
    }

    public void removeflight(Flight flight) {
        list.remove(flight);

    }

    public int Length() {
        return list.size();
    }
    
    public String getPrices(String price)
    {
         for (Flight flight : list) {
            if (flight.getPrice().equals(price)) {
                return flight.getPrice();
            }
        }
        return "No match";
        
    }
       
    
    
        public boolean avaliable(String name) { //checks if booked
        // For each booking in the list...
        for (Flight flight : list) {
            if (flight.getSeats() > 0) {
                return true;
            }
        }
        return false;
    }


}
