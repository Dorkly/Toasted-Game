
//{{BLOCK(bg)

//======================================================================
//
//	bg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 131 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 4192 + 4096 = 8800
//
//	Time-stamp: 2017-12-05, 17:32:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_H
#define GRIT_BG_H

#define bgTilesLen 4192
extern const unsigned short bgTiles[2096];

#define bgMapLen 4096
extern const unsigned short bgMap[2048];

#define bgPalLen 512
extern const unsigned short bgPal[256];

#endif // GRIT_BG_H

//}}BLOCK(bg)
