
# README #

## Apex Trigger Factory Pattern.

Trigger Factory Pattern is helpful in maintaining the code in one place, to follow sort of guidelines laid down by you through an interface so that the code is readable, manageable and easily shareable. It works hand in hand with all the best practices that we should consider while implementing triggers. Some of the best practices are below:

 - One Trigger Per Object 
 - Logic-less Triggers 
 - Context-Specific Handler Methods 
 - Bulkify your Code 
 - Avoid SOQL Queries or DML statements inside FOR Loops 
 - Using Collections, Streamlining Queries, and Efficient For Loops 
 - Querying Large Data Sets

While there are benefits to using this kind of pattern, its side effects should also be considered. Please go through all the pros & cons before implementing this structure ([stackexchange discussion](https://salesforce.stackexchange.com/questions/101835/pros-and-cons-of-using-a-trigger-factory))
