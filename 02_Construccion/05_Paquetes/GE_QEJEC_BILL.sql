CREATE OR REPLACE PACKAGE GE_QEJEC_BILL AS

PROCEDURE CURSOR_DATOS;  

PROCEDURE PRINT
(
    p_user_user ge_tuser.user_user%type
)
;  

END GE_QEJEC_BILL;
/

CREATE OR REPLACE PACKAGE BODY GE_QEJEC_BILL AS

PROCEDURE CURSOR_DATOS  
IS


    CURSOR C_DATOS IS
        SELECT  * 
        FROM    GE_TUSER  , ge_trgla
        WHERE   USER_ESTA = rgla_esta 
        and     user_user = rgla_nick;
        
    V_REGLA VARCHAR2 (1000);   
    V_SQL   VARCHAR2 (4000);
        
BEGIN

    for i in C_DATOS loop
        V_REGLA := i.rgla_plsql;
        V_SQL :=  'DECLARE BEGIN ' || V_REGLA || '('''||i.user_name||'''); END;' || CHR(10);  
        dbms_output.put_line(i.user_user||'regla '||i.rgla_plsql);
    end loop;
    
    EXECUTE IMMEDIATE V_SQL;
   

        
END CURSOR_DATOS;

PROCEDURE PRINT
(
    p_user_user ge_tuser.user_user%type
)
is

begin

    dbms_output.put_line(P_USER_USER);

end PRINT;



END GE_QEJEC_BILL;
/
