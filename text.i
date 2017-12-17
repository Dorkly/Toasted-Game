# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 66 "myLib.h"
extern unsigned short *videoBuffer;
# 89 "myLib.h"
typedef struct {
    u16 tileimg[8192];
} charblock;


typedef struct {
    u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
void loadPalette(const unsigned short * palette);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 162 "myLib.h"
void hideSprites();






typedef struct {
    int groundRow;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int coff;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int racc;
    int cacc;
    int jump;
    int maxHSpeed;
    int vMaxSpeed;
    int stopRange;
    int stopTimer;
    int index;
    int active;
    int moveTimer;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 217 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 228 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 268 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 363 "myLib.h"
typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int index;
    int moveTimer;
    int size;
    u16 color;
    int AI_STATE;
} MOVOBJ;
# 2 "text.c" 2
# 1 "text.h" 1

void drawChar4(int, int, char, unsigned short);
void drawString4(int, int, char *, unsigned short);
# 3 "text.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 4 "text.c" 2


void drawChar4(int row, int col, char ch, unsigned short color) {


    for (int r = 0; r < 8; r++)
    {
        for (int c = 0; c < 6; c++)
        {
            if (fontdata_6x8[((r)*(6)+(c)) + ch * 48])
            {
                setPixel3(row + r, col + c, color);
            }
        }
    }


}


void drawString4(int row, int col, char *str, unsigned short color) {

    while (*str)
    {
        drawChar4(row, col, *str++, color);
        col += 6;
    }

}
