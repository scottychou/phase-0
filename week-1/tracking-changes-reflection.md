
    How does tracking and adding changes make developers' lives easier?
    If any bugs are introduced, they are able to retrace their steps to a previous commit before those bugs existed.  Also, by adding changes they are able to contribute to the project.

    What is a commit?
    A commit is a snapshot of the file.  It can also be referred to as a save point or check point.

    What are the best practices for commit messages?
    Keep the messages short and to the point (under 50 characters), and keep the verbs in the imperative form.  IE) "change" instead of "changed" and keep the first letter capitalized.

    What does the HEAD^ argument mean?
    It refers to the last commit.

    What are the 3 stages of a git change and how do you move a file from one stage to the other?

    1) working - the directory where you modify files, you would use a "git checkout -b branchnameofyourchoice"

    2) staged - tracks what will go into next commit, you would use a "git add filename" to stage it.  That way, when you type in "git status" the dialog will turn green, which means it has successfully been staged and is ready to be commited.

    commit - a 'save point' of all of the changes you made from the last commit of staged files, you would use a "git commit -m "message"" to commit your changes along with a message.



    Write a handy cheatsheet of the commands you need to commit your changes?

    changes to files are made in the working directory
    If the person wants to keep the changes, they will 'git add' them to the staging area
    If the person decides to commit changes, they will 'git commit -m "add message here" ' to create a commit for that change. 


    What is a pull request and how do you create and merge one?
    Pull requests allow for review before changes are merged into the assigned branch.  

    To create a pull request, the branch must first be pushed to the remote repository, then a pull request needs to be opened on GitHub. 
    To merge a Pull Request, the person needs to follow the instructions on GitHub to merge it.
    
    Why are pull requests preferred when working with teams?
    Pull requests are preferred because it adds a layer of protection so the master branch always works.

