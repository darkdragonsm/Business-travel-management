package btm.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Travel {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String location;
    private Date beginDate;
    private Date endDate;
    private String purpose;
    private String status;
    @ManyToOne
    private Workflow workflow;
    @ManyToOne
    private Employee employee;
}
