#include <stdlib.h>
#include "myLib.h"
#include "draw.h"



ANISPRITE toast, sink, soap, toaster;
ANISPRITE bagel[BAGELCOUNT];
HEARTS heart[HEARTCOUNT];






void initGame() {
    initToast();
    initBagel();
    initSink();
    initSoap();
    initToaster();
    initHeart();
}
void drawGame() {
    drawToast();
    drawBagel();
    drawSink();
    drawSoap();
    drawToaster();
    drawHeart();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}


void initToast() {

    toast.groundRow = 217;

    toast.width = 16;
    toast.height = 16;

    toast.rdel = 1;
    toast.cdel = 1;
    toast.worldRow = SHIFTUP(195);
    toast.worldCol = SHIFTUP(20);
    toast.racc = 40;
    toast.cacc = 2;
    toast.active = 1;
    toast.aniState = TOASTFRONT;
    toast.moveTimer = 5;
    toast.index = 0;
    toast.jump = 0;
    toast.coff = 0;

    toast.vMaxSpeed = SHIFTUP(4);
    toast.maxHSpeed = SHIFTUP(8);

    toast.aniCounter = 0;
    toast.curFrame = 0;
    toast.numFrames = 2;

}

void initBagel() {

    int c = 0;

    for (int i = 0 ; i < BAGELCOUNT; i++) {

        bagel[i].width = 16;
        bagel[i].height = 16;

        bagel[i].rdel = -1;
        bagel[i].cdel = 1;
        bagel[i].worldRow = 200;
        bagel[i].worldCol = 80 + c;

        bagel[i].active = 1;
        bagel[i].aniState = BAGELFRONT;
        bagel[i].moveTimer = 1;
        bagel[i].index = 1 + i;


        bagel[i].aniCounter = 0;
        bagel[i].curFrame = 0;
        bagel[i].numFrames = 2;

        c += 130;

    }


}

void initSink() {
    sink.worldRow = 163;
    sink.worldCol = 230;
    sink.width = 64;
    sink.height = 64;
    sink.active = 0;
    sink.moveTimer = 0;
}

void initSoap() {
    soap.worldRow = 200;
    soap.worldCol = rand() % 150 + 21 ;
    soap.width = 16;
    soap.height = 16;
    soap.active = 0;
    soap.moveTimer = 0;
}

void initToaster() {
    toaster.worldRow = 180;
    toaster.worldCol = 400;
    toaster.active = 1;
    toaster.height = 32;
    toaster.width = 32;
    toaster.active = 0;
    toaster.moveTimer = 0;
}


void initHeart() {

    int c = 0;

    for (int i = 0 ; i < HEARTCOUNT; i++) {

        heart[i].height = 16;
        heart[i].width = 16;
        heart[i].worldRow = 80;
        heart[i].worldCol = 0 + c;
        heart[i].active = 1;
        heart[i].index = i + 20;
        heart[i].screenRow = heart[i].worldRow - vOff;
        heart[i].screenCol = heart[i].worldCol - hOff;

        c += 16;

    }

}

void drawHeart() {

    for (int i = 0 ; i < HEARTCOUNT ; i++) {

        if (heart[i].active) {

            shadowOAM[heart[i].index].attr0 = (ROWMASK & heart[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[heart[i].index].attr1 = (COLMASK & heart[i].screenCol) | ATTR1_SMALL;
            shadowOAM[heart[i].index].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6, 5);
        } else {
            shadowOAM[heart[i].index].attr0 = ATTR0_HIDE;
        }
    }
}

void drawToast() {
    shadowOAM[toast.index].attr0 = (ROWMASK & toast.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[toast.index].attr1 = (COLMASK & toast.screenCol) | ATTR1_SMALL;
    shadowOAM[toast.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(toast.curFrame * 2, toast.aniState * 2);
}

void drawSink() {
    if (sink.active) {
        shadowOAM[5].attr0 = (ROWMASK & sink.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[5].attr1 = (COLMASK & sink.screenCol) | ATTR1_LARGE;
        shadowOAM[5].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 24);
    } else {
        shadowOAM[5].attr0 = ATTR0_HIDE;
    }
}

void drawSoap() {
    if (soap.active) {
        shadowOAM[6].attr0 = (ROWMASK & soap.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[6].attr1 = (COLMASK & soap.screenCol) | ATTR1_SMALL;
        shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 16);
    } else {
        shadowOAM[6].attr0 = ATTR0_HIDE;
    }
}




void drawBagel() {
    for (int i = 0; i < BAGELCOUNT; i++) {
        if (bagel[i].active) {
            shadowOAM[bagel[i].index].attr0 = (ROWMASK & bagel[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[bagel[i].index].attr1 = (COLMASK & bagel[i].screenCol) | ATTR1_SMALL;
            shadowOAM[bagel[i].index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(bagel[i].curFrame * 2, bagel[i].aniState * 2 + 8);
        } else {
            shadowOAM[bagel[i].index].attr0 = (ROWMASK & bagel[i].screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
            shadowOAM[bagel[i].index].attr1 = (COLMASK & bagel[i].screenCol) | ATTR1_SMALL;
            shadowOAM[bagel[i].index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 19);
        }

    }

}

void drawToaster() {
    if (toaster.active) {
        shadowOAM[7].attr0 = (ROWMASK & toaster.screenRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[7].attr1 = (COLMASK & toaster.screenCol) | ATTR1_MEDIUM;
        shadowOAM[7].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6, 0);
    } else {
        shadowOAM[7].attr0 = ATTR0_HIDE;
    }
}
