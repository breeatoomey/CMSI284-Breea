/**
 * @author Kimberly Kubo
 * This program will time how long you can hold your breath. 
 * Take a deep breath, then press the 'Enter' key. When you 
 * absolutely have to exhale, press the enter key again. The 
 * duration will be displayed in minutes and seconds.
 */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main( int argc, char * argv[] ){
    char enter;
    time_t start;
    time_t end;
    int minutes;
    int seconds;

    printf("Take a deep breath, then press the 'Enter' key.\n");
    printf("When you absolutely have to exhale, press the enter key again.\n");
    printf("The duration will be displayed in minutes and seconds.\n");
    fflush(stdout);

    while (1){
        enter = fgetc(stdin);
        if(enter == '\n'){
            printf("Starting timer.\n");
            fflush(stdout);
            enter = 'a';
            start = time(0);
            break;
        }
    }

    while (1){
        enter = fgetc(stdin);
        if(enter == '\n'){
            printf("Ending timer.\n");
            fflush(stdout);
            end = time(0);
            break;
        }
    }
    
    seconds = end-start;
    minutes = (seconds/60)%60;
    seconds = seconds%60;

    printf("Your time: %d minutes, %d seconds.", minutes, seconds);

}