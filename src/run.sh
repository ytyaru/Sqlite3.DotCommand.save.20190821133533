SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

sqlite3 :memory: ".save a.db"
sqlite3 :memory: ".save a.db"

# 上書き
sqlite3 :memory: \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".save a.db"
sqlite3 :memory: \
"create table T(C text);" \
"insert into T values('BBB');" \
"select * from T;" \
".save a.db"
