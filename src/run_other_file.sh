SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd "$SCRIPT_DIR"

# .save
rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".save b.db"
rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".save b.db"

# .backup
rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".backup b.db"
rm a.db
sqlite3 a.db \
"create table T(C text);" \
"insert into T values('AAA');" \
"select * from T;" \
".backup b.db"

