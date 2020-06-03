package btm.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Employee {
    @Id
    private String username;

    private String password;

    private String phone;

    @ManyToOne
    private Company company;

    @ManyToOne
    private Role role;

    private String status;

    private boolean isFirst;

    private String name;

    private boolean sex;
}
