declare @fantasia  varchar(40)
-- -----------------------------------
declare X CURSOR FOR
   SELECT fantasia FROM vmPlatinum 
OPEN X  -- ABRE
-- ------------------------------------
FETCH NEXT FROM X INTO @fantasia
print 'CLIENTE Platinum'
WHILE @@FETCH_STATUS=0 begin
    PRINT '>>' +  @fantasia
    FETCH NEXT FROM X INTO @fantasia
end
-- ------------------------------------
CLOSE x -- FECHA
deallocate x -- SOME COM ELE