package btm.entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
public class ContactLogging {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private Date date;

    @ManyToOne
    private Travel travel;

}
