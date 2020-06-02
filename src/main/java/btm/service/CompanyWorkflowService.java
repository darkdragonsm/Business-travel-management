package btm.service;

import btm.dto.request.CompanyWorkflowRequest;
import btm.dto.response.ResponseDTO;
import btm.repository.CompanyWorkflowRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyWorkflowService {
    @Autowired
    private CompanyWorkflowRepository companyWorkflowRepository;
    public ResponseDTO assignWorkflowsToCompany(CompanyWorkflowRequest companyWorkflowRequest){
        ResponseDTO dto = new ResponseDTO();
        return dto;
    }
}
