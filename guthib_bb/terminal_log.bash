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
error: unknown switch `m'
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