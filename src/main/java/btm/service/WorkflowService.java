package btm.service;

import btm.dto.response.ResponseDTO;
import btm.dto.request.WorkflowRequest;
import btm.dto.response.WorkflowResponse;
import btm.entity.Workflow;
import btm.entity.WorkflowStep;
import btm.repository.WorkflowRepository;
import btm.repository.WorkflowStepRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkflowService {
    @Autowired
    private WorkflowRepository workflowRepository;
    @Autowired
    private WorkflowStepRepository workflowStepRepository;
    public ResponseDTO addWorkflow(WorkflowRequest workflowRequest){
        ResponseDTO result = new ResponseDTO();
        Workflow workflow = new Workflow();
        workflow.setName(workflowRequest.getName());
        workflow = workflowRepository.save(workflow);
        String stepName;
        WorkflowStep workflowStep;
        for(int i = 0; i < workflowRequest.getSteps().size() ; i++){
            stepName = workflowRequest.getSteps().get(i);
            workflowStep = new WorkflowStep();
            workflowStep.setStepOrder(i+1);
            workflowStep.setStep(stepName);
            workflowStep.setWorkflow(workflow);
            workflowStepRepository.save(workflowStep);
        }
        WorkflowResponse workflowResponse = new WorkflowResponse();
        workflowResponse.setId(workflow.getId());
        workflowResponse.setName(workflow.getName());
        workflowResponse.setSteps(workflowRequest.getSteps());
        result.setData(workflowResponse);
        return result;
    }
}
