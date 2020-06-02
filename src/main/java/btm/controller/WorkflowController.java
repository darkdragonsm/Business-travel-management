package btm.controller;

import btm.dto.response.ResponseDTO;
import btm.dto.request.WorkflowRequest;
import btm.service.WorkflowService;
import btm.util.URL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(URL.API)
public class WorkflowController {
    @Autowired
    private WorkflowService workflowService;
    @PostMapping(URL.WORKFLOWS)
    public ResponseDTO addWorkFlow(@RequestBody WorkflowRequest dto){
        return workflowService.addWorkflow(dto);
    }
}
