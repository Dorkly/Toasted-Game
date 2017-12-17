#include <stdlib.h>
#include "myLib.h"
#include "update.h"
#include "draw.h"
#include "collisionmap.h"
#include "sound.h"
#include "Water.h"
#include "Jump.h"
#include "Crunch.h"


int loser;
int winner;
int hurt;
int safe;
int safeTimer;


void updateGame() {

    updateToast();
    updateSink();
    updateSoap();
    updateToaster();

    for (int i = 0 ; i < BAGELCOUNT; i++) {
        updateBagel(&bagel[i]);
    }

}

void updateToast() {

    if (safe) {

        safeTimer++;

    }

    if (safeTimer >= 1) {
        safe = 0;
    }


    toast.rdel += toast.racc;


    toast.worldRow += toast.rdel;
    toast.worldCol += toast.cdel;

    toast.screenRow = SHIFTDOWN(toast.worldRow) - vOff;
    toast.screenCol = SHIFTDOWN(toast.worldCol) - hOff;


    // if (SHIFTDOWN(toast.worldRow) < 0)
    // {
    //     toast.worldRow = 0;
    //     toast.rdel =  0;
    // }

    // if (SHIFTDOWN(toast.worldCol) <= 0)
    // {
    //     toast.worldCol = 0;
    //     toast.cdel = 0;
    // }


    // if (SHIFTDOWN(toast.worldCol) >= SCREENWIDTH - toast.width - 1)
    // {
    //     toast.worldCol = SHIFTUP(SCREENWIDTH - toast.width - 1);
    //     toast.cdel = -toast.cdel;
    // }

    if (BUTTON_HELD(BUTTON_LEFT)) {

        if (SHIFTDOWN(toast.worldCol) > 0) {

            toast.worldCol -= SHIFTUP(toast.cdel);
        }

        if ( hOff > 0 && toast.screenCol + toast.width / 2 < SCREENWIDTH / 2 ) {
            hOff--;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {

        if (SHIFTDOWN(toast.worldCol) < 600 - toast.width) {

            toast.worldCol += SHIFTUP(toast.cdel);
        }


        if ( hOff < 512 - SCREENWIDTH && toast.screenCol + toast.width / 2 > SCREENWIDTH / 2 ) {
            hOff++;
        }
    }

    if (collisionmapBitmap[OFFSET(SHIFTDOWN(toast.worldRow) + toast.height, SHIFTDOWN(toast.worldCol) + toast.width - 1, 512)]
            && collisionmapBitmap[OFFSET(SHIFTDOWN(toast.worldRow) + toast.height, SHIFTDOWN(toast.worldCol), 512)]) {

        toast.rdel = 0;
        toast.worldRow = SHIFTUP(toast.groundRow - toast.height);
        toast.jump = 0;


    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        if (toast.jump < 2) {
            toast.rdel = -toast.vMaxSpeed;
            playSoundB(Jump, JUMPLEN, JUMPFREQ, 0);
            toast.jump++;

        }

    }


    if (sink.active && SHIFTDOWN(toast.worldCol) + toast.width - 1 > sink.worldCol + 5
            && SHIFTDOWN(toast.worldRow) + toast.height - 1 > sink.worldRow + 5 && SHIFTDOWN(toast.worldCol) < sink.worldCol) {


        if (!safe) {
            heart[hurt].active = 0;
            hurt++;
            loser++;
            playSoundB(Water_c1, WATERLEN, WATERFREQ, 0);
            checkPoint1();
        }

        safe = 1;


    }

    if (soap.active && collision(SHIFTDOWN(toast.worldRow), SHIFTDOWN(toast.worldCol), toast.height, toast.width,
                                 soap.worldRow, soap.worldCol, soap.height, soap.width)) {


        if (!safe) {
            heart[hurt].active = 0;
            hurt++;
            loser++;
            checkPoint1();
        }

        safe = 1;



    }

    if (toaster.active && collision(SHIFTDOWN(toast.worldRow), SHIFTDOWN(toast.worldCol), toast.height, toast.width,
                                    toaster.worldRow, toaster.worldCol, toaster.height, toaster.width)) {

        toaster.active = 0;
        winner++;

    }

    if (SHIFTDOWN(toast.worldRow) >= 256) {

        heart[hurt].active = 0;
        loser++;
        hurt++;
        checkPoint1();
    }

    //toast.worldRow += SHIFTUP(toast.rdel);


    animateToast();


}
void updateBagel(ANISPRITE *b) {

    b->moveTimer++;

    b->prevAniState = b->aniState;
    b->aniState = BAGELFRONT;

    if (b->aniCounter % 30 == 0) {
        b->curFrame = (b->curFrame + 1) % b->numFrames;
    }

    if (b->aniState == BAGELIDLE) {
        b->curFrame = 0;
        b->aniState = b->prevAniState;
    } else {
        b->aniCounter++;
    }

    if (BUTTON_PRESSED(BUTTON_R)) {
        b->active = 0;
        playSoundB(Crunch, CRUNCHLEN, CRUNCHFREQ, 0);
    }






    if ( b->active) {


        if (b->moveTimer == 0 || b->moveTimer == 25) {

            if ( b->aniState == BAGELRIGHT) {
                b->cdel *= -1;
                b->aniState = BAGELLEFT;
            } else {
                b->cdel *= -1;
                b->aniState == BAGELRIGHT;
            }

        }

        b->worldCol += b->cdel;

        if (b->moveTimer == 50) {
            b->aniState = BAGELFRONT;
            b->cdel = 0;


        }

        if(b->moveTimer == 100){
              b->moveTimer = 0;
              b->cdel = 1;
              b->aniState = BAGELRIGHT;
        }


    }


    if (b->active && collision(SHIFTDOWN(toast.worldRow), SHIFTDOWN(toast.worldCol), toast.height, toast.width,
                               b->worldRow, b->worldCol, b->height, b->width)) {


        if (!safe) {
            heart[hurt].active = 0;
            hurt++;
            loser++;
            checkPoint1();
        }

        safe = 1;
    }


    b->screenRow = b->worldRow - vOff;
    b->screenCol = b->worldCol - hOff;
}

void updateSoap() {
    soap.moveTimer++;

    if (soap.moveTimer >= 30) {
        soap.active = 1;
    }
    soap.screenRow = soap.worldRow - vOff;
    soap.screenCol = soap.worldCol - hOff;
}

void updateSink() {
    sink.moveTimer++;

    if (sink.moveTimer >= 50) {
        sink.active = 1;
    }

    sink.screenRow = sink.worldRow - vOff;
    sink.screenCol = sink.worldCol - hOff;
}
void updateToaster() {
    toaster.moveTimer++;

    if (toaster.moveTimer >= 500) {
        toaster.active = 1;
    }

    toaster.screenRow = toaster.worldRow - vOff;
    toaster.screenCol = toaster.worldCol - hOff;
}



void animateToast() {

    toast.prevAniState = toast.aniState;
    toast.aniState = TOASTFRONT;

    if (toast.aniCounter % 20 == 0) {
        toast.curFrame = (toast.curFrame + 1) % toast.numFrames;
    }

    if (toast.aniState == TOASTIDLE) {
        toast.curFrame = 0;
        toast.aniState = toast.prevAniState;
    } else {
        toast.aniCounter++;
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        toast.aniState = TOASTLEFT;
    }

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        toast.aniState = TOASTRIGHT;
    }
}
void checkPoint1() {

    toast.worldCol = 20;
    hOff = toast.coff;

}

void checkPoint2() {
    toast.worldCol = sink.worldCol - 10;

}