package btm.request;

public class EmployeesListRequest {
    private int companyId;
    private String username;
    private String role;

    public EmployeesListRequest() {
    }

    public EmployeesListRequest(int companyId, String username, String role) {
        this.companyId = companyId;
        this.username = username;
        this.role = role;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
