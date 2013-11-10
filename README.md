JMUIdeaHub
==========
We changed up we are going to do on here guys to simply everything. Also we
are not using struts anymore.

So to get on the same page as us do the following steps:

1. Delete all JMUIdeaHub stuff you have currently on your machine.
2. Create a new project in netbeans, calling it JMUIdeaHub (Take note of the
   project's path name).
3. Open up git bash if you are on windows, if you are on MAC or Linux simply 
   open up the command line.
4. Change directory to the project you just created using the path you took
   note of. (e.g. cd <name-of-directory>)
5. Type "git init" inside the directory without the quotes.
6. Type "git remote add origin https://github.com/Joetis/JMUIdeaHub" without
   the quotes.
7. Type "git pull origin master" without the quotes.
8. Go into netbeans and confirm you do not have duplicate index.jsp (if you
   do delete one).

After you have done all this you are now ready to work on the project. After
you made changes to a file or added another file do the following:

1. Add the files that you made changes to. (THIS STEP IS CRUCIAL THAT YOU DO 
   IT CORRECTLY) Type "git add <PATH-OF-FILE>" For example say
   I make a change to Users.java in the entities package. I would type
   "git add src/java/" This will add all changes in the java directory
   which is all the source files. If you made a change to the JSPs you
   would type "git add web/JSPs/" If you made a change to web.xml you
   would type "git add web/WEB-INF/web.xml". If you have any questions do
   not hesitate to ask. Do not add any other files (so only files under
   src/java and web/JSPs or web/WEB-INF/web.xml.
2. Next commit your changes. So type "git commit -m "<descriptive-message>"
3. Next type "git push" (Use your username and password).

Now everytime you commit do the following steps before you push:

1. Add files and commit.
2. Type "git pull origin master" (Note if you receive any errors after doing
   this like merging errors, please call or text Joe!"
3. Then type "git push" to push your changes to remote repository. If you
   receive any errors after doing this step, it is most likely because you
   did not pull first. But if you are not sure call Joe.

That is it. It should be pretty simple, but if you are the least unsure about
anything do not hesitate to text/call Joe.
