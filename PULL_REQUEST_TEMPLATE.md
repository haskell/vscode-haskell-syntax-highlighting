## For changes related to the grammar

- Please add a test. The usual procedure is to add a new test file to either
  the `test/tests` or `test/tickets` directories (the latter when fixing a
  particular ticket). Once you add a test file to one of these directories, it
  will be picked up automatically (no further changes required).

  Test files consist of source code annotated with expected TextMate scopes.
  These annotations are then checked using `vscode-tmgrammar-test`.

- Add your changes to the `CHANGELOG.md` file, ideally with a reference to the
  issue the PR is fixing. Also feel free to credit yourself there.
