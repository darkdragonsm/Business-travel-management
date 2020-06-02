package btm.controller;

import btm.dto.ResponseDTO;
import btm.dto.WorkflowDTO;
import btm.util.URL;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(URL.API)
public class WorkflowController {
    @PostMapping(URL.WORKFLOWS)
    public boolean addWorkFlow(@RequestBody WorkflowDTO dto){
        return true;
    }
    @GetMapping(URL.WORKFLOWS)
    public ResponseDTO getWorkFlows(){
        ResponseDTO dto = new ResponseDTO();
        return dto;
    }
}
