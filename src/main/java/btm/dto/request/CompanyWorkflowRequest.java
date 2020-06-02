package btm.dto.request;

import btm.model.Company;
import btm.model.Workflow;
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
