# chars
#### Print ASCII and regular expression character class tables

## Usage

### curl ([raw output](https://raw.githubusercontent.com/ardnew/chars/main/chars.out))

You can generate these tables *without installing this script* by fetching the raw output kept in this repo:

`$ curl https://raw.githubusercontent.com/ardnew/chars/main/chars.out`

Making a shell alias or function is easier than remembering that URL. Add the following to your shell startup script (e.g., `~/.bashrc`, `~/.zshrc`):

```sh
chars() {
    p=$( type -P chars ) && "${p}" && return
    curl "https://raw.githubusercontent.com/ardnew/chars/main/chars.out"
}
```

### Perl

`chars` accepts no arguments and simply prints the following tables:

```
      [ DEC  HEX  OCT   CHAR ]      [ DEC  HEX  OCT   CHAR ]      [ DEC  HEX  OCT   CHAR ]      [ DEC  HEX  OCT   CHAR ]
      [ ---+----+----+------ ]      [ ---+----+----+------ ]      [ ---+----+----+------ ]      [ ---+----+----+------ ]
      [ 0   0x00 o000    NUL ]      [ 32  0x20 o040  SPACE ]      [ 64  0x40 o100      @ ]      [ 96  0x60 o140      ` ]
      [ 1   0x01 o001    SOH ]      [ 33  0x21 o041      ! ]      [ 65  0x41 o101      A ]      [ 97  0x61 o141      a ]
      [ 2   0x02 o002    STX ]      [ 34  0x22 o042      " ]      [ 66  0x42 o102      B ]      [ 98  0x62 o142      b ]
      [ 3   0x03 o003    ETX ]      [ 35  0x23 o043      # ]      [ 67  0x43 o103      C ]      [ 99  0x63 o143      c ]
      [ 4   0x04 o004    EOT ]      [ 36  0x24 o044      $ ]      [ 68  0x44 o104      D ]      [ 100 0x64 o144      d ]
      [ 5   0x05 o005    ENQ ]      [ 37  0x25 o045      % ]      [ 69  0x45 o105      E ]      [ 101 0x65 o145      e ]
      [ 6   0x06 o006    ACK ]      [ 38  0x26 o046      & ]      [ 70  0x46 o106      F ]      [ 102 0x66 o146      f ]
      [ 7   0x07 o007    BEL ]      [ 39  0x27 o047      ' ]      [ 71  0x47 o107      G ]      [ 103 0x67 o147      g ]
      [ 8   0x08 o010     BS ]      [ 40  0x28 o050      ( ]      [ 72  0x48 o110      H ]      [ 104 0x68 o150      h ]
      [ 9   0x09 o011    TAB ]      [ 41  0x29 o051      ) ]      [ 73  0x49 o111      I ]      [ 105 0x69 o151      i ]
      [ 10  0x0A o012     LF ]      [ 42  0x2A o052      * ]      [ 74  0x4A o112      J ]      [ 106 0x6A o152      j ]
      [ 11  0x0B o013     VT ]      [ 43  0x2B o053      + ]      [ 75  0x4B o113      K ]      [ 107 0x6B o153      k ]
      [ 12  0x0C o014     FF ]      [ 44  0x2C o054      , ]      [ 76  0x4C o114      L ]      [ 108 0x6C o154      l ]
      [ 13  0x0D o015     CR ]      [ 45  0x2D o055      - ]      [ 77  0x4D o115      M ]      [ 109 0x6D o155      m ]
      [ 14  0x0E o016     SO ]      [ 46  0x2E o056      . ]      [ 78  0x4E o116      N ]      [ 110 0x6E o156      n ]
      [ 15  0x0F o017     SI ]      [ 47  0x2F o057      / ]      [ 79  0x4F o117      O ]      [ 111 0x6F o157      o ]
      [ 16  0x10 o020    DLE ]      [ 48  0x30 o060      0 ]      [ 80  0x50 o120      P ]      [ 112 0x70 o160      p ]
      [ 17  0x11 o021    DC1 ]      [ 49  0x31 o061      1 ]      [ 81  0x51 o121      Q ]      [ 113 0x71 o161      q ]
      [ 18  0x12 o022    DC2 ]      [ 50  0x32 o062      2 ]      [ 82  0x52 o122      R ]      [ 114 0x72 o162      r ]
      [ 19  0x13 o023    DC3 ]      [ 51  0x33 o063      3 ]      [ 83  0x53 o123      S ]      [ 115 0x73 o163      s ]
      [ 20  0x14 o024    DC4 ]      [ 52  0x34 o064      4 ]      [ 84  0x54 o124      T ]      [ 116 0x74 o164      t ]
      [ 21  0x15 o025    NAK ]      [ 53  0x35 o065      5 ]      [ 85  0x55 o125      U ]      [ 117 0x75 o165      u ]
      [ 22  0x16 o026    SYN ]      [ 54  0x36 o066      6 ]      [ 86  0x56 o126      V ]      [ 118 0x76 o166      v ]
      [ 23  0x17 o027    ETB ]      [ 55  0x37 o067      7 ]      [ 87  0x57 o127      W ]      [ 119 0x77 o167      w ]
      [ 24  0x18 o030    CAN ]      [ 56  0x38 o070      8 ]      [ 88  0x58 o130      X ]      [ 120 0x78 o170      x ]
      [ 25  0x19 o031     EM ]      [ 57  0x39 o071      9 ]      [ 89  0x59 o131      Y ]      [ 121 0x79 o171      y ]
      [ 26  0x1A o032    SUB ]      [ 58  0x3A o072      : ]      [ 90  0x5A o132      Z ]      [ 122 0x7A o172      z ]
      [ 27  0x1B o033    ESC ]      [ 59  0x3B o073      ; ]      [ 91  0x5B o133      [ ]      [ 123 0x7B o173      { ]
      [ 28  0x1C o034     FS ]      [ 60  0x3C o074      < ]      [ 92  0x5C o134      \ ]      [ 124 0x7C o174      | ]
      [ 29  0x1D o035     GS ]      [ 61  0x3D o075      = ]      [ 93  0x5D o135      ] ]      [ 125 0x7D o175      } ]
      [ 30  0x1E o036     RS ]      [ 62  0x3E o076      > ]      [ 94  0x5E o136      ^ ]      [ 126 0x7E o176      ~ ]
      [ 31  0x1F o037     US ]      [ 63  0x3F o077      ? ]      [ 95  0x5F o137      _ ]      [ 127 0x7F o177    DEL ]


/------------+--------------+------+------+--------+------------------------------------+-------------------------------------\
|   POSIX    | Non-standard | Perl | Ruby |  vim   |              ASCII                 |           Description               |
+------------+--------------+------+------+--------+------------------------------------+-------------------------------------+
|            |              |      |      |        |                                    |                                     |
| [:alnum:]  |      --      |  --  |  --  |   --   | [A-Za-z0-9]                        | alphanumeric                        |
|            |              |      |      |        |                                    |                                     |
|     --     |   [:word:]   |  \w  |  \w  |   \w   | [A-Za-z0-9_]                       | word (alphanumeric with underscore) |
|            |              |      |      |        |                                    |                                     |
|     --     |      --      |  \W  |  \W  |   \W   | [^A-Za-z0-9_]                      | non-word                            |
|            |              |      |      |        |                                    |                                     |
| [:alpha:]  |      --      |  --  |  --  |   \a   | [A-Za-z]                           | alphabetic                          |
|            |              |      |      |        |                                    |                                     |
|     --     |   [:ascii:]  |  --  |  --  |   --   | [\x00-\x7F]                        | ASCII standard                      |
|            |              |      |      |        |                                    |                                     |
| [:blank:]  |      --      |  --  |  --  |   \s   | [ \t]                              | space and tab                       |
|            |              |      |      |        |                                    |                                     |
|     --     |      --      |  \b  |  --  | \< \>  | (?<=\W)(?=\w)|(?<=\w)(?=\W)        | word boundary                       |
|            |              |      |      |        |                                    |                                     |
| [:cntrl:]  |      --      |  --  |  --  |   --   | [\x00-\x1F\x7F]                    | control character                   |
|            |              |      |      |        |                                    |                                     |
| [:digit:]  |      --      |  \d  |  \d  |   \d   | [0-9]                              | digit                               |
|            |              |      |      |        |                                    |                                     |
|     --     |      --      |  \D  |  \D  |   \D   | [^0-9]                             | non-digit                           |
|            |              |      |      |        |                                    |                                     |
| [:graph:]  |      --      |  --  |  --  |   --   | [\x21-\x7E]                        | visible                             |
|            |              |      |      |        |                                    |                                     |
| [:lower:]  |      --      |  --  |  --  |   \l   | [a-z]                              | lowercase alphabetic                |
|            |              |      |      |        |                                    |                                     |
| [:print:]  |      --      |  --  |  --  |   \p   | [\x20-\x7E]                        | printable (visible with space)      |
|            |              |      |      |        |                                    |                                     |
| [:punct:]  |      --      |  --  |  --  |   --   | [][!"#$%&'()*+,./:;<=>?@\^_`{|}~-] | punctuation                         |
|            |              |      |      |        |                                    |                                     |
| [:space:]  |      --      |  \s  |  \s  |   \_s  | [ \t\r\n\v\f]                      | whitespace                          |
|            |              |      |      |        |                                    |                                     |
|     --     |      --      |  \S  |  \S  |   --   | [^ \t\r\n\v\f]                     | non-whitespace                      |
|            |              |      |      |        |                                    |                                     |
| [:upper:]  |      --      |  --  |  --  |   \u   | [A-Z]                              | uppercase alphabetic                |
|            |              |      |      |        |                                    |                                     |
| [:xdigit:] |      --      |  --  |  \h  |   \x   | [A-Fa-f0-9]                        | hexadecimal digit                   |
|            |              |      |      |        |                                    |                                     |
|     --     |      --      |  --  |  \H  |   --   | [^A-Fa-f0-9]                       | non-hexadecimal digit               |
|            |              |      |      |        |                                    |                                     |
\------------+--------------+------+------+--------+------------------------------------+-------------------------------------/
```

## Installation

Clone this repo or copy the `chars` Perl script to any directory in your `PATH` environment variable, and enable execute permissions. For example:

```
$ git clone git@github.com:ardnew/chars.git
 Cloning into 'chars'...
 remote: Enumerating objects: 4, done.
 remote: Counting objects: 100% (4/4), done.
 remote: Compressing objects: 100% (4/4), done.
 remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
 Receiving objects: 100% (4/4), done.

$ sudo cp chars/chars /usr/local/bin

$ sudo chmod +x /usr/local/bin/chars

```

Also ensure the path to the Perl executable at the top of the script (e.g., `#!/usr/bin/perl`) is correct.

