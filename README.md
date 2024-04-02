# mason

A new Flutter project to simplfy the structure and save time for creating projerct features.

## Getting Started

dart pub global activate mason_cli
dart pub global activate mason
mason init     //will create mason.yaml
mason get    //will create .mason folder

mason new feature   //will create folder named feature
mason new example //any name 

Then remove readme and changeling and license we didn’t need them also HELLO.md
we only need __brick__ and brick.yaml

Create folder named bricks and move the folder created by the previous command on it


bricks>feature>__brick__
bricks>feature>brick.yaml

Then add cubit and project modules inside __bricks___
In the same structure that we want(lib/features/featureName) and write the names of files with mostash syntax 
{{name.snakeCase()}}
{{name.pascaleCase()}}

In brick.yaml change Dash with anything and also what’s your name
mason add feature  --path ./bricks/feature    
//feature in this commend refere to name of folder that added inside bricks folder

mason make feature   // to create the structure in lib folder you will asked about feature name and it's the instructions that I added in brick.yaml when change the Dash

Don’t forget add packages that we depend on like dio and bloc in pub spec.yaml
dio: ^5.4.1
flutter_bloc: ^8.1.4
Also inside lib don’t forget to add networkClient file and appUrl file in the structure inside const and utils


Also go to settings(comaned+,) and add this
"dart.analysisExcludedFolders": [
        "bricks"
    ],

