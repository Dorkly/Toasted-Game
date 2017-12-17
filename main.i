# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 1 3
# 10 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 11 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 12 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3



# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 211 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 16 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3

# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 1 3
# 13 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 14 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 1 3






# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 1 3
# 26 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 2 3
# 13 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef int __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 352 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 18 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/stdlib.h" 1 3
# 19 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 27 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 3 "main.c" 2
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/string.h" 1 3
# 14 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 15 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);
# 100 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/string.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/string.h" 1 3
# 101 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/string.h" 2 3


# 4 "main.c" 2
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 1 3
# 34 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 35 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3


# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stdarg.h" 1 3 4
# 40 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3
# 46 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 1 3
# 69 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 149 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 70 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/types.h" 1 3
# 19 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 92 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned int ino_t;
# 162 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

typedef __uint32_t fsblkcnt_t;
typedef __uint32_t fsfilcnt_t;

# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/features.h" 1 3
# 265 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 47 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/stdio.h" 1 3
# 66 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3
# 175 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\users\\bree~\\documents\\school\\cs2261\\windowsdevkitarm\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3

# 5 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 6 "main.c" 2
# 1 "counters.h" 1
# 22 "counters.h"
extern const unsigned short countersTiles[384];


extern const unsigned short countersMap[2048];


extern const unsigned short countersPal[256];
# 7 "main.c" 2
# 1 "draw.h" 1

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




extern ANISPRITE toast;
extern ANISPRITE bagel[5];
extern ANISPRITE sink;
extern ANISPRITE soap;
extern ANISPRITE toaster;
extern HEARTS heart[4];
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
# 8 "main.c" 2
# 1 "update.h" 1



extern int hOff;
extern int vOff;
extern int loser;
extern int winner;
extern int safe;
extern int safeTimer;


void updateGame();
void updateToast();
void updateBagel(ANISPRITE * b);
void updateSink();
void updateSoap();
void updateToaster();
void checkPoint1();
void checkPoint2();
void animateToast();
# 9 "main.c" 2
# 1 "Win.h" 1
# 20 "Win.h"
extern const unsigned short WinBitmap[38400];
# 10 "main.c" 2
# 1 "Splash.h" 1
# 20 "Splash.h"
extern const unsigned short SplashBitmap[38400];
# 11 "main.c" 2
# 1 "Pause.h" 1
# 20 "Pause.h"
extern const unsigned short PauseBitmap[38400];
# 12 "main.c" 2
# 1 "Instructions.h" 1
# 20 "Instructions.h"
extern const unsigned short InstructionsBitmap[38400];
# 13 "main.c" 2
# 1 "bg.h" 1
# 22 "bg.h"
extern const unsigned short bgTiles[2096];


extern const unsigned short bgMap[2048];


extern const unsigned short bgPal[256];
# 14 "main.c" 2
# 1 "Lose.h" 1
# 20 "Lose.h"
extern const unsigned short LoseBitmap[38400];
# 15 "main.c" 2
# 1 "MainSong.h" 1
# 20 "MainSong.h"
extern const unsigned char MainSong[2250423];
# 16 "main.c" 2
# 1 "IntroSong.h" 1
# 20 "IntroSong.h"
extern const unsigned char IntroSong[2241504];
# 17 "main.c" 2
# 1 "PauseSong.h" 1
# 20 "PauseSong.h"
extern const unsigned char PauseSong[2391719];
# 18 "main.c" 2
# 1 "WinSong.h" 1
# 20 "WinSong.h"
extern const unsigned char WinSong[2123944];
# 19 "main.c" 2
# 1 "LoseSong.h" 1
# 20 "LoseSong.h"
extern const unsigned char LoseSong[12754944];
# 20 "main.c" 2
# 1 "sound.h" 1

typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();
void pauseSoundA();
void pauseSoundB();
void unpauseSound();

void setupInterrupts();
void interruptHandler();
# 21 "main.c" 2
# 1 "text.h" 1

void drawChar4(int, int, char, unsigned short);
void drawString4(int, int, char *, unsigned short);
# 22 "main.c" 2
# 1 "Intro.h" 1
# 20 "Intro.h"
extern const unsigned short IntroBitmap[38400];
# 23 "main.c" 2
# 1 "Intro2.h" 1
# 21 "Intro2.h"
extern const unsigned short Intro2Bitmap[57400];


extern const unsigned short Intro2Pal[256];
# 24 "main.c" 2
# 1 "Water.h" 1
# 20 "Water.h"
extern const unsigned char Water_c1[6835];
extern const unsigned char Water_c2[6835];
# 25 "main.c" 2
# 1 "Jump.h" 1
# 20 "Jump.h"
extern const unsigned char Jump[3536];
# 26 "main.c" 2
# 59 "main.c"
void initialize();


void goToIntro();
void (*state) ();
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


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        state();
# 145 "main.c"
        (*(volatile unsigned short *)0x04000010) = hOff;
        (*(volatile unsigned short *)0x04000012) = vOff;

        (*(volatile unsigned short *)0x04000014) = hOff / 2;
        (*(volatile unsigned short *)0x04000016) = vOff;

    }

    return 0;

}


void initialize() {

    setupSounds();
    setupInterrupts();

    playSoundA(IntroSong, 2241504, 11025, 1);

    (*(unsigned short *)0x4000000) = 3 | (1<<10);


    buttons = (*(volatile unsigned short *)0x04000130);



    goToIntro();

}

void goToIntro() {



    drawFullscreenImage3(IntroBitmap);

    waitForVBlank();


    state = intro;

}


void intro() {

    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();

    }

}



void goToStart() {

    playSoundA(IntroSong, 2241504, 11025, 1);

    drawFullscreenImage3(SplashBitmap);

    drawString4(40, 90, " Start", ((21) | (11)<<5 | (0)<<10));
    drawString4(40, 40, "ENTER ", 0);
    drawString4(50, 40, "SPACE ", 0);
    drawString4(50, 79, "Instructions", ((21) | (11)<<5 | (0)<<10));

    waitForVBlank();


    state = start;
}


void start() {



    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
        initGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToInstructions();
    }
}


void goToInstructions() {




    drawFullscreenImage3(InstructionsBitmap);


    waitForVBlank();


    state = instructions;
}

void instructions() {

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToGame() {

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8);

    playSoundA(MainSong, 2250423, 11025, 1);



    loadPalette(bgPal);


    (*(volatile unsigned short*)0x4000008) = (1<<14) | ((0)<<2) | ((30)<<8);

    DMANow(3, countersTiles, &((charblock *)0x6000000)[0], 768 / 2);
    DMANow(3, countersMap, &((screenblock *)0x6000000)[30], 4096 / 2);

    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((1)<<2) | ((28)<<8);


    DMANow(3, bgTiles, &((charblock *)0x6000000)[1], 4192 / 2);
    DMANow(3, bgMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);

    hideSprites();

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);

    hOff = 0;
    vOff = 80;
    h1Off = 0;
    v1Off = 90;

    state = game;
}


void game() {

    updateGame();
    waitForVBlank();
    drawGame();
# 311 "main.c"
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4))))
    {
        hOff++;
        h1Off++;

    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5))))
    {
        hOff--;
        h1Off--;

    }



    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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


void goToPause() {

    (*(unsigned short *)0x4000000) = 3 | (1<<10);



    playSoundA(PauseSong, 2391719, 11025 , 1);

    drawFullscreenImage3(PauseBitmap);
    drawString4(120, 60, "Getting Some Zs", ((31) | (31)<<5 | (31)<<10));
    drawString4(130, 60, "Enter- return to game", ((31) | (31)<<5 | (31)<<10));
    drawString4(140, 60, "Space- return to start", ((31) | (31)<<5 | (31)<<10));



    waitForVBlank();
    state = pause;
}


void pause() {





    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSound();
        goToGame();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToStart();
    }
}


void goToWin() {

    (*(unsigned short *)0x4000000) = 3 | (1<<10);

    playSoundA(WinSong, 2123944, 11025, 1);


    drawFullscreenImage3(WinBitmap);
    drawString4(120, 60, "You Won!", ((0) | (0)<<5 | (0)<<10));
    drawString4(130, 60, "Enter to Play again :D", ((0) | (0)<<5 | (0)<<10));


    waitForVBlank();


    state = win;
}


void win() {

    winner = 0;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToStart();
}


void goToLose() {

    (*(unsigned short *)0x4000000) = 3 | (1<<10);


    playSoundA(LoseSong, 12754944, 44100, 1);

    drawFullscreenImage3(LoseBitmap);
    drawString4(120, 80, "Your too dirty :(", ((31) | (31)<<5 | (31)<<10));
    drawString4(140, 80, "Enter to restart", ((31) | (31)<<5 | (31)<<10));

    waitForVBlank();



    state = lose;
}


void lose() {

    loser = 0;


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))))
        goToStart();

}
