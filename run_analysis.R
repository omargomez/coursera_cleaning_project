clean_data <- function( X_file, y_file, subject_file )
{
   X_raw <- read.table( X_file )
   y_raw <- read.table( y_file )
   subject_raw <- read.table( subject_file )
   
   result <- cbind( y_raw[,1], subject_raw[1], X_raw[,c(1,2,3,4,5,6,41,42,43,44,45,46)] )
      
   names(result) <- c("Activity", "Subject", "tBodyAcc_mean_X", "tBodyAcc_mean_Y", "tBodyAcc_mean_Z", "tBodyAcc_std_X", "tBodyAcc_std_Y", "tBodyAcc_std_Z", "tGravityAcc_mean_X", "tGravityAcc_mean_Y", "tGravityAcc_mean_Z", "tGravityAcc_std_X", "tGravityAcc_std_Y", "tGravityAcc_std_Z" )
   result
}

do_tidy <- function( output )
{
   #subseting ( points 1,2 )
   test <- clean_data( "test/X_test.txt", "test/y_test.txt", "test/subject_test.txt" )
   train <- clean_data( "train/X_train.txt", "train/y_train.txt", "train/subject_train.txt" )
   
   #
   merge <- rbind( test, train )
   summary <- aggregate( merge, by=list(merge$Activity,z$Subject), FUN=mean )[,names(merge)]
   
   summary$Activity <- factor( summary$Activity, levels=1:6, labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING") )
   
   write.table( summary, file=output )  
}

do_tidy("my_tidy.txt" )
