/*Anos bissextos entre 2000 e 2001*/

BEGIN
    FOR ANO IN 2000..2021 LOOP
        IF (MOD(ANO, 400) = 0) THEN
            DBMS_OUTPUT.PUT_LINE('O ano ' || ANO || ' é bissexto.');
        ELSIF (MOD(ANO, 4) = 0) AND (MOD(ANO, 100) != 0) THEN
            DBMS_OUTPUT.PUT_LINE('O ano ' || ANO || ' é bissexto.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('O ano ' || ANO || ' não é bissexto.');
        END IF;
    END LOOP;
END;
