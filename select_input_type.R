# This function promts the user to either load the data
# from the standard file name or to specify the file name
# under which the data has been saved. 

# Include the required scripts
source("get_zip.R")

select_input_type <- function()
{
    # Prompt user to choose 1, 2 or 0
    n <- readline(prompt="\nPlease select one of the following options:\n 1. Use \"getdata-projectfiles-UCI HAR Dataset.zip\".\n 2. Specify name for zip file.\n 0. Exit.\n")
    n <- as.integer(n)
    path = ""
    file = ""
    # Check that user entry was valid
    if (is.na(n) | n<0 | n>2){
        print("Invalid input please choose 0, 1 or 2")
        n <- select_input_type()
    }
    # If 0 was chosen, exit
    if(n==0) break
    
 
    if(n == 1) {
        # If 1 was chosen, load data using standard file name
        file = "getdata-projectfiles-UCI HAR Dataset.zip"
    } else {
        # If 2 was chosen, use get_zip function to get file name
        file = get_zip()
    }
    
    # If file does not exist, warn user and start over
    if (!file.exists(file)){
        print("File was not found in current working directory")
        select_input_type()
    }

    return(file)
}
