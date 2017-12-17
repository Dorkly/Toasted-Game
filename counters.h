
//{{BLOCK(counters)

//======================================================================
//
//	counters, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 24 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 768 + 4096 = 5376
//
//	Time-stamp: 2017-12-05, 17:29:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_COUNTERS_H
#define GRIT_COUNTERS_H

#define countersTilesLen 768
extern const unsigned short countersTiles[384];

#define countersMapLen 4096
extern const unsigned short countersMap[2048];

#define countersPalLen 512
extern const unsigned short countersPal[256];

#endif // GRIT_COUNTERS_H

//}}BLOCK(counters)
