
CREATE DATABASE seckill;

use seckill;

DROP TABLE IF EXISTS seckill;
DROP TABLE IF EXISTS success_killed;

-- �������ݿ�
CREATE TABLE seckill (
  seckill_id bigint NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
  name VARCHAR(120) NOT NULL COMMENT '��Ʒ����',
  number int NOT NULL COMMENT '�������',
  start_time TIMESTAMP NOT NULL COMMENT '��ɱ����ʱ��',
  end_time TIMESTAMP NOT NULL COMMENT '��ɱ����ʱ��',
  create_time TIMESTAMP NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY(seckill_id),
  KEY idx_start_time(start_time),
  KEY idx_end_time(end_time),
  KEY idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT  CHARSET=utf8 COMMENT='��ɱ����';

-- ����һ��trigger
CREATE TRIGGER insert_seckill BEFORE INSERT ON seckill
  FOR EACH ROW SET NEW.create_time = now();

-- ��ʼ�����ݿ�
INSERT INTO seckill(name, number, start_time, end_time)
    VALUES
      ('1000Ԫ��ɱiPhone 7', 100, '2016-10-20 00:00:00', '2016-10-21 00:00:00'),
      ('500Ԫ��ɱNote 7', 100, '2016-10-20 00:00:00', '2016-10-21 00:00:00'),
      ('10Ԫ��ɱ�����', 10, '2016-10-20 00:00:00', '2016-10-21 00:00:00'),
      ('100Ԫ��ɱiPad Air', 50, '2016-10-20 00:00:00', '2016-10-21 00:00:00'),
      ('1Ԫ��ɱMate7', 20, '2016-10-20 00:00:00', '2016-10-21 00:00:00');

-- ��ɱ�ɹ���ϸ��
-- �Ñ���¼��֤
CREATE TABLE success_killed(
  seckill_id BIGINT NOT NULL COMMENT '�뚢��ƷID',
  user_phone BIGINT NOT NULL COMMENT '�û��ֻ���',
  state TINYINT NOT NULL DEFAULT -1 COMMENT '״̬',
  create_time TIMESTAMP NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (seckill_id, user_phone),
  KEY idx_create_time(create_time)
)ENGINE=InnoDB DEFAULT  CHARSET=utf8 COMMENT='��ɱ�Y������';

CREATE TRIGGER insert_success_killed BEFORE INSERT ON success_killed
FOR EACH ROW SET NEW.create_time = now();
-- mysql

