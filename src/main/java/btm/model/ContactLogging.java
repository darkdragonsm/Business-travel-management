package btm.model;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity
public class ContactLogging {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date date;
    @ManyToOne
    private Travel travel;

}
