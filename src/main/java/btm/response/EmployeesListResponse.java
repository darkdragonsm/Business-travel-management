package btm.response;

public class EmployeesListResponse {
    private int companyId;
    private String companyName;
    private String username;
    private String password;

    public EmployeesListResponse(int companyId, String companyName, String username, String password) {
        this.companyId = companyId;
        this.companyName = companyName;
        this.username = username;
        this.password = password;
    }

    public EmployeesListResponse() {
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
