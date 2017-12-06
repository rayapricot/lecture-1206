# テクノロジー（藤原）12/6授業

## Bashの実行ログ

```
rayapricot:~/workspace $ git clone git@github.com:rayapricot/lecture-1206.git
Cloning into 'lecture-1206'...
Warning: Permanently added 'github.com,192.30.253.112' (RSA) to the list of known hosts.
remote: Counting objects: 95, done.
remote: Compressing objects: 100% (79/79), done.
remote: Total 95 (delta 2), reused 95 (delta 2), pack-reused 0
Receiving objects: 100% (95/95), 38.69 KiB | 222.00 KiB/s, done.
Resolving deltas: 100% (2/2), done.
rayapricot:~/workspace $ cd lecture-1206/
rayapricot:~/workspace/lecture-1206 (master) $ cd asagao/
rayapricot:~/workspace/lecture-1206/asagao (master) $ bundle install
The latest bundler is 1.16.0, but you are currently running 1.15.4.
To update, run `gem install bundler`
The git source `git://github.com/flori/json.git` uses the `git` protocol, which transmits data without encryption. Disable this warning with `bundle config git.allow_insecure true`, or switch to the `https` protocol to keep your data secure.
Warning: the running version of Bundler (1.15.4) is older than the version that created the lockfile (1.16.0). We suggest you upgrade to the latest version of Bundler by running `gem install bundler`.
Using rake 12.2.1
Using concurrent-ruby 1.0.5
Using minitest 5.10.3
Using thread_safe 0.3.6
Using builder 3.2.3
Using erubis 2.7.0
Using mini_portile2 2.3.0
Using crass 1.0.2
Using rack 1.6.8
Using mini_mime 0.1.4
Using arel 6.0.4
Using debug_inspector 0.0.3
Using bundler 1.15.4
Using byebug 9.1.0
Using coffee-script-source 1.8.0
Using execjs 2.7.0
Using thor 0.20.0
Using ffi 1.9.18
Using multi_json 1.12.2
Using json 1.8.6 from git://github.com/flori/json.git (at v1.8@7f4cfd8)
Using rb-fsevent 0.10.2
Using rdoc 4.3.0
Using tilt 2.0.8
Using sqlite3 1.3.13
Using turbolinks-source 5.0.3
Using i18n 0.9.1
Using tzinfo 1.2.4
Using nokogiri 1.8.1
Using rack-test 0.6.3
Using sprockets 3.7.1
Using mail 2.7.0
Using binding_of_caller 0.7.3
Using coffee-script 2.4.1
Using uglifier 3.2.0
Using rb-inotify 0.9.10
Using sdoc 0.4.2
Using turbolinks 5.0.1
Using activesupport 4.2.10
Using loofah 2.1.1
Using sass-listen 4.0.0
Using rails-deprecated_sanitizer 1.0.3
Using globalid 0.4.1
Using activemodel 4.2.10
Using jbuilder 2.7.0
Using spring 2.0.2
Using rails-html-sanitizer 1.0.3
Using activejob 4.2.10
Using activerecord 4.2.10
Using activerecord 4.2.10
Using actionview 4.2.10
Using actionpack 4.2.10
Using actionmailer 4.2.10
Using railties 4.2.10
Using sprockets-rails 3.2.1
Using coffee-rails 4.1.1
Using jquery-rails 4.3.1
Using rails 4.2.10
Using sass-rails 5.0.6
Using web-console 2.3.0
Bundle complete! 15 Gemfile dependencies, 60 gems now installed.
Use `bundle info [gemname]` to see where a bundled gem is installed.
rayapricot:~/workspace/lecture-1206/asagao (master) $  bin/rails g model memberasagao (master) $ bin/rake db:create
      invoke  active_record
      create    db/migrate/20171206013818_create_members.rb
      create    app/models/member.rb
rayapricot:~/workspace/lecture-1206/asagao (master) $  bin/rake db:migrate
== 20171206013818 CreateMembers: migrating ====================================
-- create_table(:members)
   -> 0.0009s
== 20171206013818 CreateMembers: migrated (0.0010s) ===========================

rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rails c
Loading development environment (Rails 4.2.10)
2.4.0 :001 >  Member.count
   (0.1ms)  SELECT COUNT(*) FROM "members"
 => 0 
2.4.0 :002 > member = Member.new
 => #<Member id: nil, number: nil, name: nil, full_name: nil, email: nil, birthday: nil, gender: 0, administrator: false, created_at: nil, updated_at: nil> 
2.4.0 :003 >  member.number = 1
 => 1 
2.4.0 :004 > member.name = "Taro"
 => "Taro" 
2.4.0 :005 > member.save
   (0.2ms)  begin transaction
  SQL (0.4ms)  INSERT INTO "members" ("number", "name", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["number", 1], ["name", "Taro"], ["created_at", "2017-12-06 01:42:41.285823"], ["updated_at", "2017-12-06 01:42:41.285823"]]
   (9.8ms)  commit transaction
 => true 
2.4.0 :006 > Member.first
  Member Load (0.4ms)  SELECT  "members".* FROM "members"  ORDER BY "members"."id" ASC LIMIT 1
 => #<Member id: 1, number: 1, name: "Taro", full_name: nil, email: nil, birthday: nil, gender: 0, administrator: false, created_at: "2017-12-06 01:42:41", updated_at: "2017-12-06 01:42:41"> 
2.4.0 :007 > pp Member.first
  Member Load (0.4ms)  SELECT  "members".* FROM "members"  ORDER BY "members"."id" ASC LIMIT 1
#<Member:0x000000050e9f98
 id: 1,
 number: 1,
 name: "Taro",
 full_name: nil,
 email: nil,
 birthday: nil,
 gender: 0,
 administrator: false,
 created_at: Wed, 06 Dec 2017 10:42:41 JST +09:00,
 updated_at: Wed, 06 Dec 2017 10:42:41 JST +09:00>
 => #<Member id: 1, number: 1, name: "Taro", full_name: nil, email: nil, birthday: nil, gender: 0, administrator: false, created_at: "2017-12-06 01:42:41", updated_at: "2017-12-06 01:42:41"> 
2.4.0 :008 >  member = Member.first
  Member Load (0.3ms)  SELECT  "members".* FROM "members"  ORDER BY "members"."id" ASC LIMIT 1
 => #<Member id: 1, number: 1, name: "Taro", full_name: nil, email: nil, birthday: nil, gender: 0, administrator: false, created_at: "2017-12-06 01:42:41", updated_at: "2017-12-06 01:42:41"> 
2.4.0 :009 > member.number = 41
 => 41 
2.4.0 :010 > member.save
   (0.1ms)  begin transaction
  SQL (0.4ms)  UPDATE "members" SET "number" = ?, "updated_at" = ? WHERE "members"."id" = ?  [["number", 41], ["updated_at", "2017-12-06 01:43:47.824967"], ["id", 1]]
   (7.8ms)  commit transaction
 => true 
2.4.0 :011 > Member.first
  Member Load (0.4ms)  SELECT  "members".* FROM "members"  ORDER BY "members"."id" ASC LIMIT 1
 => #<Member id: 1, number: 41, name: "Taro", full_name: nil, email: nil, birthday: nil, gender: 0, administrator: false, created_at: "2017-12-06 01:42:41", updated_at: "2017-12-06 01:43:47"> 
2.4.0 :012 > exit
rayapricot:~/workspace/lecture-1206/asagao (master) $ mkdir -p db/seeds/development
rayapricot:~/workspace/lecture-1206/asagao (master) $ touch db/seeds/development/members.rb
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rake db:reset
-- create_table("members", {:force=>:cascade})
   -> 0.0136s
-- initialize_schema_migrations_table()
   -> 0.0403s
-- create_table("members", {:force=>:cascade})
   -> 0.0092s
-- initialize_schema_migrations_table()
   -> 0.0185s
Creating members...
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rake db:seed
Creating members...
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rails c
Loading development environment (Rails 4.2.10)
2.4.0 :001 > pp Member.first
  Member Load (0.2ms)  SELECT  "members".* FROM "members"  ORDER BY "members"."id" ASC LIMIT 1
#<Member:0x00000001fd1550
 id: 1,
 number: 10,
 name: "Taro",
 full_name: "佐藤 太郎",
 email: "Taro@example.com",
 birthday: Tue, 01 Dec 1981,
 gender: 0,
 administrator: true,
 created_at: Wed, 06 Dec 2017 10:46:57 JST +09:00,
 updated_at: Wed, 06 Dec 2017 10:46:57 JST +09:00>
 => #<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57"> 
2.4.0 :002 > exit
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rails db
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite>  .tables
   ...> .schema members
   ...> exit
   ...> 
Error: incomplete SQL: .tables
.schema members
exit
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rails db
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> .tables
members            schema_migrations
sqlite> .schema members
CREATE TABLE "members" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "number" integer NOT NULL, "name" varchar NOT NULL, "full_name" varchar, "email" varchar, "birthday" date, "gender" integer DEFAULT 0 NOT NULL, "administrator" boolean DEFAULT 'f' NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
sqlite> SELECT * from members;
1|10|Taro|佐藤 太郎|Taro@example.com|1981-12-01|0|t|2017-12-06 01:46:57.311227|2017-12-06 01:46:57.311227
2|11|Jiro|鈴木 次郎|Jiro@example.com|1981-12-01|0|f|2017-12-06 01:46:57.324145|2017-12-06 01:46:57.324145
3|12|Hana|高橋 花子|Hana@example.com|1981-12-01|1|f|2017-12-06 01:46:57.335902|2017-12-06 01:46:57.335902
4|13|John|田中 太郎|John@example.com|1981-12-01|0|f|2017-12-06 01:46:57.347014|2017-12-06 01:46:57.347014
5|14|Mike|佐藤 次郎|Mike@example.com|1981-12-01|0|f|2017-12-06 01:46:57.356791|2017-12-06 01:46:57.356791
6|15|Sophy|鈴木 花子|Sophy@example.com|1981-12-01|1|f|2017-12-06 01:46:57.367165|2017-12-06 01:46:57.367165
7|16|Bill|高橋 太郎|Bill@example.com|1981-12-01|0|f|2017-12-06 01:46:57.376463|2017-12-06 01:46:57.376463
8|17|Alex|田中 次郎|Alex@example.com|1981-12-01|0|f|2017-12-06 01:46:57.384692|2017-12-06 01:46:57.384692
9|18|Mary|佐藤 花子|Mary@example.com|1981-12-01|1|f|2017-12-06 01:46:57.395401|2017-12-06 01:46:57.395401
10|19|Tom|鈴木 太郎|Tom@example.com|1981-12-01|0|f|2017-12-06 01:46:57.404663|2017-12-06 01:46:57.404663
11|10|Taro|佐藤 太郎|Taro@example.com|1981-12-01|0|t|2017-12-06 01:47:09.128304|2017-12-06 01:47:09.128304
12|11|Jiro|鈴木 次郎|Jiro@example.com|1981-12-01|0|f|2017-12-06 01:47:09.140363|2017-12-06 01:47:09.140363
13|12|Hana|高橋 花子|Hana@example.com|1981-12-01|1|f|2017-12-06 01:47:09.150125|2017-12-06 01:47:09.150125
14|13|John|田中 太郎|John@example.com|1981-12-01|0|f|2017-12-06 01:47:09.158916|2017-12-06 01:47:09.158916
15|14|Mike|佐藤 次郎|Mike@example.com|1981-12-01|0|f|2017-12-06 01:47:09.166964|2017-12-06 01:47:09.166964
16|15|Sophy|鈴木 花子|Sophy@example.com|1981-12-01|1|f|2017-12-06 01:47:09.175180|2017-12-06 01:47:09.175180
17|16|Bill|高橋 太郎|Bill@example.com|1981-12-01|0|f|2017-12-06 01:47:09.184703|2017-12-06 01:47:09.184703
18|17|Alex|田中 次郎|Alex@example.com|1981-12-01|0|f|2017-12-06 01:47:09.194712|2017-12-06 01:47:09.194712
19|18|Mary|佐藤 花子|Mary@example.com|1981-12-01|1|f|2017-12-06 01:47:09.203007|2017-12-06 01:47:09.203007
20|19|Tom|鈴木 太郎|Tom@example.com|1981-12-01|0|f|2017-12-06 01:47:09.211279|2017-12-06 01:47:09.211279
sqlite> qite
   ...> 
Error: incomplete SQL: qite
rayapricot:~/workspace/lecture-1206/asagao (master) $ bin/rails c
Loading development environment (Rails 4.2.10)
2.4.0 :001 > Members.ids
NameError: uninitialized constant Members
        from (irb):1
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :002 > Members.ids
NameError: uninitialized constant Members
        from (irb):2
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :003 > Members.ids
NameError: uninitialized constant Members
        from (irb):3
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :004 >  Members.ids
NameError: uninitialized constant Members
        from (irb):4
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :005 > Members.ids
NameError: uninitialized constant Members
        from (irb):5
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :006 > Member.ids
   (0.2ms)  SELECT "members"."id" FROM "members"
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20] 
2.4.0 :007 > member = Members.find(3)
NameError: uninitialized constant Members
        from (irb):7
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:110:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/console.rb:9:in `start'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:68:in `console'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands/commands_tasks.rb:39:in `run_command!'
        from /usr/local/rvm/gems/ruby-2.4.0@global/gems/railties-4.2.10/lib/rails/commands.rb:17:in `<top (required)>'
        from bin/rails:4:in `require'
        from bin/rails:4:in `<main>'
2.4.0 :008 > member = Member.find(3)
  Member Load (0.4ms)  SELECT  "members".* FROM "members" WHERE "members"."id" = ? LIMIT 1  [["id", 3]]
 => #<Member id: 3, number: 12, name: "Hana", full_name: "高橋 花子", email: "Hana@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57"> 
2.4.0 :009 > member.email
 => "Hana@example.com" 
2.4.0 :010 > member = Member.find_by(name: "Taro")
  Member Load (0.4ms)  SELECT  "members".* FROM "members" WHERE "members"."name" = ? LIMIT 1  [["name", "Taro"]]
 => #<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57"> 
2.4.0 :011 > member = Member.find_by(gender: 0, administrator: false)
  Member Load (0.3ms)  SELECT  "members".* FROM "members" WHERE "members"."gender" = ? AND "members"."administrator" = ? LIMIT 1  [["gender", 0], ["administrator", "f"]]
 => #<Member id: 2, number: 11, name: "Jiro", full_name: "鈴木 次郎", email: "Jiro@example.com", birthday: "1981-12-01", gender: 0, administrator: false, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57"> 
2.4.0 :012 > member = Member.find_by(gender: 1, administrator: true)
  Member Load (0.3ms)  SELECT  "members".* FROM "members" WHERE "members"."gender" = ? AND "members"."administrator" = ? LIMIT 1  [["gender", 1], ["administrator", "t"]]
 => nil 
2.4.0 :013 > member = Member.where(name: "Taro")
  Member Load (0.5ms)  SELECT "members".* FROM "members" WHERE "members"."name" = ?  [["name", "Taro"]]
 => #<ActiveRecord::Relation [#<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 11, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">]> 
2.4.0 :014 > puts member.to_sql
SELECT "members".* FROM "members" WHERE "members"."name" = 'Taro'
 => nil 
2.4.0 :015 > members = Member.where(name: "Taro")
  Member Load (0.2ms)  SELECT "members".* FROM "members" WHERE "members"."name" = ?  [["name", "Taro"]]
 => #<ActiveRecord::Relation [#<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 11, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">]> 
2.4.0 :016 > members = member.where("number < 20")
  Member Load (0.4ms)  SELECT "members".* FROM "members" WHERE "members"."name" = ? AND (number < 20)  [["name", "Taro"]]
 => #<ActiveRecord::Relation [#<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 11, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">]> 
2.4.0 :017 > members = Member.where(name: "Taro").where("number < 20")
  Member Load (0.2ms)  SELECT "members".* FROM "members" WHERE "members"."name" = ? AND (number < 20)  [["name", "Taro"]]
 => #<ActiveRecord::Relation [#<Member id: 1, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 11, number: 10, name: "Taro", full_name: "佐藤 太郎", email: "Taro@example.com", birthday: "1981-12-01", gender: 0, administrator: true, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">]> 
2.4.0 :018 > members = Member.where(gender: 1).order("number")
  Member Load (0.4ms)  SELECT "members".* FROM "members" WHERE "members"."gender" = ?  ORDER BY number  [["gender", 1]]
 => #<ActiveRecord::Relation [#<Member id: 3, number: 12, name: "Hana", full_name: "高橋 花子", email: "Hana@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 13, number: 12, name: "Hana", full_name: "高橋 花子", email: "Hana@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">, #<Member id: 6, number: 15, name: "Sophy", full_name: "鈴木 花子", email: "Sophy@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 16, number: 15, name: "Sophy", full_name: "鈴木 花子", email: "Sophy@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">, #<Member id: 9, number: 18, name: "Mary", full_name: "佐藤 花子", email: "Mary@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:46:57", updated_at: "2017-12-06 01:46:57">, #<Member id: 19, number: 18, name: "Mary", full_name: "佐藤 花子", email: "Mary@example.com", birthday: "1981-12-01", gender: 1, administrator: false, created_at: "2017-12-06 01:47:09", updated_at: "2017-12-06 01:47:09">]> 
2.4.0 :019 > 
rayapricot:~/workspace/lecture-1206/asagao (master) $ cd 
rayapricot:~ $ cd workspace/lecture-1206/
rayapricot:~/workspace/lecture-1206 (master) $ git add *
rayapricot:~/workspace/lecture-1206 (master) $ git commit -m '12/6 Rails 課題'
[master e57ad69] 12/6 Rails 課題
 6 files changed, 75 insertions(+), 7 deletions(-)
 create mode 100644 asagao/app/models/member.rb
 create mode 100644 asagao/db/migrate/20171206013818_create_members.rb
 create mode 100644 asagao/db/schema.rb
 create mode 100644 asagao/db/seeds/development/members.rb
rayapricot:~/workspace/lecture-1206 (master) $ git push
Warning: Permanently added 'github.com,192.30.253.112' (RSA) to the list of known hosts.
Counting objects: 16, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (13/13), done.
Writing objects: 100% (16/16), 2.46 KiB | 2.46 MiB/s, done.
Total 16 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To github.com:rayapricot/lecture-1206.git
   0ec9323..e57ad69  master -> master
rayapricot:~/workspace/lecture-1206 (master) $ 
```