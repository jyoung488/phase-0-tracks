# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
  Version control records changes that occur over time. It's useful so developers can track changes, review, and revert to old versions at any time.
* What is a branch and why would you use one?
  A branch is a subdirectory of the master branch that's useful because you can make the changes in the branch then merge it into the master after review. It keeps the master branch code clean. Branches should be deleted once merged so that the entire tree is kept clean.
* What is a commit? What makes a good commit message?
  A commit is a save point in the code. A good message is present tense and describes the changes being saved.
* What is a merge conflict?
  A merge conflict occurs when two+ versions of code/text are being merged and they have lines that differ and Git doesn't know which one to save. Git will produce an error and note which lines don't match.