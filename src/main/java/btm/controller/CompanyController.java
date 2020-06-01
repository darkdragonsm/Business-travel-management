package btm.controller;

import btm.dto.ResponseDTO;
import btm.model.Company;
import btm.repository.CompanyRepository;
import btm.util.URL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(URL.API)
public class CompanyController {
    @Autowired
    private CompanyRepository companyRepository;

    @PostMapping(URL.COMPANY)
    public ResponseDTO addCompany(@RequestBody Company company){
        ResponseDTO dto = new ResponseDTO();
        dto.setData(companyRepository.save(company));
        return dto;
    }
}
