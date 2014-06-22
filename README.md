READ ME
=======

In this repository you will find:

* **README.md**, This file. General description of the script.
* **CodeBook.md** Structure and transformation details.
* **run_analysis.R** The script itself.

##Running the script

Before running the script make sure your working directory points to where the original 
dataset ( http://goo.gl/yvcGcj ) was uncompressed. If you are into R or RStudio use the setwd command. If you plan to run the script from the console just CD to this directory.

This are the steps executed by the script 

1. Create a clean version of the test data:
	1. Activity levels ( X_test.txt )
	2. Subject ID ( subject_test.txt )
	3. Finally, from X_text.txt the following columns where append:
		1. Col #1: tBodyAcc-mean()-X
		2. Col #2: tBodyAcc-mean()-Y
		3. Col #3: tBodyAcc-mean()-Z
		4. Col #4: tBodyAcc-std()-X
		5. Col #5: tBodyAcc-std()-Y
		6. Col #6: tBodyAcc-std()-Z
		7. Col #41: tGravityAcc-mean()-X
		8. Col #42: tGravityAcc-mean()-Y
		9. Col #43: tGravityAcc-mean()-Z
		10. Col #44: tGravityAcc-std()-X
		11. Col #45: tGravityAcc-std()-Y
		12. Col #46: tGravityAcc-std()-Z
2. Create a clean version of the train dataset as in (1)
3. Merge data from (1) and (2) into a unique data set
4. Aggregate data from (3) by Activity and Subject. A reduced dataset is obtained using the mean function
5. Factor the activity column using the labels from activity_labels.txt
6. Export this final dataset to the final tidy text file.



