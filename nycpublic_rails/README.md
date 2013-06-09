#Build

    git pull #or clone
   
You need to do one manual step: On our GDocs there is a `database.yml` file. Put that in `nycpublic_rails/config`. This file will contain sensitive information (database credentials) so should **not** be put in our git repository.  Then:
    cd nycpublic_rails
    rake db:migrate
    rails server

And point your browser to http://localhost:3000. Voila.

