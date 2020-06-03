package btm.imp.service;

        import btm.entity.Company;
        import btm.entity.Employee;
        import btm.entity.Role;
        import btm.repository.CompanyRepository;
        import btm.repository.EmployeeRepository;
        import btm.repository.RoleRepository;
        import btm.request.EmployeesListRequest;
        import btm.response.EmployeesListResponse;
        import btm.service.EmployeeService;
        import btm.util.Constant;
        import btm.util.Message;
        import btm.util.PasswordUtil;
        import org.apache.log4j.Logger;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.stereotype.Service;

        import java.util.ArrayList;
        import java.util.List;

@Service
public class EmployeeServiceImp implements EmployeeService {

    private static final Logger logger = Logger.getLogger(EmployeeServiceImp.class);

    @Autowired
    EmployeeRepository employeeRepository;

    @Autowired
    CompanyRepository companyRepository;

    @Autowired
    RoleRepository roleRepository;

    @Override
    public List<EmployeesListResponse> createEmployees(List<EmployeesListRequest> request) throws Exception {
        logger.info(Constant.BEGIN_SERVICE + "createEmployees");
        try {
                if(request.isEmpty()){
                    throw new Exception(Message.LIST_EMPLOYEES_EMPTY);
                }
                List<EmployeesListResponse> responses = new ArrayList<>();
                Company company = companyRepository.findById(request.get(0).getCompanyId());
                for(int i = 0; i < request.size(); i++){
                    //insert employees into DB
                    if(employeeRepository.findById(request.get(i).getUsername()).isPresent()){
                        throw new Exception(Message.ACCOUNT_EXIST);
                    }
                    Employee employee = new Employee();
                    employee.setUsername(request.get(i).getUsername());
                    Role role = roleRepository.findByName(request.get(i).getRole());
                    if(role == null){
                        throw new Exception(Message.ROLE_NOT_FOUND);
                    }
                    employee.setRole(role);
                    employee.setCompany(company);
                    employee.setPassword(PasswordUtil.generateRandomPassword(Constant.LENGTH, Constant.NUM_ORIGIN, Constant.NUM_BOUND));
                    employee.setStatus(Constant.ACTIVE);
                    employee.setFirst(Constant.FALSE);
                    // ** bCryptPasswordEncoder here **
                    //response
                    EmployeesListResponse employeesListResponse = new EmployeesListResponse();
                    employeesListResponse.setCompanyId(company.getId());
                    employeesListResponse.setCompanyName(company.getName());
                    employeesListResponse.setUsername(employee.getUsername());
                    employeesListResponse.setPassword(employee.getPassword());

                    employeeRepository.save(employee);
                    responses.add(employeesListResponse);
                }

                return  responses;

        }finally {
            logger.info(Constant.END_SERVICE + "createEmployees");
        }
    }

}
