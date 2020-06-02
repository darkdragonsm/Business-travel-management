package btm.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class ResponseDTO {
    private int status;
    private String message;
    private Object data;

    public ResponseDTO(String message) {
        this.message = message;
    }

    public ResponseDTO(Object data) {
        this.data = data;
    }
}
