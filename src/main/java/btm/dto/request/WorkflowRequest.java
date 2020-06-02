package btm.dto.request;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class WorkflowRequest {
    private int id;
    private String name;
    private List<String> steps;
}
