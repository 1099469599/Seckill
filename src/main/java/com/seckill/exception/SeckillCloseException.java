package com.seckill.exception;

/**
 * ��ɱ�ر��쳣
 * Created by TONG on 2016/10/22.
 */
public class SeckillCloseException extends SeckillException{
    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
