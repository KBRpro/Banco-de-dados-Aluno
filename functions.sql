CREATE OR REPLACE FUNCTION public.funcionario_log()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
INSERT INTO funcionario_funcionarios_auditoria
(log_id, data_criacao)
VALUES
(new.codigo_func, current_timestamp);
RETURN NEW;
END;
$function$
;

CREATE OR REPLACE FUNCTION public.gin_btree_consistent(internal, smallint, anyelement, integer, internal, internal)
 RETURNS boolean
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_btree_consistent$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_anyenum(anyenum, anyenum, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_anyenum$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_bit(bit, bit, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_bit$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_bool(boolean, boolean, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_bool$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_bpchar(character, character, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_bpchar$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_bytea(bytea, bytea, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_bytea$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_char("char", "char", smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_char$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_cidr(cidr, cidr, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_cidr$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_date(date, date, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_date$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_float4(real, real, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_float4$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_float8(double precision, double precision, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_float8$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_inet(inet, inet, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_inet$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_int2(smallint, smallint, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_int2$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_int4(integer, integer, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_int4$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_int8(bigint, bigint, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_int8$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_interval(interval, interval, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_interval$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_macaddr(macaddr, macaddr, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_macaddr$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_macaddr8(macaddr8, macaddr8, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_macaddr8$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_money(money, money, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_money$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_name(name, name, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_name$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_numeric(numeric, numeric, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_numeric$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_oid(oid, oid, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_oid$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_text(text, text, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_text$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_time(time without time zone, time without time zone, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_time$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_timestamp(timestamp without time zone, timestamp without time zone, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_timestamp$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_timestamptz(timestamp with time zone, timestamp with time zone, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_timestamptz$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_timetz(time with time zone, time with time zone, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_timetz$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_uuid(uuid, uuid, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_uuid$function$
;

CREATE OR REPLACE FUNCTION public.gin_compare_prefix_varbit(bit varying, bit varying, smallint, internal)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_compare_prefix_varbit$function$
;

CREATE OR REPLACE FUNCTION public.gin_enum_cmp(anyenum, anyenum)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_enum_cmp$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_anyenum(anyenum, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_anyenum$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_bit(bit, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_bit$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_bool(boolean, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_bool$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_bpchar(character, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_bpchar$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_bytea(bytea, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_bytea$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_char("char", internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_char$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_cidr(cidr, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_cidr$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_date(date, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_date$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_float4(real, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_float4$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_float8(double precision, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_float8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_inet(inet, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_inet$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_int2(smallint, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_int2$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_int4(integer, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_int4$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_int8(bigint, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_int8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_interval(interval, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_interval$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_macaddr(macaddr, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_macaddr$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_macaddr8(macaddr8, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_macaddr8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_money(money, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_money$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_name(name, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_name$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_numeric(numeric, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_numeric$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_oid(oid, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_oid$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_text(text, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_text$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_time(time without time zone, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_time$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_timestamp(timestamp without time zone, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_timestamp$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_timestamptz(timestamp with time zone, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_timestamptz$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_timetz(time with time zone, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_timetz$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_uuid(uuid, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_uuid$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_query_varbit(bit varying, internal, smallint, internal, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_query_varbit$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_anyenum(anyenum, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_anyenum$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_bit(bit, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_bit$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_bool(boolean, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_bool$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_bpchar(character, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_bpchar$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_bytea(bytea, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_bytea$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_char("char", internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_char$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_cidr(cidr, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_cidr$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_date(date, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_date$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_float4(real, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_float4$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_float8(double precision, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_float8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_inet(inet, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_inet$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_int2(smallint, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_int2$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_int4(integer, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_int4$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_int8(bigint, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_int8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_interval(interval, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_interval$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_macaddr(macaddr, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_macaddr$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_macaddr8(macaddr8, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_macaddr8$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_money(money, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_money$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_name(name, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_name$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_numeric(numeric, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_numeric$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_oid(oid, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_oid$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_text(text, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_text$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_time(time without time zone, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_time$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_timestamp(timestamp without time zone, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_timestamp$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_timestamptz(timestamp with time zone, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_timestamptz$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_timetz(time with time zone, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_timetz$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_uuid(uuid, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_uuid$function$
;

CREATE OR REPLACE FUNCTION public.gin_extract_value_varbit(bit varying, internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_extract_value_varbit$function$
;

CREATE OR REPLACE FUNCTION public.gin_numeric_cmp(numeric, numeric)
 RETURNS integer
 LANGUAGE c
 IMMUTABLE STRICT
AS '$libdir/btree_gin', $function$gin_numeric_cmp$function$
;

CREATE OR REPLACE FUNCTION public.novo_patrocinador(patrocinador character varying, fk character varying)
 RETURNS void
 LANGUAGE plpgsql
AS $function$
	DECLARE
	ID integer DEFAULT 0;
	
	begin
		select count(*) into ID from Patrocinador;
		insert into Patrocinador values (ID+1, patrocinador, fk);
	end;
$function$
;

CREATE OR REPLACE FUNCTION public.numeroaleatorio(digitos integer)
 RETURNS integer
 LANGUAGE plpgsql
AS $function$
begin
return trunc(random()*power(10,digitos));
end;
$function$
;

CREATE OR REPLACE FUNCTION public.texto(tamanho integer)
 RETURNS text
 LANGUAGE plpgsql
AS $function$
declare
	chars text[] := '{0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}';
	result text := '';
	i integer := 0;
begin
	if tamanho < 0 then
		raise exception 'Tamanho dado nao pode ser menor que zero';
	end if;
	for i in 1..tamanho loop
		result := result || chars[1+random()*(array_length(chars, 1)-1)];
	end loop;
	return result;
end;
$function$
;
