package btm.controller;

import btm.request.EmployeesListRequest;
import btm.service.EmployeeService;
import btm.util.Constant;
import btm.util.URL;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping(URL.API)
@RestController
public class EmployeeController {
    private static final Logger logger = Logger.getLogger(EmployeeController.class);

    @Autowired
    EmployeeService employeeService;

    //create employees
    @PostMapping(URL.CREATE_EMPLOYEE)
    public ResponseEntity createEmployees (@RequestBody List<EmployeesListRequest> request){
        logger.info(Constant.BEGIN_CONTROLLER + "createEmployees");
        try {
            return new ResponseEntity(employeeService.createEmployees(request), HttpStatus.OK);
        }catch (Exception ex){
            logger.error(ex);
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }finally {
            logger.info(Constant.END_CONTROLLER + "createEmployees");
        }
    }
}
