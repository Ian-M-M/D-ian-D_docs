# Docs D-ian-D

## Future works

Some guidelines and general ideas on how to proceed to write the documentation.

### Format guide lines

The branch name is all in lower case.

The folder name have to be the name of the feature you are adding with upper case in the first letter. Feats is a correct name, whereas feats is wrong.

In the folder the source will be in the src folder, inside of it, the main doc must be the name of the feature in lower case starting with the prefix _00\__, extra files must be named in snake case (example_name).

### Adding new features

Whenever adding a new feature to the doc the process is the following, where tje FEATURE_NAME and FEATURE_NAME_IN_LOWER_CASE are variables that can be set to automatize the process.

```
export FEATURE_NAME="NAME OF THE FEATURE"
export FEATURE_NAME_IN_LOWER_CASE="name of the feature"
echo "================================================================"
git switch main && git pull && git checkout -b ${FEATURE_NAME_IN_LOWER_CASE}
mkdir ${FEATURE_NAME} && cd ${FEATURE_NAME} && mkdir src
touch src/00_${FEATURE_NAME_IN_LOWER_CASE}.adoc
echo "================================================================"
unset FEATURE_NAME
unset FEATURE_NAME_IN_LOWER_CASE
```

## build_feature.sh

The script is used to premerge all the src content into one unique asciidoc file.

