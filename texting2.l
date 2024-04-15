%{
#include <stdio.h>
%}

%option noyywrap

%x START_OF_SENTENCE

%%

<INITIAL>"."      { printf(". "); BEGIN(START_OF_SENTENCE); }
<INITIAL>"?"      { printf("? "); BEGIN(START_OF_SENTENCE); }
<INITIAL>"!"      { printf("! "); BEGIN(START_OF_SENTENCE); }

<START_OF_SENTENCE>"lol"   { printf("Laugh out loud"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"brb"   { printf("Be right back"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"plz"   { printf("Please"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"b4"    { printf("Before"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"u"     { printf("You"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"4"     { printf("For"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"k"     { printf("Okay"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"sry"   { printf("Sorry"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"m8"    { printf("Mate"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"h8"    { printf("Hate"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"cya"   { printf("See ya"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"gf"    { printf("Girlfriend"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"gg"    { printf("Good game"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"ily"   { printf("I love you"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"kms"   { printf("Kill myself"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"omg"   { printf("Oh my god"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"dm"    { printf("Direct message"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"rofl"  { printf("Rolling on the floor laughing"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"bf"    { printf("Boyfriend"); BEGIN(INITIAL); }
<START_OF_SENTENCE>"bff"   { printf("Best friend"); BEGIN(INITIAL); }
.                           { ECHO; }

%%
