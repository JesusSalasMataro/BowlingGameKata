‚,
lC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\BowlingGame.cs
	namespace 	
BowlingGameKata
 
{ 
public		 

class		 
BowlingGame		 
{

 
private 
readonly 
int 
TOTAL_FRAMES )
=* +
$num, .
;. /
private 
FrameSequence 
_frameSequence ,
;, -
public 
BowlingGame 
( 
string !
rollsSequence" /
)/ 0
{ 	
_frameSequence 
= 
new  
FrameSequence! .
(. /
rollsSequence/ <
)< =
;= >
} 	
public 
int 
GetFinalScore  
(  !
)! "
{ 	
int 
score 
= 
$num 
; 
List 
< 
Frame 
> 
frames 
=  
_frameSequence! /
./ 0
ToList0 6
(6 7
)7 8
;8 9
for 
( 
int 
i 
= 
$num 
; 
i 
< 
TOTAL_FRAMES  ,
;, -
i. /
++/ 1
)1 2
{ 
score 
+= 
GetFrameScore &
(& '
frames' -
,- .
i/ 0
)0 1
;1 2
} 
return 
score 
; 
}   	
private"" 
int"" 
GetFrameScore"" !
(""! "
List""" &
<""& '
Frame""' ,
>"", -
frames"". 4
,""4 5
int""6 9
index"": ?
)""? @
{## 	
if$$ 
($$ 
IsFinalFrame$$ 
($$ 
index$$ "
)$$" #
)$$# $
{%% 
return&& 
frames&& 
[&& 
index&& #
]&&# $
.&&$ %
PinsKnockedDown&&% 4
(&&4 5
)&&5 6
;&&6 7
}'' 
else(( 
{)) 
if** 
(** 
frames** 
[** 
index**  
]**  !
.**! "
IsStrike**" *
(*** +
)**+ ,
)**, -
{++ 
if,, 
(,, 
frames,, 
[,, 
index,, $
+,,% &
$num,,' (
],,( )
.,,) *
IsStrike,,* 2
(,,2 3
),,3 4
),,4 5
{-- 
if.. 
(.. 
IsFinalFrame.. (
(..( )
index..) .
+../ 0
$num..1 2
)..2 3
)..3 4
{// 
return00 "
frames00# )
[00) *
index00* /
]00/ 0
.000 1
PinsKnockedDown001 @
(00@ A
)00A B
+00C D
frames11  &
[11& '
index11' ,
+11- .
$num11/ 0
]110 1
.111 2$
PinsKnockedDownFirstRoll112 J
+11K L
frames11M S
[11S T
index11T Y
+11Z [
$num11\ ]
]11] ^
.11^ _%
PinsKnockedDownSecondRoll11_ x
;11x y
}22 
else33 
{44 
return55 "
frames55# )
[55) *
index55* /
]55/ 0
.550 1
PinsKnockedDown551 @
(55@ A
)55A B
+55C D
frames66  &
[66& '
index66' ,
+66- .
$num66/ 0
]660 1
.661 2$
PinsKnockedDownFirstRoll662 J
+66K L
frames66M S
[66S T
index66T Y
+66Z [
$num66\ ]
]66] ^
.66^ _$
PinsKnockedDownFirstRoll66_ w
;66w x
}77 
}88 
else99 
{:: 
return;; 
frames;; %
[;;% &
index;;& +
];;+ ,
.;;, -
PinsKnockedDown;;- <
(;;< =
);;= >
+;;? @
frames<< "
[<<" #
index<<# (
+<<) *
$num<<+ ,
]<<, -
.<<- .$
PinsKnockedDownFirstRoll<<. F
+<<G H
frames<<I O
[<<O P
index<<P U
+<<V W
$num<<X Y
]<<Y Z
.<<Z [%
PinsKnockedDownSecondRoll<<[ t
;<<t u
}== 
}>> 
else?? 
if?? 
(?? 
frames?? 
[??  
index??  %
]??% &
.??& '
IsSpare??' .
(??. /
)??/ 0
)??0 1
{@@ 
returnAA 
framesAA !
[AA! "
indexAA" '
]AA' (
.AA( )
PinsKnockedDownAA) 8
(AA8 9
)AA9 :
+AA; <
framesAA= C
[AAC D
indexAAD I
+AAJ K
$numAAL M
]AAM N
.AAN O$
PinsKnockedDownFirstRollAAO g
;AAg h
}BB 
elseCC 
{DD 
returnEE 
framesEE !
[EE! "
indexEE" '
]EE' (
.EE( )
PinsKnockedDownEE) 8
(EE8 9
)EE9 :
;EE: ;
}FF 
}GG 
}HH 	
privateJJ 
boolJJ 
IsFinalFrameJJ !
(JJ! "
intJJ" %
indexJJ& +
)JJ+ ,
{KK 	
returnLL 
indexLL 
==LL 
TOTAL_FRAMESLL (
-LL) *
$numLL+ ,
;LL, -
}MM 	
}OO 
}PP ﬁ
fC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\Frame.cs
	namespace 	
BowlingGameKata
 
{ 
public		 

class		 
Frame		 
{

 
public 
int $
PinsKnockedDownFirstRoll +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int %
PinsKnockedDownSecondRoll ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
int $
PinsKnockedDownExtraRoll +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int 

FrameScore 
{ 
get  #
;# $
set% (
;( )
}* +
public 
Frame 
( 
int $
pinsKnockedDownFirstRoll 1
,1 2
int3 6%
pinsKnockedDownSecondRoll7 P
)P Q
{ 	$
PinsKnockedDownFirstRoll $
=% &$
pinsKnockedDownFirstRoll' ?
;? @%
PinsKnockedDownSecondRoll %
=& '%
pinsKnockedDownSecondRoll( A
;A B
} 	
public 
bool 
IsSpare 
( 
) 
{ 	
return $
PinsKnockedDownFirstRoll +
<, -
$num. 0
&&1 3$
PinsKnockedDownFirstRoll4 L
+M N%
PinsKnockedDownSecondRollO h
==i k
$numl n
;n o
} 	
public 
bool 
IsStrike 
( 
) 
{ 	
return $
PinsKnockedDownFirstRoll +
==, .
$num/ 1
;1 2
} 	
public   
int   
PinsKnockedDown   "
(  " #
)  # $
{!! 	
return"" $
PinsKnockedDownFirstRoll"" +
+"", -%
PinsKnockedDownSecondRoll"". G
+""H I$
PinsKnockedDownExtraRoll""J b
;""b c
}## 	
}$$ 
}%% ·C
nC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\FrameSequence.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 0
)0 1
]1 2
	namespace		 	
BowlingGameKata		
 
{

 
public 

class 
FrameSequence 
{ 
private 
readonly 
int 
TOTAL_FRAMES )
=* +
$num, .
;. /
private 
string 
_frameSequence %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
FrameSequence 
( 
string #
frameSequence$ 1
)1 2
{ 	
_frameSequence 
= 
frameSequence *
;* +
} 	
public 
List 
< 
Frame 
> 
ToList !
(! "
)" #
{ 	
List 
< 
Frame 
> 
Frames 
=  
new! $
List% )
<) *
Frame* /
>/ 0
(0 1
)1 2
;2 3
Frames 
=  
LoadNinthFirstFrames )
() *
)* +
;+ ,
Frames 
. 
Add 
( 
LoadTenthFrame %
(% &
)& '
)' (
;( )
return 
Frames 
; 
} 	
internal 
List 
< 
Frame 
>  
LoadNinthFirstFrames 1
(1 2
)2 3
{   	
List!! 
<!! 
Frame!! 
>!! 
Frames!! 
=!!  
new!!! $
List!!% )
<!!) *
Frame!!* /
>!!/ 0
(!!0 1
)!!1 2
;!!2 3
int"" $
pinsKnockedDownFirstRoll"" (
="") *
$num""+ ,
;"", -
int## %
pinsKnockedDownSecondRoll## )
=##* +
$num##, -
;##- .
int$$ 
index$$ 
=$$ 
$num$$ 
;$$ 
Frame%% 
frame%% 
;%% 
for'' 
('' 
int'' 
i'' 
='' 
$num'' 
;'' 
i'' 
<'' 
TOTAL_FRAMES''  ,
-''- .
$num''/ 0
;''0 1
i''2 3
++''3 5
)''5 6
{(( $
pinsKnockedDownFirstRoll)) (
=))) *$
GetPinsKnockedDownInRoll))+ C
())C D
index))D I
)))I J
;))J K
if++ 
(++ $
pinsKnockedDownFirstRoll++ ,
==++- /
$num++0 2
)++2 3
{,, %
pinsKnockedDownSecondRoll-- -
=--. /
$num--0 1
;--1 2
index.. 
++.. 
;.. 
}// 
else00 
{11 %
pinsKnockedDownSecondRoll22 -
=22. /$
GetPinsKnockedDownInRoll220 H
(22H I
index22I N
+22O P
$num22Q R
)22R S
;22S T
index33 
+=33 
$num33 
;33 
}44 
frame66 
=66 
new66 
Frame66 !
(66! "$
pinsKnockedDownFirstRoll66" :
,66: ;%
pinsKnockedDownSecondRoll66< U
)66U V
;66V W
Frames77 
.77 
Add77 
(77 
frame77  
)77  !
;77! "
}88 
return:: 
Frames:: 
;:: 
};; 	
internal== 
Frame== 
LoadTenthFrame== %
(==% &
)==& '
{>> 	
int?? $
pinsKnockedDownFirstRoll?? (
=??) *
$num??+ ,
;??, -
int@@ %
pinsKnockedDownSecondRoll@@ )
=@@* +
$num@@, -
;@@- .
intAA $
pinsKnockedDownExtraRollAA (
=AA) *
$numAA+ ,
;AA, -
FrameBB 
frameBB 
;BB 
ifDD 
(DD $
LastFrameIsStrikeOrSpareDD (
(DD( )
)DD) *
)DD* +
{EE $
pinsKnockedDownFirstRollFF (
=FF) *$
GetPinsKnockedDownInRollFF+ C
(FFC D
_frameSequenceFFD R
.FFR S
LengthFFS Y
-FFZ [
$numFF\ ]
)FF] ^
;FF^ _%
pinsKnockedDownSecondRollGG )
=GG* +$
GetPinsKnockedDownInRollGG, D
(GGD E
_frameSequenceGGE S
.GGS T
LengthGGT Z
-GG[ \
$numGG] ^
)GG^ _
;GG_ `$
pinsKnockedDownExtraRollHH (
=HH) *$
GetPinsKnockedDownInRollHH+ C
(HHC D
_frameSequenceHHD R
.HHR S
LengthHHS Y
-HHZ [
$numHH\ ]
)HH] ^
;HH^ _
}II 
elseJJ 
{KK $
pinsKnockedDownFirstRollLL (
=LL) *$
GetPinsKnockedDownInRollLL+ C
(LLC D
_frameSequenceLLD R
.LLR S
LengthLLS Y
-LLZ [
$numLL\ ]
)LL] ^
;LL^ _%
pinsKnockedDownSecondRollMM )
=MM* +$
GetPinsKnockedDownInRollMM, D
(MMD E
_frameSequenceMME S
.MMS T
LengthMMT Z
-MM[ \
$numMM] ^
)MM^ _
;MM_ `
}NN 
framePP 
=PP 
newPP 
FramePP 
(PP $
pinsKnockedDownFirstRollPP 6
,PP6 7%
pinsKnockedDownSecondRollPP8 Q
)PPQ R
;PPR S
frameQQ 
.QQ $
PinsKnockedDownExtraRollQQ *
=QQ+ ,$
pinsKnockedDownExtraRollQQ- E
;QQE F
returnSS 
frameSS 
;SS 
}TT 	
internalVV 
boolVV $
LastFrameIsStrikeOrSpareVV .
(VV. /
)VV/ 0
{WW 	
returnXX 
_frameSequenceXX !
[XX! "
_frameSequenceXX" 0
.XX0 1
LengthXX1 7
-XX8 9
$numXX: ;
]XX; <
==XX= ?
(XX@ A
charXXA E
)XXE F
RollSymbolEnumXXF T
.XXT U
StrikeXXU [
||XX\ ^
_frameSequenceYY 
[YY 
_frameSequenceYY -
.YY- .
LengthYY. 4
-YY5 6
$numYY7 8
]YY8 9
==YY: <
(YY= >
charYY> B
)YYB C
RollSymbolEnumYYC Q
.YYQ R
SpareYYR W
;YYW X
}ZZ 	
internal\\ 
int\\ $
GetPinsKnockedDownInRoll\\ -
(\\- .
int\\. 1
index\\2 7
)\\7 8
{]] 	
if^^ 
(^^ 
_frameSequence^^ 
[^^ 
index^^ $
]^^$ %
==^^& (
(^^) *
char^^* .
)^^. /
RollSymbolEnum^^/ =
.^^= >
Strike^^> D
)^^D E
{__ 
return`` 
$num`` 
;`` 
}aa 
elsebb 
ifbb 
(bb 
_frameSequencebb #
[bb# $
indexbb$ )
]bb) *
==bb+ -
(bb. /
charbb/ 3
)bb3 4
RollSymbolEnumbb4 B
.bbB C
SparebbC H
)bbH I
{cc 
returndd 
$numdd 
-dd 
intdd 
.dd  
Parsedd  %
(dd% &
_frameSequencedd& 4
[dd4 5
indexdd5 :
-dd; <
$numdd= >
]dd> ?
.dd? @
ToStringdd@ H
(ddH I
)ddI J
)ddJ K
;ddK L
}ee 
elseff 
{gg 
ifhh 
(hh 
_frameSequencehh "
[hh" #
indexhh# (
]hh( )
==hh* ,
(hh- .
charhh. 2
)hh2 3
RollSymbolEnumhh3 A
.hhA B
FailhhB F
)hhF G
{ii 
returnjj 
$numjj 
;jj 
}kk 
elsell 
{mm 
returnnn 
intnn 
.nn 
Parsenn $
(nn$ %
_frameSequencenn% 3
[nn3 4
indexnn4 9
]nn9 :
.nn: ;
ToStringnn; C
(nnC D
)nnD E
)nnE F
;nnF G
}oo 
}pp 
}qq 	
}rr 
}ss ¥
hC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\Program.cs
	namespace 	
BowlingGameKata
 
{ 
class		 	
Program		
 
{

 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
} 	
} 
} £
xC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str *
)* +
]+ ,
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *⁄
oC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\RollSymbolEnum.cs
	namespace 	
BowlingGameKata
 
{ 
public		 

enum		 
RollSymbolEnum		 
{

 
Strike 
= 
$char 
, 
Spare 
= 
$char 
, 
Fail 
= 
$char 
} 
} ©
¶C:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs©
¶C:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs©
¶C:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameKata\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csò
lC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\FrameTests.cs
	namespace		 	
BowlingGameTests		
 
{

 
[ 
	TestClass 
] 
public 

class 

FrameTests 
{ 
[ 	

TestMethod	 
] 
public 
void D
8Return_IsSpare_True_When_KnockDown_All_Pins_In_Two_Rolls L
(L M
)M N
{ 	
Frame 
frame 
= 
new 
Frame #
(# $
$num$ %
,% &
$num' (
)( )
;) *
Assert 
. 
IsTrue 
( 
frame 
.  
IsSpare  '
(' (
)( )
)) *
;* +
} 	
[ 	

TestMethod	 
] 
public 
void F
:Return_IsStrike_True_When_KnockDown_All_Pins_In_First_Roll N
(N O
)O P
{ 	
Frame 
frame 
= 
new 
Frame #
(# $
$num$ &
,& '
$num( )
)) *
;* +
Assert## 
.## 
IsTrue## 
(## 
frame## 
.##  
IsStrike##  (
(##( )
)##) *
)##* +
;##+ ,
}$$ 	
[&& 	

TestMethod&&	 
]&& 
public'' 
void'' 7
+Return_Number_Of_Pins_Knocked_Down_In_Frame'' ?
(''? @
)''@ A
{(( 	
Frame** 
frame** 
=** 
new** 
Frame** #
(**# $
$num**$ %
,**% &
$num**' (
)**( )
;**) *
frame++ 
.++ $
PinsKnockedDownExtraRoll++ *
=+++ ,
$num++- .
;++. /
int.. 

actualPins.. 
=.. 
frame.. "
..." #
PinsKnockedDown..# 2
(..2 3
)..3 4
;..4 5
int// 
expectedPins// 
=// 
$num// !
;//! "
Assert22 
.22 
AreEqual22 
(22 
expectedPins22 (
,22( )

actualPins22* 4
)224 5
;225 6
}33 	
}44 
}55 «0
kC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\GameTests.cs
	namespace 	
BowlingGameTests
 
{ 
[ 
	TestClass 
] 
public		 

class		 
	GameTests		 
{

 
[ 	

TestMethod	 
] 
public 
void `
TNot_All_Pins_Knocked_Down_In_Two_Rolls_Then_Score_Equals_Number_Of_Pins_Knocked_Down h
(h i
)i j
{ 	
string 
rollsSequence  
=! "
$str# 9
;9 :
BowlingGame 
bowlingGame #
=$ %
new& )
BowlingGame* 5
(5 6
rollsSequence6 C
)C D
;D E
int 
actualScore 
= 
bowlingGame )
.) *
GetFinalScore* 7
(7 8
)8 9
;9 :
Assert 
. 
AreEqual 
( 
$num 
, 
actualScore  +
)+ ,
;, -
} 	
[ 	

TestMethod	 
] 
public 
void a
UWhen_Bowler_Achieves_Spare_FrameScore_Is_10Points_Plus_Pins_Knocked_Down_In_Next_Roll i
(i j
)j k
{ 	
string 
rollsSequence  
=! "
$str# :
;: ;
BowlingGame 
bowlingGame #
=$ %
new& )
BowlingGame* 5
(5 6
rollsSequence6 C
)C D
;D E
int!! 
actualScore!! 
=!! 
bowlingGame!! )
.!!) *
GetFinalScore!!* 7
(!!7 8
)!!8 9
;!!9 :
Assert$$ 
.$$ 
AreEqual$$ 
($$ 
$num$$ 
,$$  
actualScore$$! ,
)$$, -
;$$- .
}%% 	
['' 	

TestMethod''	 
]'' 
public(( 
void(( g
[When_Bowler_Achieves_Strike_FrameScore_Is_10Points_Plus_Pins_Knocked_Down_In_Two_Next_Rolls(( o
(((o p
)((p q
{)) 	
string++ 
rollsSequence++  
=++! "
$str++# 8
;++8 9
BowlingGame,, 
bowlingGame,, #
=,,$ %
new,,& )
BowlingGame,,* 5
(,,5 6
rollsSequence,,6 C
),,C D
;,,D E
int// 
actualScore// 
=// 
bowlingGame// )
.//) *
GetFinalScore//* 7
(//7 8
)//8 9
;//9 :
Assert22 
.22 
AreEqual22 
(22 
$num22 
,22 
actualScore22  +
)22+ ,
;22, -
}33 	
[55 	

TestMethod55	 
]55 
public66 
void66 G
;When_Bowler_Achieves_Spare_At_Final_Frame_And_An_Extra_Roll66 O
(66O P
)66P Q
{77 	
string99 
rollsSequence99  
=99! "
$str99# 9
;999 :
BowlingGame:: 
bowlingGame:: #
=::$ %
new::& )
BowlingGame::* 5
(::5 6
rollsSequence::6 C
)::C D
;::D E
int== 
actualScore== 
=== 
bowlingGame== )
.==) *
GetFinalScore==* 7
(==7 8
)==8 9
;==9 :
Assert@@ 
.@@ 
AreEqual@@ 
(@@ 
$num@@ 
,@@  
actualScore@@! ,
)@@, -
;@@- .
}AA 	
[CC 	

TestMethodCC	 
]CC 
publicDD 
voidDD H
<When_Bowler_Achieves_Strike_At_Final_Frame_And_An_Extra_RollDD P
(DDP Q
)DDQ R
{EE 	
stringGG 
rollsSequenceGG  
=GG! "
$strGG# 9
;GG9 :
BowlingGameHH 
bowlingGameHH #
=HH$ %
newHH& )
BowlingGameHH* 5
(HH5 6
rollsSequenceHH6 C
)HHC D
;HHD E
intKK 
actualScoreKK 
=KK 
bowlingGameKK )
.KK) *
GetFinalScoreKK* 7
(KK7 8
)KK8 9
;KK9 :
AssertNN 
.NN 
AreEqualNN 
(NN 
$numNN 
,NN  
actualScoreNN! ,
)NN, -
;NN- .
}OO 	
[QQ 	

TestMethodQQ	 
]QQ 
publicRR 
voidRR M
AWhen_Bowler_Achieves_Two_Strikes_At_Final_Frame_And_An_Extra_RollRR U
(RRU V
)RRV W
{SS 	
stringUU 
rollsSequenceUU  
=UU! "
$strUU# 9
;UU9 :
BowlingGameVV 
bowlingGameVV #
=VV$ %
newVV& )
BowlingGameVV* 5
(VV5 6
rollsSequenceVV6 C
)VVC D
;VVD E
intYY 
actualScoreYY 
=YY 
bowlingGameYY )
.YY) *
GetFinalScoreYY* 7
(YY7 8
)YY8 9
;YY9 :
Assert\\ 
.\\ 
AreEqual\\ 
(\\ 
$num\\ 
,\\  
actualScore\\! ,
)\\, -
;\\- .
}]] 	
[__ 	

TestMethod__	 
]__ 
public`` 
void`` E
9When_Bowler_Achieves_All_Strikes_Calculate_Correct_Result`` M
(``M N
)``N O
{aa 	
stringcc 
rollsSequencecc  
=cc! "
$strcc# 1
;cc1 2
BowlingGamedd 
bowlingGamedd #
=dd$ %
newdd& )
BowlingGamedd* 5
(dd5 6
rollsSequencedd6 C
)ddC D
;ddD E
intgg 
actualScoregg 
=gg 
bowlingGamegg )
.gg) *
GetFinalScoregg* 7
(gg7 8
)gg8 9
;gg9 :
Assertjj 
.jj 
AreEqualjj 
(jj 
$numjj 
,jj  
actualScorejj! ,
)jj, -
;jj- .
}kk 	
}ll 
}mm ây
mC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\ParserTests.cs
	namespace 	
BowlingGameTests
 
{ 
[		 
	TestClass		 
]		 
public

 

class

 
ParserTests

 
{ 
[ 	

TestMethod	 
] 
public 
void 3
'Return_Correct_Pins_KnockedDown_In_Roll ;
(; <
)< =
{ 	
string 
framesString 
=  !
$str" 8
;8 9
FrameSequence 
frameSequence '
=( )
new* -
FrameSequence. ;
(; <
framesString< H
)H I
;I J
List 
< 
Frame 
> 
frames 
=  
frameSequence! .
.. /
ToList/ 5
(5 6
)6 7
;7 8
Assert 
. 
AreEqual 
( 
frames "
[" #
$num# $
]$ %
.% &$
PinsKnockedDownFirstRoll& >
,> ?
$num@ A
)A B
;B C
Assert 
. 
AreEqual 
( 
frames "
[" #
$num# $
]$ %
.% &%
PinsKnockedDownSecondRoll& ?
,? @
$numA B
)B C
;C D
} 	
[ 	

TestMethod	 
] 
public 
void ?
3Return_Correct_Pins_KnockedDown_In_Roll_When_Strike G
(G H
)H I
{ 	
string 
framesString 
=  !
$str" 7
;7 8
FrameSequence   
frameSequence   '
=  ( )
new  * -
FrameSequence  . ;
(  ; <
framesString  < H
)  H I
;  I J
List## 
<## 
Frame## 
>## 
frames## 
=##  
frameSequence##! .
.##. /
ToList##/ 5
(##5 6
)##6 7
;##7 8
Assert&& 
.&& 
AreEqual&& 
(&& 
frames&& "
[&&" #
$num&&# $
]&&$ %
.&&% &$
PinsKnockedDownFirstRoll&&& >
,&&> ?
$num&&@ B
)&&B C
;&&C D
Assert'' 
.'' 
AreEqual'' 
('' 
frames'' "
[''" #
$num''# $
]''$ %
.''% &%
PinsKnockedDownSecondRoll''& ?
,''? @
$num''A B
)''B C
;''C D
}(( 	
[** 	

TestMethod**	 
]** 
public++ 
void++ >
2Return_Correct_Pins_KnockedDown_In_Roll_When_Spare++ F
(++F G
)++G H
{,, 	
string.. 
framesString.. 
=..  !
$str.." 8
;..8 9
FrameSequence// 
frameSequence// '
=//( )
new//* -
FrameSequence//. ;
(//; <
framesString//< H
)//H I
;//I J
List22 
<22 
Frame22 
>22 
frames22 
=22  
frameSequence22! .
.22. /
ToList22/ 5
(225 6
)226 7
;227 8
Assert55 
.55 
AreEqual55 
(55 
frames55 "
[55" #
$num55# $
]55$ %
.55% &$
PinsKnockedDownFirstRoll55& >
,55> ?
$num55@ A
)55A B
;55B C
Assert66 
.66 
AreEqual66 
(66 
frames66 "
[66" #
$num66# $
]66$ %
.66% &%
PinsKnockedDownSecondRoll66& ?
,66? @
$num66A B
)66B C
;66C D
}77 	
[99 	

TestMethod99	 
]99 
public:: 
void:: .
"Return_True_If_Last_Frame_Is_Spare:: 6
(::6 7
)::7 8
{;; 	
string== 
framesString== 
===  !
$str==" 9
;==9 :
FrameSequence>> 
frameSequence>> '
=>>( )
new>>* -
FrameSequence>>. ;
(>>; <
framesString>>< H
)>>H I
;>>I J
boolAA 
lastFrameIsSpareAA !
=AA" #
frameSequenceAA$ 1
.AA1 2$
LastFrameIsStrikeOrSpareAA2 J
(AAJ K
)AAK L
;AAL M
AssertDD 
.DD 
IsTrueDD 
(DD 
lastFrameIsSpareDD *
)DD* +
;DD+ ,
}EE 	
[GG 	

TestMethodGG	 
]GG 
publicHH 
voidHH /
#Return_True_If_Last_Frame_Is_StrikeHH 7
(HH7 8
)HH8 9
{II 	
stringKK 
framesStringKK 
=KK  !
$strKK" 9
;KK9 :
FrameSequenceLL 
frameSequenceLL '
=LL( )
newLL* -
FrameSequenceLL. ;
(LL; <
framesStringLL< H
)LLH I
;LLI J
boolOO 
lastFrameIsStrikeOO "
=OO# $
frameSequenceOO% 2
.OO2 3$
LastFrameIsStrikeOrSpareOO3 K
(OOK L
)OOL M
;OOM N
AssertRR 
.RR 
IsTrueRR 
(RR 
lastFrameIsStrikeRR +
)RR+ ,
;RR, -
}SS 	
[UU 	

TestMethodUU	 
]UU 
publicVV 
voidVV 5
)Return_Correct_List_Of_Ninth_First_FramesVV =
(VV= >
)VV> ?
{WW 	
stringYY 
framesStringYY 
=YY  !
$strYY" 8
;YY8 9
FrameSequenceZZ 
frameSequenceZZ '
=ZZ( )
newZZ* -
FrameSequenceZZ. ;
(ZZ; <
framesStringZZ< H
)ZZH I
;ZZI J
List]] 
<]] 
Frame]] 
>]] 
actualFrames]] $
=]]% &
frameSequence]]' 4
.]]4 5 
LoadNinthFirstFrames]]5 I
(]]I J
)]]J K
;]]K L
List^^ 
<^^ 
Frame^^ 
>^^ 
expectedFrames^^ &
=^^' (.
"CreateListExpectedNinthFirstFrames^^) K
(^^K L
)^^L M
;^^M N
FrameCompareraa 
frameCompareraa '
=aa( )
newaa* -
FrameCompareraa. ;
(aa; <
)aa< =
;aa= >
CollectionAssertbb 
.bb 
AreEqualbb %
(bb% &
expectedFramesbb& 4
,bb4 5
actualFramesbb6 B
,bbB C
frameComparerbbD Q
)bbQ R
;bbR S
}cc 	
[ee 	

TestMethodee	 
]ee 
publicff 
voidff 5
)Return_Correct_Tenth_Frame_When_Is_Strikeff =
(ff= >
)ff> ?
{gg 	
stringii 
framesStringii 
=ii  !
$strii" 8
;ii8 9
FrameSequencejj 
frameSequencejj '
=jj( )
newjj* -
FrameSequencejj. ;
(jj; <
framesStringjj< H
)jjH I
;jjI J
Framemm 
actualFramemm 
=mm 
frameSequencemm  -
.mm- .
LoadTenthFramemm. <
(mm< =
)mm= >
;mm> ?
Framenn 
expectedFramenn 
=nn  !
newnn" %
Framenn& +
(nn+ ,
$numnn, .
,nn. /
$numnn0 1
)nn1 2
;nn2 3
expectedFrameoo 
.oo $
PinsKnockedDownExtraRolloo 2
=oo3 4
$numoo5 6
;oo6 7
Assertrr 
.rr 
AreEqualrr 
(rr 
expectedFramerr )
.rr) *$
PinsKnockedDownFirstRollrr* B
,rrB C
actualFramerrD O
.rrO P$
PinsKnockedDownFirstRollrrP h
)rrh i
;rri j
Assertss 
.ss 
AreEqualss 
(ss 
expectedFramess )
.ss) *%
PinsKnockedDownSecondRollss* C
,ssC D
actualFramessE P
.ssP Q%
PinsKnockedDownSecondRollssQ j
)ssj k
;ssk l
Asserttt 
.tt 
AreEqualtt 
(tt 
expectedFramett )
.tt) *$
PinsKnockedDownExtraRolltt* B
,ttB C
actualFramettD O
.ttO P$
PinsKnockedDownExtraRollttP h
)tth i
;tti j
}uu 	
[ww 	

TestMethodww	 
]ww 
publicxx 
voidxx 4
(Return_Correct_Tenth_Frame_When_Is_Sparexx <
(xx< =
)xx= >
{yy 	
string{{ 
framesString{{ 
={{  !
$str{{" 8
;{{8 9
FrameSequence|| 
frameSequence|| '
=||( )
new||* -
FrameSequence||. ;
(||; <
framesString||< H
)||H I
;||I J
Frame 
actualFrame 
= 
frameSequence  -
.- .
LoadTenthFrame. <
(< =
)= >
;> ?
Frame
ÄÄ 
expectedFrame
ÄÄ 
=
ÄÄ  !
new
ÄÄ" %
Frame
ÄÄ& +
(
ÄÄ+ ,
$num
ÄÄ, -
,
ÄÄ- .
$num
ÄÄ/ 0
)
ÄÄ0 1
;
ÄÄ1 2
expectedFrame
ÅÅ 
.
ÅÅ &
PinsKnockedDownExtraRoll
ÅÅ 2
=
ÅÅ3 4
$num
ÅÅ5 6
;
ÅÅ6 7
Assert
ÑÑ 
.
ÑÑ 
AreEqual
ÑÑ 
(
ÑÑ 
expectedFrame
ÑÑ )
.
ÑÑ) *&
PinsKnockedDownFirstRoll
ÑÑ* B
,
ÑÑB C
actualFrame
ÑÑD O
.
ÑÑO P&
PinsKnockedDownFirstRoll
ÑÑP h
)
ÑÑh i
;
ÑÑi j
Assert
ÖÖ 
.
ÖÖ 
AreEqual
ÖÖ 
(
ÖÖ 
expectedFrame
ÖÖ )
.
ÖÖ) *'
PinsKnockedDownSecondRoll
ÖÖ* C
,
ÖÖC D
actualFrame
ÖÖE P
.
ÖÖP Q'
PinsKnockedDownSecondRoll
ÖÖQ j
)
ÖÖj k
;
ÖÖk l
Assert
ÜÜ 
.
ÜÜ 
AreEqual
ÜÜ 
(
ÜÜ 
expectedFrame
ÜÜ )
.
ÜÜ) *&
PinsKnockedDownExtraRoll
ÜÜ* B
,
ÜÜB C
actualFrame
ÜÜD O
.
ÜÜO P&
PinsKnockedDownExtraRoll
ÜÜP h
)
ÜÜh i
;
ÜÜi j
}
áá 	
[
ââ 	

TestMethod
ââ	 
]
ââ 
public
ää 
void
ää I
;Return_Correct_Tenth_Frame_When_Is_Not_Strike_Neither_Spare
ää O
(
ääO P
)
ääP Q
{
ãã 	
string
çç 
framesString
çç 
=
çç  !
$str
çç" 7
;
çç7 8
FrameSequence
éé 
frameSequence
éé '
=
éé( )
new
éé* -
FrameSequence
éé. ;
(
éé; <
framesString
éé< H
)
ééH I
;
ééI J
Frame
ëë 
actualFrame
ëë 
=
ëë 
frameSequence
ëë  -
.
ëë- .
LoadTenthFrame
ëë. <
(
ëë< =
)
ëë= >
;
ëë> ?
Frame
íí 
expectedFrame
íí 
=
íí  !
new
íí" %
Frame
íí& +
(
íí+ ,
$num
íí, -
,
íí- .
$num
íí/ 0
)
íí0 1
;
íí1 2
Assert
ïï 
.
ïï 
AreEqual
ïï 
(
ïï 
expectedFrame
ïï )
.
ïï) *&
PinsKnockedDownFirstRoll
ïï* B
,
ïïB C
actualFrame
ïïD O
.
ïïO P&
PinsKnockedDownFirstRoll
ïïP h
)
ïïh i
;
ïïi j
Assert
ññ 
.
ññ 
AreEqual
ññ 
(
ññ 
expectedFrame
ññ )
.
ññ) *'
PinsKnockedDownSecondRoll
ññ* C
,
ññC D
actualFrame
ññE P
.
ññP Q'
PinsKnockedDownSecondRoll
ññQ j
)
ññj k
;
ññk l
Assert
óó 
.
óó 
AreEqual
óó 
(
óó 
expectedFrame
óó )
.
óó) *&
PinsKnockedDownExtraRoll
óó* B
,
óóB C
actualFrame
óóD O
.
óóO P&
PinsKnockedDownExtraRoll
óóP h
)
óóh i
;
óói j
}
òò 	
private
õõ 
List
õõ 
<
õõ 
Frame
õõ 
>
õõ 0
"CreateListExpectedNinthFirstFrames
õõ >
(
õõ> ?
)
õõ? @
{
úú 	
return
ùù 
new
ùù 
List
ùù 
<
ùù 
Frame
ùù !
>
ùù! "
{
ùù# $
new
ûû 
Frame
ûû 
(
ûû 
$num
ûû 
,
ûû 
$num
ûû 
)
ûû 
,
ûû  
new
üü 
Frame
üü 
(
üü 
$num
üü 
,
üü 
$num
üü 
)
üü 
,
üü  
new
†† 
Frame
†† 
(
†† 
$num
†† 
,
†† 
$num
†† 
)
†† 
,
††  
new
°° 
Frame
°° 
(
°° 
$num
°° 
,
°° 
$num
°° 
)
°° 
,
°°  
new
¢¢ 
Frame
¢¢ 
(
¢¢ 
$num
¢¢ 
,
¢¢ 
$num
¢¢ 
)
¢¢  
,
¢¢  !
new
££ 
Frame
££ 
(
££ 
$num
££ 
,
££ 
$num
££ 
)
££ 
,
££  
new
§§ 
Frame
§§ 
(
§§ 
$num
§§ 
,
§§ 
$num
§§ 
)
§§ 
,
§§  
new
•• 
Frame
•• 
(
•• 
$num
•• 
,
•• 
$num
•• 
)
•• 
,
••  
new
¶¶ 
Frame
¶¶ 
(
¶¶ 
$num
¶¶ 
,
¶¶ 
$num
¶¶ 
)
¶¶ 
}
ßß 
;
ßß 
}
®® 	
private
™™ 
class
™™ 
FrameComparer
™™ #
:
™™$ %
Comparer
™™& .
<
™™. /
Frame
™™/ 4
>
™™4 5
{
´´ 	
public
¨¨ 
override
¨¨ 
int
¨¨ 
Compare
¨¨  '
(
¨¨' (
Frame
¨¨( -

firstFrame
¨¨. 8
,
¨¨8 9
Frame
¨¨: ?
secondFrame
¨¨@ K
)
¨¨K L
{
≠≠ 
if
ÆÆ 
(
ÆÆ 

firstFrame
ÆÆ 
.
ÆÆ &
PinsKnockedDownFirstRoll
ÆÆ 7
==
ÆÆ8 :
secondFrame
ÆÆ; F
.
ÆÆF G&
PinsKnockedDownFirstRoll
ÆÆG _
&&
ÆÆ` b

firstFrame
ØØ 
.
ØØ '
PinsKnockedDownSecondRoll
ØØ 8
==
ØØ9 ;
secondFrame
ØØ< G
.
ØØG H'
PinsKnockedDownSecondRoll
ØØH a
&&
ØØb d

firstFrame
∞∞ 
.
∞∞ &
PinsKnockedDownExtraRoll
∞∞ 7
==
∞∞8 :
secondFrame
∞∞; F
.
∞∞F G&
PinsKnockedDownExtraRoll
∞∞G _
)
∞∞_ `
{
±± 
return
≤≤ 
$num
≤≤ 
;
≤≤ 
}
≥≥ 
else
¥¥ 
{
µµ 
return
∂∂ 
-
∂∂ 
$num
∂∂ 
;
∂∂ 
}
∑∑ 
}
∏∏ 
}
ππ 	
}
∫∫ 
}ªª §
yC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str +
)+ ,
], -
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str -
)- .
]. /
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *™
ßC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cs™
ßC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cs™
ßC:\Users\USUARIO\Documents\Visual Studio 2012\Projects\CSharp\BowlingGameKata\BowlingGameTests\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs