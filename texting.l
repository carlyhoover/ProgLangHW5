%option noyywrap
WC      [A-Za-z'] //word character
NW      [^A-Za-z'] //not a word


%%
"lol"   printf("laugh out loud");
"brb"   printf("be right back");
"plz"   printf("please");
"b4"    printf("before");
"u"     printf("you");
"4"     printf("for");
"k"     printf("okay");
"sry"   printf("sorry");
"m8"    printf("mate");
"h8"    printf("hate");
"cya"   printf("see ya");
"gf"    printf("girlfriend");
"gg"    printf("good game");
"ily"   printf("i love you");
"kms"   printf("kill myself");
"omg"   printf("oh my god");
"dm"    printf("direct message");
"rofl"  printf("rolling on the floor laughing");
"bf"    printf("boyfriend");
"bff"   printf("best friend");
.       ECHO;

%%
