package btm.controller;

import btm.dto.response.ResponseDTO;
import btm.entity.Company;
import btm.service.CompanyService;
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
    private CompanyService companyService;

    @PostMapping(URL.COMPANIES)
    public ResponseDTO addCompany(@RequestBody Company company){
        return companyService.addCompany(company);
    }
}
