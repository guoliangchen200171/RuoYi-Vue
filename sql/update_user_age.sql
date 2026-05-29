-- 用户表新增年龄字段，已有用户默认18岁
ALTER TABLE sys_user ADD COLUMN age int(3) DEFAULT 18 COMMENT '年龄' AFTER sex;
UPDATE sys_user SET age = 18 WHERE age IS NULL;
