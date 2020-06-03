package btm.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class HotelBooking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String hotelName;

    private String address;

    private Date beginDate;

    private Date endDate;

    private int price;

    private String receiptFileUrl;

    @ManyToOne
    private Travel travel;

}
