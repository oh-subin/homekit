���� ���̺� ����
CREATE TABLE MEMBER (
NAME VARCHAR2(50) NOT NULL,
EMAIL VARCHAR2(50) NOT NULL PRIMARY KEY,
PW VARCHAR2(50) NOT NULL,
ADDRESS VARCHAR2(50),
TEL VARCHAR2(50)
)




���̺� �� ����(���)
INSERT INTO MEMBER values('�׽���', '��2','tester@roominterior.com', '123', '010-1233-3480')


delete from INTERIOR_user where userid='3'


���̺� ��ȸ(���)
SELECT * FROM MEMBER;
DELETE FROM interior_user WHERE userid='3'
SELECT * FROM interior_user;
SELECT * FROM interior_contents;
INSERT INTO interior_user (style15,style24,style54,style55)values('5', '3', '4', '3')

�� ����(���)
DELETE FROM MEMBER WHERE TEL='123'
----------------------------------------------------------------
ȨŰƮ ���̺� ����
CREATE TABLE HOMEKIT (
KIT_NAME VARCHAR2(100) NOT NULL,
KIT_STYLE VARCHAR2(50) NOT NULL,
KIT_IMG VARCHAR2(300) NOT NULL
)

���̺� �� ����(ȨŰƮ)
INSERT INTO HOMEKIT values('���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��', '����ũ&�ͽ�', 'HOMEKIT_IMG/1016 ���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��.jpg')

���̺� ��ȸ(ȨŰƮ)
SELECT * FROM HOMEKIT

�� ����(ȨŰƮ)
DELETE FROM HOMEKIT WHERE KIT_NAME='������ ���� ������ ��췯�� �ڸ��� ���� ���ǽ���'
----------------------------------------------------------------
��ǰ ���̺� ����
CREATE TABLE PRODUCT (
PRO_NAME VARCHAR2(50) NOT NULL,
PRO_STYLE VARCHAR2(50) NOT NULL,
PRO_PRICE NUMBER(30),
PRO_IMGPATH VARCHAR2(300) NOT NULL
)

CREATE TABLE REC_DATA (
IMG_NUM VARCHAR2(20) NOT NULL,
HOUSE_TYPE VARCHAR2(20) NOT NULL,
ACREAGE NUMBER(10)NOT NULL,
FAMILY VARCHAR2(30)NOT NULL,
TAG VARCHAR2(50)NOT NULL,
STYLE VARCHAR2(50)NOT NULL,
URL VARCHAR2(200)NOT NULL
)

CREATE TABLE REC_DATA2 (
IMG_NUM VARCHAR2(20) NOT NULL,
STAR VARCHAR2(20) NOT NULL
)

���̺� �� ����(��ǰ)
INSERT INTO PRODUCT values('���� ȭ��', 'Ŭ����', 17000, 'Product_img/Classic/787_7(���� ȭ��-17000).PNG')

���̺� ��ȸ(��ǰ)
SELECT * FROM PRODUCT

�� ����(��ǰ)
DELETE FROM PRODUCT WHERE PRO_NAME='�÷��� �ð�'

----------------------------------------------------------------
��ٱ��� ���̺� ����
CREATE TABLE CART (
CART_SEQ NUMBER(30) NOT NULL PRIMARY KEY,
EMAIL VARCHAR2(50) NOT NULL,
CONSTRAINT FK_CART FOREIGN KEY (EMAIL) REFERENCES MEMBER (EMAIL),
PRO_NAME VARCHAR2(50) NOT NULL,
PRO_CNT NUMBER(30) NOT NULL,
PRO_PRICE NUMBER(30) NOT NULL,
PRO_IMGPATH VARCHAR2(300) NOT NULL
)

���̺� �� ����(��ٱ���)
INSERT INTO CART values(CART_SEQ.nextval, 'ken1204@naver.com', '���� ȭ��', 1, 17000, 'Product_img/Classic/787_7(���� ȭ��-17000).PNG')

���̺� ��ȸ(��ٱ���)
SELECT * FROM CART

�� ����(��ٱ���)
DELETE FROM CART WHERE PRO_NAME='���̽� ���ĵ�'

������ ����(��ٱ���)
CREATE SEQUENCE CART_SEQ
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
CYCLE

������ ����(��ٱ���)
DROP SEQUENCE CART_SEQ
----------------------------------------------------------------

���̺� ����(����)
--DROP TABLE MEMBER;
--DROP TABLE HOMEKIT;
--DROP TABLE PRODUCT;
--DROP TABLE CART;





���̺� ��ȸ(������ ��� ���͸� ������) 
SELECT * FROM INTERIOR_CONTENTS
--DROP TABLE INTERIOR_CONTENTS

���̺� ��ȸ(����� ��� ���͸� ������)
SELECT * FROM INTERIOR_USER
--DROP TABLE INTERIOR_USER