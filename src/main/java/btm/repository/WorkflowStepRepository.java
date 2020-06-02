package btm.repository;

import btm.model.WorkflowStep;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WorkflowStepRepository extends JpaRepository<WorkflowStep, Integer> {
}
