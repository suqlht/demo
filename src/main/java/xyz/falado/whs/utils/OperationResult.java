package xyz.falado.whs.utils;

/**
 * @ Author     ：apple.
 * @ Date       ：2018/6/22
 * @ Description：
 * @ Modified By：
 * @Version: $
 */
public class OperationResult {
    String code;
    String message;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public OperationResult(){
        this.code="0000";
        this.message = "success";
    }
    public OperationResult(String code,String message){
        this.code=code;
        this.message = message;
    }
}
