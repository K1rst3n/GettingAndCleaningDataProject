# This function prompts the user to enter a file name for
# the zipped data in case the data was saved under a name
# different from the source: getdata-projectfiles-UCI HAR Dataset.zip

get_zip <- function()
{ 
    # Prompt user for file name
    input <- readline(prompt="\nPlease enter file name for data in zipped format or choose 0 to exit: \n")
    # Exit function if user selects '0' as input
    if(input == "0") break

    # Check that file name has more than 4 characters
    if(nchar(input)<=4) {
	print("Invalid file name")
	input <- get_zip()
    } else {
	end = nchar(input)
	start = end - 3
        # Extract extension from file name
	extension = substr(input,start,end)
        # Check that file is a *.zip file
	if(extension != ".zip") {
		print("Entered file name was not *.zip format")
		input <- get_zip()
	}
    }

    # Check that file exist in same directory as R scripts
    if (!file.exists(input)){
        print("File was not found in script directory")
	input <- get_zip()
    }
    return(input)
}