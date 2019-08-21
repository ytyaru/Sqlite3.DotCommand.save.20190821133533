SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".save a.db"

rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".backup a.db"

