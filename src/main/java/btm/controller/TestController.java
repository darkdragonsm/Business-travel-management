package btm.controller;

import btm.dto.response.ResponseDTO;
import btm.util.Constant;
import btm.util.URL;
import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(URL.API)
public class TestController {
    public static final Logger logger = Logger.getLogger(TestController.class);

    //test controller
    @GetMapping(URL.TEST)
    public ResponseEntity getTest (){
        logger.info(Constant.BEGIN_CONTROLLER + "getTest");
        try {

            return new ResponseEntity(new ResponseDTO("Hello world"), HttpStatus.OK);
        }catch (Exception ex){
            logger.error(ex);
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }finally {
            logger.info(Constant.END_CONTROLLER + "getTest");
        }
    }
}
