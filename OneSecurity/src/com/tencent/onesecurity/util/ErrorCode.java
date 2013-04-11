package com.tencent.onesecurity.util;

/**
 *  错误、异常相关的常量字段
 *  From QD1.2
 *  @author Jess Yan
 *
 */
public class ErrorCode {

    public static final int ERR_NONE               = 0;
    public static final int ERR_OPEN_CONNECTION    = -1000;
    public static final int ERR_POST               = -2000;
    public static final int ERR_GET                = -3000;
    public static final int ERR_RESPONSE           = -4000;
    public static final int ERR_RECEIVE            = -5000;
    
    public static final int ERR_WUP                = -6000;
    public static final int ERR_FILE_OP            = -7000;
    
    public static final int ERR_PROTOCOL           = -51;
    public static final int ERR_NO_CONNECTION      = -52;
    public static final int ERR_URL_MALFORMED      = -53;
    public static final int ERR_SOCKET             = -54;
    public static final int ERR_SOCKET_TIMEOUT     = -55;
    public static final int ERR_IO_EXCEPTION       = -56;
    public static final int ERR_ILLEGAL_ARG        = -57;
    public static final int ERR_SECURITY           = -58;
    public static final int ERR_UNSUPPORTED_OP     = -59;
    public static final int ERR_ILLEGAL_ACCESS     = -60;
    public static final int ERR_ILLEGAL_STATE      = -61;
    
    public static final int ERR_NOT_FOUND          = -1;
    public static final int ERR_GENERAL            = -2;
    public static final int ERR_CANCEL             = -3;
    public static final int ERR_NO_MEMORY          = -4;
    public static final int ERR_NOT_SUPPORTED      = -5;
    public static final int ERR_ARGUMENT           = -6;
    
    public static enum ErrorType {
        NETWORK,
        WUP,
        CANCEL,
        OTHER
    }
    
    public static ErrorType judgeErrorCode(int errCode) {
        ErrorType type = ErrorType.OTHER;
        
        if (-((-errCode) % 100) == ERR_CANCEL) {
            type = ErrorType.CANCEL;
        } else {
            switch (-((-errCode) / 1000 * 1000)) {
            case ERR_OPEN_CONNECTION:
            case ERR_POST:
            case ERR_GET:
            case ERR_RESPONSE:
            case ERR_RECEIVE:
                type = ErrorType.NETWORK;
                break;
                
            default:
                break;
            }
        }
        
        return type;
    }
}
