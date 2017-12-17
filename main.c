#include "myLib.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "spritesheet.h"
#include "counters.h"
#include "draw.h"
#include "update.h"
#include "Win.h"
#include "Splash.h"
#include "Pause.h"
#include "Instructions.h"
#include "bg.h"
#include "Lose.h"
#include "MainSong.h"
#include "IntroSong.h"
#include "PauseSong.h"
#include "WinSong.h"
#include "LoseSong.h"
#include "sound.h"
#include "text.h"
#include "Intro.h"
#include "Intro2.h"
#include "Water.h"
#include "Jump.h"
/**************************************************
 GAME PLAY
 ***********************************************


In a kitchen, you are a slice of bread,on the kitchen counter finding
 a toaster so that you can become delicious toast
You use left and right arows to move and A to jump , pressing A again to double jump


You lose if you:

Don't step in the soap
Fall off the counters
run into the big bagels that want to be toast too
fall in the sink

You basically navigate through the kitchen to get to the toaster!


Known Bugs:
 the player gets block after a certain point
sometime the lives dont decrement when you die
the player doesnt have to fully jump over the sink , just halfway

I implmented pointer functions for the states
I drew all of my sprites, backgrounds etc.
I implemented a checkpoint function in update.c that
takes the player back to the beginning when they die

The cheat causes all the bagels to be eaten
 **/

void initialize();

// State Prototypes
void goToIntro();
void  (*state) ();
void intro();
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToMiniGame();
void minigame();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
// enum {INTRO, START, INSTRUCTIONS, GAME, MINIGAME, PAUSE, WIN, LOSE};
// int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;


int hOff = 0;
int vOff = 0;
int h1Off = 0;
int v1Off = 0;
int h2Off = 0;
int v2Off = 0;
int timer = 0;


OBJ_ATTR shadowOAM[128];


int main() {


    initialize();



    while (1) {

// Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        state();
        // // State Machine
        // switch (state) {

        // case INTRO:
        //     intro();
        //     break;

        // case START:
        //     start();
        //     break;
        // case INSTRUCTIONS:
        //     instructions();
        //     break;
        // case GAME:
        //     game();
        //     break;
        // case MINIGAME:
        //     minigame();
        //     break;
        // case PAUSE:
        //     pause();
        //     break;
        // case WIN:
        //     win();
        //     break;
        // case LOSE:
        //     lose();
        //     break;
        // }

        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;

        REG_BG1HOFF = hOff / 2;
        REG_BG1VOFF = vOff;

    }

    return 0;

}


void initialize() {

    setupSounds();
    setupInterrupts();

    playSoundA(IntroSong, INTROSONGLEN, INTROSONGFREQ, 1);

    REG_DISPCTL = MODE3 | BG2_ENABLE;


    buttons = BUTTONS;



    goToIntro();

}

void goToIntro() {

    // loadPalette(IntroPal);

    drawFullscreenImage3(IntroBitmap);

    waitForVBlank();
    // flipPage();

    state = intro;

}

//Runs every frame of the intro state
void intro() {

    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();

    }

}


// Sets up the start state
void goToStart() {

    playSoundA(IntroSong, INTROSONGLEN, INTROSONGFREQ, 1);

    drawFullscreenImage3(SplashBitmap);

    drawString4(40, 90, " Start", BROWN);
    drawString4(40, 40, "ENTER ", 0);
    drawString4(50, 40, "SPACE ", 0);
    drawString4(50, 79, "Instructions", BROWN);

    waitForVBlank();
    // flipPage();

    state = start;
}

// Runs every frame of the start state
void start() {



    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

//Sets up the instructions state
void goToInstructions() {


    // loadPalette(InstructionsPal);

    drawFullscreenImage3(InstructionsBitmap);


    waitForVBlank();
    // flipPage();

    state = instructions;
}

void instructions() {

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}
// Sets up the game state
void goToGame() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE;

    playSoundA(MainSong, MAINSONGLEN, MAINSONGFREQ, 1);



    loadPalette(bgPal);


    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);

    DMANow(3, countersTiles, &CHARBLOCK[0], countersTilesLen / 2);
    DMANow(3, countersMap, &SCREENBLOCK[30], countersMapLen / 2);

    REG_BG1CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28);


    DMANow(3, bgTiles, &CHARBLOCK[1], bgTilesLen / 2);
    DMANow(3, bgMap, &SCREENBLOCK[28], bgMapLen / 2);

    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    hideSprites();

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    hOff = 0;
    vOff = 80;
    h1Off = 0;
    v1Off = 90;

    state = game;
}

// Runs every frame of the game state
void game() {

    updateGame();
    waitForVBlank();
    drawGame();






    // State transitions

    if (BUTTON_HELD(BUTTON_RIGHT))
    {
        hOff++;
        h1Off++;

    }
    if (BUTTON_HELD(BUTTON_LEFT))
    {
        hOff--;
        h1Off--;

    }



    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }
    else if (winner == 1) {
        goToWin();
    }
    else if (loser >= 4) {
        goToLose();
    }

}

// Sets up the pause state
void goToPause() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    //loadPalette(PausePal);

    playSoundA(PauseSong, PAUSESONGLEN, PAUSESONGFREQ , 1);

    drawFullscreenImage3(PauseBitmap);
    drawString4(120, 60, "Getting Some Zs", WHITE);
    drawString4(130, 60, "Enter- return to game", WHITE);
    drawString4(140, 60, "Space- return to start", WHITE);



    waitForVBlank();
    state = pause;
}

// Runs every frame of the pause state
void pause() {




    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// Sets up the win state
void goToWin() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;

    playSoundA(WinSong, WINSONGLEN, WINSONGFREQ, 1);


    drawFullscreenImage3(WinBitmap);
    drawString4(120, 60, "You Won!", BLACK);
    drawString4(130, 60, "Enter to Play again :D", BLACK);


    waitForVBlank();
    // flipPage();

    state = win;
}

// Runs every frame of the win state
void win() {

    winner = 0;

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;


    playSoundA(LoseSong, LOSESONGLEN, LOSESONGFREQ, 1);

    drawFullscreenImage3(LoseBitmap);
    drawString4(120, 80, "Your too dirty :(", WHITE);
    drawString4(140, 80, "Enter to restart", WHITE);

    waitForVBlank();



    state = lose;
}

// Runs every frame of the lose state
void lose() {

    loser = 0;

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();

}

