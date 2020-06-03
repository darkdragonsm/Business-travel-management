package btm.repository;

import btm.entity.CompanyWorkflow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CompanyWorkflowRepository extends JpaRepository<CompanyWorkflow, Integer> {
}
