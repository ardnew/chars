# chars
#### ASCII and regular expression character class tables

## Description

This repo simply includes four ASCII-encoded plaintext files. Each file contains a single table. The content and format of each table has been carefully designed so that no line is wider than 80 characters, yet complete enough to serve as a useful reference. These formats ease readability in modest command-line terminals.

|File (URL)|Description|
|:--:|:----------|
|`ascii.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii.tbl))|ASCII table with decimal, hex, and printable symbol for codes 0-127|
|`ascii2.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii2.tbl))|Alternate format of `ascii.tbl`|
|`ascii3.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/ascii3.tbl))|Alternate format of `ascii.tbl`|
|`recharclass.tbl` ([raw](https://raw.githubusercontent.com/ardnew/chars/main/recharclass.tbl))|All POSIX and Perl 5 regex character classes with ASCII pattern and description|

## Usage

I recommend downloading the tables (see the raw URLs above), and creating shell aliases to print their content.

For example:

```sh
curl -o /usr/local/share/ascii.tbl https://raw.githubusercontent.com/ardnew/chars/main/ascii.tbl

alias ascii="cat /usr/local/share/ascii.tbl"
```

## Content

#### `ascii.tbl`
```txt
+ ---------- + ---------- + ---------- + ---------- +
| 0   00 NUL | 32  20  SP | 64  40   @ | 96  60   ` |
| 1   01 SOH | 33  21   ! | 65  41   A | 97  61   a |
| 2   02 STX | 34  22   " | 66  42   B | 98  62   b |
| 3   03 ETX | 35  23   # | 67  43   C | 99  63   c |
| 4   04 EOT | 36  24   $ | 68  44   D | 100 64   d |
| 5   05 ENQ | 37  25   % | 69  45   E | 101 65   e |
| 6   06 ACK | 38  26   & | 70  46   F | 102 66   f |
| 7   07 BEL | 39  27   ' | 71  47   G | 103 67   g |
| 8   08  BS | 40  28   ( | 72  48   H | 104 68   h |
| 9   09 TAB | 41  29   ) | 73  49   I | 105 69   i |
| 10  0A  LF | 42  2A   * | 74  4A   J | 106 6A   j |
| 11  0B  VT | 43  2B   + | 75  4B   K | 107 6B   k |
| 12  0C  FF | 44  2C   , | 76  4C   L | 108 6C   l |
| 13  0D  CR | 45  2D   - | 77  4D   M | 109 6D   m |
| 14  0E  SO | 46  2E   . | 78  4E   N | 110 6E   n |
| 15  0F  SI | 47  2F   / | 79  4F   O | 111 6F   o |
| 16  10 DLE | 48  30   0 | 80  50   P | 112 70   p |
| 17  11 DC1 | 49  31   1 | 81  51   Q | 113 71   q |
| 18  12 DC2 | 50  32   2 | 82  52   R | 114 72   r |
| 19  13 DC3 | 51  33   3 | 83  53   S | 115 73   s |
| 20  14 DC4 | 52  34   4 | 84  54   T | 116 74   t |
| 21  15 NAK | 53  35   5 | 85  55   U | 117 75   u |
| 22  16 SYN | 54  36   6 | 86  56   V | 118 76   v |
| 23  17 ETB | 55  37   7 | 87  57   W | 119 77   w |
| 24  18 CAN | 56  38   8 | 88  58   X | 120 78   x |
| 25  19  EM | 57  39   9 | 89  59   Y | 121 79   y |
| 26  1A SUB | 58  3A   : | 90  5A   Z | 122 7A   z |
| 27  1B ESC | 59  3B   ; | 91  5B   [ | 123 7B   { |
| 28  1C  FS | 60  3C   < | 92  5C   \ | 124 7C   | |
| 29  1D  GS | 61  3D   = | 93  5D   ] | 125 7D   } |
| 30  1E  RS | 62  3E   > | 94  5E   ^ | 126 7E   ~ |
| 31  1F  US | 63  3F   ? | 95  5F   _ | 127 7F DEL |
+ ---------- + ---------- + ---------- + ---------- +
```

#### `ascii2.tbl`
```txt
.------------..------------..------------..------------.
[ 0   00 NUL ][ 32  20  SP ][ 64  40   @ ][ 96  60   ` ]
[ 1   01 SOH ][ 33  21   ! ][ 65  41   A ][ 97  61   a ]
[ 2   02 STX ][ 34  22   " ][ 66  42   B ][ 98  62   b ]
[ 3   03 ETX ][ 35  23   # ][ 67  43   C ][ 99  63   c ]
[ 4   04 EOT ][ 36  24   $ ][ 68  44   D ][ 100 64   d ]
[ 5   05 ENQ ][ 37  25   % ][ 69  45   E ][ 101 65   e ]
[ 6   06 ACK ][ 38  26   & ][ 70  46   F ][ 102 66   f ]
[ 7   07 BEL ][ 39  27   ' ][ 71  47   G ][ 103 67   g ]
[ 8   08  BS ][ 40  28   ( ][ 72  48   H ][ 104 68   h ]
[ 9   09 TAB ][ 41  29   ) ][ 73  49   I ][ 105 69   i ]
[ 10  0A  LF ][ 42  2A   * ][ 74  4A   J ][ 106 6A   j ]
[ 11  0B  VT ][ 43  2B   + ][ 75  4B   K ][ 107 6B   k ]
[ 12  0C  FF ][ 44  2C   , ][ 76  4C   L ][ 108 6C   l ]
[ 13  0D  CR ][ 45  2D   - ][ 77  4D   M ][ 109 6D   m ]
[ 14  0E  SO ][ 46  2E   . ][ 78  4E   N ][ 110 6E   n ]
[ 15  0F  SI ][ 47  2F   / ][ 79  4F   O ][ 111 6F   o ]
[ 16  10 DLE ][ 48  30   0 ][ 80  50   P ][ 112 70   p ]
[ 17  11 DC1 ][ 49  31   1 ][ 81  51   Q ][ 113 71   q ]
[ 18  12 DC2 ][ 50  32   2 ][ 82  52   R ][ 114 72   r ]
[ 19  13 DC3 ][ 51  33   3 ][ 83  53   S ][ 115 73   s ]
[ 20  14 DC4 ][ 52  34   4 ][ 84  54   T ][ 116 74   t ]
[ 21  15 NAK ][ 53  35   5 ][ 85  55   U ][ 117 75   u ]
[ 22  16 SYN ][ 54  36   6 ][ 86  56   V ][ 118 76   v ]
[ 23  17 ETB ][ 55  37   7 ][ 87  57   W ][ 119 77   w ]
[ 24  18 CAN ][ 56  38   8 ][ 88  58   X ][ 120 78   x ]
[ 25  19  EM ][ 57  39   9 ][ 89  59   Y ][ 121 79   y ]
[ 26  1A SUB ][ 58  3A   : ][ 90  5A   Z ][ 122 7A   z ]
[ 27  1B ESC ][ 59  3B   ; ][ 91  5B   [ ][ 123 7B   { ]
[ 28  1C  FS ][ 60  3C   < ][ 92  5C   \ ][ 124 7C   | ]
[ 29  1D  GS ][ 61  3D   = ][ 93  5D   ] ][ 125 7D   } ]
[ 30  1E  RS ][ 62  3E   > ][ 94  5E   ^ ][ 126 7E   ~ ]
[ 31  1F  US ][ 63  3F   ? ][ 95  5F   _ ][ 127 7F DEL ]
'------------''------------''------------''------------'
```

#### `ascii3.tbl`
```txt
0   00 NUL      32  20  SP      64  40   @      96  60   `
1   01 SOH      33  21   !      65  41   A      97  61   a
2   02 STX      34  22   "      66  42   B      98  62   b
3   03 ETX      35  23   #      67  43   C      99  63   c
4   04 EOT      36  24   $      68  44   D      100 64   d
5   05 ENQ      37  25   %      69  45   E      101 65   e
6   06 ACK      38  26   &      70  46   F      102 66   f
7   07 BEL      39  27   '      71  47   G      103 67   g
8   08  BS      40  28   (      72  48   H      104 68   h
9   09 TAB      41  29   )      73  49   I      105 69   i
10  0A  LF      42  2A   *      74  4A   J      106 6A   j
11  0B  VT      43  2B   +      75  4B   K      107 6B   k
12  0C  FF      44  2C   ,      76  4C   L      108 6C   l
13  0D  CR      45  2D   -      77  4D   M      109 6D   m
14  0E  SO      46  2E   .      78  4E   N      110 6E   n
15  0F  SI      47  2F   /      79  4F   O      111 6F   o
16  10 DLE      48  30   0      80  50   P      112 70   p
17  11 DC1      49  31   1      81  51   Q      113 71   q
18  12 DC2      50  32   2      82  52   R      114 72   r
19  13 DC3      51  33   3      83  53   S      115 73   s
20  14 DC4      52  34   4      84  54   T      116 74   t
21  15 NAK      53  35   5      85  55   U      117 75   u
22  16 SYN      54  36   6      86  56   V      118 76   v
23  17 ETB      55  37   7      87  57   W      119 77   w
24  18 CAN      56  38   8      88  58   X      120 78   x
25  19  EM      57  39   9      89  59   Y      121 79   y
26  1A SUB      58  3A   :      90  5A   Z      122 7A   z
27  1B ESC      59  3B   ;      91  5B   [      123 7B   {
28  1C  FS      60  3C   <      92  5C   \      124 7C   |
29  1D  GS      61  3D   =      93  5D   ]      125 7D   }
30  1E  RS      62  3E   >      94  5E   ^      126 7E   ~
31  1F  US      63  3F   ?      95  5F   _      127 7F DEL
```

#### `recharclass.tbl`
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
