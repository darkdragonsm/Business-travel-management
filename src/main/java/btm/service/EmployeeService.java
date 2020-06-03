package btm.service;

import btm.request.EmployeesListRequest;
import btm.response.EmployeesListResponse;

import java.util.List;

public interface EmployeeService {
    public List<EmployeesListResponse> createEmployees(List<EmployeesListRequest> request) throws Exception;
}
