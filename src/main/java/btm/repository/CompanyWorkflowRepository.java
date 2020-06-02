package btm.repository;

import btm.model.CompanyWorkflow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyWorkflowRepository extends JpaRepository<CompanyWorkflow, Integer> {
}
