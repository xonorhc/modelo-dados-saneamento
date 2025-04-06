CREATE OR REPLACE FUNCTION func_criacao ()
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
    COST 100 VOLATILE NOT LEAKPROOF
    AS $body$
BEGIN
    NEW.data_criacao = CURRENT_DATE;
    NEW.usuario_criacao = CURRENT_USER;
    RETURN NEW;
END;
$body$;

