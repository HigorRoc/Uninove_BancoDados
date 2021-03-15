CREATE USER scott
IDENTIFIED by tiger
DEFAULT TABLESPACE USERS
QUOTA UNLIMITED ON USERS;

GRANT CREATE SESSION TO scott;
GRANT ALL PRIVILEGES TO scott;



//Observação
//Lembrando que você pode mudar o nome de SCOTT para outro e a senha TIGER para outra senha também
