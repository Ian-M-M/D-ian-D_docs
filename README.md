# Docs D-ian-D

## Future works

Some guidelines and general ideas on how to proceed to write the documentation.

### Format guide lines

The branch name is all in lower case.

The folder name have to be the name of the feature you are adding with upper case in the first letter. Feats is a correct name, whereas feats is wrong.

In the folder the source will be in the src folder, inside of it, the main doc must be the name of the feature in lower case starting with the prefix *00_*, extra files must be named in snake case (example_name).

### Adding new features

Whenever adding a new feature to the doc the process is the following

```
git swich main && git pull && git checkout -b FEATURE_NAME
mkdir FEATURE_NAME
cd FEATURE_NAME
touch FEATURE_NAME.adoc
```
