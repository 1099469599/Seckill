package com.seckill.exception;

/**
 * �ظ���ɱ�쳣 (�������쳣)
 * Created by TONG on 2016/10/22.
 */
public class RepeatKillException extends SeckillException{
    public RepeatKillException(String message) {
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
