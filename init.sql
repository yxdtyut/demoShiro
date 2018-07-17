-- 权限表 --
CREATE TABLE permission(
  pid INT(11) NOT NULL auto_increment,
  pname VARCHAR(255) NOT NULL DEFAULT '',
  url VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (pid)
) ENGINE = Innodb DEFAULT charset = utf8;

insert into permission (pid,pname,url) VALUES ('1','add','');
insert into permission (pid,pname,url) VALUES ('2','edit','');
insert into permission (pid,pname,url) VALUES ('3','delete','');
insert into permission (pid,pname,url) VALUES ('4','query','');


-- 用户表 --
CREATE TABLE user(
  uid INT(11) NOT NULL auto_increment,
  username VARCHAR(255) not null DEFAULT '',
  `password` VARCHAR(255) not null DEFAULT '',
  PRIMARY KEY (uid)
)ENGINE = Innodb DEFAULT charset = utf8;

insert into user VALUES ('1','admin','admin');
insert into user VALUES ('2','test','test');


-- 角色表 --
CREATE TABLE role(
  rid int(11) NOT NULL auto_increment,
  rname VARCHAR(255) NOT  NULL DEFAULT '',
  PRIMARY KEY (rid)
) ENGINE = Innodb DEFAULT charset = utf8;

insert into role VALUES ('1','admin');
insert into role VALUES ('2','customer');


-- 权限角色关系表 --
CREATE TABLE permission_role(
  rid INT(11) not null,
  pid int(11) not null,
  key idx_rid(rid),
  key idx_pid(pid)
)ENGINE = Innodb DEFAULT charset = utf8;
insert into permission_role VALUES ('1','1');
insert into permission_role VALUES ('1','2');
insert into permission_role VALUES ('1','3');
insert into permission_role VALUES ('1','4');
insert into permission_role VALUES ('2','1');
insert into permission_role VALUES ('2','4');

-- 用户角色关系表 --
CREATE TABLE user_role(
  uid INT(11) not null,
  rid int(11) not null,
  key idx_uid(uid),
  key idx_rid(rid)
)ENGINE = Innodb DEFAULT charset = utf8;

insert into user_role VALUES ('1','1');
insert into user_role VALUES ('2','2');