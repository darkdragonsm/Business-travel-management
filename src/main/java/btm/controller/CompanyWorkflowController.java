package btm.controller;

import btm.dto.request.CompanyWorkflowRequest;
import btm.dto.response.ResponseDTO;
import btm.service.CompanyWorkflowService;
import btm.util.URL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(URL.API)
public class CompanyWorkflowController {
    @Autowired
    private CompanyWorkflowService companyWorkflowService;
    @PostMapping
    public ResponseDTO assignWorkflowsToCompany(@RequestBody CompanyWorkflowRequest companyWorkflowRequest){
        return companyWorkflowService.assignWorkflowsToCompany(companyWorkflowRequest);
    }
}
