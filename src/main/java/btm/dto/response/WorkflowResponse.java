package btm.dto.response;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class WorkflowResponse {
    private int id;
    private String name;
    private List<String> steps;
}
