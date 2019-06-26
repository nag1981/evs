
--CREATE A TABLE FOR USERNAME PASSWORD STANDALONE APPLICATION--

CREATE TABLE ACC_LOGIN (
    CONTACT_ID NUMBER PRIMARY KEY ,
    FIRST_NAME VARCHAR (50),
    LAST_NAME VARCHAR (50),
    PHONE VARCHAR(20),
    ADDRESS VARCHAR(100),
    STATE VARCHAR(20),
    ZIP VARCHAR(10),
    USER_NAME VARCHAR(10)NOT NULL,
    PASSWORD VARCHAR(10)NOT NULL,    
    CREATED_TMSTP DATE,
    MODIFIED_TMSTP DATE,
    CREATED_BY VARCHAR(20),
    MODIFIED_BY VARCHAR(20),
    DELETE_TMSTP DATE,
    DELETED_BY VARCHAR(50)
);


SET DEFINE OFF;


Insert into acc_login
   (CONTACT_ID, FIRST_NAME, LAST_NAME, PHONE, ADDRESS, 
    STATE, ZIP, USER_NAME, PASSWORD, CREATED_TMSTP, 
    MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, DELETE_TMSTP, DELETED_BY)
 Values
   (101, 'Nagarjuna', 'Yedla', '407-437-4135', 'Sunnyvale', 
    'CA', '60559', 'NyedlaT', 'N12345', TO_DATE('6/21/2019 1:32:32 PM', 'MM/DD/YYYY HH:MI:SS AM'), 
    TO_DATE('6/21/2019 1:32:37 PM', 'MM/DD/YYYY HH:MI:SS AM'), 'NyedlaT', 'NyedlaT', TO_DATE('6/21/2019 1:33:18 PM', 'MM/DD/YYYY HH:MI:SS AM'), 'NyedlaT');
    
    

COMMIT;


DROP TABLE USER_LOGIN; 

CREATE TABLE USER_LOGIN (
  USER_ID NUMBER (11),
  USERNAME VARCHAR(45) ,
  FIRSTNAME VARCHAR(45) ,
  LASTNAME VARCHAR(45),
  HASHED_PASSWORD VARCHAR(4000), 
  EMAIL VARCHAR(45),  
  CREATED_TMSTP DATE ,
  MODIFIED_TMSTP DATE,
  CREATED_BY VARCHAR(20),
  MODIFIED_BY VARCHAR(20),
  DELETE_TMSTP DATE ,
  DELETED_BY VARCHAR(50),
  CONSTRAINT PK_USER_ID PRIMARY KEY(USER_ID)
 );
 
    
Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10001, 'NYEDLAT', 'NAGARJUNA', 'YEDLA', 'Naagarjuna@123', 
    'nag.cfml@gmail.com', TO_DATE('06/24/2019 10:49:15', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 10:49:22', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT', 'NYEDLAT', 
    TO_DATE('06/24/2019 10:49:37', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT'); 



Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10003, 'YEDLA002', 'TEST2', 'TEST3', 'DFD18D3B4C56802568BF9ED4D0A745ADA12ACFFA6E75331E76EF7ABCC23DFB3C71CB2E82151E098378702563D5C265C37574D42C98BAF1392933A9F6215D55E1', 
    'test123@gmail.com', TO_DATE('06/24/2019 11:21:04', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:21:11', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT', 'NYEDLAT', 
    TO_DATE('06/24/2019 11:21:31', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT');
    
Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10002, 'YEDLA001', 'TEST1', 'TEST2', '900BA5C8DA8F10AE58D89782D31695A441CC3235AB2FD4BB82EA28AF2656EC92812F2BE656EA1A1756ECACE7C40D041CBDA139DE507E970E063CC9D9D74C084C', 
    'test@gmail.com', TO_DATE('06/24/2019 11:14:31', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:14:36', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT', 'NYEDLAT', 
    TO_DATE('06/24/2019 11:15:08', 'MM/DD/YYYY HH24:MI:SS'), 'SYSDATE');
    

Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10003, 'YEDLA002', 'TEST2', 'TEST3', 'DFD18D3B4C56802568BF9ED4D0A745ADA12ACFFA6E75331E76EF7ABCC23DFB3C71CB2E82151E098378702563D5C265C37574D42C98BAF1392933A9F6215D55E1', 
    'test123@gmail.com', TO_DATE('06/24/2019 11:21:04', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:21:11', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT', 'NYEDLAT', 
    TO_DATE('06/24/2019 11:21:31', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT');
    
Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10005, 'yedla004', 'test4', 'test5', '9E533033049E38E933BF5036616D8F9A9A26A9BE229A86FF1DAD6758B4AD0BDBA279DB7557AD7BE5844984BAFAEB9562CBF5424413D42E74E18BFB773DC3FE5E', 
    'test@789@gmail.com', TO_DATE('06/24/2019 11:48:40', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:48:46', 'MM/DD/YYYY HH24:MI:SS'), 'nyedlat', 'nyedlat', 
    TO_DATE('06/24/2019 11:49:04', 'MM/DD/YYYY HH24:MI:SS'), 'nyedlat');
    
Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10004, 'yedla003', 'test3', 'test4', '1A943763EA60A905B1A0CFFFB5A044AD1B36CF2D7163E7A6843D63EEE196BD4930ED65F43897E9387D6882CD5A7AF93E04DA6DBB0B9DA32CAE11180A923DA420', 
    'test456@gmail.com', TO_DATE('06/24/2019 11:46:21', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:46:24', 'MM/DD/YYYY HH24:MI:SS'), 'nyedlat', 'nyedlat', 
    TO_DATE('06/24/2019 11:46:39', 'MM/DD/YYYY HH24:MI:SS'), 'nyedlat');
    
Insert into USER_LOGIN
   (USER_ID, USERNAME, FIRSTNAME, LASTNAME, HASHED_PASSWORD, 
    EMAIL, CREATED_TMSTP, MODIFIED_TMSTP, CREATED_BY, MODIFIED_BY, 
    DELETE_TMSTP, DELETED_BY)
 Values
   (10002, 'YEDLA001', 'TEST1', 'TEST2', '900BA5C8DA8F10AE58D89782D31695A441CC3235AB2FD4BB82EA28AF2656EC92812F2BE656EA1A1756ECACE7C40D041CBDA139DE507E970E063CC9D9D74C084C', 
    'test@gmail.com', TO_DATE('06/24/2019 11:14:31', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/24/2019 11:14:36', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT', 'NYEDLAT', 
    TO_DATE('06/24/2019 11:15:08', 'MM/DD/YYYY HH24:MI:SS'), 'NYEDLAT');
    
COMMIT;



    


SELECT * FROM USER_LOGIN; 

 