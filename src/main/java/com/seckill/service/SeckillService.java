package com.seckill.service;

import com.seckill.dto.Exposer;
import com.seckill.dto.SeckillExcution;
import com.seckill.entity.Seckill;
import com.seckill.exception.RepeatKillException;
import com.seckill.exception.SeckillCloseException;
import com.seckill.exception.SeckillException;

import java.util.List;

/**
 * Created by TONG on 2016/10/22.
 * ҵ��ӿ�
 * 1. �����������ȣ���������������/�쳣
 * 2.
 *
 */
public interface SeckillService {
    List<Seckill> getSeckkillList();

    Seckill getById (long seckillId);

    /*
        ��ɱ��ʼʱ�����ɱ��ַ���������ϵͳʱ�����ɱʱ��
     */
    Exposer exportSeckillUrl (long seckillId);

    SeckillExcution executeSeckill (long seckillId, long userPhone, String md5)
            throws SeckillException,SeckillCloseException, RepeatKillException;
}
