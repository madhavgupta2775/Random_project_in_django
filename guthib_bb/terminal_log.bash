[09/Mar/2023 09:29:53] "GET /memo/ HTTP/1.1" 200 3926
[09/Mar/2023 09:29:53] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:30:20] "GET /memo/ HTTP/1.1" 200 3926
[09/Mar/2023 09:30:20] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:30:40] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:30:40] "GET /static/memo/main.css HTTP/1.1" 304 0
[09/Mar/2023 09:30:50] "GET /memo/about/ HTTP/1.1" 200 3018
[09/Mar/2023 09:30:50] "GET /static/memo/main.css HTTP/1.1" 304 0
[09/Mar/2023 09:32:23] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:32:23] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:32:41] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:32:41] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:32:46] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:32:46] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:32:52] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:32:52] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:32:57] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:32:57] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:34:53] "GET /memo/ HTTP/1.1" 200 3860
[09/Mar/2023 09:34:53] "GET /static/memo/main.css HTTP/1.1" 200 1439
[09/Mar/2023 09:36:43] "GET /memo/ HTTP/1.1" 200 3816
[09/Mar/2023 09:36:43] "GET /static/memo/main.css HTTP/1.1" 304 0
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ ls
db.sqlite3  guthib_bb  manage.py  memo  readme.md
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git add . && git commit -m "third commit (probably), fixed shit"
[main ff08b7f] third commit (probably), fixed shit
 5 files changed, 169 insertions(+), 10 deletions(-)
 create mode 100644 guthib_bb/memo/static/memo/main.css
 rewrite guthib_bb/memo/templates/memo/home.html (65%)
 create mode 100644 guthib_bb/readme.md
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git push origin main
Enumerating objects: 21, done.
Counting objects: 100% (21/21), done.
Delta compression using up to 16 threads
Compressing objects: 100% (9/9), done.
Writing objects: 100% (13/13), 7.09 KiB | 7.09 MiB/s, done.
Total 13 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/madhavgupta2775/Random_project_in_django.git
   62881ab..ff08b7f  main -> main
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git add . and commit -m "readme ver2.0"
error: unknown switch
usage: git add [<options>] [--] <pathspec>...

    -n, --dry-run         dry run
    -v, --verbose         be verbose

    -i, --interactive     interactive picking
    -p, --patch           select hunks interactively
    -e, --edit            edit current diff and apply
    -f, --force           allow adding otherwise ignored files
    -u, --update          update tracked files
    --renormalize         renormalize EOL of tracked files (implies -u)
    -N, --intent-to-add   record only the fact that the path will be added later
    -A, --all             add changes from all tracked and untracked files
    --ignore-removal      ignore paths removed in the working tree (same as --no-all)
    --refresh             don't add, only refresh the index
    --ignore-errors       just skip files which cannot be added because of errors
    --ignore-missing      check if - even missing - files are ignored in dry run
    --sparse              allow updating entries outside of the sparse-checkout cone
    --chmod (+|-)x        override the executable bit of the listed files
    --pathspec-from-file <file>
                          read pathspec from file
    --pathspec-file-nul   with --pathspec-from-file, pathspec elements are separated with NUL character

'
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git add . && git commit -m "readme ver2.0 commit try 2"
[main f42e47e] readme ver2.0 commit try 2
 1 file changed, 24 insertions(+), 1 deletion(-)
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git push origin main
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 1015 bytes | 1015.00 KiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/madhavgupta2775/Random_project_in_django.git
   ff08b7f..f42e47e  main -> main
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ 
 *  History restored 

madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git add . && git commit -m "scrapped off html of activity chart from cf"[main 2400d11] scrapped off html of activity chart from cf
 1 file changed, 381 insertions(+)
 create mode 100644 guthib_bb/activity_chart_cf_html.txt
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git push origin main
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 1.58 KiB | 1.58 MiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/madhavgupta2775/Random_project_in_django.git
   f42e47e..2400d11  main -> main
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git add . && git commit -m "scrapped off html of activity chart from github"
[main 47df227] scrapped off html of activity chart from github
 1 file changed, 610 insertions(+)
 create mode 100644 guthib_bb/activity_chart_github_html.txt
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ git push origin main
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 16 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (4/4), 6.90 KiB | 6.90 MiB/s, done.
Total 4 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/madhavgupta2775/Random_project_in_django.git
   2400d11..47df227  main -> main
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ 
 *  History restored 

madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ ls
activity_chart_cf_html.txt      db.sqlite3  manage.py  readme.md
activity_chart_github_html.txt  guthib_bb   memo
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ cd ..
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust$ cd guthib_bb/
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py makemigrations
Traceback (most recent call last):
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 22, in <module>
    main()
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 18, in main
    execute_from_command_line(sys.argv)
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 419, in execute_from_command_line
    utility.execute()
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 395, in execute
    django.setup()
  File "/usr/lib/python3/dist-packages/django/__init__.py", line 24, in setup
    apps.populate(settings.INSTALLED_APPS)
  File "/usr/lib/python3/dist-packages/django/apps/registry.py", line 114, in populate
    app_config.import_models()
  File "/usr/lib/python3/dist-packages/django/apps/config.py", line 301, in import_models
    self.models_module = import_module(models_module_name)
  File "/usr/lib/python3.10/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 883, in exec_module
  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 7, in <module>
    class Post(models.Model):
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 12, in Post
    author = models.ForignKey(User, on_delete=models.CASCADE)
AttributeError: module 'django.db.models' has no attribute 'ForignKey'. Did you mean: 'ForeignKey'?
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ ls
activity_chart_cf_html.txt      db.sqlite3  manage.py  readme.md
activity_chart_github_html.txt  guthib_bb   memo
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ cd ..
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust$ ls
guthib_bb  ven_v
madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust$ source ven_v/bin/activate
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust$ cd guthib_bb/
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ ls
activity_chart_cf_html.txt      db.sqlite3  manage.py  readme.md
activity_chart_github_html.txt  guthib_bb   memo
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py makemigrations
Traceback (most recent call last):
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 22, in <module>
    main()
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 18, in main
    execute_from_command_line(sys.argv)
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 419, in execute_from_command_line
    utility.execute()
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 395, in execute
    django.setup()
  File "/usr/lib/python3/dist-packages/django/__init__.py", line 24, in setup
    apps.populate(settings.INSTALLED_APPS)
  File "/usr/lib/python3/dist-packages/django/apps/registry.py", line 114, in populate
    app_config.import_models()
  File "/usr/lib/python3/dist-packages/django/apps/config.py", line 301, in import_models
    self.models_module = import_module(models_module_name)
  File "/usr/lib/python3.10/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 883, in exec_module
  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 7, in <module>
    class Post(models.Model):
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 12, in Post
    author = models.ForignKey(User, on_delete=models.CASCADE)
AttributeError: module 'django.db.models' has no attribute 'ForignKey'. Did you mean: 'ForeignKey'?
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python manage.py makemigrations
Command 'python' not found, did you mean:
  command 'python3' from deb python3
  command 'python' from deb python-is-python3
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py makemigrations
Traceback (most recent call last):
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 22, in <module>
    main()
  File "/home/madhav/pron/I_love_rust/guthib_bb/manage.py", line 18, in main
    execute_from_command_line(sys.argv)
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 419, in execute_from_command_line
    utility.execute()
  File "/usr/lib/python3/dist-packages/django/core/management/__init__.py", line 395, in execute
    django.setup()
  File "/usr/lib/python3/dist-packages/django/__init__.py", line 24, in setup
    apps.populate(settings.INSTALLED_APPS)
  File "/usr/lib/python3/dist-packages/django/apps/registry.py", line 114, in populate
    app_config.import_models()
  File "/usr/lib/python3/dist-packages/django/apps/config.py", line 301, in import_models
    self.models_module = import_module(models_module_name)
  File "/usr/lib/python3.10/importlib/__init__.py", line 126, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "<frozen importlib._bootstrap>", line 1050, in _gcd_import
  File "<frozen importlib._bootstrap>", line 1027, in _find_and_load
  File "<frozen importlib._bootstrap>", line 1006, in _find_and_load_unlocked
  File "<frozen importlib._bootstrap>", line 688, in _load_unlocked
  File "<frozen importlib._bootstrap_external>", line 883, in exec_module
  File "<frozen importlib._bootstrap>", line 241, in _call_with_frames_removed
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 7, in <module>
    class Post(models.Model):
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/models.py", line 12, in Post
    author = models.ForignKey(User, on_delete=models.CASCADE)
AttributeError: module 'django.db.models' has no attribute 'ForignKey'. Did you mean: 'ForeignKey'?
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py makemigrations
Migrations for 'memo':
  memo/migrations/0001_initial.py
    - Create model Post
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb
$ python3 manage.py sqlmigrate memo 0001
BEGIN;
--
-- Create model Post
--
CREATE TABLE "memo_post" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(100) NOT NULL, "content" text NOT NULL, "date_posted" datetime NOT NULL, "date_due" datetime NOT NULL, "author_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE INDEX "memo_post_author_id_70384ff2" ON "memo_post" ("author_id");
COMMIT;
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py migrate
Operations to perform:
  Apply all migrations: admin, auth, contenttypes, memo, sessions
Running migrations:
  Applying memo.0001_initial... OK
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py shell
Python 3.10.6 (main, Nov 14 2022, 16:10:14) [GCC 11.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from memo.models import Post
>>> from django.contrib.auth.models import User
>>> User.objects.all()
<QuerySet [<User: viole>, <User: test_user>]>
>>> User.objects.first()
<User: viole>
>>> User.objects.filter(username='viole')
<QuerySet [<User: viole>]>
>>> User.objects.filter(username='viole').first()
<User: viole>
>>> 




(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py shell
Python 3.10.6 (main, Nov 14 2022, 16:10:14) [GCC 11.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> user = User.objects.filter(username='viole').first()
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 90, in runcode
    exec(code, self.locals)
  File "<console>", line 1, in <module>
NameError: name 'User' is not defined
>>> User.objects.all()
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 90, in runcode
    exec(code, self.locals)
  File "<console>", line 1, in <module>
NameError: name 'User' is not defined
>>> from memo.models import Post
>>> from django.contrib.auth.models import User
>>> user = User.objects.filter(username='viole').first
>>> usre
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 90, in runcode
    exec(code, self.locals)
  File "<console>", line 1, in <module>
NameError: name 'usre' is not defined
>>> user
<bound method QuerySet.first of <QuerySet [<User: viole>]>>
>>> user.id
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 90, in runcode
    exec(code, self.locals)
  File "<console>", line 1, in <module>
AttributeError: 'function' object has no attribute 'id'
>>> user
<bound method QuerySet.first of <QuerySet [<User: viole>]>>
>>> user = User.objects.filter(username='viole').first()
>>> user
<User: viole>
>>> user.id
1
>>> user.pk
1
>>> user = User.objects.get(id=1)
>>> user
<User: viole>
>>> Post.objects.all()
<QuerySet []>
>>> post_1 = Post(title='memo 1', content='TODO for random_project: 1. Make only those posts visible to the user which he has created.', author=user, date_due= 2023-03-12 23:50:00)
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 63, in runsource
    code = self.compile(source, filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 153, in __call__
    return _maybe_compile(self.compiler, source, filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 70, in _maybe_compile
    compiler(source + "\n", filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 118, in __call__
    codeob = compile(source, filename, symbol, self.flags, True)
  File "<console>", line 1
    post_1 = Post(title='memo 1', content='TODO for random_project: 1. Make only those posts visible to the user which he has created.', author=user, date_due= 2023-03-12 23:50:00)
                                                                                                                                                                     ^
SyntaxError: leading zeros in decimal integer literals are not permitted; use an 0o prefix for octal integers
>>> post_1 = Post(title='memo 1', content='TODO for random_project: 1. Make only those posts visible to the user which he has created.', author=user, date_due='2023-03-12 23:50:00')
>>> Post.objects.all()
<QuerySet []>
>>> post_1.save()
/usr/lib/python3/dist-packages/django/db/models/fields/__init__.py:1416: RuntimeWarning: DateTimeField Post.date_due received a naive datetime (2023-03-12 23:50:00) while time zone support is active.
  warnings.warn("DateTimeField %s received a naive datetime (%s)"
>>> Post.objects.all()
<QuerySet [<Post: Post object (1)>]>
>>> exit()
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python manage.py shell
Command 'python' not found, did you mean:
  command 'python3' from deb python3
  command 'python' from deb python-is-python3
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py shell
Python 3.10.6 (main, Nov 14 2022, 16:10:14) [GCC 11.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
(InteractiveConsole)
>>> from memo.models import Post
>>> from django.contrib.auth.models import User
>>> Post.objects.all()
<QuerySet [<Post: memo 1>]>
>>> user = User.objects.filter(username='viole').first()
>>> user
<User: viole>
>>> post_2 = Post(title='memo 2', content='lmao ded', author_id = user.id, date_due = '2023-03-12 23:50:59')
>>> post_2.save()
/usr/lib/python3/dist-packages/django/db/models/fields/__init__.py:1416: RuntimeWarning: DateTimeField Post.date_due received a naive datetime (2023-03-12 23:50:59) while time zone support is active.
  warnings.warn("DateTimeField %s received a naive datetime (%s)"
>>> Post.objects.all()
<QuerySet [<Post: memo 1>, <Post: memo 2>]>
>>> post = Post.objects.first()
>>> post.content
'TODO for random_project: 1. Make only those posts visible to the user which he has created.'
>>> post.date_posted
datetime.datetime(2023, 3, 12, 8, 8, 36, 828047, tzinfo=<UTC>)
>>> post.date_due
datetime.datetime(2023, 3, 12, 23, 50, tzinfo=<UTC>)
>>> post.author
<User: viole>
>>> post.author.email
'guptamadhav2775@gmail.com'
>>> lmao
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 90, in runcode
    exec(code, self.locals)
  File "<console>", line 1, in <module>
NameError: name 'lmao' is not defined
>>>  user.post_get
Traceback (most recent call last):
  File "/usr/lib/python3.10/code.py", line 63, in runsource
    code = self.compile(source, filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 153, in __call__
    return _maybe_compile(self.compiler, source, filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 70, in _maybe_compile
    compiler(source + "\n", filename, symbol)
  File "/usr/lib/python3.10/codeop.py", line 118, in __call__
    codeob = compile(source, filename, symbol, self.flags, True)
  File "<console>", line 1
    user.post_get
IndentationError: unexpected indent
>>> user.post_set
<django.db.models.fields.related_descriptors.create_reverse_many_to_one_manager.<locals>.RelatedManager object at 0x7f01ca070fa0>
>>> user.post_set.all()
<QuerySet [<Post: memo 1>, <Post: memo 2>]>
>>> exit()
(ven_v) madhav@madhav-VivoBook-ASUSLaptop-X513UA-KM513UA:~/pron/I_love_rust/guthib_bb$ python3 manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
March 12, 2023 - 08:22:24
Django version 3.2.12, using settings 'guthib_bb.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
Not Found: /
[12/Mar/2023 08:22:28] "GET / HTTP/1.1" 404 2167
Not Found: /favicon.ico
[12/Mar/2023 08:22:28] "GET /favicon.ico HTTP/1.1" 404 2218
[12/Mar/2023 08:22:32] "GET /memo/ HTTP/1.1" 200 3909
[12/Mar/2023 08:22:32] "GET /static/memo/main.css HTTP/1.1" 304 0
[12/Mar/2023 08:25:48] "GET /memo/ HTTP/1.1" 200 3885
Internal Server Error: /memo/
Traceback (most recent call last):
  File "/usr/lib/python3/dist-packages/django/core/handlers/exception.py", line 47, in inner
    response = get_response(request)
  File "/usr/lib/python3/dist-packages/django/core/handlers/base.py", line 181, in _get_response
    response = wrapped_callback(request, *callback_args, **callback_kwargs)
  File "/home/madhav/pron/I_love_rust/guthib_bb/memo/views.py", line 26, in home
    return render(request, 'memo/home.html', context)
  File "/usr/lib/python3/dist-packages/django/shortcuts.py", line 19, in render
    content = loader.render_to_string(template_name, context, request, using=using)
  File "/usr/lib/python3/dist-packages/django/template/loader.py", line 61, in render_to_string
    template = get_template(template_name, using=using)
  File "/usr/lib/python3/dist-packages/django/template/loader.py", line 15, in get_template
    return engine.get_template(template_name)
  File "/usr/lib/python3/dist-packages/django/template/backends/django.py", line 34, in get_template
    return Template(self.engine.get_template(template_name), self)
  File "/usr/lib/python3/dist-packages/django/template/engine.py", line 143, in get_template
    template, origin = self.find_template(template_name)
  File "/usr/lib/python3/dist-packages/django/template/engine.py", line 125, in find_template
    template = loader.get_template(name, skip=skip)
  File "/usr/lib/python3/dist-packages/django/template/loaders/base.py", line 29, in get_template
    return Template(
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 155, in __init__
    self.nodelist = self.compile_nodelist()
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 193, in compile_nodelist
    return parser.parse()
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 478, in parse
    raise self.error(token, e)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 476, in parse
    compiled_result = compile_func(self, token)
  File "/usr/lib/python3/dist-packages/django/template/loader_tags.py", line 278, in do_extends
    nodelist = parser.parse()
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 478, in parse
    raise self.error(token, e)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 476, in parse
    compiled_result = compile_func(self, token)
  File "/usr/lib/python3/dist-packages/django/template/loader_tags.py", line 216, in do_block
    nodelist = parser.parse(('endblock',))
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 478, in parse
    raise self.error(token, e)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 476, in parse
    compiled_result = compile_func(self, token)
  File "/usr/lib/python3/dist-packages/django/template/defaulttags.py", line 817, in do_for
    nodelist_loop = parser.parse(('empty', 'endfor',))
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 449, in parse
    raise self.error(token, e)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 447, in parse
    filter_expression = self.compile_filter(token.contents)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 563, in compile_filter
    return FilterExpression(token, self)
  File "/usr/lib/python3/dist-packages/django/template/base.py", line 662, in __init__
    raise TemplateSyntaxError("Could not parse the remainder: '%s' "
django.template.exceptions.TemplateSyntaxError: Could not parse the remainder: ': "d F Y"' from 'post.date_due|date: "d F Y"'
[12/Mar/2023 08:27:21] "GET /memo/ HTTP/1.1" 500 177104
[12/Mar/2023 08:27:55] "GET /memo/ HTTP/1.1" 200 4031
/home/madhav/pron/I_love_rust/guthib_bb/memo/views.py changed, reloading.
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
March 12, 2023 - 08:28:47
Django version 3.2.12, using settings 'guthib_bb.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
[12/Mar/2023 08:28:49] "GET /memo/ HTTP/1.1" 200 4031