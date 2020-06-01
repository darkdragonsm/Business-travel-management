package btm.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Time;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class FlightBooking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date date;
    private Time time;
    private String departure;
    private String arrival;
    private int price;
    private String reservationCode;
    private String ticketFileUrl;
    @ManyToOne
    private Travel travel;

}
