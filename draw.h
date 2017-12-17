
typedef struct {

    int width;
    int height;

    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;

    int active;
    int index;


} HEARTS;





enum {TOASTFRONT, TOASTRIGHT, TOASTLEFT, TOASTIDLE};
enum {BAGELFRONT, BAGELRIGHT, BAGELLEFT, BAGELIDLE};

#define HEARTCOUNT 4
#define BAGELCOUNT 5

extern ANISPRITE toast;
extern ANISPRITE bagel[BAGELCOUNT];
extern ANISPRITE sink;
extern ANISPRITE soap;
extern ANISPRITE toaster;
extern HEARTS heart[HEARTCOUNT];
extern int hOff;
extern int vOff;



void initGame();
void drawGame();
void initToast();
void drawToast();
void initBagel();
void drawBagel();
void initSink();
void drawSink();
void initSoap();
void drawSoap();
void initToaster();
void drawToaster();
void initHeart();
void drawHeart();