# chars
#### ASCII and regular expression character class tables

## Description

This repo is a collection of ASCII-encoded plaintext files. Each file contains a single table. The content and format of each table has been carefully designed to not exceed `80×34`, yet complete enough to serve as a useful reference (except for [`ascii-list.tbl`](https://raw.githubusercontent.com/ardnew/chars/main/ascii-list.tbl), intended for machines). These formats ease readability in modest command-line terminals.

|File (URL)|Description|
|:--:|:----------|
|`ascii-a.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii-a.tbl))|ASCII table (decimal, hex, symbol/glyph, control, and escape) for codes 0-127|
|`ascii-b.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii-b.tbl))|Alternate format of `ascii-a.tbl`|
|`ascii-c.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii-c.tbl))|Alternate format of `ascii-a.tbl`|
|`ascii-tiny.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii-tiny.tbl))|Reduced table data for smaller screens|
|`ascii-list.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii-list.tbl))|Easy-to-parse single-column format|
|`charclass.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/charclass.tbl))|All POSIX and Perl 5 regex character classes with ASCII pattern and description|

## Quick Usage

Download a table (see the raw URLs above) and create a shell alias to print its content.

For example:

```sh
curl -o /usr/local/share/ascii-a.tbl https://raw.githubusercontent.com/ardnew/chars/main/ascii-a.tbl

alias ascii="cat /usr/local/share/ascii-a.tbl"
```

## Complete Usage

Clone this repo, install the tables and shell scripts using the given Makefile:

```sh
git clone https://github.com/ardnew/chars
cd chars
make install [PREFIX=/usr/local]
```

You can then print the ASCII or character class tables:

```sh
ascii         # ascii-a.tbl (default)
ascii b       # ascii-b.tbl
ascii tiny    # ascii-tiny.tbl
ascii list    # ...

charclass
```

## Content

#### `ascii-a.tbl` `59×34`
```txt
+ ---------------- + ---------- + ---------- + ---------- +
| 0   00 NUL ^@ \0 | 32  20  SP | 64  40   @ | 96  60   ` |
| 1   01 SOH ^A    | 33  21   ! | 65  41   A | 97  61   a |
| 2   02 STX ^B    | 34  22   " | 66  42   B | 98  62   b |
| 3   03 ETX ^C    | 35  23   # | 67  43   C | 99  63   c |
| 4   04 EOT ^D    | 36  24   $ | 68  44   D | 100 64   d |
| 5   05 ENQ ^E    | 37  25   % | 69  45   E | 101 65   e |
| 6   06 ACK ^F    | 38  26   & | 70  46   F | 102 66   f |
| 7   07 BEL ^G \a | 39  27   ' | 71  47   G | 103 67   g |
| 8   08  BS ^H \b | 40  28   ( | 72  48   H | 104 68   h |
| 9   09 TAB ^I \t | 41  29   ) | 73  49   I | 105 69   i |
| 10  0A  LF ^J \n | 42  2A   * | 74  4A   J | 106 6A   j |
| 11  0B  VT ^K \v | 43  2B   + | 75  4B   K | 107 6B   k |
| 12  0C  FF ^L \f | 44  2C   , | 76  4C   L | 108 6C   l |
| 13  0D  CR ^M \r | 45  2D   - | 77  4D   M | 109 6D   m |
| 14  0E  SO ^N    | 46  2E   . | 78  4E   N | 110 6E   n |
| 15  0F  SI ^O    | 47  2F   / | 79  4F   O | 111 6F   o |
| 16  10 DLE ^P    | 48  30   0 | 80  50   P | 112 70   p |
| 17  11 DC1 ^Q    | 49  31   1 | 81  51   Q | 113 71   q |
| 18  12 DC2 ^R    | 50  32   2 | 82  52   R | 114 72   r |
| 19  13 DC3 ^S    | 51  33   3 | 83  53   S | 115 73   s |
| 20  14 DC4 ^T    | 52  34   4 | 84  54   T | 116 74   t |
| 21  15 NAK ^U    | 53  35   5 | 85  55   U | 117 75   u |
| 22  16 SYN ^V    | 54  36   6 | 86  56   V | 118 76   v |
| 23  17 ETB ^W    | 55  37   7 | 87  57   W | 119 77   w |
| 24  18 CAN ^X    | 56  38   8 | 88  58   X | 120 78   x |
| 25  19  EM ^Y    | 57  39   9 | 89  59   Y | 121 79   y |
| 26  1A SUB ^Z    | 58  3A   : | 90  5A   Z | 122 7A   z |
| 27  1B ESC ^[ \e | 59  3B   ; | 91  5B   [ | 123 7B   { |
| 28  1C  FS ^\    | 60  3C   < | 92  5C   \ | 124 7C   | |
| 29  1D  GS ^]    | 61  3D   = | 93  5D   ] | 125 7D   } |
| 30  1E  RS ^^    | 62  3E   > | 94  5E   ^ | 126 7E   ~ |
| 31  1F  US ^_    | 63  3F   ? | 95  5F   _ | 127 7F DEL |
+ ---------------- + ---------- + ---------- + ---------- +
```

#### `ascii-b.tbl` `62×34`
```txt
.------------------..------------..------------..------------.
[ 0   00 NUL ^@ \0 ][ 32  20  SP ][ 64  40   @ ][ 96  60   ` ]
[ 1   01 SOH ^A    ][ 33  21   ! ][ 65  41   A ][ 97  61   a ]
[ 2   02 STX ^B    ][ 34  22   " ][ 66  42   B ][ 98  62   b ]
[ 3   03 ETX ^C    ][ 35  23   # ][ 67  43   C ][ 99  63   c ]
[ 4   04 EOT ^D    ][ 36  24   $ ][ 68  44   D ][ 100 64   d ]
[ 5   05 ENQ ^E    ][ 37  25   % ][ 69  45   E ][ 101 65   e ]
[ 6   06 ACK ^F    ][ 38  26   & ][ 70  46   F ][ 102 66   f ]
[ 7   07 BEL ^G \a ][ 39  27   ' ][ 71  47   G ][ 103 67   g ]
[ 8   08  BS ^H \b ][ 40  28   ( ][ 72  48   H ][ 104 68   h ]
[ 9   09 TAB ^I \t ][ 41  29   ) ][ 73  49   I ][ 105 69   i ]
[ 10  0A  LF ^J \n ][ 42  2A   * ][ 74  4A   J ][ 106 6A   j ]
[ 11  0B  VT ^K \v ][ 43  2B   + ][ 75  4B   K ][ 107 6B   k ]
[ 12  0C  FF ^L \f ][ 44  2C   , ][ 76  4C   L ][ 108 6C   l ]
[ 13  0D  CR ^M \r ][ 45  2D   - ][ 77  4D   M ][ 109 6D   m ]
[ 14  0E  SO ^N    ][ 46  2E   . ][ 78  4E   N ][ 110 6E   n ]
[ 15  0F  SI ^O    ][ 47  2F   / ][ 79  4F   O ][ 111 6F   o ]
[ 16  10 DLE ^P    ][ 48  30   0 ][ 80  50   P ][ 112 70   p ]
[ 17  11 DC1 ^Q    ][ 49  31   1 ][ 81  51   Q ][ 113 71   q ]
[ 18  12 DC2 ^R    ][ 50  32   2 ][ 82  52   R ][ 114 72   r ]
[ 19  13 DC3 ^S    ][ 51  33   3 ][ 83  53   S ][ 115 73   s ]
[ 20  14 DC4 ^T    ][ 52  34   4 ][ 84  54   T ][ 116 74   t ]
[ 21  15 NAK ^U    ][ 53  35   5 ][ 85  55   U ][ 117 75   u ]
[ 22  16 SYN ^V    ][ 54  36   6 ][ 86  56   V ][ 118 76   v ]
[ 23  17 ETB ^W    ][ 55  37   7 ][ 87  57   W ][ 119 77   w ]
[ 24  18 CAN ^X    ][ 56  38   8 ][ 88  58   X ][ 120 78   x ]
[ 25  19  EM ^Y    ][ 57  39   9 ][ 89  59   Y ][ 121 79   y ]
[ 26  1A SUB ^Z    ][ 58  3A   : ][ 90  5A   Z ][ 122 7A   z ]
[ 27  1B ESC ^[ \e ][ 59  3B   ; ][ 91  5B   [ ][ 123 7B   { ]
[ 28  1C  FS ^\    ][ 60  3C   < ][ 92  5C   \ ][ 124 7C   | ]
[ 29  1D  GS ^]    ][ 61  3D   = ][ 93  5D   ] ][ 125 7D   } ]
[ 30  1E  RS ^^    ][ 62  3E   > ][ 94  5E   ^ ][ 126 7E   ~ ]
[ 31  1F  US ^_    ][ 63  3F   ? ][ 95  5F   _ ][ 127 7F DEL ]
'------------------''------------''------------''------------'
```

#### `ascii-c.tbl` `64×32`
```txt
0   00 NUL ^@ \0      32  20  SP      64  40   @      96  60   `
1   01 SOH ^A         33  21   !      65  41   A      97  61   a
2   02 STX ^B         34  22   "      66  42   B      98  62   b
3   03 ETX ^C         35  23   #      67  43   C      99  63   c
4   04 EOT ^D         36  24   $      68  44   D      100 64   d
5   05 ENQ ^E         37  25   %      69  45   E      101 65   e
6   06 ACK ^F         38  26   &      70  46   F      102 66   f
7   07 BEL ^G \a      39  27   '      71  47   G      103 67   g
8   08  BS ^H \b      40  28   (      72  48   H      104 68   h
9   09 TAB ^I \t      41  29   )      73  49   I      105 69   i
10  0A  LF ^J \n      42  2A   *      74  4A   J      106 6A   j
11  0B  VT ^K \v      43  2B   +      75  4B   K      107 6B   k
12  0C  FF ^L \f      44  2C   ,      76  4C   L      108 6C   l
13  0D  CR ^M \r      45  2D   -      77  4D   M      109 6D   m
14  0E  SO ^N         46  2E   .      78  4E   N      110 6E   n
15  0F  SI ^O         47  2F   /      79  4F   O      111 6F   o
16  10 DLE ^P         48  30   0      80  50   P      112 70   p
17  11 DC1 ^Q         49  31   1      81  51   Q      113 71   q
18  12 DC2 ^R         50  32   2      82  52   R      114 72   r
19  13 DC3 ^S         51  33   3      83  53   S      115 73   s
20  14 DC4 ^T         52  34   4      84  54   T      116 74   t
21  15 NAK ^U         53  35   5      85  55   U      117 75   u
22  16 SYN ^V         54  36   6      86  56   V      118 76   v
23  17 ETB ^W         55  37   7      87  57   W      119 77   w
24  18 CAN ^X         56  38   8      88  58   X      120 78   x
25  19  EM ^Y         57  39   9      89  59   Y      121 79   y
26  1A SUB ^Z         58  3A   :      90  5A   Z      122 7A   z
27  1B ESC ^[ \e      59  3B   ;      91  5B   [      123 7B   {
28  1C  FS ^\         60  3C   <      92  5C   \      124 7C   |
29  1D  GS ^]         61  3D   =      93  5D   ]      125 7D   }
30  1E  RS ^^         62  3E   >      94  5E   ^      126 7E   ~
31  1F  US ^_         63  3F   ?      95  5F   _      127 7F DEL
```

#### `ascii-tiny.tbl` `70×16` _hexadecimal only_
```txt
|00 NUL  |10 DLE  |20  SP  |30   0  |40   @  |50   P  |60   `  |70   p
|01 SOH  |11 DC1  |21   !  |31   1  |41   A  |51   Q  |61   a  |71   q
|02 STX  |12 DC2  |22   "  |32   2  |42   B  |52   R  |62   b  |72   r
|03 ETX  |13 DC3  |23   #  |33   3  |43   C  |53   S  |63   c  |73   s
|04 EOT  |14 DC4  |24   $  |34   4  |44   D  |54   T  |64   d  |74   t
|05 ENQ  |15 NAK  |25   %  |35   5  |45   E  |55   U  |65   e  |75   u
|06 ACK  |16 SYN  |26   &  |36   6  |46   F  |56   V  |66   f  |76   v
|07 BEL  |17 ETB  |27   '  |37   7  |47   G  |57   W  |67   g  |77   w
|08  BS  |18 CAN  |28   (  |38   8  |48   H  |58   X  |68   h  |78   x
|09 TAB  |19  EM  |29   )  |39   9  |49   I  |59   Y  |69   i  |79   y
|0A  LF  |1A SUB  |2A   *  |3A   :  |4A   J  |5A   Z  |6A   j  |7A   z
|0B  VT  |1B ESC  |2B   +  |3B   ;  |4B   K  |5B   [  |6B   k  |7B   {
|0C  FF  |1C  FS  |2C   ,  |3C   <  |4C   L  |5C   \  |6C   l  |7C   |
|0D  CR  |1D  GS  |2D   -  |3D   =  |4D   M  |5D   ]  |6D   m  |7D   }
|0E  SO  |1E  RS  |2E   .  |3E   >  |4E   N  |5E   ^  |6E   n  |7E   ~
|0F  SI  |1F  US  |2F   /  |3F   ?  |4F   O  |5F   _  |6F   o  |7F DEL
```

#### `ascii-list.tbl` `16×128`
```txt
0   00 NUL ^@ \0
1   01 SOH ^A
2   02 STX ^B
3   03 ETX ^C
4   04 EOT ^D
5   05 ENQ ^E
6   06 ACK ^F
7   07 BEL ^G \a
8   08  BS ^H \b
9   09 TAB ^I \t
10  0A  LF ^J \n
11  0B  VT ^K \v
12  0C  FF ^L \f
13  0D  CR ^M \r
14  0E  SO ^N
15  0F  SI ^O
16  10 DLE ^P
17  11 DC1 ^Q
18  12 DC2 ^R
19  13 DC3 ^S
20  14 DC4 ^T
21  15 NAK ^U
22  16 SYN ^V
23  17 ETB ^W
24  18 CAN ^X
25  19  EM ^Y
26  1A SUB ^Z
27  1B ESC ^[ \e
28  1C  FS ^\
29  1D  GS ^]
30  1E  RS ^^
31  1F  US ^_
32  20  SP
33  21   !
34  22   "
35  23   #
36  24   $
37  25   %
38  26   &
39  27   '
40  28   (
41  29   )
42  2A   *
43  2B   +
44  2C   ,
45  2D   -
46  2E   .
47  2F   /
48  30   0
49  31   1
50  32   2
51  33   3
52  34   4
53  35   5
54  36   6
55  37   7
56  38   8
57  39   9
58  3A   :
59  3B   ;
60  3C   <
61  3D   =
62  3E   >
63  3F   ?
64  40   @
65  41   A
66  42   B
67  43   C
68  44   D
69  45   E
70  46   F
71  47   G
72  48   H
73  49   I
74  4A   J
75  4B   K
76  4C   L
77  4D   M
78  4E   N
79  4F   O
80  50   P
81  51   Q
82  52   R
83  53   S
84  54   T
85  55   U
86  56   V
87  57   W
88  58   X
89  59   Y
90  5A   Z
91  5B   [
92  5C   \
93  5D   ]
94  5E   ^
95  5F   _
96  60   `
97  61   a
98  62   b
99  63   c
100 64   d
101 65   e
102 66   f
103 67   g
104 68   h
105 69   i
106 6A   j
107 6B   k
108 6C   l
109 6D   m
110 6E   n
111 6F   o
112 70   p
113 71   q
114 72   r
115 73   s
116 74   t
117 75   u
118 76   v
119 77   w
120 78   x
121 79   y
122 7A   z
123 7B   {
124 7C   |
125 7D   }
126 7E   ~
127 7F DEL
```

#### `charclass.tbl` `80×23`
```txt
+ ------ + -- + ---------------------------------- + ------------------------- +
| POSIX* | pl |              ASCII                 |        Description        |
+ ------ + -- + ---------------------------------- + ------------------------- +
| alnum  | -- | [A-Za-z0-9]                        | alphanumeric              |
|  word* | \w | [A-Za-z0-9_]                       | alphanumeric + underscore |
|   --   | \W | [^A-Za-z0-9_]                      | non-word                  |
| alpha  | -- | [A-Za-z]                           | alphabetic                |
| ascii* | -- | [\x00-\x7F]                        | ASCII standard            |
| blank  | -- | [ \t]                              | space and tab             |
|   --   | \b | (?<=\W)(?=\w)|(?<=\w)(?=\W)        | word boundary             |
| cntrl  | -- | [\x00-\x1F\x7F]                    | control character         |
| digit  | \d | [0-9]                              | digit                     |
|   --   | \D | [^0-9]                             | non-digit                 |
| graph  | -- | [\x21-\x7E]                        | visible                   |
| lower  | -- | [a-z]                              | lowercase alphabetic      |
| print  | -- | [\x20-\x7E]                        | visible and space         |
| punct  | -- | [][!"#$%&'()*+,./:;<=>?@\^_`{|}~-] | punctuation               |
| space  | \s | [ \t\r\n\v\f]                      | whitespace                |
|   --   | \S | [^ \t\r\n\v\f]                     | non-whitespace            |
| upper  | -- | [A-Z]                              | uppercase alphabetic      |
| xdigit | -- | [A-Fa-f0-9]                        | hexadecimal digit         |
|   --   | -- | [^A-Fa-f0-9]                       | non-hexadecimal digit     |
+ ------ + -- + ---------------------------------- + ------------------------- +
```

## Extra

#### Unicode symbols (Category `Cc`) for C0 Control Codes
|#|Symbol|Glyph|
|:--:|:---:|:-:|
|`00`|`NUL`|␀|
|`01`|`SOH`|␁|
|`02`|`STX`|␂|
|`03`|`ETX`|␃|
|`04`|`EOT`|␄|
|`05`|`ENQ`|␅|
|`06`|`ACK`|␆|
|`07`|`BEL`|␇|
|`08`|`BS` |␈|
|`09`|`HT` |␉|
|`0A`|`LF` |␊|
|`0B`|`VT` |␋|
|`0C`|`FF` |␌|
|`0D`|`CR` |␍|
|`0E`|`SO` |␎|
|`0F`|`SI` |␏|
|`10`|`DLE`|␐|
|`11`|`DC1`|␑|
|`12`|`DC2`|␒|
|`13`|`DC3`|␓|
|`14`|`DC4`|␔|
|`15`|`NAK`|␕|
|`16`|`SYN`|␖|
|`17`|`ETB`|␗|
|`18`|`CAN`|␘|
|`19`|`EM` |␙|
|`1A`|`SUB`|␚|
|`1B`|`ESC`|␛|
|`1C`|`FS` |␜|
|`1D`|`GS` |␝|
|`1E`|`RS` |␞|
|`1F`|`US` |␟|
|`20`|`SP` |␠|
|`7F`|`DEL`|␡|
