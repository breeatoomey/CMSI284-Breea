#include <stdio.h>
#include <stdlib.h>

  int main( int argc, char * argv[] ) {

    const char *letter[26];
    char message[20];
    int i;

    letter[0] = "alpha";
    letter[1] = "bravo";
    letter[2] = "charlie";
    letter[3] = "delta";
    letter[4] = "echo";
    letter[5] = "foxtrot";
    letter[6] = "golf";
    letter[7] = "hotel";
    letter[8] = "india";
    letter[9] = "juliett";
    letter[10] = "kilo";
    letter[11] = "lima";
    letter[12] = "mike";
    letter[13] = "november";
    letter[14] = "oscar";
    letter[15] = "papa";
    letter[16] = "quebec";
    letter[17] = "romeo";
    letter[18] = "sierra";
    letter[19] = "tango";
    letter[20] = "uniform";
    letter[21] = "victor";
    letter[22] = "whiskey";
    letter[23] = "xray";
    letter[24] = "yankee";
    letter[25] = "zulu";

    printf( "Enter message: ");
    gets( message );

    for (i = 0; *message != '\0'; i++){
        printf( letter[message[i] - 'a'] );
    }

}
