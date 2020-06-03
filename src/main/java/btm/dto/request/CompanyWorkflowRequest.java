package btm.dto.request;

import btm.entity.Company;
import btm.entity.Workflow;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class CompanyWorkflowRequest {
    private Company company;
    private List<Workflow> workflows;
}
