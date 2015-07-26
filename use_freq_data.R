
use_freq_data <- function()
{
    # Prompt user to choose y or n
    answer <- readline(prompt="\nDo you want to include meanFreq() measurements? Please choose:\n y: YES\n n: NO\n")

    # If answer was not "y" or "n", ask again
    if(answer != "y" & answer != "n") {
        print("Please enter y or n")
        answer <- use_freq_data()
    }
    
    return(answer)
}
