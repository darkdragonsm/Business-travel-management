package btm.service;

import btm.dto.response.ResponseDTO;
import btm.entity.Company;
import btm.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CompanyService {
    @Autowired
    private CompanyRepository companyRepository;
    public ResponseDTO addCompany(Company company){
        ResponseDTO dto = new ResponseDTO();
        dto.setData(companyRepository.save(company));
        return dto;
    }
}
