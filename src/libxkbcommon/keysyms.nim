##  Taken from https://github.com/xkbcommon/libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h
##  All terms of the MIT license apply here.
##  This is converted to Nim via c2nim
##
## The following is a list of all copyright notices and license statements which
## appear in the xkbcommon source tree.
##
## If making new contributions, the first form (i.e. Daniel Stone, Ran Benita,
## etc) is vastly preferred.
##
## All licenses are derivative of the MIT/X11 license, mostly identical other
## than no-endorsement clauses (e.g. paragraph 4 of The Open Group's license).
##
## These statements are split into two sections: one for the code compiled and
## distributed as part of the libxkbcommon shared library and the code
## component of all tests (i.e. everything under src/ and xkbcommon/, plus the
## .c and .h files under test/), and another for the test data under test/data,
## which is distributed with the xkbcommon source tarball, but not installed to
## the system.
##
##
## BEGINNING OF SOFTWARE COPYRIGHT/LICENSE STATEMENTS:
##
##
## -------------------------------------------------------------------------------
##
## Copyright © 2009-2012, 2016 Daniel Stone
## Copyright © 2012 Ran Benita <ran234@gmail.com>
## Copyright © 2010, 2012 Intel Corporation
## Copyright © 2008, 2009 Dan Nicholson
## Copyright © 2010 Francisco Jerez <currojerez@riseup.net>
##
## Permission is hereby granted, free of charge, to any person obtaining a
## copy of this software and associated documentation files (the "Software"),
## to deal in the Software without restriction, including without limitation
## the rights to use, copy, modify, merge, publish, distribute, sublicense,
## and/or sell copies of the Software, and to permit persons to whom the
## Software is furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice (including the next
## paragraph) shall be included in all copies or substantial portions of the
## Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
## THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
## FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
## DEALINGS IN THE SOFTWARE.
##
##
## -------------------------------------------------------------------------------
##
##
## Copyright 1985, 1987, 1988, 1990, 1998  The Open Group
##
## Permission is hereby granted, free of charge, to any person obtaining a
## copy of this software and associated documentation files (the "Software"),
## to deal in the Software without restriction, including without limitation
## the rights to use, copy, modify, merge, publish, distribute, sublicense,
## and/or sell copies of the Software, and to permit persons to whom the
## Software is furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
## ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
## CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
## Except as contained in this notice, the names of the authors or their
## institutions shall not be used in advertising or otherwise to promote the
## sale, use or other dealings in this Software without prior written
## authorization from the authors.
##
##
## -------------------------------------------------------------------------------
##
##
## Copyright (c) 1993, 1994, 1995, 1996 by Silicon Graphics Computer Systems, Inc.
##
## Permission to use, copy, modify, and distribute this
## software and its documentation for any purpose and without
## fee is hereby granted, provided that the above copyright
## notice appear in all copies and that both that copyright
## notice and this permission notice appear in supporting
## documentation, and that the name of Silicon Graphics not be
## used in advertising or publicity pertaining to distribution
## of the software without specific prior written permission.
## Silicon Graphics makes no representation about the suitability
## of this software for any purpose. It is provided "as is"
## without any express or implied warranty.
##
## SILICON GRAPHICS DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
## SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
## AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL SILICON
## GRAPHICS BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL
## DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
## DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
## OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION  WITH
## THE USE OR PERFORMANCE OF THIS SOFTWARE.
##
##
## -------------------------------------------------------------------------------
##
##
## Copyright 1987, 1988 by Digital Equipment Corporation, Maynard, Massachusetts.
##
##                         All Rights Reserved
##
## Permission to use, copy, modify, and distribute this software and its
## documentation for any purpose and without fee is hereby granted,
## provided that the above copyright notice appear in all copies and that
## both that copyright notice and this permission notice appear in
## supporting documentation, and that the name of Digital not be
## used in advertising or publicity pertaining to distribution of the
## software without specific, written prior permission.
##
## DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
## ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
## DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
## ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
## WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
## ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
## SOFTWARE.
##
##
## -------------------------------------------------------------------------------
##
##
## Copyright (C) 2011 Joseph Adams <joeyadams3.14159@gmail.com>
##
## Permission is hereby granted, free of charge, to any person obtaining a copy
## of this software and associated documentation files (the "Software"), to deal
## in the Software without restriction, including without limitation the rights
## to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
## copies of the Software, and to permit persons to whom the Software is
## furnished to do so, subject to the following conditions:
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
## AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
## LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
## OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
## THE SOFTWARE.
##
##
## -------------------------------------------------------------------------------
##
##
##
## END OF SOFTWARE COPYRIGHT/LICENSE STATEMENTS
##
##
## BEGINNING OF LICENSE STATEMENTS FOR UNDISTRIBUTED DATA FILES IN test/data,
## derived from xkeyboard-config:
##
##
##
## -------------------------------------------------------------------------------
##
## Copyright 1996 by Joseph Moss
## Copyright (C) 2002-2007 Free Software Foundation, Inc.
## Copyright (C) Dmitry Golubev <lastguru@mail.ru>, 2003-2004
## Copyright (C) 2004, Gregory Mokhin <mokhin@bog.msu.ru>
## Copyright (C) 2006 Erdal Ronahî
##
## Permission to use, copy, modify, distribute, and sell this software and its
## documentation for any purpose is hereby granted without fee, provided that
## the above copyright notice appear in all copies and that both that
## copyright notice and this permission notice appear in supporting
## documentation, and that the name of the copyright holder(s) not be used in
## advertising or publicity pertaining to distribution of the software without
## specific, written prior permission.  The copyright holder(s) makes no
## representations about the suitability of this software for any purpose.  It
## is provided "as is" without express or implied warranty.
##
## THE COPYRIGHT HOLDER(S) DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
## INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO
## EVENT SHALL THE COPYRIGHT HOLDER(S) BE LIABLE FOR ANY SPECIAL, INDIRECT OR
## CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
## DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
## TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
## PERFORMANCE OF THIS SOFTWARE.
##
##
## -------------------------------------------------------------------------------
##
##               Copyright 1992 by Oki Technosystems Laboratory, Inc.
##               Copyright 1992 by Fuji Xerox Co., Ltd.
##
## Permission to use, copy, modify, distribute, and sell this software
## and its documentation for any purpose is hereby granted without fee,
## provided that the above copyright notice appear in all copies and
## that both that copyright notice and this permission notice appear
## in supporting documentation, and that the name of Oki Technosystems
## Laboratory and Fuji Xerox not be used in advertising or publicity
## pertaining to distribution of the software without specific, written
## prior permission.
## Oki Technosystems Laboratory and Fuji Xerox make no representations
## about the suitability of this software for any purpose.  It is provided
## "as is" without express or implied warranty.
##
## OKI TECHNOSYSTEMS LABORATORY AND FUJI XEROX DISCLAIM ALL WARRANTIES
## WITH REGARD TO THIS SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF
## MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL OKI TECHNOSYSTEMS
## LABORATORY AND FUJI XEROX BE LIABLE FOR ANY SPECIAL, INDIRECT OR
## CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
## OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
## OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE
## OR PERFORMANCE OF THIS SOFTWARE.
##

##  This file is autogenerated; please do not commit directly.
##
##  @file
##  Key symbols (keysyms) definitions.
##

const
  XKB_KEY_NoSymbol* = 0x000000

## *********************************************************
## Copyright 1987, 1994, 1998  The Open Group
##
## Permission to use, copy, modify, distribute, and sell this software and its
## documentation for any purpose is hereby granted without fee, provided that
## the above copyright notice appear in all copies and that both that
## copyright notice and this permission notice appear in supporting
## documentation.
##
## The above copyright notice and this permission notice shall be included
## in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
## OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
## IN NO EVENT SHALL THE OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR
## OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
## ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
## OTHER DEALINGS IN THE SOFTWARE.
##
## Except as contained in this notice, the name of The Open Group shall
## not be used in advertising or otherwise to promote the sale, use or
## other dealings in this Software without prior written authorization
## from The Open Group.
##
##
## Copyright 1987 by Digital Equipment Corporation, Maynard, Massachusetts
##
##                         All Rights Reserved
##
## Permission to use, copy, modify, and distribute this software and its
## documentation for any purpose and without fee is hereby granted,
## provided that the above copyright notice appear in all copies and that
## both that copyright notice and this permission notice appear in
## supporting documentation, and that the name of Digital not be
## used in advertising or publicity pertaining to distribution of the
## software without specific, written prior permission.
##
## DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
## ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
## DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
## ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
## WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
## ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
## SOFTWARE.
##
## ****************************************************************
##
##  The "X11 Window System Protocol" standard defines in Appendix A the
##  keysym codes. These 29-bit integer values identify characters or
##  functions associated with each key (e.g., via the visible
##  engraving) of a keyboard layout. This file assigns mnemonic macro
##  names for these keysyms.
##
##  This file is also compiled (by src/util/makekeys.c in libX11) into
##  hash tables that can be accessed with X11 library functions such as
##  XStringToKeysym() and XKeysymToString().
##
##  Where a keysym corresponds one-to-one to an ISO 10646 / Unicode
##  character, this is noted in a comment that provides both the U+xxxx
##  Unicode position, as well as the official Unicode name of the
##  character.
##
##  Some keysyms map to a character already mapped by another keysym,
##  with compatible but more precise semantics, such as the keypad-
##  related keysyms. In this case, none of the keysym are deprecated.
##  The most generic keysym is annotated as previously and more specific
##  keysyms have the same annotation between angle brackets:
##
##      #define XKB_KEY_space                 0x0020  // U+0020 SPACE
##      #define XKB_KEY_KP_Space              0xff80  //<U+0020 SPACE>
##
##  Where the correspondence is either not one-to-one or semantically
##  unclear, the Unicode position and name are enclosed in
##  parentheses. Such legacy keysyms should be considered deprecated
##  and are not recommended for use in future keyboard mappings.
##
##  For any future extension of the keysyms with characters already
##  found in ISO 10646 / Unicode, the following algorithm shall be
##  used. The new keysym code position will simply be the character's
##  Unicode number plus 0x01000000. The keysym values in the range
##  0x01000100 to 0x0110ffff are reserved to represent Unicode
##  characters in the range U+0100 to U+10FFFF.
##
##  While most newer Unicode-based X11 clients do already accept
##  Unicode-mapped keysyms in the range 0x01000100 to 0x0110ffff, it
##  will remain necessary for clients -- in the interest of
##  compatibility with existing servers -- to also understand the
##  existing legacy keysym values in the range 0x0100 to 0x20ff.
##
##  Where several mnemonic names are defined for the same keysym in this
##  file, the first one listed is considered the "canonical" name. This
##  is the name that should be used when retrieving a keysym name from
##  its code. The next names are considered "aliases" to the canonical
##  name.
##
##  Aliases are made explicit by writing in their comment "alias for",
##  followed by the corresponding canonical name. Example:
##
##      #define XKB_KEY_dead_tilde            0xfe53
##      #define XKB_KEY_dead_perispomeni      0xfe53 // alias for dead_tilde
##
##  The rules to consider a keysym mnemonic name deprecated are:
##
##    1. A legacy keysym with its Unicode mapping in parentheses is
##       deprecated (see above).
##
##    2. A keysym name is *explicitly* deprecated by starting its comment
##       with "deprecated". Examples:
##
##         #define XKB_KEY_L1           0xffc8  // deprecated alias for F11
##         #define XKB_KEY_quoteleft    0x0060  // deprecated
##
##    3. A keysym name is *explicitly* *not* deprecated by starting its
##       comment with "non-deprecated alias". Examples:
##
##        #define XKB_KEY_dead_tilde       0xfe53
##        #define XKB_KEY_dead_perispomeni 0xfe53 // non-deprecated alias for dead_tilde
##
##    4. If none of the previous rules apply, an alias is *implicitly*
##       deprecated if there is at least one previous name for the
##       corresponding keysym that is *not* explicitly deprecated.
##
##       Examples:
##
##         // SingleCandidate is the canonical name
##         #define XKB_KEY_SingleCandidate        0xff3c
##         // Hangul_SingleCandidate is deprecated because it is an alias
##         // and it does not start with "non-deprecated alias"
##         #define XKB_KEY_Hangul_SingleCandidate 0xff3c // Single candidate
##
##         // guillemotleft is the canonical name, but it is deprecated
##         #define XKB_KEY_guillemotleft  0x00ab // deprecated alias for guillemetleft (misspelling)
##         // guillemetleft is not deprecated, because the keysym has no endorsed name before it.
##         #define XKB_KEY_guillemetleft  0x00ab // U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
##         // The following hypothetical name is deprecated because guillemetleft come before.
##         #define XKB_KEY_guillemetleft2 0x00ab
##
##  Mnemonic names for keysyms are defined in this file with lines
##  that match one of these Perl regular expressions:
##
##     /^\#define XKB_KEY_([a-zA-Z_0-9]+)\s+0x([0-9a-f]+)\s*\/\* U\+([0-9A-F]{4,6}) (.*) \*\/\s*$/
##     /^\#define XKB_KEY_([a-zA-Z_0-9]+)\s+0x([0-9a-f]+)\s*\/\*<U\+([0-9A-F]{4,6}) (.*)>\*\/\s*$/
##     /^\#define XKB_KEY_([a-zA-Z_0-9]+)\s+0x([0-9a-f]+)\s*\/\*\(U\+([0-9A-F]{4,6}) (.*)\)\*\/\s*$/
##     /^\#define XKB_KEY_([a-zA-Z_0-9]+)\s+0x([0-9a-f]+)\s*(\/\*\s*(.*)\s*\*\/)?\s*$/
##
##  Before adding new keysyms, please do consider the following: In
##  addition to the keysym names defined in this file, the
##  XStringToKeysym() and XKeysymToString() functions will also handle
##  any keysym string of the form "U0020" to "U007E" and "U00A0" to
##  "U10FFFF" for all possible Unicode characters. In other words,
##  every possible Unicode character has already a keysym string
##  defined algorithmically, even if it is not listed here. Therefore,
##  defining an additional keysym macro is only necessary where a
##  non-hexadecimal mnemonic name is needed, or where the new keysym
##  does not represent any existing Unicode character.
##
##  When adding new keysyms to this file, do not forget to also update the
##  following as needed:
##
##    - the mappings in src/KeyBind.c in the libX11 repo
##      https://gitlab.freedesktop.org/xorg/lib/libx11
##
##    - the protocol specification in specs/keysyms.xml in this repo
##      https://gitlab.freedesktop.org/xorg/proto/xorgproto
##
##  Before removing or changing the order of the keysyms, please consider
##  the following: it is very difficult to know what keysyms are used and
##  how.
##
##    - A sandboxed application may have incompatibilities with the host
##      system. For example, if new keysym name is introduced and is made
##      the canonical name, then an application with an older keysym parser
##      will not be able to parse the new name.
##    - Customization of keyboard layout and Compose files are two popular
##      use cases. Checking the standard keyboard layout database xkeyboard-config
##      https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config
##      and the standard Compose files in libx11
##      https://gitlab.freedesktop.org/xorg/lib/libx11 is a mandatory
##      step, but may *not* be enough for a proper impact assessment for
##      e.g. keysyms removals.
##
##  Therefore, it is advised to proceed to no removal and to make a new
##  name canonical only 10 years after its introduction. This means that
##  some keysyms may have their first listed name deprecated during the
##  period of transition. Once this period is over, the deprecated name
##  should be moved after the new canonical name.
##

const
  XKB_KEY_VoidSymbol* = 0xffffff

##
##  TTY function keys, cleverly chosen to map to ASCII, for convenience of
##  programming, but could have been arbitrary (at the cost of lookup
##  tables in client code).
##

const
  XKB_KEY_BackSpace* = 0xff08
  XKB_KEY_Tab* = 0xff09
  XKB_KEY_Linefeed* = 0xff0a
  XKB_KEY_Clear* = 0xff0b
  XKB_KEY_Return* = 0xff0d
  XKB_KEY_Pause* = 0xff13
  XKB_KEY_Scroll_Lock* = 0xff14
  XKB_KEY_Sys_Req* = 0xff15
  XKB_KEY_Escape* = 0xff1b
  XKB_KEY_Delete* = 0xffff

##  International & multi-key character composition

const
  XKB_KEY_Multi_key* = 0xff20
  XKB_KEY_Codeinput* = 0xff37
  XKB_KEY_SingleCandidate* = 0xff3c
  XKB_KEY_MultipleCandidate* = 0xff3d
  XKB_KEY_PreviousCandidate* = 0xff3e

##  Japanese keyboard support

const
  XKB_KEY_Kanji* = 0xff21
  XKB_KEY_Muhenkan* = 0xff22
  XKB_KEY_Henkan_Mode* = 0xff23
  XKB_KEY_Henkan* = 0xff23
  XKB_KEY_Romaji* = 0xff24
  XKB_KEY_Hiragana* = 0xff25
  XKB_KEY_Katakana* = 0xff26
  XKB_KEY_Hiragana_Katakana* = 0xff27
  XKB_KEY_Zenkaku* = 0xff28
  XKB_KEY_Hankaku* = 0xff29
  XKB_KEY_Zenkaku_Hankaku* = 0xff2a
  XKB_KEY_Touroku* = 0xff2b
  XKB_KEY_Massyo* = 0xff2c
  XKB_KEY_Kana_Lock* = 0xff2d
  XKB_KEY_Kana_Shift* = 0xff2e
  XKB_KEY_Eisu_Shift* = 0xff2f
  XKB_KEY_Eisu_toggle* = 0xff30
  XKB_KEY_Kanji_Bangou* = 0xff37
  XKB_KEY_Zen_Koho* = 0xff3d
  XKB_KEY_Mae_Koho* = 0xff3e

##  0xff31 thru 0xff3f are under XK_KOREAN
##  Cursor control & motion

const
  XKB_KEY_Home* = 0xff50
  XKB_KEY_Left* = 0xff51
  XKB_KEY_Up* = 0xff52
  XKB_KEY_Right* = 0xff53
  XKB_KEY_Down* = 0xff54
  XKB_KEY_Prior* = 0xff55
  XKB_KEY_Page_Up* = 0xff55
  XKB_KEY_Next* = 0xff56
  XKB_KEY_Page_Down* = 0xff56
  XKB_KEY_End* = 0xff57
  XKB_KEY_Begin* = 0xff58

##  Misc functions

const
  XKB_KEY_Select* = 0xff60
  XKB_KEY_Print* = 0xff61
  XKB_KEY_Execute* = 0xff62
  XKB_KEY_Insert* = 0xff63
  XKB_KEY_Undo* = 0xff65
  XKB_KEY_Redo* = 0xff66
  XKB_KEY_Menu* = 0xff67
  XKB_KEY_Find* = 0xff68
  XKB_KEY_Cancel* = 0xff69
  XKB_KEY_Help* = 0xff6a
  XKB_KEY_Break* = 0xff6b
  XKB_KEY_Mode_switch* = 0xff7e
  XKB_KEY_script_switch* = 0xff7e
  XKB_KEY_Num_Lock* = 0xff7f

##  Keypad functions, keypad numbers cleverly chosen to map to ASCII

const
  XKB_KEY_KP_Space* = 0xff80
  XKB_KEY_KP_Tab* = 0xff89
  XKB_KEY_KP_Enter* = 0xff8d
  XKB_KEY_KP_F1* = 0xff91
  XKB_KEY_KP_F2* = 0xff92
  XKB_KEY_KP_F3* = 0xff93
  XKB_KEY_KP_F4* = 0xff94
  XKB_KEY_KP_Home* = 0xff95
  XKB_KEY_KP_Left* = 0xff96
  XKB_KEY_KP_Up* = 0xff97
  XKB_KEY_KP_Right* = 0xff98
  XKB_KEY_KP_Down* = 0xff99
  XKB_KEY_KP_Prior* = 0xff9a
  XKB_KEY_KP_Page_Up* = 0xff9a
  XKB_KEY_KP_Next* = 0xff9b
  XKB_KEY_KP_Page_Down* = 0xff9b
  XKB_KEY_KP_End* = 0xff9c
  XKB_KEY_KP_Begin* = 0xff9d
  XKB_KEY_KP_Insert* = 0xff9e
  XKB_KEY_KP_Delete* = 0xff9f
  XKB_KEY_KP_Equal* = 0xffbd
  XKB_KEY_KP_Multiply* = 0xffaa
  XKB_KEY_KP_Add* = 0xffab
  XKB_KEY_KP_Separator* = 0xffac
  XKB_KEY_KP_Subtract* = 0xffad
  XKB_KEY_KP_Decimal* = 0xffae
  XKB_KEY_KP_Divide* = 0xffaf
  XKB_KEY_KP_0* = 0xffb0
  XKB_KEY_KP_1* = 0xffb1
  XKB_KEY_KP_2* = 0xffb2
  XKB_KEY_KP_3* = 0xffb3
  XKB_KEY_KP_4* = 0xffb4
  XKB_KEY_KP_5* = 0xffb5
  XKB_KEY_KP_6* = 0xffb6
  XKB_KEY_KP_7* = 0xffb7
  XKB_KEY_KP_8* = 0xffb8
  XKB_KEY_KP_9* = 0xffb9

##
##  Auxiliary functions; note the duplicate definitions for left and right
##  function keys;  Sun keyboards and a few other manufacturers have such
##  function key groups on the left and/or right sides of the keyboard.
##  We've not found a keyboard with more than 35 function keys total.
##

const
  XKB_KEY_F1* = 0xffbe
  XKB_KEY_F2* = 0xffbf
  XKB_KEY_F3* = 0xffc0
  XKB_KEY_F4* = 0xffc1
  XKB_KEY_F5* = 0xffc2
  XKB_KEY_F6* = 0xffc3
  XKB_KEY_F7* = 0xffc4
  XKB_KEY_F8* = 0xffc5
  XKB_KEY_F9* = 0xffc6
  XKB_KEY_F10* = 0xffc7
  XKB_KEY_F11* = 0xffc8
  XKB_KEY_L1* = 0xffc8
  XKB_KEY_F12* = 0xffc9
  XKB_KEY_L2* = 0xffc9
  XKB_KEY_F13* = 0xffca
  XKB_KEY_L3* = 0xffca
  XKB_KEY_F14* = 0xffcb
  XKB_KEY_L4* = 0xffcb
  XKB_KEY_F15* = 0xffcc
  XKB_KEY_L5* = 0xffcc
  XKB_KEY_F16* = 0xffcd
  XKB_KEY_L6* = 0xffcd
  XKB_KEY_F17* = 0xffce
  XKB_KEY_L7* = 0xffce
  XKB_KEY_F18* = 0xffcf
  XKB_KEY_L8* = 0xffcf
  XKB_KEY_F19* = 0xffd0
  XKB_KEY_L9* = 0xffd0
  XKB_KEY_F20* = 0xffd1
  XKB_KEY_L10* = 0xffd1
  XKB_KEY_F21* = 0xffd2
  XKB_KEY_R1* = 0xffd2
  XKB_KEY_F22* = 0xffd3
  XKB_KEY_R2* = 0xffd3
  XKB_KEY_F23* = 0xffd4
  XKB_KEY_R3* = 0xffd4
  XKB_KEY_F24* = 0xffd5
  XKB_KEY_R4* = 0xffd5
  XKB_KEY_F25* = 0xffd6
  XKB_KEY_R5* = 0xffd6
  XKB_KEY_F26* = 0xffd7
  XKB_KEY_R6* = 0xffd7
  XKB_KEY_F27* = 0xffd8
  XKB_KEY_R7* = 0xffd8
  XKB_KEY_F28* = 0xffd9
  XKB_KEY_R8* = 0xffd9
  XKB_KEY_F29* = 0xffda
  XKB_KEY_R9* = 0xffda
  XKB_KEY_F30* = 0xffdb
  XKB_KEY_R10* = 0xffdb
  XKB_KEY_F31* = 0xffdc
  XKB_KEY_R11* = 0xffdc
  XKB_KEY_F32* = 0xffdd
  XKB_KEY_R12* = 0xffdd
  XKB_KEY_F33* = 0xffde
  XKB_KEY_R13* = 0xffde
  XKB_KEY_F34* = 0xffdf
  XKB_KEY_R14* = 0xffdf
  XKB_KEY_F35* = 0xffe0
  XKB_KEY_R15* = 0xffe0

##  Modifiers

const
  XKB_KEY_Shift_L* = 0xffe1
  XKB_KEY_Shift_R* = 0xffe2
  XKB_KEY_Control_L* = 0xffe3
  XKB_KEY_Control_R* = 0xffe4
  XKB_KEY_Caps_Lock* = 0xffe5
  XKB_KEY_Shift_Lock* = 0xffe6
  XKB_KEY_Meta_L* = 0xffe7
  XKB_KEY_Meta_R* = 0xffe8
  XKB_KEY_Alt_L* = 0xffe9
  XKB_KEY_Alt_R* = 0xffea
  XKB_KEY_Super_L* = 0xffeb
  XKB_KEY_Super_R* = 0xffec
  XKB_KEY_Hyper_L* = 0xffed
  XKB_KEY_Hyper_R* = 0xffee

##
##  Keyboard (XKB) Extension function and modifier keys
##  (from Appendix C of "The X Keyboard Extension: Protocol Specification")
##  Byte 3 = 0xfe
##

const
  XKB_KEY_ISO_Lock* = 0xfe01
  XKB_KEY_ISO_Level2_Latch* = 0xfe02
  XKB_KEY_ISO_Level3_Shift* = 0xfe03
  XKB_KEY_ISO_Level3_Latch* = 0xfe04
  XKB_KEY_ISO_Level3_Lock* = 0xfe05
  XKB_KEY_ISO_Level5_Shift* = 0xfe11
  XKB_KEY_ISO_Level5_Latch* = 0xfe12
  XKB_KEY_ISO_Level5_Lock* = 0xfe13
  XKB_KEY_ISO_Group_Shift* = 0xff7e
  XKB_KEY_ISO_Group_Latch* = 0xfe06
  XKB_KEY_ISO_Group_Lock* = 0xfe07
  XKB_KEY_ISO_Next_Group* = 0xfe08
  XKB_KEY_ISO_Next_Group_Lock* = 0xfe09
  XKB_KEY_ISO_Prev_Group* = 0xfe0a
  XKB_KEY_ISO_Prev_Group_Lock* = 0xfe0b
  XKB_KEY_ISO_First_Group* = 0xfe0c
  XKB_KEY_ISO_First_Group_Lock* = 0xfe0d
  XKB_KEY_ISO_Last_Group* = 0xfe0e
  XKB_KEY_ISO_Last_Group_Lock* = 0xfe0f
  XKB_KEY_ISO_Left_Tab* = 0xfe20
  XKB_KEY_ISO_Move_Line_Up* = 0xfe21
  XKB_KEY_ISO_Move_Line_Down* = 0xfe22
  XKB_KEY_ISO_Partial_Line_Up* = 0xfe23
  XKB_KEY_ISO_Partial_Line_Down* = 0xfe24
  XKB_KEY_ISO_Partial_Space_Left* = 0xfe25
  XKB_KEY_ISO_Partial_Space_Right* = 0xfe26
  XKB_KEY_ISO_Set_Margin_Left* = 0xfe27
  XKB_KEY_ISO_Set_Margin_Right* = 0xfe28
  XKB_KEY_ISO_Release_Margin_Left* = 0xfe29
  XKB_KEY_ISO_Release_Margin_Right* = 0xfe2a
  XKB_KEY_ISO_Release_Both_Margins* = 0xfe2b
  XKB_KEY_ISO_Fast_Cursor_Left* = 0xfe2c
  XKB_KEY_ISO_Fast_Cursor_Right* = 0xfe2d
  XKB_KEY_ISO_Fast_Cursor_Up* = 0xfe2e
  XKB_KEY_ISO_Fast_Cursor_Down* = 0xfe2f
  XKB_KEY_ISO_Continuous_Underline* = 0xfe30
  XKB_KEY_ISO_Discontinuous_Underline* = 0xfe31
  XKB_KEY_ISO_Emphasize* = 0xfe32
  XKB_KEY_ISO_Center_Object* = 0xfe33
  XKB_KEY_ISO_Enter* = 0xfe34
  XKB_KEY_dead_grave* = 0xfe50
  XKB_KEY_dead_acute* = 0xfe51
  XKB_KEY_dead_circumflex* = 0xfe52
  XKB_KEY_dead_tilde* = 0xfe53
  XKB_KEY_dead_perispomeni* = 0xfe53
  XKB_KEY_dead_macron* = 0xfe54
  XKB_KEY_dead_breve* = 0xfe55
  XKB_KEY_dead_abovedot* = 0xfe56
  XKB_KEY_dead_diaeresis* = 0xfe57
  XKB_KEY_dead_abovering* = 0xfe58
  XKB_KEY_dead_doubleacute* = 0xfe59
  XKB_KEY_dead_caron* = 0xfe5a
  XKB_KEY_dead_cedilla* = 0xfe5b
  XKB_KEY_dead_ogonek* = 0xfe5c
  XKB_KEY_dead_iota* = 0xfe5d
  XKB_KEY_dead_voiced_sound* = 0xfe5e
  XKB_KEY_dead_semivoiced_sound* = 0xfe5f
  XKB_KEY_dead_belowdot* = 0xfe60
  XKB_KEY_dead_hook* = 0xfe61
  XKB_KEY_dead_horn* = 0xfe62
  XKB_KEY_dead_stroke* = 0xfe63
  XKB_KEY_dead_abovecomma* = 0xfe64
  XKB_KEY_dead_psili* = 0xfe64
  XKB_KEY_dead_abovereversedcomma* = 0xfe65
  XKB_KEY_dead_dasia* = 0xfe65
  XKB_KEY_dead_doublegrave* = 0xfe66
  XKB_KEY_dead_belowring* = 0xfe67
  XKB_KEY_dead_belowmacron* = 0xfe68
  XKB_KEY_dead_belowcircumflex* = 0xfe69
  XKB_KEY_dead_belowtilde* = 0xfe6a
  XKB_KEY_dead_belowbreve* = 0xfe6b
  XKB_KEY_dead_belowdiaeresis* = 0xfe6c
  XKB_KEY_dead_invertedbreve* = 0xfe6d
  XKB_KEY_dead_belowcomma* = 0xfe6e
  XKB_KEY_dead_currency* = 0xfe6f

##  extra dead elements for German T3 layout

const
  XKB_KEY_dead_lowline* = 0xfe90
  XKB_KEY_dead_aboveverticalline* = 0xfe91
  XKB_KEY_dead_belowverticalline* = 0xfe92
  XKB_KEY_dead_longsolidusoverlay* = 0xfe93

##  dead vowels for universal syllable entry

const
  XKB_KEY_dead_a* = 0xfe80
  XKB_KEY_dead_A* = 0xfe81
  XKB_KEY_dead_e* = 0xfe82
  XKB_KEY_dead_E* = 0xfe83
  XKB_KEY_dead_i* = 0xfe84
  XKB_KEY_dead_I* = 0xfe85
  XKB_KEY_dead_o* = 0xfe86
  XKB_KEY_dead_O* = 0xfe87
  XKB_KEY_dead_u* = 0xfe88
  XKB_KEY_dead_U* = 0xfe89
  XKB_KEY_dead_small_schwa* = 0xfe8a
  XKB_KEY_dead_schwa* = 0xfe8a
  XKB_KEY_dead_capital_schwa* = 0xfe8b
  XKB_KEY_dead_SCHWA* = 0xfe8b
  XKB_KEY_dead_greek* = 0xfe8c
  XKB_KEY_dead_hamza* = 0xfe8d
  XKB_KEY_First_Virtual_Screen* = 0xfed0
  XKB_KEY_Prev_Virtual_Screen* = 0xfed1
  XKB_KEY_Next_Virtual_Screen* = 0xfed2
  XKB_KEY_Last_Virtual_Screen* = 0xfed4
  XKB_KEY_Terminate_Server* = 0xfed5
  XKB_KEY_AccessX_Enable* = 0xfe70
  XKB_KEY_AccessX_Feedback_Enable* = 0xfe71
  XKB_KEY_RepeatKeys_Enable* = 0xfe72
  XKB_KEY_SlowKeys_Enable* = 0xfe73
  XKB_KEY_BounceKeys_Enable* = 0xfe74
  XKB_KEY_StickyKeys_Enable* = 0xfe75
  XKB_KEY_MouseKeys_Enable* = 0xfe76
  XKB_KEY_MouseKeys_Accel_Enable* = 0xfe77
  XKB_KEY_Overlay1_Enable* = 0xfe78
  XKB_KEY_Overlay2_Enable* = 0xfe79
  XKB_KEY_AudibleBell_Enable* = 0xfe7a
  XKB_KEY_Pointer_Left* = 0xfee0
  XKB_KEY_Pointer_Right* = 0xfee1
  XKB_KEY_Pointer_Up* = 0xfee2
  XKB_KEY_Pointer_Down* = 0xfee3
  XKB_KEY_Pointer_UpLeft* = 0xfee4
  XKB_KEY_Pointer_UpRight* = 0xfee5
  XKB_KEY_Pointer_DownLeft* = 0xfee6
  XKB_KEY_Pointer_DownRight* = 0xfee7
  XKB_KEY_Pointer_Button_Dflt* = 0xfee8
  XKB_KEY_Pointer_Button1* = 0xfee9
  XKB_KEY_Pointer_Button2* = 0xfeea
  XKB_KEY_Pointer_Button3* = 0xfeeb
  XKB_KEY_Pointer_Button4* = 0xfeec
  XKB_KEY_Pointer_Button5* = 0xfeed
  XKB_KEY_Pointer_DblClick_Dflt* = 0xfeee
  XKB_KEY_Pointer_DblClick1* = 0xfeef
  XKB_KEY_Pointer_DblClick2* = 0xfef0
  XKB_KEY_Pointer_DblClick3* = 0xfef1
  XKB_KEY_Pointer_DblClick4* = 0xfef2
  XKB_KEY_Pointer_DblClick5* = 0xfef3
  XKB_KEY_Pointer_Drag_Dflt* = 0xfef4
  XKB_KEY_Pointer_Drag1* = 0xfef5
  XKB_KEY_Pointer_Drag2* = 0xfef6
  XKB_KEY_Pointer_Drag3* = 0xfef7
  XKB_KEY_Pointer_Drag4* = 0xfef8
  XKB_KEY_Pointer_Drag5* = 0xfefd
  XKB_KEY_Pointer_EnableKeys* = 0xfef9
  XKB_KEY_Pointer_Accelerate* = 0xfefa
  XKB_KEY_Pointer_DfltBtnNext* = 0xfefb
  XKB_KEY_Pointer_DfltBtnPrev* = 0xfefc

##  Single-Stroke Multiple-Character N-Graph Keysyms For The X Input Method

const
  XKB_KEY_ch* = 0xfea0
  XKB_KEY_Ch* = 0xfea1
  XKB_KEY_CH* = 0xfea2
  XKB_KEY_c_h* = 0xfea3
  XKB_KEY_C_h* = 0xfea4
  XKB_KEY_C_H* = 0xfea5

##
##  3270 Terminal Keys
##  Byte 3 = 0xfd
##

const
  XKB_KEY_3270_Duplicate* = 0xfd01
  XKB_KEY_3270_FieldMark* = 0xfd02
  XKB_KEY_3270_Right2* = 0xfd03
  XKB_KEY_3270_Left2* = 0xfd04
  XKB_KEY_3270_BackTab* = 0xfd05
  XKB_KEY_3270_EraseEOF* = 0xfd06
  XKB_KEY_3270_EraseInput* = 0xfd07
  XKB_KEY_3270_Reset* = 0xfd08
  XKB_KEY_3270_Quit* = 0xfd09
  XKB_KEY_3270_PA1* = 0xfd0a
  XKB_KEY_3270_PA2* = 0xfd0b
  XKB_KEY_3270_PA3* = 0xfd0c
  XKB_KEY_3270_Test* = 0xfd0d
  XKB_KEY_3270_Attn* = 0xfd0e
  XKB_KEY_3270_CursorBlink* = 0xfd0f
  XKB_KEY_3270_AltCursor* = 0xfd10
  XKB_KEY_3270_KeyClick* = 0xfd11
  XKB_KEY_3270_Jump* = 0xfd12
  XKB_KEY_3270_Ident* = 0xfd13
  XKB_KEY_3270_Rule* = 0xfd14
  XKB_KEY_3270_Copy* = 0xfd15
  XKB_KEY_3270_Play* = 0xfd16
  XKB_KEY_3270_Setup* = 0xfd17
  XKB_KEY_3270_Record* = 0xfd18
  XKB_KEY_3270_ChangeScreen* = 0xfd19
  XKB_KEY_3270_DeleteWord* = 0xfd1a
  XKB_KEY_3270_ExSelect* = 0xfd1b
  XKB_KEY_3270_CursorSelect* = 0xfd1c
  XKB_KEY_3270_PrintScreen* = 0xfd1d
  XKB_KEY_3270_Enter* = 0xfd1e

##
##  Latin 1
##  (ISO/IEC 8859-1 = Unicode U+0020..U+00FF)
##  Byte 3 = 0
##

const
  XKB_KEY_space* = 0x0020
  XKB_KEY_exclam* = 0x0021
  XKB_KEY_quotedbl* = 0x0022
  XKB_KEY_numbersign* = 0x0023
  XKB_KEY_dollar* = 0x0024
  XKB_KEY_percent* = 0x0025
  XKB_KEY_ampersand* = 0x0026
  XKB_KEY_apostrophe* = 0x0027
  XKB_KEY_quoteright* = 0x0027
  XKB_KEY_parenleft* = 0x0028
  XKB_KEY_parenright* = 0x0029
  XKB_KEY_asterisk* = 0x002a
  XKB_KEY_plus* = 0x002b
  XKB_KEY_comma* = 0x002c
  XKB_KEY_minus* = 0x002d
  XKB_KEY_period* = 0x002e
  XKB_KEY_slash* = 0x002f
  XKB_KEY_0* = 0x0030
  XKB_KEY_1* = 0x0031
  XKB_KEY_2* = 0x0032
  XKB_KEY_3* = 0x0033
  XKB_KEY_4* = 0x0034
  XKB_KEY_5* = 0x0035
  XKB_KEY_6* = 0x0036
  XKB_KEY_7* = 0x0037
  XKB_KEY_8* = 0x0038
  XKB_KEY_9* = 0x0039
  XKB_KEY_colon* = 0x003a
  XKB_KEY_semicolon* = 0x003b
  XKB_KEY_less* = 0x003c
  XKB_KEY_equal* = 0x003d
  XKB_KEY_greater* = 0x003e
  XKB_KEY_question* = 0x003f
  XKB_KEY_at* = 0x0040
  XKB_KEY_A* = 0x0041
  XKB_KEY_B* = 0x0042
  XKB_KEY_C* = 0x0043
  XKB_KEY_D* = 0x0044
  XKB_KEY_E* = 0x0045
  XKB_KEY_F* = 0x0046
  XKB_KEY_G* = 0x0047
  XKB_KEY_H* = 0x0048
  XKB_KEY_I* = 0x0049
  XKB_KEY_J* = 0x004a
  XKB_KEY_K* = 0x004b
  XKB_KEY_L* = 0x004c
  XKB_KEY_M* = 0x004d
  XKB_KEY_N* = 0x004e
  XKB_KEY_O* = 0x004f
  XKB_KEY_P* = 0x0050
  XKB_KEY_Q* = 0x0051
  XKB_KEY_R* = 0x0052
  XKB_KEY_S* = 0x0053
  XKB_KEY_T* = 0x0054
  XKB_KEY_U* = 0x0055
  XKB_KEY_V* = 0x0056
  XKB_KEY_W* = 0x0057
  XKB_KEY_X* = 0x0058
  XKB_KEY_Y* = 0x0059
  XKB_KEY_Z* = 0x005a
  XKB_KEY_bracketleft* = 0x005b
  XKB_KEY_backslash* = 0x005c
  XKB_KEY_bracketright* = 0x005d
  XKB_KEY_asciicircum* = 0x005e
  XKB_KEY_underscore* = 0x005f
  XKB_KEY_grave* = 0x0060
  XKB_KEY_quoteleft* = 0x0060
  XKB_KEY_a* = 0x0061
  XKB_KEY_b* = 0x0062
  XKB_KEY_c* = 0x0063
  XKB_KEY_d* = 0x0064
  XKB_KEY_e* = 0x0065
  XKB_KEY_f* = 0x0066
  XKB_KEY_g* = 0x0067
  XKB_KEY_h* = 0x0068
  XKB_KEY_i* = 0x0069
  XKB_KEY_j* = 0x006a
  XKB_KEY_k* = 0x006b
  XKB_KEY_l* = 0x006c
  XKB_KEY_m* = 0x006d
  XKB_KEY_n* = 0x006e
  XKB_KEY_o* = 0x006f
  XKB_KEY_p* = 0x0070
  XKB_KEY_q* = 0x0071
  XKB_KEY_r* = 0x0072
  XKB_KEY_s* = 0x0073
  XKB_KEY_t* = 0x0074
  XKB_KEY_u* = 0x0075
  XKB_KEY_v* = 0x0076
  XKB_KEY_w* = 0x0077
  XKB_KEY_x* = 0x0078
  XKB_KEY_y* = 0x0079
  XKB_KEY_z* = 0x007a
  XKB_KEY_braceleft* = 0x007b
  XKB_KEY_bar* = 0x007c
  XKB_KEY_braceright* = 0x007d
  XKB_KEY_asciitilde* = 0x007e
  XKB_KEY_nobreakspace* = 0x00a0
  XKB_KEY_exclamdown* = 0x00a1
  XKB_KEY_cent* = 0x00a2
  XKB_KEY_sterling* = 0x00a3
  XKB_KEY_currency* = 0x00a4
  XKB_KEY_yen* = 0x00a5
  XKB_KEY_brokenbar* = 0x00a6
  XKB_KEY_section* = 0x00a7
  XKB_KEY_diaeresis* = 0x00a8
  XKB_KEY_copyright* = 0x00a9
  XKB_KEY_ordfeminine* = 0x00aa
  XKB_KEY_guillemotleft* = 0x00ab
  XKB_KEY_guillemetleft* = 0x00ab
  XKB_KEY_notsign* = 0x00ac
  XKB_KEY_hyphen* = 0x00ad
  XKB_KEY_registered* = 0x00ae
  XKB_KEY_macron* = 0x00af
  XKB_KEY_degree* = 0x00b0
  XKB_KEY_plusminus* = 0x00b1
  XKB_KEY_twosuperior* = 0x00b2
  XKB_KEY_threesuperior* = 0x00b3
  XKB_KEY_acute* = 0x00b4
  XKB_KEY_mu* = 0x00b5
  XKB_KEY_paragraph* = 0x00b6
  XKB_KEY_periodcentered* = 0x00b7
  XKB_KEY_cedilla* = 0x00b8
  XKB_KEY_onesuperior* = 0x00b9
  XKB_KEY_masculine* = 0x00ba
  XKB_KEY_ordmasculine* = 0x00ba
  XKB_KEY_guillemotright* = 0x00bb
  XKB_KEY_guillemetright* = 0x00bb
  XKB_KEY_onequarter* = 0x00bc
  XKB_KEY_onehalf* = 0x00bd
  XKB_KEY_threequarters* = 0x00be
  XKB_KEY_questiondown* = 0x00bf
  XKB_KEY_Agrave* = 0x00c0
  XKB_KEY_Aacute* = 0x00c1
  XKB_KEY_Acircumflex* = 0x00c2
  XKB_KEY_Atilde* = 0x00c3
  XKB_KEY_Adiaeresis* = 0x00c4
  XKB_KEY_Aring* = 0x00c5
  XKB_KEY_AE* = 0x00c6
  XKB_KEY_Ccedilla* = 0x00c7
  XKB_KEY_Egrave* = 0x00c8
  XKB_KEY_Eacute* = 0x00c9
  XKB_KEY_Ecircumflex* = 0x00ca
  XKB_KEY_Ediaeresis* = 0x00cb
  XKB_KEY_Igrave* = 0x00cc
  XKB_KEY_Iacute* = 0x00cd
  XKB_KEY_Icircumflex* = 0x00ce
  XKB_KEY_Idiaeresis* = 0x00cf
  XKB_KEY_ETH* = 0x00d0
  XKB_KEY_Eth* = 0x00d0
  XKB_KEY_Ntilde* = 0x00d1
  XKB_KEY_Ograve* = 0x00d2
  XKB_KEY_Oacute* = 0x00d3
  XKB_KEY_Ocircumflex* = 0x00d4
  XKB_KEY_Otilde* = 0x00d5
  XKB_KEY_Odiaeresis* = 0x00d6
  XKB_KEY_multiply* = 0x00d7
  XKB_KEY_Oslash* = 0x00d8
  XKB_KEY_Ooblique* = 0x00d8
  XKB_KEY_Ugrave* = 0x00d9
  XKB_KEY_Uacute* = 0x00da
  XKB_KEY_Ucircumflex* = 0x00db
  XKB_KEY_Udiaeresis* = 0x00dc
  XKB_KEY_Yacute* = 0x00dd
  XKB_KEY_THORN* = 0x00de
  XKB_KEY_Thorn* = 0x00de
  XKB_KEY_ssharp* = 0x00df
  XKB_KEY_agrave* = 0x00e0
  XKB_KEY_aacute* = 0x00e1
  XKB_KEY_acircumflex* = 0x00e2
  XKB_KEY_atilde* = 0x00e3
  XKB_KEY_adiaeresis* = 0x00e4
  XKB_KEY_aring* = 0x00e5
  XKB_KEY_ae* = 0x00e6
  XKB_KEY_ccedilla* = 0x00e7
  XKB_KEY_egrave* = 0x00e8
  XKB_KEY_eacute* = 0x00e9
  XKB_KEY_ecircumflex* = 0x00ea
  XKB_KEY_ediaeresis* = 0x00eb
  XKB_KEY_igrave* = 0x00ec
  XKB_KEY_iacute* = 0x00ed
  XKB_KEY_icircumflex* = 0x00ee
  XKB_KEY_idiaeresis* = 0x00ef
  XKB_KEY_eth* = 0x00f0
  XKB_KEY_ntilde* = 0x00f1
  XKB_KEY_ograve* = 0x00f2
  XKB_KEY_oacute* = 0x00f3
  XKB_KEY_ocircumflex* = 0x00f4
  XKB_KEY_otilde* = 0x00f5
  XKB_KEY_odiaeresis* = 0x00f6
  XKB_KEY_division* = 0x00f7
  XKB_KEY_oslash* = 0x00f8
  XKB_KEY_ooblique* = 0x00f8
  XKB_KEY_ugrave* = 0x00f9
  XKB_KEY_uacute* = 0x00fa
  XKB_KEY_ucircumflex* = 0x00fb
  XKB_KEY_udiaeresis* = 0x00fc
  XKB_KEY_yacute* = 0x00fd
  XKB_KEY_thorn* = 0x00fe
  XKB_KEY_ydiaeresis* = 0x00ff

##
##  Latin 2
##  Byte 3 = 1
##

const
  XKB_KEY_Aogonek* = 0x01a1
  XKB_KEY_breve* = 0x01a2
  XKB_KEY_Lstroke* = 0x01a3
  XKB_KEY_Lcaron* = 0x01a5
  XKB_KEY_Sacute* = 0x01a6
  XKB_KEY_Scaron* = 0x01a9
  XKB_KEY_Scedilla* = 0x01aa
  XKB_KEY_Tcaron* = 0x01ab
  XKB_KEY_Zacute* = 0x01ac
  XKB_KEY_Zcaron* = 0x01ae
  XKB_KEY_Zabovedot* = 0x01af
  XKB_KEY_aogonek* = 0x01b1
  XKB_KEY_ogonek* = 0x01b2
  XKB_KEY_lstroke* = 0x01b3
  XKB_KEY_lcaron* = 0x01b5
  XKB_KEY_sacute* = 0x01b6
  XKB_KEY_caron* = 0x01b7
  XKB_KEY_scaron* = 0x01b9
  XKB_KEY_scedilla* = 0x01ba
  XKB_KEY_tcaron* = 0x01bb
  XKB_KEY_zacute* = 0x01bc
  XKB_KEY_doubleacute* = 0x01bd
  XKB_KEY_zcaron* = 0x01be
  XKB_KEY_zabovedot* = 0x01bf
  XKB_KEY_Racute* = 0x01c0
  XKB_KEY_Abreve* = 0x01c3
  XKB_KEY_Lacute* = 0x01c5
  XKB_KEY_Cacute* = 0x01c6
  XKB_KEY_Ccaron* = 0x01c8
  XKB_KEY_Eogonek* = 0x01ca
  XKB_KEY_Ecaron* = 0x01cc
  XKB_KEY_Dcaron* = 0x01cf
  XKB_KEY_Dstroke* = 0x01d0
  XKB_KEY_Nacute* = 0x01d1
  XKB_KEY_Ncaron* = 0x01d2
  XKB_KEY_Odoubleacute* = 0x01d5
  XKB_KEY_Rcaron* = 0x01d8
  XKB_KEY_Uring* = 0x01d9
  XKB_KEY_Udoubleacute* = 0x01db
  XKB_KEY_Tcedilla* = 0x01de
  XKB_KEY_racute* = 0x01e0
  XKB_KEY_abreve* = 0x01e3
  XKB_KEY_lacute* = 0x01e5
  XKB_KEY_cacute* = 0x01e6
  XKB_KEY_ccaron* = 0x01e8
  XKB_KEY_eogonek* = 0x01ea
  XKB_KEY_ecaron* = 0x01ec
  XKB_KEY_dcaron* = 0x01ef
  XKB_KEY_dstroke* = 0x01f0
  XKB_KEY_nacute* = 0x01f1
  XKB_KEY_ncaron* = 0x01f2
  XKB_KEY_odoubleacute* = 0x01f5
  XKB_KEY_rcaron* = 0x01f8
  XKB_KEY_uring* = 0x01f9
  XKB_KEY_udoubleacute* = 0x01fb
  XKB_KEY_tcedilla* = 0x01fe
  XKB_KEY_abovedot* = 0x01ff

##
##  Latin 3
##  Byte 3 = 2
##

const
  XKB_KEY_Hstroke* = 0x02a1
  XKB_KEY_Hcircumflex* = 0x02a6
  XKB_KEY_Iabovedot* = 0x02a9
  XKB_KEY_Gbreve* = 0x02ab
  XKB_KEY_Jcircumflex* = 0x02ac
  XKB_KEY_hstroke* = 0x02b1
  XKB_KEY_hcircumflex* = 0x02b6
  XKB_KEY_idotless* = 0x02b9
  XKB_KEY_gbreve* = 0x02bb
  XKB_KEY_jcircumflex* = 0x02bc
  XKB_KEY_Cabovedot* = 0x02c5
  XKB_KEY_Ccircumflex* = 0x02c6
  XKB_KEY_Gabovedot* = 0x02d5
  XKB_KEY_Gcircumflex* = 0x02d8
  XKB_KEY_Ubreve* = 0x02dd
  XKB_KEY_Scircumflex* = 0x02de
  XKB_KEY_cabovedot* = 0x02e5
  XKB_KEY_ccircumflex* = 0x02e6
  XKB_KEY_gabovedot* = 0x02f5
  XKB_KEY_gcircumflex* = 0x02f8
  XKB_KEY_ubreve* = 0x02fd
  XKB_KEY_scircumflex* = 0x02fe

##
##  Latin 4
##  Byte 3 = 3
##

const
  XKB_KEY_kra* = 0x03a2
  XKB_KEY_kappa* = 0x03a2
  XKB_KEY_Rcedilla* = 0x03a3
  XKB_KEY_Itilde* = 0x03a5
  XKB_KEY_Lcedilla* = 0x03a6
  XKB_KEY_Emacron* = 0x03aa
  XKB_KEY_Gcedilla* = 0x03ab
  XKB_KEY_Tslash* = 0x03ac
  XKB_KEY_rcedilla* = 0x03b3
  XKB_KEY_itilde* = 0x03b5
  XKB_KEY_lcedilla* = 0x03b6
  XKB_KEY_emacron* = 0x03ba
  XKB_KEY_gcedilla* = 0x03bb
  XKB_KEY_tslash* = 0x03bc
  XKB_KEY_ENG* = 0x03bd
  XKB_KEY_eng* = 0x03bf
  XKB_KEY_Amacron* = 0x03c0
  XKB_KEY_Iogonek* = 0x03c7
  XKB_KEY_Eabovedot* = 0x03cc
  XKB_KEY_Imacron* = 0x03cf
  XKB_KEY_Ncedilla* = 0x03d1
  XKB_KEY_Omacron* = 0x03d2
  XKB_KEY_Kcedilla* = 0x03d3
  XKB_KEY_Uogonek* = 0x03d9
  XKB_KEY_Utilde* = 0x03dd
  XKB_KEY_Umacron* = 0x03de
  XKB_KEY_amacron* = 0x03e0
  XKB_KEY_iogonek* = 0x03e7
  XKB_KEY_eabovedot* = 0x03ec
  XKB_KEY_imacron* = 0x03ef
  XKB_KEY_ncedilla* = 0x03f1
  XKB_KEY_omacron* = 0x03f2
  XKB_KEY_kcedilla* = 0x03f3
  XKB_KEY_uogonek* = 0x03f9
  XKB_KEY_utilde* = 0x03fd
  XKB_KEY_umacron* = 0x03fe

##
##  Latin 8
##

const
  XKB_KEY_Wcircumflex* = 0x1000174
  XKB_KEY_wcircumflex* = 0x1000175
  XKB_KEY_Ycircumflex* = 0x1000176
  XKB_KEY_ycircumflex* = 0x1000177
  XKB_KEY_Babovedot* = 0x1001e02
  XKB_KEY_babovedot* = 0x1001e03
  XKB_KEY_Dabovedot* = 0x1001e0a
  XKB_KEY_dabovedot* = 0x1001e0b
  XKB_KEY_Fabovedot* = 0x1001e1e
  XKB_KEY_fabovedot* = 0x1001e1f
  XKB_KEY_Mabovedot* = 0x1001e40
  XKB_KEY_mabovedot* = 0x1001e41
  XKB_KEY_Pabovedot* = 0x1001e56
  XKB_KEY_pabovedot* = 0x1001e57
  XKB_KEY_Sabovedot* = 0x1001e60
  XKB_KEY_sabovedot* = 0x1001e61
  XKB_KEY_Tabovedot* = 0x1001e6a
  XKB_KEY_tabovedot* = 0x1001e6b
  XKB_KEY_Wgrave* = 0x1001e80
  XKB_KEY_wgrave* = 0x1001e81
  XKB_KEY_Wacute* = 0x1001e82
  XKB_KEY_wacute* = 0x1001e83
  XKB_KEY_Wdiaeresis* = 0x1001e84
  XKB_KEY_wdiaeresis* = 0x1001e85
  XKB_KEY_Ygrave* = 0x1001ef2
  XKB_KEY_ygrave* = 0x1001ef3

##
##  Latin 9
##  Byte 3 = 0x13
##

const
  XKB_KEY_OE* = 0x13bc
  XKB_KEY_oe* = 0x13bd
  XKB_KEY_Ydiaeresis* = 0x13be

##
##  Katakana
##  Byte 3 = 4
##

const
  XKB_KEY_overline* = 0x047e
  XKB_KEY_kana_fullstop* = 0x04a1
  XKB_KEY_kana_openingbracket* = 0x04a2
  XKB_KEY_kana_closingbracket* = 0x04a3
  XKB_KEY_kana_comma* = 0x04a4
  XKB_KEY_kana_conjunctive* = 0x04a5
  XKB_KEY_kana_middledot* = 0x04a5
  XKB_KEY_kana_WO* = 0x04a6
  XKB_KEY_kana_a* = 0x04a7
  XKB_KEY_kana_i* = 0x04a8
  XKB_KEY_kana_u* = 0x04a9
  XKB_KEY_kana_e* = 0x04aa
  XKB_KEY_kana_o* = 0x04ab
  XKB_KEY_kana_ya* = 0x04ac
  XKB_KEY_kana_yu* = 0x04ad
  XKB_KEY_kana_yo* = 0x04ae
  XKB_KEY_kana_tsu* = 0x04af
  XKB_KEY_kana_tu* = 0x04af
  XKB_KEY_prolongedsound* = 0x04b0
  XKB_KEY_kana_A* = 0x04b1
  XKB_KEY_kana_I* = 0x04b2
  XKB_KEY_kana_U* = 0x04b3
  XKB_KEY_kana_E* = 0x04b4
  XKB_KEY_kana_O* = 0x04b5
  XKB_KEY_kana_KA* = 0x04b6
  XKB_KEY_kana_KI* = 0x04b7
  XKB_KEY_kana_KU* = 0x04b8
  XKB_KEY_kana_KE* = 0x04b9
  XKB_KEY_kana_KO* = 0x04ba
  XKB_KEY_kana_SA* = 0x04bb
  XKB_KEY_kana_SHI* = 0x04bc
  XKB_KEY_kana_SU* = 0x04bd
  XKB_KEY_kana_SE* = 0x04be
  XKB_KEY_kana_SO* = 0x04bf
  XKB_KEY_kana_TA* = 0x04c0
  XKB_KEY_kana_CHI* = 0x04c1
  XKB_KEY_kana_TI* = 0x04c1
  XKB_KEY_kana_TSU* = 0x04c2
  XKB_KEY_kana_TU* = 0x04c2
  XKB_KEY_kana_TE* = 0x04c3
  XKB_KEY_kana_TO* = 0x04c4
  XKB_KEY_kana_NA* = 0x04c5
  XKB_KEY_kana_NI* = 0x04c6
  XKB_KEY_kana_NU* = 0x04c7
  XKB_KEY_kana_NE* = 0x04c8
  XKB_KEY_kana_NO* = 0x04c9
  XKB_KEY_kana_HA* = 0x04ca
  XKB_KEY_kana_HI* = 0x04cb
  XKB_KEY_kana_FU* = 0x04cc
  XKB_KEY_kana_HU* = 0x04cc
  XKB_KEY_kana_HE* = 0x04cd
  XKB_KEY_kana_HO* = 0x04ce
  XKB_KEY_kana_MA* = 0x04cf
  XKB_KEY_kana_MI* = 0x04d0
  XKB_KEY_kana_MU* = 0x04d1
  XKB_KEY_kana_ME* = 0x04d2
  XKB_KEY_kana_MO* = 0x04d3
  XKB_KEY_kana_YA* = 0x04d4
  XKB_KEY_kana_YU* = 0x04d5
  XKB_KEY_kana_YO* = 0x04d6
  XKB_KEY_kana_RA* = 0x04d7
  XKB_KEY_kana_RI* = 0x04d8
  XKB_KEY_kana_RU* = 0x04d9
  XKB_KEY_kana_RE* = 0x04da
  XKB_KEY_kana_RO* = 0x04db
  XKB_KEY_kana_WA* = 0x04dc
  XKB_KEY_kana_N* = 0x04dd
  XKB_KEY_voicedsound* = 0x04de
  XKB_KEY_semivoicedsound* = 0x04df
  XKB_KEY_kana_switch* = 0xff7e

##
##  Arabic
##  Byte 3 = 5
##

const
  XKB_KEY_Farsi_0* = 0x10006f0
  XKB_KEY_Farsi_1* = 0x10006f1
  XKB_KEY_Farsi_2* = 0x10006f2
  XKB_KEY_Farsi_3* = 0x10006f3
  XKB_KEY_Farsi_4* = 0x10006f4
  XKB_KEY_Farsi_5* = 0x10006f5
  XKB_KEY_Farsi_6* = 0x10006f6
  XKB_KEY_Farsi_7* = 0x10006f7
  XKB_KEY_Farsi_8* = 0x10006f8
  XKB_KEY_Farsi_9* = 0x10006f9
  XKB_KEY_Arabic_percent* = 0x100066a
  XKB_KEY_Arabic_superscript_alef* = 0x1000670
  XKB_KEY_Arabic_tteh* = 0x1000679
  XKB_KEY_Arabic_peh* = 0x100067e
  XKB_KEY_Arabic_tcheh* = 0x1000686
  XKB_KEY_Arabic_ddal* = 0x1000688
  XKB_KEY_Arabic_rreh* = 0x1000691
  XKB_KEY_Arabic_comma* = 0x05ac
  XKB_KEY_Arabic_fullstop* = 0x10006d4
  XKB_KEY_Arabic_0* = 0x1000660
  XKB_KEY_Arabic_1* = 0x1000661
  XKB_KEY_Arabic_2* = 0x1000662
  XKB_KEY_Arabic_3* = 0x1000663
  XKB_KEY_Arabic_4* = 0x1000664
  XKB_KEY_Arabic_5* = 0x1000665
  XKB_KEY_Arabic_6* = 0x1000666
  XKB_KEY_Arabic_7* = 0x1000667
  XKB_KEY_Arabic_8* = 0x1000668
  XKB_KEY_Arabic_9* = 0x1000669
  XKB_KEY_Arabic_semicolon* = 0x05bb
  XKB_KEY_Arabic_question_mark* = 0x05bf
  XKB_KEY_Arabic_hamza* = 0x05c1
  XKB_KEY_Arabic_maddaonalef* = 0x05c2
  XKB_KEY_Arabic_hamzaonalef* = 0x05c3
  XKB_KEY_Arabic_hamzaonwaw* = 0x05c4
  XKB_KEY_Arabic_hamzaunderalef* = 0x05c5
  XKB_KEY_Arabic_hamzaonyeh* = 0x05c6
  XKB_KEY_Arabic_alef* = 0x05c7
  XKB_KEY_Arabic_beh* = 0x05c8
  XKB_KEY_Arabic_tehmarbuta* = 0x05c9
  XKB_KEY_Arabic_teh* = 0x05ca
  XKB_KEY_Arabic_theh* = 0x05cb
  XKB_KEY_Arabic_jeem* = 0x05cc
  XKB_KEY_Arabic_hah* = 0x05cd
  XKB_KEY_Arabic_khah* = 0x05ce
  XKB_KEY_Arabic_dal* = 0x05cf
  XKB_KEY_Arabic_thal* = 0x05d0
  XKB_KEY_Arabic_ra* = 0x05d1
  XKB_KEY_Arabic_zain* = 0x05d2
  XKB_KEY_Arabic_seen* = 0x05d3
  XKB_KEY_Arabic_sheen* = 0x05d4
  XKB_KEY_Arabic_sad* = 0x05d5
  XKB_KEY_Arabic_dad* = 0x05d6
  XKB_KEY_Arabic_tah* = 0x05d7
  XKB_KEY_Arabic_zah* = 0x05d8
  XKB_KEY_Arabic_ain* = 0x05d9
  XKB_KEY_Arabic_ghain* = 0x05da
  XKB_KEY_Arabic_tatweel* = 0x05e0
  XKB_KEY_Arabic_feh* = 0x05e1
  XKB_KEY_Arabic_qaf* = 0x05e2
  XKB_KEY_Arabic_kaf* = 0x05e3
  XKB_KEY_Arabic_lam* = 0x05e4
  XKB_KEY_Arabic_meem* = 0x05e5
  XKB_KEY_Arabic_noon* = 0x05e6
  XKB_KEY_Arabic_ha* = 0x05e7
  XKB_KEY_Arabic_heh* = 0x05e7
  XKB_KEY_Arabic_waw* = 0x05e8
  XKB_KEY_Arabic_alefmaksura* = 0x05e9
  XKB_KEY_Arabic_yeh* = 0x05ea
  XKB_KEY_Arabic_fathatan* = 0x05eb
  XKB_KEY_Arabic_dammatan* = 0x05ec
  XKB_KEY_Arabic_kasratan* = 0x05ed
  XKB_KEY_Arabic_fatha* = 0x05ee
  XKB_KEY_Arabic_damma* = 0x05ef
  XKB_KEY_Arabic_kasra* = 0x05f0
  XKB_KEY_Arabic_shadda* = 0x05f1
  XKB_KEY_Arabic_sukun* = 0x05f2
  XKB_KEY_Arabic_madda_above* = 0x1000653
  XKB_KEY_Arabic_hamza_above* = 0x1000654
  XKB_KEY_Arabic_hamza_below* = 0x1000655
  XKB_KEY_Arabic_jeh* = 0x1000698
  XKB_KEY_Arabic_veh* = 0x10006a4
  XKB_KEY_Arabic_keheh* = 0x10006a9
  XKB_KEY_Arabic_gaf* = 0x10006af
  XKB_KEY_Arabic_noon_ghunna* = 0x10006ba
  XKB_KEY_Arabic_heh_doachashmee* = 0x10006be
  XKB_KEY_Farsi_yeh* = 0x10006cc
  XKB_KEY_Arabic_farsi_yeh* = 0x10006cc
  XKB_KEY_Arabic_yeh_baree* = 0x10006d2
  XKB_KEY_Arabic_heh_goal* = 0x10006c1
  XKB_KEY_Arabic_switch* = 0xff7e

##
##  Cyrillic
##  Byte 3 = 6
##

const
  XKB_KEY_Cyrillic_GHE_bar* = 0x1000492
  XKB_KEY_Cyrillic_ghe_bar* = 0x1000493
  XKB_KEY_Cyrillic_ZHE_descender* = 0x1000496
  XKB_KEY_Cyrillic_zhe_descender* = 0x1000497
  XKB_KEY_Cyrillic_KA_descender* = 0x100049a
  XKB_KEY_Cyrillic_ka_descender* = 0x100049b
  XKB_KEY_Cyrillic_KA_vertstroke* = 0x100049c
  XKB_KEY_Cyrillic_ka_vertstroke* = 0x100049d
  XKB_KEY_Cyrillic_EN_descender* = 0x10004a2
  XKB_KEY_Cyrillic_en_descender* = 0x10004a3
  XKB_KEY_Cyrillic_U_straight* = 0x10004ae
  XKB_KEY_Cyrillic_u_straight* = 0x10004af
  XKB_KEY_Cyrillic_U_straight_bar* = 0x10004b0
  XKB_KEY_Cyrillic_u_straight_bar* = 0x10004b1
  XKB_KEY_Cyrillic_HA_descender* = 0x10004b2
  XKB_KEY_Cyrillic_ha_descender* = 0x10004b3
  XKB_KEY_Cyrillic_CHE_descender* = 0x10004b6
  XKB_KEY_Cyrillic_che_descender* = 0x10004b7
  XKB_KEY_Cyrillic_CHE_vertstroke* = 0x10004b8
  XKB_KEY_Cyrillic_che_vertstroke* = 0x10004b9
  XKB_KEY_Cyrillic_SHHA* = 0x10004ba
  XKB_KEY_Cyrillic_shha* = 0x10004bb
  XKB_KEY_Cyrillic_SCHWA* = 0x10004d8
  XKB_KEY_Cyrillic_schwa* = 0x10004d9
  XKB_KEY_Cyrillic_I_macron* = 0x10004e2
  XKB_KEY_Cyrillic_i_macron* = 0x10004e3
  XKB_KEY_Cyrillic_O_bar* = 0x10004e8
  XKB_KEY_Cyrillic_o_bar* = 0x10004e9
  XKB_KEY_Cyrillic_U_macron* = 0x10004ee
  XKB_KEY_Cyrillic_u_macron* = 0x10004ef
  XKB_KEY_Serbian_dje* = 0x06a1
  XKB_KEY_Macedonia_gje* = 0x06a2
  XKB_KEY_Cyrillic_io* = 0x06a3
  XKB_KEY_Ukrainian_ie* = 0x06a4
  XKB_KEY_Ukranian_je* = 0x06a4
  XKB_KEY_Macedonia_dse* = 0x06a5
  XKB_KEY_Ukrainian_i* = 0x06a6
  XKB_KEY_Ukranian_i* = 0x06a6
  XKB_KEY_Ukrainian_yi* = 0x06a7
  XKB_KEY_Ukranian_yi* = 0x06a7
  XKB_KEY_Cyrillic_je* = 0x06a8
  XKB_KEY_Serbian_je* = 0x06a8
  XKB_KEY_Cyrillic_lje* = 0x06a9
  XKB_KEY_Serbian_lje* = 0x06a9
  XKB_KEY_Cyrillic_nje* = 0x06aa
  XKB_KEY_Serbian_nje* = 0x06aa
  XKB_KEY_Serbian_tshe* = 0x06ab
  XKB_KEY_Macedonia_kje* = 0x06ac
  XKB_KEY_Ukrainian_ghe_with_upturn* = 0x06ad
  XKB_KEY_Byelorussian_shortu* = 0x06ae
  XKB_KEY_Cyrillic_dzhe* = 0x06af
  XKB_KEY_Serbian_dze* = 0x06af
  XKB_KEY_numerosign* = 0x06b0
  XKB_KEY_Serbian_DJE* = 0x06b1
  XKB_KEY_Macedonia_GJE* = 0x06b2
  XKB_KEY_Cyrillic_IO* = 0x06b3
  XKB_KEY_Ukrainian_IE* = 0x06b4
  XKB_KEY_Ukranian_JE* = 0x06b4
  XKB_KEY_Macedonia_DSE* = 0x06b5
  XKB_KEY_Ukrainian_I* = 0x06b6
  XKB_KEY_Ukranian_I* = 0x06b6
  XKB_KEY_Ukrainian_YI* = 0x06b7
  XKB_KEY_Ukranian_YI* = 0x06b7
  XKB_KEY_Cyrillic_JE* = 0x06b8
  XKB_KEY_Serbian_JE* = 0x06b8
  XKB_KEY_Cyrillic_LJE* = 0x06b9
  XKB_KEY_Serbian_LJE* = 0x06b9
  XKB_KEY_Cyrillic_NJE* = 0x06ba
  XKB_KEY_Serbian_NJE* = 0x06ba
  XKB_KEY_Serbian_TSHE* = 0x06bb
  XKB_KEY_Macedonia_KJE* = 0x06bc
  XKB_KEY_Ukrainian_GHE_WITH_UPTURN* = 0x06bd
  XKB_KEY_Byelorussian_SHORTU* = 0x06be
  XKB_KEY_Cyrillic_DZHE* = 0x06bf
  XKB_KEY_Serbian_DZE* = 0x06bf
  XKB_KEY_Cyrillic_yu* = 0x06c0
  XKB_KEY_Cyrillic_a* = 0x06c1
  XKB_KEY_Cyrillic_be* = 0x06c2
  XKB_KEY_Cyrillic_tse* = 0x06c3
  XKB_KEY_Cyrillic_de* = 0x06c4
  XKB_KEY_Cyrillic_ie* = 0x06c5
  XKB_KEY_Cyrillic_ef* = 0x06c6
  XKB_KEY_Cyrillic_ghe* = 0x06c7
  XKB_KEY_Cyrillic_ha* = 0x06c8
  XKB_KEY_Cyrillic_i* = 0x06c9
  XKB_KEY_Cyrillic_shorti* = 0x06ca
  XKB_KEY_Cyrillic_ka* = 0x06cb
  XKB_KEY_Cyrillic_el* = 0x06cc
  XKB_KEY_Cyrillic_em* = 0x06cd
  XKB_KEY_Cyrillic_en* = 0x06ce
  XKB_KEY_Cyrillic_o* = 0x06cf
  XKB_KEY_Cyrillic_pe* = 0x06d0
  XKB_KEY_Cyrillic_ya* = 0x06d1
  XKB_KEY_Cyrillic_er* = 0x06d2
  XKB_KEY_Cyrillic_es* = 0x06d3
  XKB_KEY_Cyrillic_te* = 0x06d4
  XKB_KEY_Cyrillic_u* = 0x06d5
  XKB_KEY_Cyrillic_zhe* = 0x06d6
  XKB_KEY_Cyrillic_ve* = 0x06d7
  XKB_KEY_Cyrillic_softsign* = 0x06d8
  XKB_KEY_Cyrillic_yeru* = 0x06d9
  XKB_KEY_Cyrillic_ze* = 0x06da
  XKB_KEY_Cyrillic_sha* = 0x06db
  XKB_KEY_Cyrillic_e* = 0x06dc
  XKB_KEY_Cyrillic_shcha* = 0x06dd
  XKB_KEY_Cyrillic_che* = 0x06de
  XKB_KEY_Cyrillic_hardsign* = 0x06df
  XKB_KEY_Cyrillic_YU* = 0x06e0
  XKB_KEY_Cyrillic_A* = 0x06e1
  XKB_KEY_Cyrillic_BE* = 0x06e2
  XKB_KEY_Cyrillic_TSE* = 0x06e3
  XKB_KEY_Cyrillic_DE* = 0x06e4
  XKB_KEY_Cyrillic_IE* = 0x06e5
  XKB_KEY_Cyrillic_EF* = 0x06e6
  XKB_KEY_Cyrillic_GHE* = 0x06e7
  XKB_KEY_Cyrillic_HA* = 0x06e8
  XKB_KEY_Cyrillic_I* = 0x06e9
  XKB_KEY_Cyrillic_SHORTI* = 0x06ea
  XKB_KEY_Cyrillic_KA* = 0x06eb
  XKB_KEY_Cyrillic_EL* = 0x06ec
  XKB_KEY_Cyrillic_EM* = 0x06ed
  XKB_KEY_Cyrillic_EN* = 0x06ee
  XKB_KEY_Cyrillic_O* = 0x06ef
  XKB_KEY_Cyrillic_PE* = 0x06f0
  XKB_KEY_Cyrillic_YA* = 0x06f1
  XKB_KEY_Cyrillic_ER* = 0x06f2
  XKB_KEY_Cyrillic_ES* = 0x06f3
  XKB_KEY_Cyrillic_TE* = 0x06f4
  XKB_KEY_Cyrillic_U* = 0x06f5
  XKB_KEY_Cyrillic_ZHE* = 0x06f6
  XKB_KEY_Cyrillic_VE* = 0x06f7
  XKB_KEY_Cyrillic_SOFTSIGN* = 0x06f8
  XKB_KEY_Cyrillic_YERU* = 0x06f9
  XKB_KEY_Cyrillic_ZE* = 0x06fa
  XKB_KEY_Cyrillic_SHA* = 0x06fb
  XKB_KEY_Cyrillic_E* = 0x06fc
  XKB_KEY_Cyrillic_SHCHA* = 0x06fd
  XKB_KEY_Cyrillic_CHE* = 0x06fe
  XKB_KEY_Cyrillic_HARDSIGN* = 0x06ff

##
##  Greek
##  (based on an early draft of, and not quite identical to, ISO/IEC 8859-7)
##  Byte 3 = 7
##

const
  XKB_KEY_Greek_ALPHAaccent* = 0x07a1
  XKB_KEY_Greek_EPSILONaccent* = 0x07a2
  XKB_KEY_Greek_ETAaccent* = 0x07a3
  XKB_KEY_Greek_IOTAaccent* = 0x07a4
  XKB_KEY_Greek_IOTAdieresis* = 0x07a5
  XKB_KEY_Greek_IOTAdiaeresis* = 0x07a5
  XKB_KEY_Greek_OMICRONaccent* = 0x07a7
  XKB_KEY_Greek_UPSILONaccent* = 0x07a8
  XKB_KEY_Greek_UPSILONdieresis* = 0x07a9
  XKB_KEY_Greek_OMEGAaccent* = 0x07ab
  XKB_KEY_Greek_accentdieresis* = 0x07ae
  XKB_KEY_Greek_horizbar* = 0x07af
  XKB_KEY_Greek_alphaaccent* = 0x07b1
  XKB_KEY_Greek_epsilonaccent* = 0x07b2
  XKB_KEY_Greek_etaaccent* = 0x07b3
  XKB_KEY_Greek_iotaaccent* = 0x07b4
  XKB_KEY_Greek_iotadieresis* = 0x07b5
  XKB_KEY_Greek_iotaaccentdieresis* = 0x07b6
  XKB_KEY_Greek_omicronaccent* = 0x07b7
  XKB_KEY_Greek_upsilonaccent* = 0x07b8
  XKB_KEY_Greek_upsilondieresis* = 0x07b9
  XKB_KEY_Greek_upsilonaccentdieresis* = 0x07ba
  XKB_KEY_Greek_omegaaccent* = 0x07bb
  XKB_KEY_Greek_ALPHA* = 0x07c1
  XKB_KEY_Greek_BETA* = 0x07c2
  XKB_KEY_Greek_GAMMA* = 0x07c3
  XKB_KEY_Greek_DELTA* = 0x07c4
  XKB_KEY_Greek_EPSILON* = 0x07c5
  XKB_KEY_Greek_ZETA* = 0x07c6
  XKB_KEY_Greek_ETA* = 0x07c7
  XKB_KEY_Greek_THETA* = 0x07c8
  XKB_KEY_Greek_IOTA* = 0x07c9
  XKB_KEY_Greek_KAPPA* = 0x07ca
  XKB_KEY_Greek_LAMDA* = 0x07cb
  XKB_KEY_Greek_LAMBDA* = 0x07cb
  XKB_KEY_Greek_MU* = 0x07cc
  XKB_KEY_Greek_NU* = 0x07cd
  XKB_KEY_Greek_XI* = 0x07ce
  XKB_KEY_Greek_OMICRON* = 0x07cf
  XKB_KEY_Greek_PI* = 0x07d0
  XKB_KEY_Greek_RHO* = 0x07d1
  XKB_KEY_Greek_SIGMA* = 0x07d2
  XKB_KEY_Greek_TAU* = 0x07d4
  XKB_KEY_Greek_UPSILON* = 0x07d5
  XKB_KEY_Greek_PHI* = 0x07d6
  XKB_KEY_Greek_CHI* = 0x07d7
  XKB_KEY_Greek_PSI* = 0x07d8
  XKB_KEY_Greek_OMEGA* = 0x07d9
  XKB_KEY_Greek_alpha* = 0x07e1
  XKB_KEY_Greek_beta* = 0x07e2
  XKB_KEY_Greek_gamma* = 0x07e3
  XKB_KEY_Greek_delta* = 0x07e4
  XKB_KEY_Greek_epsilon* = 0x07e5
  XKB_KEY_Greek_zeta* = 0x07e6
  XKB_KEY_Greek_eta* = 0x07e7
  XKB_KEY_Greek_theta* = 0x07e8
  XKB_KEY_Greek_iota* = 0x07e9
  XKB_KEY_Greek_kappa* = 0x07ea
  XKB_KEY_Greek_lamda* = 0x07eb
  XKB_KEY_Greek_lambda* = 0x07eb
  XKB_KEY_Greek_mu* = 0x07ec
  XKB_KEY_Greek_nu* = 0x07ed
  XKB_KEY_Greek_xi* = 0x07ee
  XKB_KEY_Greek_omicron* = 0x07ef
  XKB_KEY_Greek_pi* = 0x07f0
  XKB_KEY_Greek_rho* = 0x07f1
  XKB_KEY_Greek_sigma* = 0x07f2
  XKB_KEY_Greek_finalsmallsigma* = 0x07f3
  XKB_KEY_Greek_tau* = 0x07f4
  XKB_KEY_Greek_upsilon* = 0x07f5
  XKB_KEY_Greek_phi* = 0x07f6
  XKB_KEY_Greek_chi* = 0x07f7
  XKB_KEY_Greek_psi* = 0x07f8
  XKB_KEY_Greek_omega* = 0x07f9
  XKB_KEY_Greek_switch* = 0xff7e

##
##  Technical
##  (from the DEC VT330/VT420 Technical Character Set, http://vt100.net/charsets/technical.html)
##  Byte 3 = 8
##

const
  XKB_KEY_leftradical* = 0x08a1
  XKB_KEY_topleftradical* = 0x08a2
  XKB_KEY_horizconnector* = 0x08a3
  XKB_KEY_topintegral* = 0x08a4
  XKB_KEY_botintegral* = 0x08a5
  XKB_KEY_vertconnector* = 0x08a6
  XKB_KEY_topleftsqbracket* = 0x08a7
  XKB_KEY_botleftsqbracket* = 0x08a8
  XKB_KEY_toprightsqbracket* = 0x08a9
  XKB_KEY_botrightsqbracket* = 0x08aa
  XKB_KEY_topleftparens* = 0x08ab
  XKB_KEY_botleftparens* = 0x08ac
  XKB_KEY_toprightparens* = 0x08ad
  XKB_KEY_botrightparens* = 0x08ae
  XKB_KEY_leftmiddlecurlybrace* = 0x08af
  XKB_KEY_rightmiddlecurlybrace* = 0x08b0
  XKB_KEY_topleftsummation* = 0x08b1
  XKB_KEY_botleftsummation* = 0x08b2
  XKB_KEY_topvertsummationconnector* = 0x08b3
  XKB_KEY_botvertsummationconnector* = 0x08b4
  XKB_KEY_toprightsummation* = 0x08b5
  XKB_KEY_botrightsummation* = 0x08b6
  XKB_KEY_rightmiddlesummation* = 0x08b7
  XKB_KEY_lessthanequal* = 0x08bc
  XKB_KEY_notequal* = 0x08bd
  XKB_KEY_greaterthanequal* = 0x08be
  XKB_KEY_integral* = 0x08bf
  XKB_KEY_therefore* = 0x08c0
  XKB_KEY_variation* = 0x08c1
  XKB_KEY_infinity* = 0x08c2
  XKB_KEY_nabla* = 0x08c5
  XKB_KEY_approximate* = 0x08c8
  XKB_KEY_similarequal* = 0x08c9
  XKB_KEY_ifonlyif* = 0x08cd
  XKB_KEY_implies* = 0x08ce
  XKB_KEY_identical* = 0x08cf
  XKB_KEY_radical* = 0x08d6
  XKB_KEY_includedin* = 0x08da
  XKB_KEY_includes* = 0x08db
  XKB_KEY_intersection* = 0x08dc
  XKB_KEY_union* = 0x08dd
  XKB_KEY_logicaland* = 0x08de
  XKB_KEY_logicalor* = 0x08df
  XKB_KEY_partialderivative* = 0x08ef
  XKB_KEY_function* = 0x08f6
  XKB_KEY_leftarrow* = 0x08fb
  XKB_KEY_uparrow* = 0x08fc
  XKB_KEY_rightarrow* = 0x08fd
  XKB_KEY_downarrow* = 0x08fe

##
##  Special
##  (from the DEC VT100 Special Graphics Character Set)
##  Byte 3 = 9
##

const
  XKB_KEY_blank* = 0x09df
  XKB_KEY_soliddiamond* = 0x09e0
  XKB_KEY_checkerboard* = 0x09e1
  XKB_KEY_ht* = 0x09e2
  XKB_KEY_ff* = 0x09e3
  XKB_KEY_cr* = 0x09e4
  XKB_KEY_lf* = 0x09e5
  XKB_KEY_nl* = 0x09e8
  XKB_KEY_vt* = 0x09e9
  XKB_KEY_lowrightcorner* = 0x09ea
  XKB_KEY_uprightcorner* = 0x09eb
  XKB_KEY_upleftcorner* = 0x09ec
  XKB_KEY_lowleftcorner* = 0x09ed
  XKB_KEY_crossinglines* = 0x09ee
  XKB_KEY_horizlinescan1* = 0x09ef
  XKB_KEY_horizlinescan3* = 0x09f0
  XKB_KEY_horizlinescan5* = 0x09f1
  XKB_KEY_horizlinescan7* = 0x09f2
  XKB_KEY_horizlinescan9* = 0x09f3
  XKB_KEY_leftt* = 0x09f4
  XKB_KEY_rightt* = 0x09f5
  XKB_KEY_bott* = 0x09f6
  XKB_KEY_topt* = 0x09f7
  XKB_KEY_vertbar* = 0x09f8

##
##  Publishing
##  (these are probably from a long forgotten DEC Publishing
##  font that once shipped with DECwrite)
##  Byte 3 = 0x0a
##

const
  XKB_KEY_emspace* = 0x0aa1
  XKB_KEY_enspace* = 0x0aa2
  XKB_KEY_em3space* = 0x0aa3
  XKB_KEY_em4space* = 0x0aa4
  XKB_KEY_digitspace* = 0x0aa5
  XKB_KEY_punctspace* = 0x0aa6
  XKB_KEY_thinspace* = 0x0aa7
  XKB_KEY_hairspace* = 0x0aa8
  XKB_KEY_emdash* = 0x0aa9
  XKB_KEY_endash* = 0x0aaa
  XKB_KEY_signifblank* = 0x0aac
  XKB_KEY_ellipsis* = 0x0aae
  XKB_KEY_doubbaselinedot* = 0x0aaf
  XKB_KEY_onethird* = 0x0ab0
  XKB_KEY_twothirds* = 0x0ab1
  XKB_KEY_onefifth* = 0x0ab2
  XKB_KEY_twofifths* = 0x0ab3
  XKB_KEY_threefifths* = 0x0ab4
  XKB_KEY_fourfifths* = 0x0ab5
  XKB_KEY_onesixth* = 0x0ab6
  XKB_KEY_fivesixths* = 0x0ab7
  XKB_KEY_careof* = 0x0ab8
  XKB_KEY_figdash* = 0x0abb
  XKB_KEY_leftanglebracket* = 0x0abc
  XKB_KEY_decimalpoint* = 0x0abd
  XKB_KEY_rightanglebracket* = 0x0abe
  XKB_KEY_marker* = 0x0abf
  XKB_KEY_oneeighth* = 0x0ac3
  XKB_KEY_threeeighths* = 0x0ac4
  XKB_KEY_fiveeighths* = 0x0ac5
  XKB_KEY_seveneighths* = 0x0ac6
  XKB_KEY_trademark* = 0x0ac9
  XKB_KEY_signaturemark* = 0x0aca
  XKB_KEY_trademarkincircle* = 0x0acb
  XKB_KEY_leftopentriangle* = 0x0acc
  XKB_KEY_rightopentriangle* = 0x0acd
  XKB_KEY_emopencircle* = 0x0ace
  XKB_KEY_emopenrectangle* = 0x0acf
  XKB_KEY_leftsinglequotemark* = 0x0ad0
  XKB_KEY_rightsinglequotemark* = 0x0ad1
  XKB_KEY_leftdoublequotemark* = 0x0ad2
  XKB_KEY_rightdoublequotemark* = 0x0ad3
  XKB_KEY_prescription* = 0x0ad4
  XKB_KEY_permille* = 0x0ad5
  XKB_KEY_minutes* = 0x0ad6
  XKB_KEY_seconds* = 0x0ad7
  XKB_KEY_latincross* = 0x0ad9
  XKB_KEY_hexagram* = 0x0ada
  XKB_KEY_filledrectbullet* = 0x0adb
  XKB_KEY_filledlefttribullet* = 0x0adc
  XKB_KEY_filledrighttribullet* = 0x0add
  XKB_KEY_emfilledcircle* = 0x0ade
  XKB_KEY_emfilledrect* = 0x0adf
  XKB_KEY_enopencircbullet* = 0x0ae0
  XKB_KEY_enopensquarebullet* = 0x0ae1
  XKB_KEY_openrectbullet* = 0x0ae2
  XKB_KEY_opentribulletup* = 0x0ae3
  XKB_KEY_opentribulletdown* = 0x0ae4
  XKB_KEY_openstar* = 0x0ae5
  XKB_KEY_enfilledcircbullet* = 0x0ae6
  XKB_KEY_enfilledsqbullet* = 0x0ae7
  XKB_KEY_filledtribulletup* = 0x0ae8
  XKB_KEY_filledtribulletdown* = 0x0ae9
  XKB_KEY_leftpointer* = 0x0aea
  XKB_KEY_rightpointer* = 0x0aeb
  XKB_KEY_club* = 0x0aec
  XKB_KEY_diamond* = 0x0aed
  XKB_KEY_heart* = 0x0aee
  XKB_KEY_maltesecross* = 0x0af0
  XKB_KEY_dagger* = 0x0af1
  XKB_KEY_doubledagger* = 0x0af2
  XKB_KEY_checkmark* = 0x0af3
  XKB_KEY_ballotcross* = 0x0af4
  XKB_KEY_musicalsharp* = 0x0af5
  XKB_KEY_musicalflat* = 0x0af6
  XKB_KEY_malesymbol* = 0x0af7
  XKB_KEY_femalesymbol* = 0x0af8
  XKB_KEY_telephone* = 0x0af9
  XKB_KEY_telephonerecorder* = 0x0afa
  XKB_KEY_phonographcopyright* = 0x0afb
  XKB_KEY_caret* = 0x0afc
  XKB_KEY_singlelowquotemark* = 0x0afd
  XKB_KEY_doublelowquotemark* = 0x0afe
  XKB_KEY_cursor* = 0x0aff

##
##  APL
##  Byte 3 = 0x0b
##

const
  XKB_KEY_leftcaret* = 0x0ba3
  XKB_KEY_rightcaret* = 0x0ba6
  XKB_KEY_downcaret* = 0x0ba8
  XKB_KEY_upcaret* = 0x0ba9
  XKB_KEY_overbar* = 0x0bc0
  XKB_KEY_downtack* = 0x0bc2
  XKB_KEY_upshoe* = 0x0bc3
  XKB_KEY_downstile* = 0x0bc4
  XKB_KEY_underbar* = 0x0bc6
  XKB_KEY_jot* = 0x0bca
  XKB_KEY_quad* = 0x0bcc
  XKB_KEY_uptack* = 0x0bce
  XKB_KEY_circle* = 0x0bcf
  XKB_KEY_upstile* = 0x0bd3
  XKB_KEY_downshoe* = 0x0bd6
  XKB_KEY_rightshoe* = 0x0bd8
  XKB_KEY_leftshoe* = 0x0bda
  XKB_KEY_lefttack* = 0x0bdc
  XKB_KEY_righttack* = 0x0bfc

##
##  Hebrew
##  Byte 3 = 0x0c
##

const
  XKB_KEY_hebrew_doublelowline* = 0x0cdf
  XKB_KEY_hebrew_aleph* = 0x0ce0
  XKB_KEY_hebrew_bet* = 0x0ce1
  XKB_KEY_hebrew_beth* = 0x0ce1
  XKB_KEY_hebrew_gimel* = 0x0ce2
  XKB_KEY_hebrew_gimmel* = 0x0ce2
  XKB_KEY_hebrew_dalet* = 0x0ce3
  XKB_KEY_hebrew_daleth* = 0x0ce3
  XKB_KEY_hebrew_he* = 0x0ce4
  XKB_KEY_hebrew_waw* = 0x0ce5
  XKB_KEY_hebrew_zain* = 0x0ce6
  XKB_KEY_hebrew_zayin* = 0x0ce6
  XKB_KEY_hebrew_chet* = 0x0ce7
  XKB_KEY_hebrew_het* = 0x0ce7
  XKB_KEY_hebrew_tet* = 0x0ce8
  XKB_KEY_hebrew_teth* = 0x0ce8
  XKB_KEY_hebrew_yod* = 0x0ce9
  XKB_KEY_hebrew_finalkaph* = 0x0cea
  XKB_KEY_hebrew_kaph* = 0x0ceb
  XKB_KEY_hebrew_lamed* = 0x0cec
  XKB_KEY_hebrew_finalmem* = 0x0ced
  XKB_KEY_hebrew_mem* = 0x0cee
  XKB_KEY_hebrew_finalnun* = 0x0cef
  XKB_KEY_hebrew_nun* = 0x0cf0
  XKB_KEY_hebrew_samech* = 0x0cf1
  XKB_KEY_hebrew_samekh* = 0x0cf1
  XKB_KEY_hebrew_ayin* = 0x0cf2
  XKB_KEY_hebrew_finalpe* = 0x0cf3
  XKB_KEY_hebrew_pe* = 0x0cf4
  XKB_KEY_hebrew_finalzade* = 0x0cf5
  XKB_KEY_hebrew_finalzadi* = 0x0cf5
  XKB_KEY_hebrew_zade* = 0x0cf6
  XKB_KEY_hebrew_zadi* = 0x0cf6
  XKB_KEY_hebrew_qoph* = 0x0cf7
  XKB_KEY_hebrew_kuf* = 0x0cf7
  XKB_KEY_hebrew_resh* = 0x0cf8
  XKB_KEY_hebrew_shin* = 0x0cf9
  XKB_KEY_hebrew_taw* = 0x0cfa
  XKB_KEY_hebrew_taf* = 0x0cfa
  XKB_KEY_Hebrew_switch* = 0xff7e

##
##  Thai
##  Byte 3 = 0x0d
##

const
  XKB_KEY_Thai_kokai* = 0x0da1
  XKB_KEY_Thai_khokhai* = 0x0da2
  XKB_KEY_Thai_khokhuat* = 0x0da3
  XKB_KEY_Thai_khokhwai* = 0x0da4
  XKB_KEY_Thai_khokhon* = 0x0da5
  XKB_KEY_Thai_khorakhang* = 0x0da6
  XKB_KEY_Thai_ngongu* = 0x0da7
  XKB_KEY_Thai_chochan* = 0x0da8
  XKB_KEY_Thai_choching* = 0x0da9
  XKB_KEY_Thai_chochang* = 0x0daa
  XKB_KEY_Thai_soso* = 0x0dab
  XKB_KEY_Thai_chochoe* = 0x0dac
  XKB_KEY_Thai_yoying* = 0x0dad
  XKB_KEY_Thai_dochada* = 0x0dae
  XKB_KEY_Thai_topatak* = 0x0daf
  XKB_KEY_Thai_thothan* = 0x0db0
  XKB_KEY_Thai_thonangmontho* = 0x0db1
  XKB_KEY_Thai_thophuthao* = 0x0db2
  XKB_KEY_Thai_nonen* = 0x0db3
  XKB_KEY_Thai_dodek* = 0x0db4
  XKB_KEY_Thai_totao* = 0x0db5
  XKB_KEY_Thai_thothung* = 0x0db6
  XKB_KEY_Thai_thothahan* = 0x0db7
  XKB_KEY_Thai_thothong* = 0x0db8
  XKB_KEY_Thai_nonu* = 0x0db9
  XKB_KEY_Thai_bobaimai* = 0x0dba
  XKB_KEY_Thai_popla* = 0x0dbb
  XKB_KEY_Thai_phophung* = 0x0dbc
  XKB_KEY_Thai_fofa* = 0x0dbd
  XKB_KEY_Thai_phophan* = 0x0dbe
  XKB_KEY_Thai_fofan* = 0x0dbf
  XKB_KEY_Thai_phosamphao* = 0x0dc0
  XKB_KEY_Thai_moma* = 0x0dc1
  XKB_KEY_Thai_yoyak* = 0x0dc2
  XKB_KEY_Thai_rorua* = 0x0dc3
  XKB_KEY_Thai_ru* = 0x0dc4
  XKB_KEY_Thai_loling* = 0x0dc5
  XKB_KEY_Thai_lu* = 0x0dc6
  XKB_KEY_Thai_wowaen* = 0x0dc7
  XKB_KEY_Thai_sosala* = 0x0dc8
  XKB_KEY_Thai_sorusi* = 0x0dc9
  XKB_KEY_Thai_sosua* = 0x0dca
  XKB_KEY_Thai_hohip* = 0x0dcb
  XKB_KEY_Thai_lochula* = 0x0dcc
  XKB_KEY_Thai_oang* = 0x0dcd
  XKB_KEY_Thai_honokhuk* = 0x0dce
  XKB_KEY_Thai_paiyannoi* = 0x0dcf
  XKB_KEY_Thai_saraa* = 0x0dd0
  XKB_KEY_Thai_maihanakat* = 0x0dd1
  XKB_KEY_Thai_saraaa* = 0x0dd2
  XKB_KEY_Thai_saraam* = 0x0dd3
  XKB_KEY_Thai_sarai* = 0x0dd4
  XKB_KEY_Thai_saraii* = 0x0dd5
  XKB_KEY_Thai_saraue* = 0x0dd6
  XKB_KEY_Thai_sarauee* = 0x0dd7
  XKB_KEY_Thai_sarau* = 0x0dd8
  XKB_KEY_Thai_sarauu* = 0x0dd9
  XKB_KEY_Thai_phinthu* = 0x0dda
  XKB_KEY_Thai_maihanakat_maitho* = 0x0dde
  XKB_KEY_Thai_baht* = 0x0ddf
  XKB_KEY_Thai_sarae* = 0x0de0
  XKB_KEY_Thai_saraae* = 0x0de1
  XKB_KEY_Thai_sarao* = 0x0de2
  XKB_KEY_Thai_saraaimaimuan* = 0x0de3
  XKB_KEY_Thai_saraaimaimalai* = 0x0de4
  XKB_KEY_Thai_lakkhangyao* = 0x0de5
  XKB_KEY_Thai_maiyamok* = 0x0de6
  XKB_KEY_Thai_maitaikhu* = 0x0de7
  XKB_KEY_Thai_maiek* = 0x0de8
  XKB_KEY_Thai_maitho* = 0x0de9
  XKB_KEY_Thai_maitri* = 0x0dea
  XKB_KEY_Thai_maichattawa* = 0x0deb
  XKB_KEY_Thai_thanthakhat* = 0x0dec
  XKB_KEY_Thai_nikhahit* = 0x0ded
  XKB_KEY_Thai_leksun* = 0x0df0
  XKB_KEY_Thai_leknung* = 0x0df1
  XKB_KEY_Thai_leksong* = 0x0df2
  XKB_KEY_Thai_leksam* = 0x0df3
  XKB_KEY_Thai_leksi* = 0x0df4
  XKB_KEY_Thai_lekha* = 0x0df5
  XKB_KEY_Thai_lekhok* = 0x0df6
  XKB_KEY_Thai_lekchet* = 0x0df7
  XKB_KEY_Thai_lekpaet* = 0x0df8
  XKB_KEY_Thai_lekkao* = 0x0df9

##
##  Korean
##  Byte 3 = 0x0e
##

const
  XKB_KEY_Hangul* = 0xff31
  XKB_KEY_Hangul_Start* = 0xff32
  XKB_KEY_Hangul_End* = 0xff33
  XKB_KEY_Hangul_Hanja* = 0xff34
  XKB_KEY_Hangul_Jamo* = 0xff35
  XKB_KEY_Hangul_Romaja* = 0xff36
  XKB_KEY_Hangul_Codeinput* = 0xff37
  XKB_KEY_Hangul_Jeonja* = 0xff38
  XKB_KEY_Hangul_Banja* = 0xff39
  XKB_KEY_Hangul_PreHanja* = 0xff3a
  XKB_KEY_Hangul_PostHanja* = 0xff3b
  XKB_KEY_Hangul_SingleCandidate* = 0xff3c
  XKB_KEY_Hangul_MultipleCandidate* = 0xff3d
  XKB_KEY_Hangul_PreviousCandidate* = 0xff3e
  XKB_KEY_Hangul_Special* = 0xff3f
  XKB_KEY_Hangul_switch* = 0xff7e

##  Hangul Consonant Characters

const
  XKB_KEY_Hangul_Kiyeog* = 0x0ea1
  XKB_KEY_Hangul_SsangKiyeog* = 0x0ea2
  XKB_KEY_Hangul_KiyeogSios* = 0x0ea3
  XKB_KEY_Hangul_Nieun* = 0x0ea4
  XKB_KEY_Hangul_NieunJieuj* = 0x0ea5
  XKB_KEY_Hangul_NieunHieuh* = 0x0ea6
  XKB_KEY_Hangul_Dikeud* = 0x0ea7
  XKB_KEY_Hangul_SsangDikeud* = 0x0ea8
  XKB_KEY_Hangul_Rieul* = 0x0ea9
  XKB_KEY_Hangul_RieulKiyeog* = 0x0eaa
  XKB_KEY_Hangul_RieulMieum* = 0x0eab
  XKB_KEY_Hangul_RieulPieub* = 0x0eac
  XKB_KEY_Hangul_RieulSios* = 0x0ead
  XKB_KEY_Hangul_RieulTieut* = 0x0eae
  XKB_KEY_Hangul_RieulPhieuf* = 0x0eaf
  XKB_KEY_Hangul_RieulHieuh* = 0x0eb0
  XKB_KEY_Hangul_Mieum* = 0x0eb1
  XKB_KEY_Hangul_Pieub* = 0x0eb2
  XKB_KEY_Hangul_SsangPieub* = 0x0eb3
  XKB_KEY_Hangul_PieubSios* = 0x0eb4
  XKB_KEY_Hangul_Sios* = 0x0eb5
  XKB_KEY_Hangul_SsangSios* = 0x0eb6
  XKB_KEY_Hangul_Ieung* = 0x0eb7
  XKB_KEY_Hangul_Jieuj* = 0x0eb8
  XKB_KEY_Hangul_SsangJieuj* = 0x0eb9
  XKB_KEY_Hangul_Cieuc* = 0x0eba
  XKB_KEY_Hangul_Khieuq* = 0x0ebb
  XKB_KEY_Hangul_Tieut* = 0x0ebc
  XKB_KEY_Hangul_Phieuf* = 0x0ebd
  XKB_KEY_Hangul_Hieuh* = 0x0ebe

##  Hangul Vowel Characters

const
  XKB_KEY_Hangul_A* = 0x0ebf
  XKB_KEY_Hangul_AE* = 0x0ec0
  XKB_KEY_Hangul_YA* = 0x0ec1
  XKB_KEY_Hangul_YAE* = 0x0ec2
  XKB_KEY_Hangul_EO* = 0x0ec3
  XKB_KEY_Hangul_E* = 0x0ec4
  XKB_KEY_Hangul_YEO* = 0x0ec5
  XKB_KEY_Hangul_YE* = 0x0ec6
  XKB_KEY_Hangul_O* = 0x0ec7
  XKB_KEY_Hangul_WA* = 0x0ec8
  XKB_KEY_Hangul_WAE* = 0x0ec9
  XKB_KEY_Hangul_OE* = 0x0eca
  XKB_KEY_Hangul_YO* = 0x0ecb
  XKB_KEY_Hangul_U* = 0x0ecc
  XKB_KEY_Hangul_WEO* = 0x0ecd
  XKB_KEY_Hangul_WE* = 0x0ece
  XKB_KEY_Hangul_WI* = 0x0ecf
  XKB_KEY_Hangul_YU* = 0x0ed0
  XKB_KEY_Hangul_EU* = 0x0ed1
  XKB_KEY_Hangul_YI* = 0x0ed2
  XKB_KEY_Hangul_I* = 0x0ed3

##  Hangul syllable-final (JongSeong) Characters

const
  XKB_KEY_Hangul_J_Kiyeog* = 0x0ed4
  XKB_KEY_Hangul_J_SsangKiyeog* = 0x0ed5
  XKB_KEY_Hangul_J_KiyeogSios* = 0x0ed6
  XKB_KEY_Hangul_J_Nieun* = 0x0ed7
  XKB_KEY_Hangul_J_NieunJieuj* = 0x0ed8
  XKB_KEY_Hangul_J_NieunHieuh* = 0x0ed9
  XKB_KEY_Hangul_J_Dikeud* = 0x0eda
  XKB_KEY_Hangul_J_Rieul* = 0x0edb
  XKB_KEY_Hangul_J_RieulKiyeog* = 0x0edc
  XKB_KEY_Hangul_J_RieulMieum* = 0x0edd
  XKB_KEY_Hangul_J_RieulPieub* = 0x0ede
  XKB_KEY_Hangul_J_RieulSios* = 0x0edf
  XKB_KEY_Hangul_J_RieulTieut* = 0x0ee0
  XKB_KEY_Hangul_J_RieulPhieuf* = 0x0ee1
  XKB_KEY_Hangul_J_RieulHieuh* = 0x0ee2
  XKB_KEY_Hangul_J_Mieum* = 0x0ee3
  XKB_KEY_Hangul_J_Pieub* = 0x0ee4
  XKB_KEY_Hangul_J_PieubSios* = 0x0ee5
  XKB_KEY_Hangul_J_Sios* = 0x0ee6
  XKB_KEY_Hangul_J_SsangSios* = 0x0ee7
  XKB_KEY_Hangul_J_Ieung* = 0x0ee8
  XKB_KEY_Hangul_J_Jieuj* = 0x0ee9
  XKB_KEY_Hangul_J_Cieuc* = 0x0eea
  XKB_KEY_Hangul_J_Khieuq* = 0x0eeb
  XKB_KEY_Hangul_J_Tieut* = 0x0eec
  XKB_KEY_Hangul_J_Phieuf* = 0x0eed
  XKB_KEY_Hangul_J_Hieuh* = 0x0eee

##  Ancient Hangul Consonant Characters

const
  XKB_KEY_Hangul_RieulYeorinHieuh* = 0x0eef
  XKB_KEY_Hangul_SunkyeongeumMieum* = 0x0ef0
  XKB_KEY_Hangul_SunkyeongeumPieub* = 0x0ef1
  XKB_KEY_Hangul_PanSios* = 0x0ef2
  XKB_KEY_Hangul_KkogjiDalrinIeung* = 0x0ef3
  XKB_KEY_Hangul_SunkyeongeumPhieuf* = 0x0ef4
  XKB_KEY_Hangul_YeorinHieuh* = 0x0ef5

##  Ancient Hangul Vowel Characters

const
  XKB_KEY_Hangul_AraeA* = 0x0ef6
  XKB_KEY_Hangul_AraeAE* = 0x0ef7

##  Ancient Hangul syllable-final (JongSeong) Characters

const
  XKB_KEY_Hangul_J_PanSios* = 0x0ef8
  XKB_KEY_Hangul_J_KkogjiDalrinIeung* = 0x0ef9
  XKB_KEY_Hangul_J_YeorinHieuh* = 0x0efa

##  Korean currency symbol

const
  XKB_KEY_Korean_Won* = 0x0eff

##
##  Armenian
##

const
  XKB_KEY_Armenian_ligature_ew* = 0x1000587
  XKB_KEY_Armenian_full_stop* = 0x1000589
  XKB_KEY_Armenian_verjaket* = 0x1000589
  XKB_KEY_Armenian_separation_mark* = 0x100055d
  XKB_KEY_Armenian_but* = 0x100055d
  XKB_KEY_Armenian_hyphen* = 0x100058a
  XKB_KEY_Armenian_yentamna* = 0x100058a
  XKB_KEY_Armenian_exclam* = 0x100055c
  XKB_KEY_Armenian_amanak* = 0x100055c
  XKB_KEY_Armenian_accent* = 0x100055b
  XKB_KEY_Armenian_shesht* = 0x100055b
  XKB_KEY_Armenian_question* = 0x100055e
  XKB_KEY_Armenian_paruyk* = 0x100055e
  XKB_KEY_Armenian_AYB* = 0x1000531
  XKB_KEY_Armenian_ayb* = 0x1000561
  XKB_KEY_Armenian_BEN* = 0x1000532
  XKB_KEY_Armenian_ben* = 0x1000562
  XKB_KEY_Armenian_GIM* = 0x1000533
  XKB_KEY_Armenian_gim* = 0x1000563
  XKB_KEY_Armenian_DA* = 0x1000534
  XKB_KEY_Armenian_da* = 0x1000564
  XKB_KEY_Armenian_YECH* = 0x1000535
  XKB_KEY_Armenian_yech* = 0x1000565
  XKB_KEY_Armenian_ZA* = 0x1000536
  XKB_KEY_Armenian_za* = 0x1000566
  XKB_KEY_Armenian_E* = 0x1000537
  XKB_KEY_Armenian_e* = 0x1000567
  XKB_KEY_Armenian_AT* = 0x1000538
  XKB_KEY_Armenian_at* = 0x1000568
  XKB_KEY_Armenian_TO* = 0x1000539
  XKB_KEY_Armenian_to* = 0x1000569
  XKB_KEY_Armenian_ZHE* = 0x100053a
  XKB_KEY_Armenian_zhe* = 0x100056a
  XKB_KEY_Armenian_INI* = 0x100053b
  XKB_KEY_Armenian_ini* = 0x100056b
  XKB_KEY_Armenian_LYUN* = 0x100053c
  XKB_KEY_Armenian_lyun* = 0x100056c
  XKB_KEY_Armenian_KHE* = 0x100053d
  XKB_KEY_Armenian_khe* = 0x100056d
  XKB_KEY_Armenian_TSA* = 0x100053e
  XKB_KEY_Armenian_tsa* = 0x100056e
  XKB_KEY_Armenian_KEN* = 0x100053f
  XKB_KEY_Armenian_ken* = 0x100056f
  XKB_KEY_Armenian_HO* = 0x1000540
  XKB_KEY_Armenian_ho* = 0x1000570
  XKB_KEY_Armenian_DZA* = 0x1000541
  XKB_KEY_Armenian_dza* = 0x1000571
  XKB_KEY_Armenian_GHAT* = 0x1000542
  XKB_KEY_Armenian_ghat* = 0x1000572
  XKB_KEY_Armenian_TCHE* = 0x1000543
  XKB_KEY_Armenian_tche* = 0x1000573
  XKB_KEY_Armenian_MEN* = 0x1000544
  XKB_KEY_Armenian_men* = 0x1000574
  XKB_KEY_Armenian_HI* = 0x1000545
  XKB_KEY_Armenian_hi* = 0x1000575
  XKB_KEY_Armenian_NU* = 0x1000546
  XKB_KEY_Armenian_nu* = 0x1000576
  XKB_KEY_Armenian_SHA* = 0x1000547
  XKB_KEY_Armenian_sha* = 0x1000577
  XKB_KEY_Armenian_VO* = 0x1000548
  XKB_KEY_Armenian_vo* = 0x1000578
  XKB_KEY_Armenian_CHA* = 0x1000549
  XKB_KEY_Armenian_cha* = 0x1000579
  XKB_KEY_Armenian_PE* = 0x100054a
  XKB_KEY_Armenian_pe* = 0x100057a
  XKB_KEY_Armenian_JE* = 0x100054b
  XKB_KEY_Armenian_je* = 0x100057b
  XKB_KEY_Armenian_RA* = 0x100054c
  XKB_KEY_Armenian_ra* = 0x100057c
  XKB_KEY_Armenian_SE* = 0x100054d
  XKB_KEY_Armenian_se* = 0x100057d
  XKB_KEY_Armenian_VEV* = 0x100054e
  XKB_KEY_Armenian_vev* = 0x100057e
  XKB_KEY_Armenian_TYUN* = 0x100054f
  XKB_KEY_Armenian_tyun* = 0x100057f
  XKB_KEY_Armenian_RE* = 0x1000550
  XKB_KEY_Armenian_re* = 0x1000580
  XKB_KEY_Armenian_TSO* = 0x1000551
  XKB_KEY_Armenian_tso* = 0x1000581
  XKB_KEY_Armenian_VYUN* = 0x1000552
  XKB_KEY_Armenian_vyun* = 0x1000582
  XKB_KEY_Armenian_PYUR* = 0x1000553
  XKB_KEY_Armenian_pyur* = 0x1000583
  XKB_KEY_Armenian_KE* = 0x1000554
  XKB_KEY_Armenian_ke* = 0x1000584
  XKB_KEY_Armenian_O* = 0x1000555
  XKB_KEY_Armenian_o* = 0x1000585
  XKB_KEY_Armenian_FE* = 0x1000556
  XKB_KEY_Armenian_fe* = 0x1000586
  XKB_KEY_Armenian_apostrophe* = 0x100055a

##
##  Georgian
##

const
  XKB_KEY_Georgian_an* = 0x10010d0
  XKB_KEY_Georgian_ban* = 0x10010d1
  XKB_KEY_Georgian_gan* = 0x10010d2
  XKB_KEY_Georgian_don* = 0x10010d3
  XKB_KEY_Georgian_en* = 0x10010d4
  XKB_KEY_Georgian_vin* = 0x10010d5
  XKB_KEY_Georgian_zen* = 0x10010d6
  XKB_KEY_Georgian_tan* = 0x10010d7
  XKB_KEY_Georgian_in* = 0x10010d8
  XKB_KEY_Georgian_kan* = 0x10010d9
  XKB_KEY_Georgian_las* = 0x10010da
  XKB_KEY_Georgian_man* = 0x10010db
  XKB_KEY_Georgian_nar* = 0x10010dc
  XKB_KEY_Georgian_on* = 0x10010dd
  XKB_KEY_Georgian_par* = 0x10010de
  XKB_KEY_Georgian_zhar* = 0x10010df
  XKB_KEY_Georgian_rae* = 0x10010e0
  XKB_KEY_Georgian_san* = 0x10010e1
  XKB_KEY_Georgian_tar* = 0x10010e2
  XKB_KEY_Georgian_un* = 0x10010e3
  XKB_KEY_Georgian_phar* = 0x10010e4
  XKB_KEY_Georgian_khar* = 0x10010e5
  XKB_KEY_Georgian_ghan* = 0x10010e6
  XKB_KEY_Georgian_qar* = 0x10010e7
  XKB_KEY_Georgian_shin* = 0x10010e8
  XKB_KEY_Georgian_chin* = 0x10010e9
  XKB_KEY_Georgian_can* = 0x10010ea
  XKB_KEY_Georgian_jil* = 0x10010eb
  XKB_KEY_Georgian_cil* = 0x10010ec
  XKB_KEY_Georgian_char* = 0x10010ed
  XKB_KEY_Georgian_xan* = 0x10010ee
  XKB_KEY_Georgian_jhan* = 0x10010ef
  XKB_KEY_Georgian_hae* = 0x10010f0
  XKB_KEY_Georgian_he* = 0x10010f1
  XKB_KEY_Georgian_hie* = 0x10010f2
  XKB_KEY_Georgian_we* = 0x10010f3
  XKB_KEY_Georgian_har* = 0x10010f4
  XKB_KEY_Georgian_hoe* = 0x10010f5
  XKB_KEY_Georgian_fi* = 0x10010f6

##
##  Azeri (and other Turkic or Caucasian languages)
##
##  latin

const
  XKB_KEY_Xabovedot* = 0x1001e8a
  XKB_KEY_Ibreve* = 0x100012c
  XKB_KEY_Zstroke* = 0x10001b5
  XKB_KEY_Gcaron* = 0x10001e6
  XKB_KEY_Ocaron* = 0x10001d1
  XKB_KEY_Obarred* = 0x100019f
  XKB_KEY_xabovedot* = 0x1001e8b
  XKB_KEY_ibreve* = 0x100012d
  XKB_KEY_zstroke* = 0x10001b6
  XKB_KEY_gcaron* = 0x10001e7
  XKB_KEY_ocaron* = 0x10001d2
  XKB_KEY_obarred* = 0x1000275
  XKB_KEY_SCHWA* = 0x100018f
  XKB_KEY_schwa* = 0x1000259
  XKB_KEY_EZH* = 0x10001b7
  XKB_KEY_ezh* = 0x1000292

##  those are not really Caucasus
##  For Inupiak

const
  XKB_KEY_Lbelowdot* = 0x1001e36
  XKB_KEY_lbelowdot* = 0x1001e37

##
##  Vietnamese
##

const
  XKB_KEY_Abelowdot* = 0x1001ea0
  XKB_KEY_abelowdot* = 0x1001ea1
  XKB_KEY_Ahook* = 0x1001ea2
  XKB_KEY_ahook* = 0x1001ea3
  XKB_KEY_Acircumflexacute* = 0x1001ea4
  XKB_KEY_acircumflexacute* = 0x1001ea5
  XKB_KEY_Acircumflexgrave* = 0x1001ea6
  XKB_KEY_acircumflexgrave* = 0x1001ea7
  XKB_KEY_Acircumflexhook* = 0x1001ea8
  XKB_KEY_acircumflexhook* = 0x1001ea9
  XKB_KEY_Acircumflextilde* = 0x1001eaa
  XKB_KEY_acircumflextilde* = 0x1001eab
  XKB_KEY_Acircumflexbelowdot* = 0x1001eac
  XKB_KEY_acircumflexbelowdot* = 0x1001ead
  XKB_KEY_Abreveacute* = 0x1001eae
  XKB_KEY_abreveacute* = 0x1001eaf
  XKB_KEY_Abrevegrave* = 0x1001eb0
  XKB_KEY_abrevegrave* = 0x1001eb1
  XKB_KEY_Abrevehook* = 0x1001eb2
  XKB_KEY_abrevehook* = 0x1001eb3
  XKB_KEY_Abrevetilde* = 0x1001eb4
  XKB_KEY_abrevetilde* = 0x1001eb5
  XKB_KEY_Abrevebelowdot* = 0x1001eb6
  XKB_KEY_abrevebelowdot* = 0x1001eb7
  XKB_KEY_Ebelowdot* = 0x1001eb8
  XKB_KEY_ebelowdot* = 0x1001eb9
  XKB_KEY_Ehook* = 0x1001eba
  XKB_KEY_ehook* = 0x1001ebb
  XKB_KEY_Etilde* = 0x1001ebc
  XKB_KEY_etilde* = 0x1001ebd
  XKB_KEY_Ecircumflexacute* = 0x1001ebe
  XKB_KEY_ecircumflexacute* = 0x1001ebf
  XKB_KEY_Ecircumflexgrave* = 0x1001ec0
  XKB_KEY_ecircumflexgrave* = 0x1001ec1
  XKB_KEY_Ecircumflexhook* = 0x1001ec2
  XKB_KEY_ecircumflexhook* = 0x1001ec3
  XKB_KEY_Ecircumflextilde* = 0x1001ec4
  XKB_KEY_ecircumflextilde* = 0x1001ec5
  XKB_KEY_Ecircumflexbelowdot* = 0x1001ec6
  XKB_KEY_ecircumflexbelowdot* = 0x1001ec7
  XKB_KEY_Ihook* = 0x1001ec8
  XKB_KEY_ihook* = 0x1001ec9
  XKB_KEY_Ibelowdot* = 0x1001eca
  XKB_KEY_ibelowdot* = 0x1001ecb
  XKB_KEY_Obelowdot* = 0x1001ecc
  XKB_KEY_obelowdot* = 0x1001ecd
  XKB_KEY_Ohook* = 0x1001ece
  XKB_KEY_ohook* = 0x1001ecf
  XKB_KEY_Ocircumflexacute* = 0x1001ed0
  XKB_KEY_ocircumflexacute* = 0x1001ed1
  XKB_KEY_Ocircumflexgrave* = 0x1001ed2
  XKB_KEY_ocircumflexgrave* = 0x1001ed3
  XKB_KEY_Ocircumflexhook* = 0x1001ed4
  XKB_KEY_ocircumflexhook* = 0x1001ed5
  XKB_KEY_Ocircumflextilde* = 0x1001ed6
  XKB_KEY_ocircumflextilde* = 0x1001ed7
  XKB_KEY_Ocircumflexbelowdot* = 0x1001ed8
  XKB_KEY_ocircumflexbelowdot* = 0x1001ed9
  XKB_KEY_Ohornacute* = 0x1001eda
  XKB_KEY_ohornacute* = 0x1001edb
  XKB_KEY_Ohorngrave* = 0x1001edc
  XKB_KEY_ohorngrave* = 0x1001edd
  XKB_KEY_Ohornhook* = 0x1001ede
  XKB_KEY_ohornhook* = 0x1001edf
  XKB_KEY_Ohorntilde* = 0x1001ee0
  XKB_KEY_ohorntilde* = 0x1001ee1
  XKB_KEY_Ohornbelowdot* = 0x1001ee2
  XKB_KEY_ohornbelowdot* = 0x1001ee3
  XKB_KEY_Ubelowdot* = 0x1001ee4
  XKB_KEY_ubelowdot* = 0x1001ee5
  XKB_KEY_Uhook* = 0x1001ee6
  XKB_KEY_uhook* = 0x1001ee7
  XKB_KEY_Uhornacute* = 0x1001ee8
  XKB_KEY_uhornacute* = 0x1001ee9
  XKB_KEY_Uhorngrave* = 0x1001eea
  XKB_KEY_uhorngrave* = 0x1001eeb
  XKB_KEY_Uhornhook* = 0x1001eec
  XKB_KEY_uhornhook* = 0x1001eed
  XKB_KEY_Uhorntilde* = 0x1001eee
  XKB_KEY_uhorntilde* = 0x1001eef
  XKB_KEY_Uhornbelowdot* = 0x1001ef0
  XKB_KEY_uhornbelowdot* = 0x1001ef1
  XKB_KEY_Ybelowdot* = 0x1001ef4
  XKB_KEY_ybelowdot* = 0x1001ef5
  XKB_KEY_Yhook* = 0x1001ef6
  XKB_KEY_yhook* = 0x1001ef7
  XKB_KEY_Ytilde* = 0x1001ef8
  XKB_KEY_ytilde* = 0x1001ef9
  XKB_KEY_Ohorn* = 0x10001a0
  XKB_KEY_ohorn* = 0x10001a1
  XKB_KEY_Uhorn* = 0x10001af
  XKB_KEY_uhorn* = 0x10001b0
  XKB_KEY_combining_tilde* = 0x1000303
  XKB_KEY_combining_grave* = 0x1000300
  XKB_KEY_combining_acute* = 0x1000301
  XKB_KEY_combining_hook* = 0x1000309
  XKB_KEY_combining_belowdot* = 0x1000323
  XKB_KEY_EcuSign* = 0x10020a0
  XKB_KEY_ColonSign* = 0x10020a1
  XKB_KEY_CruzeiroSign* = 0x10020a2
  XKB_KEY_FFrancSign* = 0x10020a3
  XKB_KEY_LiraSign* = 0x10020a4
  XKB_KEY_MillSign* = 0x10020a5
  XKB_KEY_NairaSign* = 0x10020a6
  XKB_KEY_PesetaSign* = 0x10020a7
  XKB_KEY_RupeeSign* = 0x10020a8
  XKB_KEY_WonSign* = 0x10020a9
  XKB_KEY_NewSheqelSign* = 0x10020aa
  XKB_KEY_DongSign* = 0x10020ab
  XKB_KEY_EuroSign* = 0x20ac

##  one, two and three are defined above.

const
  XKB_KEY_zerosuperior* = 0x1002070
  XKB_KEY_foursuperior* = 0x1002074
  XKB_KEY_fivesuperior* = 0x1002075
  XKB_KEY_sixsuperior* = 0x1002076
  XKB_KEY_sevensuperior* = 0x1002077
  XKB_KEY_eightsuperior* = 0x1002078
  XKB_KEY_ninesuperior* = 0x1002079
  XKB_KEY_zerosubscript* = 0x1002080
  XKB_KEY_onesubscript* = 0x1002081
  XKB_KEY_twosubscript* = 0x1002082
  XKB_KEY_threesubscript* = 0x1002083
  XKB_KEY_foursubscript* = 0x1002084
  XKB_KEY_fivesubscript* = 0x1002085
  XKB_KEY_sixsubscript* = 0x1002086
  XKB_KEY_sevensubscript* = 0x1002087
  XKB_KEY_eightsubscript* = 0x1002088
  XKB_KEY_ninesubscript* = 0x1002089
  XKB_KEY_partdifferential* = 0x1002202
  XKB_KEY_emptyset* = 0x1002205
  XKB_KEY_elementof* = 0x1002208
  XKB_KEY_notelementof* = 0x1002209
  XKB_KEY_containsas* = 0x100220b
  XKB_KEY_squareroot* = 0x100221a
  XKB_KEY_cuberoot* = 0x100221b
  XKB_KEY_fourthroot* = 0x100221c
  XKB_KEY_dintegral* = 0x100222c
  XKB_KEY_tintegral* = 0x100222d
  XKB_KEY_because* = 0x1002235
  XKB_KEY_approxeq* = 0x1002248
  XKB_KEY_notapproxeq* = 0x1002247
  XKB_KEY_notidentical* = 0x1002262
  XKB_KEY_stricteq* = 0x1002263
  XKB_KEY_braille_dot_1* = 0xfff1
  XKB_KEY_braille_dot_2* = 0xfff2
  XKB_KEY_braille_dot_3* = 0xfff3
  XKB_KEY_braille_dot_4* = 0xfff4
  XKB_KEY_braille_dot_5* = 0xfff5
  XKB_KEY_braille_dot_6* = 0xfff6
  XKB_KEY_braille_dot_7* = 0xfff7
  XKB_KEY_braille_dot_8* = 0xfff8
  XKB_KEY_braille_dot_9* = 0xfff9
  XKB_KEY_braille_dot_10* = 0xfffa
  XKB_KEY_braille_blank* = 0x1002800
  XKB_KEY_braille_dots_1* = 0x1002801
  XKB_KEY_braille_dots_2* = 0x1002802
  XKB_KEY_braille_dots_12* = 0x1002803
  XKB_KEY_braille_dots_3* = 0x1002804
  XKB_KEY_braille_dots_13* = 0x1002805
  XKB_KEY_braille_dots_23* = 0x1002806
  XKB_KEY_braille_dots_123* = 0x1002807
  XKB_KEY_braille_dots_4* = 0x1002808
  XKB_KEY_braille_dots_14* = 0x1002809
  XKB_KEY_braille_dots_24* = 0x100280a
  XKB_KEY_braille_dots_124* = 0x100280b
  XKB_KEY_braille_dots_34* = 0x100280c
  XKB_KEY_braille_dots_134* = 0x100280d
  XKB_KEY_braille_dots_234* = 0x100280e
  XKB_KEY_braille_dots_1234* = 0x100280f
  XKB_KEY_braille_dots_5* = 0x1002810
  XKB_KEY_braille_dots_15* = 0x1002811
  XKB_KEY_braille_dots_25* = 0x1002812
  XKB_KEY_braille_dots_125* = 0x1002813
  XKB_KEY_braille_dots_35* = 0x1002814
  XKB_KEY_braille_dots_135* = 0x1002815
  XKB_KEY_braille_dots_235* = 0x1002816
  XKB_KEY_braille_dots_1235* = 0x1002817
  XKB_KEY_braille_dots_45* = 0x1002818
  XKB_KEY_braille_dots_145* = 0x1002819
  XKB_KEY_braille_dots_245* = 0x100281a
  XKB_KEY_braille_dots_1245* = 0x100281b
  XKB_KEY_braille_dots_345* = 0x100281c
  XKB_KEY_braille_dots_1345* = 0x100281d
  XKB_KEY_braille_dots_2345* = 0x100281e
  XKB_KEY_braille_dots_12345* = 0x100281f
  XKB_KEY_braille_dots_6* = 0x1002820
  XKB_KEY_braille_dots_16* = 0x1002821
  XKB_KEY_braille_dots_26* = 0x1002822
  XKB_KEY_braille_dots_126* = 0x1002823
  XKB_KEY_braille_dots_36* = 0x1002824
  XKB_KEY_braille_dots_136* = 0x1002825
  XKB_KEY_braille_dots_236* = 0x1002826
  XKB_KEY_braille_dots_1236* = 0x1002827
  XKB_KEY_braille_dots_46* = 0x1002828
  XKB_KEY_braille_dots_146* = 0x1002829
  XKB_KEY_braille_dots_246* = 0x100282a
  XKB_KEY_braille_dots_1246* = 0x100282b
  XKB_KEY_braille_dots_346* = 0x100282c
  XKB_KEY_braille_dots_1346* = 0x100282d
  XKB_KEY_braille_dots_2346* = 0x100282e
  XKB_KEY_braille_dots_12346* = 0x100282f
  XKB_KEY_braille_dots_56* = 0x1002830
  XKB_KEY_braille_dots_156* = 0x1002831
  XKB_KEY_braille_dots_256* = 0x1002832
  XKB_KEY_braille_dots_1256* = 0x1002833
  XKB_KEY_braille_dots_356* = 0x1002834
  XKB_KEY_braille_dots_1356* = 0x1002835
  XKB_KEY_braille_dots_2356* = 0x1002836
  XKB_KEY_braille_dots_12356* = 0x1002837
  XKB_KEY_braille_dots_456* = 0x1002838
  XKB_KEY_braille_dots_1456* = 0x1002839
  XKB_KEY_braille_dots_2456* = 0x100283a
  XKB_KEY_braille_dots_12456* = 0x100283b
  XKB_KEY_braille_dots_3456* = 0x100283c
  XKB_KEY_braille_dots_13456* = 0x100283d
  XKB_KEY_braille_dots_23456* = 0x100283e
  XKB_KEY_braille_dots_123456* = 0x100283f
  XKB_KEY_braille_dots_7* = 0x1002840
  XKB_KEY_braille_dots_17* = 0x1002841
  XKB_KEY_braille_dots_27* = 0x1002842
  XKB_KEY_braille_dots_127* = 0x1002843
  XKB_KEY_braille_dots_37* = 0x1002844
  XKB_KEY_braille_dots_137* = 0x1002845
  XKB_KEY_braille_dots_237* = 0x1002846
  XKB_KEY_braille_dots_1237* = 0x1002847
  XKB_KEY_braille_dots_47* = 0x1002848
  XKB_KEY_braille_dots_147* = 0x1002849
  XKB_KEY_braille_dots_247* = 0x100284a
  XKB_KEY_braille_dots_1247* = 0x100284b
  XKB_KEY_braille_dots_347* = 0x100284c
  XKB_KEY_braille_dots_1347* = 0x100284d
  XKB_KEY_braille_dots_2347* = 0x100284e
  XKB_KEY_braille_dots_12347* = 0x100284f
  XKB_KEY_braille_dots_57* = 0x1002850
  XKB_KEY_braille_dots_157* = 0x1002851
  XKB_KEY_braille_dots_257* = 0x1002852
  XKB_KEY_braille_dots_1257* = 0x1002853
  XKB_KEY_braille_dots_357* = 0x1002854
  XKB_KEY_braille_dots_1357* = 0x1002855
  XKB_KEY_braille_dots_2357* = 0x1002856
  XKB_KEY_braille_dots_12357* = 0x1002857
  XKB_KEY_braille_dots_457* = 0x1002858
  XKB_KEY_braille_dots_1457* = 0x1002859
  XKB_KEY_braille_dots_2457* = 0x100285a
  XKB_KEY_braille_dots_12457* = 0x100285b
  XKB_KEY_braille_dots_3457* = 0x100285c
  XKB_KEY_braille_dots_13457* = 0x100285d
  XKB_KEY_braille_dots_23457* = 0x100285e
  XKB_KEY_braille_dots_123457* = 0x100285f
  XKB_KEY_braille_dots_67* = 0x1002860
  XKB_KEY_braille_dots_167* = 0x1002861
  XKB_KEY_braille_dots_267* = 0x1002862
  XKB_KEY_braille_dots_1267* = 0x1002863
  XKB_KEY_braille_dots_367* = 0x1002864
  XKB_KEY_braille_dots_1367* = 0x1002865
  XKB_KEY_braille_dots_2367* = 0x1002866
  XKB_KEY_braille_dots_12367* = 0x1002867
  XKB_KEY_braille_dots_467* = 0x1002868
  XKB_KEY_braille_dots_1467* = 0x1002869
  XKB_KEY_braille_dots_2467* = 0x100286a
  XKB_KEY_braille_dots_12467* = 0x100286b
  XKB_KEY_braille_dots_3467* = 0x100286c
  XKB_KEY_braille_dots_13467* = 0x100286d
  XKB_KEY_braille_dots_23467* = 0x100286e
  XKB_KEY_braille_dots_123467* = 0x100286f
  XKB_KEY_braille_dots_567* = 0x1002870
  XKB_KEY_braille_dots_1567* = 0x1002871
  XKB_KEY_braille_dots_2567* = 0x1002872
  XKB_KEY_braille_dots_12567* = 0x1002873
  XKB_KEY_braille_dots_3567* = 0x1002874
  XKB_KEY_braille_dots_13567* = 0x1002875
  XKB_KEY_braille_dots_23567* = 0x1002876
  XKB_KEY_braille_dots_123567* = 0x1002877
  XKB_KEY_braille_dots_4567* = 0x1002878
  XKB_KEY_braille_dots_14567* = 0x1002879
  XKB_KEY_braille_dots_24567* = 0x100287a
  XKB_KEY_braille_dots_124567* = 0x100287b
  XKB_KEY_braille_dots_34567* = 0x100287c
  XKB_KEY_braille_dots_134567* = 0x100287d
  XKB_KEY_braille_dots_234567* = 0x100287e
  XKB_KEY_braille_dots_1234567* = 0x100287f
  XKB_KEY_braille_dots_8* = 0x1002880
  XKB_KEY_braille_dots_18* = 0x1002881
  XKB_KEY_braille_dots_28* = 0x1002882
  XKB_KEY_braille_dots_128* = 0x1002883
  XKB_KEY_braille_dots_38* = 0x1002884
  XKB_KEY_braille_dots_138* = 0x1002885
  XKB_KEY_braille_dots_238* = 0x1002886
  XKB_KEY_braille_dots_1238* = 0x1002887
  XKB_KEY_braille_dots_48* = 0x1002888
  XKB_KEY_braille_dots_148* = 0x1002889
  XKB_KEY_braille_dots_248* = 0x100288a
  XKB_KEY_braille_dots_1248* = 0x100288b
  XKB_KEY_braille_dots_348* = 0x100288c
  XKB_KEY_braille_dots_1348* = 0x100288d
  XKB_KEY_braille_dots_2348* = 0x100288e
  XKB_KEY_braille_dots_12348* = 0x100288f
  XKB_KEY_braille_dots_58* = 0x1002890
  XKB_KEY_braille_dots_158* = 0x1002891
  XKB_KEY_braille_dots_258* = 0x1002892
  XKB_KEY_braille_dots_1258* = 0x1002893
  XKB_KEY_braille_dots_358* = 0x1002894
  XKB_KEY_braille_dots_1358* = 0x1002895
  XKB_KEY_braille_dots_2358* = 0x1002896
  XKB_KEY_braille_dots_12358* = 0x1002897
  XKB_KEY_braille_dots_458* = 0x1002898
  XKB_KEY_braille_dots_1458* = 0x1002899
  XKB_KEY_braille_dots_2458* = 0x100289a
  XKB_KEY_braille_dots_12458* = 0x100289b
  XKB_KEY_braille_dots_3458* = 0x100289c
  XKB_KEY_braille_dots_13458* = 0x100289d
  XKB_KEY_braille_dots_23458* = 0x100289e
  XKB_KEY_braille_dots_123458* = 0x100289f
  XKB_KEY_braille_dots_68* = 0x10028a0
  XKB_KEY_braille_dots_168* = 0x10028a1
  XKB_KEY_braille_dots_268* = 0x10028a2
  XKB_KEY_braille_dots_1268* = 0x10028a3
  XKB_KEY_braille_dots_368* = 0x10028a4
  XKB_KEY_braille_dots_1368* = 0x10028a5
  XKB_KEY_braille_dots_2368* = 0x10028a6
  XKB_KEY_braille_dots_12368* = 0x10028a7
  XKB_KEY_braille_dots_468* = 0x10028a8
  XKB_KEY_braille_dots_1468* = 0x10028a9
  XKB_KEY_braille_dots_2468* = 0x10028aa
  XKB_KEY_braille_dots_12468* = 0x10028ab
  XKB_KEY_braille_dots_3468* = 0x10028ac
  XKB_KEY_braille_dots_13468* = 0x10028ad
  XKB_KEY_braille_dots_23468* = 0x10028ae
  XKB_KEY_braille_dots_123468* = 0x10028af
  XKB_KEY_braille_dots_568* = 0x10028b0
  XKB_KEY_braille_dots_1568* = 0x10028b1
  XKB_KEY_braille_dots_2568* = 0x10028b2
  XKB_KEY_braille_dots_12568* = 0x10028b3
  XKB_KEY_braille_dots_3568* = 0x10028b4
  XKB_KEY_braille_dots_13568* = 0x10028b5
  XKB_KEY_braille_dots_23568* = 0x10028b6
  XKB_KEY_braille_dots_123568* = 0x10028b7
  XKB_KEY_braille_dots_4568* = 0x10028b8
  XKB_KEY_braille_dots_14568* = 0x10028b9
  XKB_KEY_braille_dots_24568* = 0x10028ba
  XKB_KEY_braille_dots_124568* = 0x10028bb
  XKB_KEY_braille_dots_34568* = 0x10028bc
  XKB_KEY_braille_dots_134568* = 0x10028bd
  XKB_KEY_braille_dots_234568* = 0x10028be
  XKB_KEY_braille_dots_1234568* = 0x10028bf
  XKB_KEY_braille_dots_78* = 0x10028c0
  XKB_KEY_braille_dots_178* = 0x10028c1
  XKB_KEY_braille_dots_278* = 0x10028c2
  XKB_KEY_braille_dots_1278* = 0x10028c3
  XKB_KEY_braille_dots_378* = 0x10028c4
  XKB_KEY_braille_dots_1378* = 0x10028c5
  XKB_KEY_braille_dots_2378* = 0x10028c6
  XKB_KEY_braille_dots_12378* = 0x10028c7
  XKB_KEY_braille_dots_478* = 0x10028c8
  XKB_KEY_braille_dots_1478* = 0x10028c9
  XKB_KEY_braille_dots_2478* = 0x10028ca
  XKB_KEY_braille_dots_12478* = 0x10028cb
  XKB_KEY_braille_dots_3478* = 0x10028cc
  XKB_KEY_braille_dots_13478* = 0x10028cd
  XKB_KEY_braille_dots_23478* = 0x10028ce
  XKB_KEY_braille_dots_123478* = 0x10028cf
  XKB_KEY_braille_dots_578* = 0x10028d0
  XKB_KEY_braille_dots_1578* = 0x10028d1
  XKB_KEY_braille_dots_2578* = 0x10028d2
  XKB_KEY_braille_dots_12578* = 0x10028d3
  XKB_KEY_braille_dots_3578* = 0x10028d4
  XKB_KEY_braille_dots_13578* = 0x10028d5
  XKB_KEY_braille_dots_23578* = 0x10028d6
  XKB_KEY_braille_dots_123578* = 0x10028d7
  XKB_KEY_braille_dots_4578* = 0x10028d8
  XKB_KEY_braille_dots_14578* = 0x10028d9
  XKB_KEY_braille_dots_24578* = 0x10028da
  XKB_KEY_braille_dots_124578* = 0x10028db
  XKB_KEY_braille_dots_34578* = 0x10028dc
  XKB_KEY_braille_dots_134578* = 0x10028dd
  XKB_KEY_braille_dots_234578* = 0x10028de
  XKB_KEY_braille_dots_1234578* = 0x10028df
  XKB_KEY_braille_dots_678* = 0x10028e0
  XKB_KEY_braille_dots_1678* = 0x10028e1
  XKB_KEY_braille_dots_2678* = 0x10028e2
  XKB_KEY_braille_dots_12678* = 0x10028e3
  XKB_KEY_braille_dots_3678* = 0x10028e4
  XKB_KEY_braille_dots_13678* = 0x10028e5
  XKB_KEY_braille_dots_23678* = 0x10028e6
  XKB_KEY_braille_dots_123678* = 0x10028e7
  XKB_KEY_braille_dots_4678* = 0x10028e8
  XKB_KEY_braille_dots_14678* = 0x10028e9
  XKB_KEY_braille_dots_24678* = 0x10028ea
  XKB_KEY_braille_dots_124678* = 0x10028eb
  XKB_KEY_braille_dots_34678* = 0x10028ec
  XKB_KEY_braille_dots_134678* = 0x10028ed
  XKB_KEY_braille_dots_234678* = 0x10028ee
  XKB_KEY_braille_dots_1234678* = 0x10028ef
  XKB_KEY_braille_dots_5678* = 0x10028f0
  XKB_KEY_braille_dots_15678* = 0x10028f1
  XKB_KEY_braille_dots_25678* = 0x10028f2
  XKB_KEY_braille_dots_125678* = 0x10028f3
  XKB_KEY_braille_dots_35678* = 0x10028f4
  XKB_KEY_braille_dots_135678* = 0x10028f5
  XKB_KEY_braille_dots_235678* = 0x10028f6
  XKB_KEY_braille_dots_1235678* = 0x10028f7
  XKB_KEY_braille_dots_45678* = 0x10028f8
  XKB_KEY_braille_dots_145678* = 0x10028f9
  XKB_KEY_braille_dots_245678* = 0x10028fa
  XKB_KEY_braille_dots_1245678* = 0x10028fb
  XKB_KEY_braille_dots_345678* = 0x10028fc
  XKB_KEY_braille_dots_1345678* = 0x10028fd
  XKB_KEY_braille_dots_2345678* = 0x10028fe
  XKB_KEY_braille_dots_12345678* = 0x10028ff

##
##  Sinhala (http://unicode.org/charts/PDF/U0D80.pdf)
##  http://www.nongnu.org/sinhala/doc/transliteration/sinhala-transliteration_6.html
##

const
  XKB_KEY_Sinh_ng* = 0x1000d82
  XKB_KEY_Sinh_h2* = 0x1000d83
  XKB_KEY_Sinh_a* = 0x1000d85
  XKB_KEY_Sinh_aa* = 0x1000d86
  XKB_KEY_Sinh_ae* = 0x1000d87
  XKB_KEY_Sinh_aee* = 0x1000d88
  XKB_KEY_Sinh_i* = 0x1000d89
  XKB_KEY_Sinh_ii* = 0x1000d8a
  XKB_KEY_Sinh_u* = 0x1000d8b
  XKB_KEY_Sinh_uu* = 0x1000d8c
  XKB_KEY_Sinh_ri* = 0x1000d8d
  XKB_KEY_Sinh_rii* = 0x1000d8e
  XKB_KEY_Sinh_lu* = 0x1000d8f
  XKB_KEY_Sinh_luu* = 0x1000d90
  XKB_KEY_Sinh_e* = 0x1000d91
  XKB_KEY_Sinh_ee* = 0x1000d92
  XKB_KEY_Sinh_ai* = 0x1000d93
  XKB_KEY_Sinh_o* = 0x1000d94
  XKB_KEY_Sinh_oo* = 0x1000d95
  XKB_KEY_Sinh_au* = 0x1000d96
  XKB_KEY_Sinh_ka* = 0x1000d9a
  XKB_KEY_Sinh_kha* = 0x1000d9b
  XKB_KEY_Sinh_ga* = 0x1000d9c
  XKB_KEY_Sinh_gha* = 0x1000d9d
  XKB_KEY_Sinh_ng2* = 0x1000d9e
  XKB_KEY_Sinh_nga* = 0x1000d9f
  XKB_KEY_Sinh_ca* = 0x1000da0
  XKB_KEY_Sinh_cha* = 0x1000da1
  XKB_KEY_Sinh_ja* = 0x1000da2
  XKB_KEY_Sinh_jha* = 0x1000da3
  XKB_KEY_Sinh_nya* = 0x1000da4
  XKB_KEY_Sinh_jnya* = 0x1000da5
  XKB_KEY_Sinh_nja* = 0x1000da6
  XKB_KEY_Sinh_tta* = 0x1000da7
  XKB_KEY_Sinh_ttha* = 0x1000da8
  XKB_KEY_Sinh_dda* = 0x1000da9
  XKB_KEY_Sinh_ddha* = 0x1000daa
  XKB_KEY_Sinh_nna* = 0x1000dab
  XKB_KEY_Sinh_ndda* = 0x1000dac
  XKB_KEY_Sinh_tha* = 0x1000dad
  XKB_KEY_Sinh_thha* = 0x1000dae
  XKB_KEY_Sinh_dha* = 0x1000daf
  XKB_KEY_Sinh_dhha* = 0x1000db0
  XKB_KEY_Sinh_na* = 0x1000db1
  XKB_KEY_Sinh_ndha* = 0x1000db3
  XKB_KEY_Sinh_pa* = 0x1000db4
  XKB_KEY_Sinh_pha* = 0x1000db5
  XKB_KEY_Sinh_ba* = 0x1000db6
  XKB_KEY_Sinh_bha* = 0x1000db7
  XKB_KEY_Sinh_ma* = 0x1000db8
  XKB_KEY_Sinh_mba* = 0x1000db9
  XKB_KEY_Sinh_ya* = 0x1000dba
  XKB_KEY_Sinh_ra* = 0x1000dbb
  XKB_KEY_Sinh_la* = 0x1000dbd
  XKB_KEY_Sinh_va* = 0x1000dc0
  XKB_KEY_Sinh_sha* = 0x1000dc1
  XKB_KEY_Sinh_ssha* = 0x1000dc2
  XKB_KEY_Sinh_sa* = 0x1000dc3
  XKB_KEY_Sinh_ha* = 0x1000dc4
  XKB_KEY_Sinh_lla* = 0x1000dc5
  XKB_KEY_Sinh_fa* = 0x1000dc6
  XKB_KEY_Sinh_al* = 0x1000dca
  XKB_KEY_Sinh_aa2* = 0x1000dcf
  XKB_KEY_Sinh_ae2* = 0x1000dd0
  XKB_KEY_Sinh_aee2* = 0x1000dd1
  XKB_KEY_Sinh_i2* = 0x1000dd2
  XKB_KEY_Sinh_ii2* = 0x1000dd3
  XKB_KEY_Sinh_u2* = 0x1000dd4
  XKB_KEY_Sinh_uu2* = 0x1000dd6
  XKB_KEY_Sinh_ru2* = 0x1000dd8
  XKB_KEY_Sinh_e2* = 0x1000dd9
  XKB_KEY_Sinh_ee2* = 0x1000dda
  XKB_KEY_Sinh_ai2* = 0x1000ddb
  XKB_KEY_Sinh_o2* = 0x1000ddc
  XKB_KEY_Sinh_oo2* = 0x1000ddd
  XKB_KEY_Sinh_au2* = 0x1000dde
  XKB_KEY_Sinh_lu2* = 0x1000ddf
  XKB_KEY_Sinh_ruu2* = 0x1000df2
  XKB_KEY_Sinh_luu2* = 0x1000df3
  XKB_KEY_Sinh_kunddaliya* = 0x1000df4

##
##  XFree86 vendor specific keysyms.
##
##  The XFree86 keysym range is 0x10080001 - 0x1008ffff.
##
##  The XF86 set of keysyms is a catch-all set of defines for keysyms found
##  on various multimedia keyboards. Originally specific to XFree86 they have
##  been been adopted over time and are considered a "standard" part of X
##  keysym definitions.
##  XFree86 never properly commented these keysyms, so we have done our
##  best to explain the semantic meaning of these keys.
##
##  XFree86 has removed their mail archives of the period, that might have
##  shed more light on some of these definitions. Until/unless we resurrect
##  these archives, these are from memory and usage.
##
##
##  ModeLock
##
##  This one is old, and not really used any more since XKB offers this
##  functionality.
##

const
  XKB_KEY_XF86ModeLock* = 0x1008ff01

##  Backlight controls.

const
  XKB_KEY_XF86MonBrightnessUp* = 0x1008ff02
  XKB_KEY_XF86MonBrightnessDown* = 0x1008ff03
  XKB_KEY_XF86KbdLightOnOff* = 0x1008ff04
  XKB_KEY_XF86KbdBrightnessUp* = 0x1008ff05
  XKB_KEY_XF86KbdBrightnessDown* = 0x1008ff06
  XKB_KEY_XF86MonBrightnessCycle* = 0x1008ff07

##
##  Keys found on some "Internet" keyboards.
##

const
  XKB_KEY_XF86Standby* = 0x1008ff10
  XKB_KEY_XF86AudioLowerVolume* = 0x1008ff11
  XKB_KEY_XF86AudioMute* = 0x1008ff12
  XKB_KEY_XF86AudioRaiseVolume* = 0x1008ff13
  XKB_KEY_XF86AudioPlay* = 0x1008ff14
  XKB_KEY_XF86AudioStop* = 0x1008ff15
  XKB_KEY_XF86AudioPrev* = 0x1008ff16
  XKB_KEY_XF86AudioNext* = 0x1008ff17
  XKB_KEY_XF86HomePage* = 0x1008ff18
  XKB_KEY_XF86Mail* = 0x1008ff19
  XKB_KEY_XF86Start* = 0x1008ff1a
  XKB_KEY_XF86Search* = 0x1008ff1b
  XKB_KEY_XF86AudioRecord* = 0x1008ff1c

##  These are sometimes found on PDA's (e.g. Palm, PocketPC or elsewhere)

const
  XKB_KEY_XF86Calculator* = 0x1008ff1d
  XKB_KEY_XF86Memo* = 0x1008ff1e
  XKB_KEY_XF86ToDoList* = 0x1008ff1f
  XKB_KEY_XF86Calendar* = 0x1008ff20
  XKB_KEY_XF86PowerDown* = 0x1008ff21
  XKB_KEY_XF86ContrastAdjust* = 0x1008ff22
  XKB_KEY_XF86RockerUp* = 0x1008ff23
  XKB_KEY_XF86RockerDown* = 0x1008ff24
  XKB_KEY_XF86RockerEnter* = 0x1008ff25

##  Some more "Internet" keyboard symbols

const
  XKB_KEY_XF86Back* = 0x1008ff26
  XKB_KEY_XF86Forward* = 0x1008ff27
  XKB_KEY_XF86Stop* = 0x1008ff28
  XKB_KEY_XF86Refresh* = 0x1008ff29
  XKB_KEY_XF86PowerOff* = 0x1008ff2a
  XKB_KEY_XF86WakeUp* = 0x1008ff2b
  XKB_KEY_XF86Eject* = 0x1008ff2c
  XKB_KEY_XF86ScreenSaver* = 0x1008ff2d
  XKB_KEY_XF86WWW* = 0x1008ff2e
  XKB_KEY_XF86Sleep* = 0x1008ff2f
  XKB_KEY_XF86Favorites* = 0x1008ff30
  XKB_KEY_XF86AudioPause* = 0x1008ff31
  XKB_KEY_XF86AudioMedia* = 0x1008ff32
  XKB_KEY_XF86MyComputer* = 0x1008ff33
  XKB_KEY_XF86VendorHome* = 0x1008ff34
  XKB_KEY_XF86LightBulb* = 0x1008ff35
  XKB_KEY_XF86Shop* = 0x1008ff36
  XKB_KEY_XF86History* = 0x1008ff37
  XKB_KEY_XF86OpenURL* = 0x1008ff38
  XKB_KEY_XF86AddFavorite* = 0x1008ff39
  XKB_KEY_XF86HotLinks* = 0x1008ff3a
  XKB_KEY_XF86BrightnessAdjust* = 0x1008ff3b
  XKB_KEY_XF86Finance* = 0x1008ff3c
  XKB_KEY_XF86Community* = 0x1008ff3d
  XKB_KEY_XF86AudioRewind* = 0x1008ff3e
  XKB_KEY_XF86BackForward* = 0x1008ff3f
  XKB_KEY_XF86Launch0* = 0x1008ff40
  XKB_KEY_XF86Launch1* = 0x1008ff41
  XKB_KEY_XF86Launch2* = 0x1008ff42
  XKB_KEY_XF86Launch3* = 0x1008ff43
  XKB_KEY_XF86Launch4* = 0x1008ff44
  XKB_KEY_XF86Launch5* = 0x1008ff45
  XKB_KEY_XF86Launch6* = 0x1008ff46
  XKB_KEY_XF86Launch7* = 0x1008ff47
  XKB_KEY_XF86Launch8* = 0x1008ff48
  XKB_KEY_XF86Launch9* = 0x1008ff49
  XKB_KEY_XF86LaunchA* = 0x1008ff4a
  XKB_KEY_XF86LaunchB* = 0x1008ff4b
  XKB_KEY_XF86LaunchC* = 0x1008ff4c
  XKB_KEY_XF86LaunchD* = 0x1008ff4d
  XKB_KEY_XF86LaunchE* = 0x1008ff4e
  XKB_KEY_XF86LaunchF* = 0x1008ff4f
  XKB_KEY_XF86ApplicationLeft* = 0x1008ff50
  XKB_KEY_XF86ApplicationRight* = 0x1008ff51
  XKB_KEY_XF86Book* = 0x1008ff52
  XKB_KEY_XF86CD* = 0x1008ff53
  XKB_KEY_XF86Calculater* = 0x1008ff54
  XKB_KEY_XF86Clear* = 0x1008ff55
  XKB_KEY_XF86Close* = 0x1008ff56
  XKB_KEY_XF86Copy* = 0x1008ff57
  XKB_KEY_XF86Cut* = 0x1008ff58
  XKB_KEY_XF86Display* = 0x1008ff59
  XKB_KEY_XF86DOS* = 0x1008ff5a
  XKB_KEY_XF86Documents* = 0x1008ff5b
  XKB_KEY_XF86Excel* = 0x1008ff5c
  XKB_KEY_XF86Explorer* = 0x1008ff5d
  XKB_KEY_XF86Game* = 0x1008ff5e
  XKB_KEY_XF86Go* = 0x1008ff5f
  XKB_KEY_XF86iTouch* = 0x1008ff60
  XKB_KEY_XF86LogOff* = 0x1008ff61
  XKB_KEY_XF86Market* = 0x1008ff62
  XKB_KEY_XF86Meeting* = 0x1008ff63
  XKB_KEY_XF86MenuKB* = 0x1008ff65
  XKB_KEY_XF86MenuPB* = 0x1008ff66
  XKB_KEY_XF86MySites* = 0x1008ff67
  XKB_KEY_XF86New* = 0x1008ff68
  XKB_KEY_XF86News* = 0x1008ff69
  XKB_KEY_XF86OfficeHome* = 0x1008ff6a
  XKB_KEY_XF86Open* = 0x1008ff6b
  XKB_KEY_XF86Option* = 0x1008ff6c
  XKB_KEY_XF86Paste* = 0x1008ff6d
  XKB_KEY_XF86Phone* = 0x1008ff6e
  XKB_KEY_XF86Q* = 0x1008ff70
  XKB_KEY_XF86Reply* = 0x1008ff72
  XKB_KEY_XF86Reload* = 0x1008ff73
  XKB_KEY_XF86RotateWindows* = 0x1008ff74
  XKB_KEY_XF86RotationPB* = 0x1008ff75
  XKB_KEY_XF86RotationKB* = 0x1008ff76
  XKB_KEY_XF86Save* = 0x1008ff77
  XKB_KEY_XF86ScrollUp* = 0x1008ff78
  XKB_KEY_XF86ScrollDown* = 0x1008ff79
  XKB_KEY_XF86ScrollClick* = 0x1008ff7a
  XKB_KEY_XF86Send* = 0x1008ff7b
  XKB_KEY_XF86Spell* = 0x1008ff7c
  XKB_KEY_XF86SplitScreen* = 0x1008ff7d
  XKB_KEY_XF86Support* = 0x1008ff7e
  XKB_KEY_XF86TaskPane* = 0x1008ff7f
  XKB_KEY_XF86Terminal* = 0x1008ff80
  XKB_KEY_XF86Tools* = 0x1008ff81
  XKB_KEY_XF86Travel* = 0x1008ff82
  XKB_KEY_XF86UserPB* = 0x1008ff84
  XKB_KEY_XF86User1KB* = 0x1008ff85
  XKB_KEY_XF86User2KB* = 0x1008ff86
  XKB_KEY_XF86Video* = 0x1008ff87
  XKB_KEY_XF86WheelButton* = 0x1008ff88
  XKB_KEY_XF86Word* = 0x1008ff89
  XKB_KEY_XF86Xfer* = 0x1008ff8a
  XKB_KEY_XF86ZoomIn* = 0x1008ff8b
  XKB_KEY_XF86ZoomOut* = 0x1008ff8c
  XKB_KEY_XF86Away* = 0x1008ff8d
  XKB_KEY_XF86Messenger* = 0x1008ff8e
  XKB_KEY_XF86WebCam* = 0x1008ff8f
  XKB_KEY_XF86MailForward* = 0x1008ff90
  XKB_KEY_XF86Pictures* = 0x1008ff91
  XKB_KEY_XF86Music* = 0x1008ff92
  XKB_KEY_XF86Battery* = 0x1008ff93
  XKB_KEY_XF86Bluetooth* = 0x1008ff94
  XKB_KEY_XF86WLAN* = 0x1008ff95
  XKB_KEY_XF86UWB* = 0x1008ff96
  XKB_KEY_XF86AudioForward* = 0x1008ff97
  XKB_KEY_XF86AudioRepeat* = 0x1008ff98
  XKB_KEY_XF86AudioRandomPlay* = 0x1008ff99
  XKB_KEY_XF86Subtitle* = 0x1008ff9a
  XKB_KEY_XF86AudioCycleTrack* = 0x1008ff9b
  XKB_KEY_XF86CycleAngle* = 0x1008ff9c
  XKB_KEY_XF86FrameBack* = 0x1008ff9d
  XKB_KEY_XF86FrameForward* = 0x1008ff9e
  XKB_KEY_XF86Time* = 0x1008ff9f
  XKB_KEY_XF86Select* = 0x1008ffa0
  XKB_KEY_XF86View* = 0x1008ffa1
  XKB_KEY_XF86TopMenu* = 0x1008ffa2
  XKB_KEY_XF86Red* = 0x1008ffa3
  XKB_KEY_XF86Green* = 0x1008ffa4
  XKB_KEY_XF86Yellow* = 0x1008ffa5
  XKB_KEY_XF86Blue* = 0x1008ffa6
  XKB_KEY_XF86Suspend* = 0x1008ffa7
  XKB_KEY_XF86Hibernate* = 0x1008ffa8
  XKB_KEY_XF86TouchpadToggle* = 0x1008ffa9
  XKB_KEY_XF86TouchpadOn* = 0x1008ffb0
  XKB_KEY_XF86TouchpadOff* = 0x1008ffb1
  XKB_KEY_XF86AudioMicMute* = 0x1008ffb2
  XKB_KEY_XF86Keyboard* = 0x1008ffb3
  XKB_KEY_XF86WWAN* = 0x1008ffb4
  XKB_KEY_XF86RFKill* = 0x1008ffb5
  XKB_KEY_XF86AudioPreset* = 0x1008ffb6
  XKB_KEY_XF86RotationLockToggle* = 0x1008ffb7
  XKB_KEY_XF86FullScreen* = 0x1008ffb8

##  Keys for special action keys (hot keys)
##  Virtual terminals on some operating systems

const
  XKB_KEY_XF86Switch_VT_1* = 0x1008fe01
  XKB_KEY_XF86Switch_VT_2* = 0x1008fe02
  XKB_KEY_XF86Switch_VT_3* = 0x1008fe03
  XKB_KEY_XF86Switch_VT_4* = 0x1008fe04
  XKB_KEY_XF86Switch_VT_5* = 0x1008fe05
  XKB_KEY_XF86Switch_VT_6* = 0x1008fe06
  XKB_KEY_XF86Switch_VT_7* = 0x1008fe07
  XKB_KEY_XF86Switch_VT_8* = 0x1008fe08
  XKB_KEY_XF86Switch_VT_9* = 0x1008fe09
  XKB_KEY_XF86Switch_VT_10* = 0x1008fe0a
  XKB_KEY_XF86Switch_VT_11* = 0x1008fe0b
  XKB_KEY_XF86Switch_VT_12* = 0x1008fe0c
  XKB_KEY_XF86Ungrab* = 0x1008fe20
  XKB_KEY_XF86ClearGrab* = 0x1008fe21
  XKB_KEY_XF86Next_VMode* = 0x1008fe22
  XKB_KEY_XF86Prev_VMode* = 0x1008fe23
  XKB_KEY_XF86LogWindowTree* = 0x1008fe24
  XKB_KEY_XF86LogGrabInfo* = 0x1008fe25

##
##  Reserved range for evdev symbols: 0x10081000-0x10081FFF
##
##  Key syms within this range must match the Linux kernel
##  input-event-codes.h file in the format:
##      XKB_KEY_XF86CamelCaseKernelName	_EVDEVK(kernel value)
##  For example, the kernel
##    #define KEY_MACRO_RECORD_START	0x2b0
##  effectively ends up as:
##    #define XKB_KEY_XF86MacroRecordStart	0x100812b0
##
##  For historical reasons, some keysyms within the reserved range will be
##  missing, most notably all "normal" keys that are mapped through default
##  XKB layouts (e.g. KEY_Q).
##
##  CamelCasing is done with a human control as last authority, e.g. see VOD
##  instead of Vod for the Video on Demand key.
##
##  The format for #defines is strict:
##
##  #define XKB_KEY_XF86FOO<tab...>_EVDEVK(0xABC)<tab><tab> |* kver KEY_FOO *|
##
##  Where
##  - alignment by tabs
##  - the _EVDEVK macro must be used
##  - the hex code must be in uppercase hex
##  - the kernel version (kver) is in the form v5.10
##  - kver and key name are within a slash-star comment (a pipe is used in
##    this example for technical reasons)
##  These #defines are parsed by scripts. Do not stray from the given format.
##
##  Where the evdev keycode is mapped to a different symbol, please add a
##  comment line starting with Use: but otherwise the same format, e.g.
##   Use: XKB_KEY_XF86RotationLockToggle	_EVDEVK(0x231)		   v4.16 KEY_ROTATE_LOCK_TOGGLE
##
##
##  Use: XKB_KEY_XF86Eject                    _EVDEVK(0x0a2)             KEY_EJECTCLOSECD
##  Use: XKB_KEY_XF86New                      _EVDEVK(0x0b5)     v2.6.14 KEY_NEW
##  Use: XKB_KEY_Redo                         _EVDEVK(0x0b6)     v2.6.14 KEY_REDO
##  KEY_DASHBOARD has been mapped to LaunchB in xkeyboard-config since 2011
##  Use: XKB_KEY_XF86LaunchB                  _EVDEVK(0x0cc)     v2.6.28 KEY_DASHBOARD
##  Use: XKB_KEY_XF86Display                  _EVDEVK(0x0e3)     v2.6.12 KEY_SWITCHVIDEOMODE
##  Use: XKB_KEY_XF86KbdLightOnOff            _EVDEVK(0x0e4)     v2.6.12 KEY_KBDILLUMTOGGLE
##  Use: XKB_KEY_XF86KbdBrightnessDown        _EVDEVK(0x0e5)     v2.6.12 KEY_KBDILLUMDOWN
##  Use: XKB_KEY_XF86KbdBrightnessUp          _EVDEVK(0x0e6)     v2.6.12 KEY_KBDILLUMUP
##  Use: XKB_KEY_XF86Send                     _EVDEVK(0x0e7)     v2.6.14 KEY_SEND
##  Use: XKB_KEY_XF86Reply                    _EVDEVK(0x0e8)     v2.6.14 KEY_REPLY
##  Use: XKB_KEY_XF86MailForward              _EVDEVK(0x0e9)     v2.6.14 KEY_FORWARDMAIL
##  Use: XKB_KEY_XF86Save                     _EVDEVK(0x0ea)     v2.6.14 KEY_SAVE
##  Use: XKB_KEY_XF86Documents                _EVDEVK(0x0eb)     v2.6.14 KEY_DOCUMENTS
##  Use: XKB_KEY_XF86Battery                  _EVDEVK(0x0ec)     v2.6.17 KEY_BATTERY
##  Use: XKB_KEY_XF86Bluetooth                _EVDEVK(0x0ed)     v2.6.19 KEY_BLUETOOTH
##  Use: XKB_KEY_XF86WLAN                     _EVDEVK(0x0ee)     v2.6.19 KEY_WLAN
##  Use: XKB_KEY_XF86UWB                      _EVDEVK(0x0ef)     v2.6.24 KEY_UWB
##  Use: XKB_KEY_XF86Next_VMode               _EVDEVK(0x0f1)     v2.6.23 KEY_VIDEO_NEXT
##  Use: XKB_KEY_XF86Prev_VMode               _EVDEVK(0x0f2)     v2.6.23 KEY_VIDEO_PREV
##  Use: XKB_KEY_XF86MonBrightnessCycle       _EVDEVK(0x0f3)     v2.6.23 KEY_BRIGHTNESS_CYCLE

const
  XKB_KEY_XF86BrightnessAuto* = 0x100810f4
  XKB_KEY_XF86DisplayOff* = 0x100810f5

##  Use: XKB_KEY_XF86WWAN                     _EVDEVK(0x0f6)     v3.13   KEY_WWAN
##  Use: XKB_KEY_XF86RFKill                   _EVDEVK(0x0f7)     v2.6.33 KEY_RFKILL
##  Use: XKB_KEY_XF86AudioMicMute             _EVDEVK(0x0f8)     v3.1    KEY_MICMUTE

const
  XKB_KEY_XF86Info* = 0x10081166

##  Use: XKB_KEY_XF86CycleAngle               _EVDEVK(0x173)             KEY_ANGLE
##  Use: XKB_KEY_XF86FullScreen               _EVDEVK(0x174)     v5.1    KEY_FULL_SCREEN

const
  XKB_KEY_XF86AspectRatio* = 0x10081177
  XKB_KEY_XF86DVD* = 0x10081185
  XKB_KEY_XF86Audio* = 0x10081188

##  Use: XKB_KEY_XF86Video                    _EVDEVK(0x189)             KEY_VIDEO
##  Use: XKB_KEY_XF86Calendar                 _EVDEVK(0x18d)             KEY_CALENDAR

const
  XKB_KEY_XF86ChannelUp* = 0x10081192
  XKB_KEY_XF86ChannelDown* = 0x10081193

##  Use: XKB_KEY_XF86AudioRandomPlay          _EVDEVK(0x19a)             KEY_SHUFFLE

const
  XKB_KEY_XF86Break* = 0x1008119b
  XKB_KEY_XF86VideoPhone* = 0x100811a0

##  Use: XKB_KEY_XF86Game                     _EVDEVK(0x1a1)     v2.6.20 KEY_GAMES
##  Use: XKB_KEY_XF86ZoomIn                   _EVDEVK(0x1a2)     v2.6.20 KEY_ZOOMIN
##  Use: XKB_KEY_XF86ZoomOut                  _EVDEVK(0x1a3)     v2.6.20 KEY_ZOOMOUT

const
  XKB_KEY_XF86ZoomReset* = 0x100811a4

##  Use: XKB_KEY_XF86Word                     _EVDEVK(0x1a5)     v2.6.20 KEY_WORDPROCESSOR

const
  XKB_KEY_XF86Editor* = 0x100811a6

##  Use: XKB_KEY_XF86Excel                    _EVDEVK(0x1a7)     v2.6.20 KEY_SPREADSHEET

const
  XKB_KEY_XF86GraphicsEditor* = 0x100811a8
  XKB_KEY_XF86Presentation* = 0x100811a9
  XKB_KEY_XF86Database* = 0x100811aa

##  Use: XKB_KEY_XF86News                     _EVDEVK(0x1ab)     v2.6.20 KEY_NEWS

const
  XKB_KEY_XF86Voicemail* = 0x100811ac
  XKB_KEY_XF86Addressbook* = 0x100811ad

##  Use: XKB_KEY_XF86Messenger                _EVDEVK(0x1ae)     v2.6.20 KEY_MESSENGER

const
  XKB_KEY_XF86DisplayToggle* = 0x100811af
  XKB_KEY_XF86SpellCheck* = 0x100811b0

##  Use: XKB_KEY_XF86LogOff                   _EVDEVK(0x1b1)     v2.6.24 KEY_LOGOFF
##  Use: XKB_KEY_dollar                       _EVDEVK(0x1b2)     v2.6.24 KEY_DOLLAR
##  Use: XKB_KEY_EuroSign                     _EVDEVK(0x1b3)     v2.6.24 KEY_EURO
##  Use: XKB_KEY_XF86FrameBack                _EVDEVK(0x1b4)     v2.6.24 KEY_FRAMEBACK
##  Use: XKB_KEY_XF86FrameForward             _EVDEVK(0x1b5)     v2.6.24 KEY_FRAMEFORWARD

const
  XKB_KEY_XF86ContextMenu* = 0x100811b6
  XKB_KEY_XF86MediaRepeat* = 0x100811b7
  XKB_KEY_XF8610ChannelsUp* = 0x100811b8
  XKB_KEY_XF8610ChannelsDown* = 0x100811b9
  XKB_KEY_XF86Images* = 0x100811ba
  XKB_KEY_XF86NotificationCenter* = 0x100811bc
  XKB_KEY_XF86PickupPhone* = 0x100811bd
  XKB_KEY_XF86HangupPhone* = 0x100811be
  XKB_KEY_XF86Fn* = 0x100811d0
  XKB_KEY_XF86Fn_Esc* = 0x100811d1
  XKB_KEY_XF86FnRightShift* = 0x100811e5

##  Use: XKB_KEY_braille_dot_1                _EVDEVK(0x1f1)     v2.6.17 KEY_BRL_DOT1
##  Use: XKB_KEY_braille_dot_2                _EVDEVK(0x1f2)     v2.6.17 KEY_BRL_DOT2
##  Use: XKB_KEY_braille_dot_3                _EVDEVK(0x1f3)     v2.6.17 KEY_BRL_DOT3
##  Use: XKB_KEY_braille_dot_4                _EVDEVK(0x1f4)     v2.6.17 KEY_BRL_DOT4
##  Use: XKB_KEY_braille_dot_5                _EVDEVK(0x1f5)     v2.6.17 KEY_BRL_DOT5
##  Use: XKB_KEY_braille_dot_6                _EVDEVK(0x1f6)     v2.6.17 KEY_BRL_DOT6
##  Use: XKB_KEY_braille_dot_7                _EVDEVK(0x1f7)     v2.6.17 KEY_BRL_DOT7
##  Use: XKB_KEY_braille_dot_8                _EVDEVK(0x1f8)     v2.6.17 KEY_BRL_DOT8
##  Use: XKB_KEY_braille_dot_9                _EVDEVK(0x1f9)     v2.6.23 KEY_BRL_DOT9
##  Use: XKB_KEY_braille_dot_1                _EVDEVK(0x1fa)     v2.6.23 KEY_BRL_DOT10

const
  XKB_KEY_XF86Numeric0* = 0x10081200
  XKB_KEY_XF86Numeric1* = 0x10081201
  XKB_KEY_XF86Numeric2* = 0x10081202
  XKB_KEY_XF86Numeric3* = 0x10081203
  XKB_KEY_XF86Numeric4* = 0x10081204
  XKB_KEY_XF86Numeric5* = 0x10081205
  XKB_KEY_XF86Numeric6* = 0x10081206
  XKB_KEY_XF86Numeric7* = 0x10081207
  XKB_KEY_XF86Numeric8* = 0x10081208
  XKB_KEY_XF86Numeric9* = 0x10081209
  XKB_KEY_XF86NumericStar* = 0x1008120a
  XKB_KEY_XF86NumericPound* = 0x1008120b
  XKB_KEY_XF86NumericA* = 0x1008120c
  XKB_KEY_XF86NumericB* = 0x1008120d
  XKB_KEY_XF86NumericC* = 0x1008120e
  XKB_KEY_XF86NumericD* = 0x1008120f
  XKB_KEY_XF86CameraFocus* = 0x10081210
  XKB_KEY_XF86WPSButton* = 0x10081211

##  Use: XKB_KEY_XF86TouchpadToggle           _EVDEVK(0x212)     v2.6.37 KEY_TOUCHPAD_TOGGLE
##  Use: XKB_KEY_XF86TouchpadOn               _EVDEVK(0x213)     v2.6.37 KEY_TOUCHPAD_ON
##  Use: XKB_KEY_XF86TouchpadOff              _EVDEVK(0x214)     v2.6.37 KEY_TOUCHPAD_OFF

const
  XKB_KEY_XF86CameraZoomIn* = 0x10081215
  XKB_KEY_XF86CameraZoomOut* = 0x10081216
  XKB_KEY_XF86CameraUp* = 0x10081217
  XKB_KEY_XF86CameraDown* = 0x10081218
  XKB_KEY_XF86CameraLeft* = 0x10081219
  XKB_KEY_XF86CameraRight* = 0x1008121a
  XKB_KEY_XF86AttendantOn* = 0x1008121b
  XKB_KEY_XF86AttendantOff* = 0x1008121c
  XKB_KEY_XF86AttendantToggle* = 0x1008121d
  XKB_KEY_XF86LightsToggle* = 0x1008121e
  XKB_KEY_XF86ALSToggle* = 0x10081230

##  Use: XKB_KEY_XF86RotationLockToggle       _EVDEVK(0x231)     v4.16   KEY_ROTATE_LOCK_TOGGLE

const
  XKB_KEY_XF86RefreshRateToggle* = 0x10081232
  XKB_KEY_XF86Buttonconfig* = 0x10081240
  XKB_KEY_XF86Taskmanager* = 0x10081241
  XKB_KEY_XF86Journal* = 0x10081242
  XKB_KEY_XF86ControlPanel* = 0x10081243
  XKB_KEY_XF86AppSelect* = 0x10081244
  XKB_KEY_XF86Screensaver* = 0x10081245
  XKB_KEY_XF86VoiceCommand* = 0x10081246
  XKB_KEY_XF86Assistant* = 0x10081247

##  Use: XKB_KEY_ISO_Next_Group               _EVDEVK(0x248)     v5.2    KEY_KBD_LAYOUT_NEXT

const
  XKB_KEY_XF86EmojiPicker* = 0x10081249
  XKB_KEY_XF86Dictate* = 0x1008124a
  XKB_KEY_XF86CameraAccessEnable* = 0x1008124b
  XKB_KEY_XF86CameraAccessDisable* = 0x1008124c
  XKB_KEY_XF86CameraAccessToggle* = 0x1008124d
  XKB_KEY_XF86Accessibility* = 0x1008124e
  XKB_KEY_XF86DoNotDisturb* = 0x1008124f
  XKB_KEY_XF86BrightnessMin* = 0x10081250
  XKB_KEY_XF86BrightnessMax* = 0x10081251
  XKB_KEY_XF86KbdInputAssistPrev* = 0x10081260
  XKB_KEY_XF86KbdInputAssistNext* = 0x10081261
  XKB_KEY_XF86KbdInputAssistPrevgroup* = 0x10081262
  XKB_KEY_XF86KbdInputAssistNextgroup* = 0x10081263
  XKB_KEY_XF86KbdInputAssistAccept* = 0x10081264
  XKB_KEY_XF86KbdInputAssistCancel* = 0x10081265
  XKB_KEY_XF86RightUp* = 0x10081266
  XKB_KEY_XF86RightDown* = 0x10081267
  XKB_KEY_XF86LeftUp* = 0x10081268
  XKB_KEY_XF86LeftDown* = 0x10081269
  XKB_KEY_XF86RootMenu* = 0x1008126a
  XKB_KEY_XF86MediaTopMenu* = 0x1008126b
  XKB_KEY_XF86Numeric11* = 0x1008126c
  XKB_KEY_XF86Numeric12* = 0x1008126d
  XKB_KEY_XF86AudioDesc* = 0x1008126e
  XKB_KEY_XF863DMode* = 0x1008126f
  XKB_KEY_XF86NextFavorite* = 0x10081270
  XKB_KEY_XF86StopRecord* = 0x10081271
  XKB_KEY_XF86PauseRecord* = 0x10081272
  XKB_KEY_XF86VOD* = 0x10081273
  XKB_KEY_XF86Unmute* = 0x10081274
  XKB_KEY_XF86FastReverse* = 0x10081275
  XKB_KEY_XF86SlowReverse* = 0x10081276
  XKB_KEY_XF86Data* = 0x10081277
  XKB_KEY_XF86OnScreenKeyboard* = 0x10081278
  XKB_KEY_XF86PrivacyScreenToggle* = 0x10081279
  XKB_KEY_XF86SelectiveScreenshot* = 0x1008127a
  XKB_KEY_XF86NextElement* = 0x1008127b
  XKB_KEY_XF86PreviousElement* = 0x1008127c
  XKB_KEY_XF86AutopilotEngageToggle* = 0x1008127d
  XKB_KEY_XF86MarkWaypoint* = 0x1008127e
  XKB_KEY_XF86Sos* = 0x1008127f
  XKB_KEY_XF86NavChart* = 0x10081280
  XKB_KEY_XF86FishingChart* = 0x10081281
  XKB_KEY_XF86SingleRangeRadar* = 0x10081282
  XKB_KEY_XF86DualRangeRadar* = 0x10081283
  XKB_KEY_XF86RadarOverlay* = 0x10081284
  XKB_KEY_XF86TraditionalSonar* = 0x10081285
  XKB_KEY_XF86ClearvuSonar* = 0x10081286
  XKB_KEY_XF86SidevuSonar* = 0x10081287
  XKB_KEY_XF86NavInfo* = 0x10081288

##  Use: XKB_KEY_XF86BrightnessAdjust         _EVDEVK(0x289)     v5.18   KEY_BRIGHTNESS_MENU

const
  XKB_KEY_XF86Macro1* = 0x10081290
  XKB_KEY_XF86Macro2* = 0x10081291
  XKB_KEY_XF86Macro3* = 0x10081292
  XKB_KEY_XF86Macro4* = 0x10081293
  XKB_KEY_XF86Macro5* = 0x10081294
  XKB_KEY_XF86Macro6* = 0x10081295
  XKB_KEY_XF86Macro7* = 0x10081296
  XKB_KEY_XF86Macro8* = 0x10081297
  XKB_KEY_XF86Macro9* = 0x10081298
  XKB_KEY_XF86Macro10* = 0x10081299
  XKB_KEY_XF86Macro11* = 0x1008129a
  XKB_KEY_XF86Macro12* = 0x1008129b
  XKB_KEY_XF86Macro13* = 0x1008129c
  XKB_KEY_XF86Macro14* = 0x1008129d
  XKB_KEY_XF86Macro15* = 0x1008129e
  XKB_KEY_XF86Macro16* = 0x1008129f
  XKB_KEY_XF86Macro17* = 0x100812a0
  XKB_KEY_XF86Macro18* = 0x100812a1
  XKB_KEY_XF86Macro19* = 0x100812a2
  XKB_KEY_XF86Macro20* = 0x100812a3
  XKB_KEY_XF86Macro21* = 0x100812a4
  XKB_KEY_XF86Macro22* = 0x100812a5
  XKB_KEY_XF86Macro23* = 0x100812a6
  XKB_KEY_XF86Macro24* = 0x100812a7
  XKB_KEY_XF86Macro25* = 0x100812a8
  XKB_KEY_XF86Macro26* = 0x100812a9
  XKB_KEY_XF86Macro27* = 0x100812aa
  XKB_KEY_XF86Macro28* = 0x100812ab
  XKB_KEY_XF86Macro29* = 0x100812ac
  XKB_KEY_XF86Macro30* = 0x100812ad
  XKB_KEY_XF86MacroRecordStart* = 0x100812b0
  XKB_KEY_XF86MacroRecordStop* = 0x100812b1
  XKB_KEY_XF86MacroPresetCycle* = 0x100812b2
  XKB_KEY_XF86MacroPreset1* = 0x100812b3
  XKB_KEY_XF86MacroPreset2* = 0x100812b4
  XKB_KEY_XF86MacroPreset3* = 0x100812b5
  XKB_KEY_XF86KbdLcdMenu1* = 0x100812b8
  XKB_KEY_XF86KbdLcdMenu2* = 0x100812b9
  XKB_KEY_XF86KbdLcdMenu3* = 0x100812ba
  XKB_KEY_XF86KbdLcdMenu4* = 0x100812bb
  XKB_KEY_XF86KbdLcdMenu5* = 0x100812bc

##
##  Copyright (c) 1991, Oracle and/or its affiliates.
##
##  Permission is hereby granted, free of charge, to any person obtaining a
##  copy of this software and associated documentation files (the "Software"),
##  to deal in the Software without restriction, including without limitation
##  the rights to use, copy, modify, merge, publish, distribute, sublicense,
##  and/or sell copies of the Software, and to permit persons to whom the
##  Software is furnished to do so, subject to the following conditions:
##
##  The above copyright notice and this permission notice (including the next
##  paragraph) shall be included in all copies or substantial portions of the
##  Software.
##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
##  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
##  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
##  DEALINGS IN THE SOFTWARE.
##
## **********************************************************
##
## Copyright 1991, 1998  The Open Group
##
## Permission to use, copy, modify, distribute, and sell this software and its
## documentation for any purpose is hereby granted without fee, provided that
## the above copyright notice appear in all copies and that both that
## copyright notice and this permission notice appear in supporting
## documentation.
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
## OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
## AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
## CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
## Except as contained in this notice, the name of The Open Group shall not be
## used in advertising or otherwise to promote the sale, use or other dealings
## in this Software without prior written authorization from The Open Group.
##
## *********************************************************
##
##  Floating Accent
##

const
  XKB_KEY_SunFA_Grave* = 0x1005ff00
  XKB_KEY_SunFA_Circum* = 0x1005ff01
  XKB_KEY_SunFA_Tilde* = 0x1005ff02
  XKB_KEY_SunFA_Acute* = 0x1005ff03
  XKB_KEY_SunFA_Diaeresis* = 0x1005ff04
  XKB_KEY_SunFA_Cedilla* = 0x1005ff05

##
##  Miscellaneous Functions
##

const
  XKB_KEY_SunF36* = 0x1005ff10
  XKB_KEY_SunF37* = 0x1005ff11
  XKB_KEY_SunSys_Req* = 0x1005ff60
  XKB_KEY_SunPrint_Screen* = 0x0000ff61

##
##  International & Multi-Key Character Composition
##

const
  XKB_KEY_SunCompose* = 0x0000ff20
  XKB_KEY_SunAltGraph* = 0x0000ff7e

##
##  Cursor Control
##

const
  XKB_KEY_SunPageUp* = 0x0000ff55
  XKB_KEY_SunPageDown* = 0x0000ff56

##
##  Open Look Functions
##

const
  XKB_KEY_SunUndo* = 0x0000ff65
  XKB_KEY_SunAgain* = 0x0000ff66
  XKB_KEY_SunFind* = 0x0000ff68
  XKB_KEY_SunStop* = 0x0000ff69
  XKB_KEY_SunProps* = 0x1005ff70
  XKB_KEY_SunFront* = 0x1005ff71
  XKB_KEY_SunCopy* = 0x1005ff72
  XKB_KEY_SunOpen* = 0x1005ff73
  XKB_KEY_SunPaste* = 0x1005ff74
  XKB_KEY_SunCut* = 0x1005ff75
  XKB_KEY_SunPowerSwitch* = 0x1005ff76
  XKB_KEY_SunAudioLowerVolume* = 0x1005ff77
  XKB_KEY_SunAudioMute* = 0x1005ff78
  XKB_KEY_SunAudioRaiseVolume* = 0x1005ff79
  XKB_KEY_SunVideoDegauss* = 0x1005ff7a
  XKB_KEY_SunVideoLowerBrightness* = 0x1005ff7b
  XKB_KEY_SunVideoRaiseBrightness* = 0x1005ff7c
  XKB_KEY_SunPowerSwitchShift* = 0x1005ff7d

## *********************************************************
##
## Copyright 1988, 1998  The Open Group
##
## Permission to use, copy, modify, distribute, and sell this software and its
## documentation for any purpose is hereby granted without fee, provided that
## the above copyright notice appear in all copies and that both that
## copyright notice and this permission notice appear in supporting
## documentation.
##
## The above copyright notice and this permission notice shall be included in
## all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
## IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
## FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
## OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
## AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
## CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
## Except as contained in this notice, the name of The Open Group shall not be
## used in advertising or otherwise to promote the sale, use or other dealings
## in this Software without prior written authorization from The Open Group.
##
##
## Copyright 1988 by Digital Equipment Corporation, Maynard, Massachusetts.
##
##                         All Rights Reserved
##
## Permission to use, copy, modify, and distribute this software and its
## documentation for any purpose and without fee is hereby granted,
## provided that the above copyright notice appear in all copies and that
## both that copyright notice and this permission notice appear in
## supporting documentation, and that the name of Digital not be
## used in advertising or publicity pertaining to distribution of the
## software without specific, written prior permission.
##
## DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
## ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
## DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
## ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
## WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
## ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
## SOFTWARE.
##
## ****************************************************************
##
##  DEC private keysyms
##  (29th bit set)
##
##  two-key compose sequence initiators, chosen to map to Latin1 characters

const
  XKB_KEY_Dring_accent* = 0x1000feb0
  XKB_KEY_Dcircumflex_accent* = 0x1000fe5e
  XKB_KEY_Dcedilla_accent* = 0x1000fe2c
  XKB_KEY_Dacute_accent* = 0x1000fe27
  XKB_KEY_Dgrave_accent* = 0x1000fe60
  XKB_KEY_Dtilde* = 0x1000fe7e
  XKB_KEY_Ddiaeresis* = 0x1000fe22

##  special keysym for LK2** "Remove" key on editing keypad

const
  XKB_KEY_DRemove* = 0x1000ff00

##
##
## Copyright 1987, 1998  The Open Group
##
## Permission to use, copy, modify, distribute, and sell this software and its
## documentation for any purpose is hereby granted without fee, provided that
## the above copyright notice appear in all copies and that both that
## copyright notice and this permission notice appear in supporting
## documentation.
##
## The above copyright notice and this permission notice shall be included
## in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
## OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
## IN NO EVENT SHALL THE OPEN GROUP BE LIABLE FOR ANY CLAIM, DAMAGES OR
## OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
## ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
## OTHER DEALINGS IN THE SOFTWARE.
##
## Except as contained in this notice, the name of The Open Group shall
## not be used in advertising or otherwise to promote the sale, use or
## other dealings in this Software without prior written authorization
## from The Open Group.
##
## Copyright 1987 by Digital Equipment Corporation, Maynard, Massachusetts,
##
##                         All Rights Reserved
##
## Permission to use, copy, modify, and distribute this software and its
## documentation for any purpose and without fee is hereby granted,
## provided that the above copyright notice appear in all copies and that
## both that copyright notice and this permission notice appear in
## supporting documentation, and that the names of Hewlett Packard
## or Digital not be
## used in advertising or publicity pertaining to distribution of the
## software without specific, written prior permission.
##
## DIGITAL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING
## ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT SHALL
## DIGITAL BE LIABLE FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR
## ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
## WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
## ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS
## SOFTWARE.
##
## HEWLETT-PACKARD MAKES NO WARRANTY OF ANY KIND WITH REGARD
## TO THIS SOFTWARE, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
## WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
## PURPOSE.  Hewlett-Packard shall not be liable for errors
## contained herein or direct, indirect, special, incidental or
## consequential damages in connection with the furnishing,
## performance, or use of this material.
##
##

const
  XKB_KEY_hpClearLine* = 0x1000ff6f
  XKB_KEY_hpInsertLine* = 0x1000ff70
  XKB_KEY_hpDeleteLine* = 0x1000ff71
  XKB_KEY_hpInsertChar* = 0x1000ff72
  XKB_KEY_hpDeleteChar* = 0x1000ff73
  XKB_KEY_hpBackTab* = 0x1000ff74
  XKB_KEY_hpKP_BackTab* = 0x1000ff75
  XKB_KEY_hpModelock1* = 0x1000ff48
  XKB_KEY_hpModelock2* = 0x1000ff49
  XKB_KEY_hpReset* = 0x1000ff6c
  XKB_KEY_hpSystem* = 0x1000ff6d
  XKB_KEY_hpUser* = 0x1000ff6e
  XKB_KEY_hpmute_acute* = 0x100000a8
  XKB_KEY_hpmute_grave* = 0x100000a9
  XKB_KEY_hpmute_asciicircum* = 0x100000aa
  XKB_KEY_hpmute_diaeresis* = 0x100000ab
  XKB_KEY_hpmute_asciitilde* = 0x100000ac
  XKB_KEY_hplira* = 0x100000af
  XKB_KEY_hpguilder* = 0x100000be
  XKB_KEY_hpYdiaeresis* = 0x100000ee
  XKB_KEY_hpIO* = 0x100000ee
  XKB_KEY_hplongminus* = 0x100000f6
  XKB_KEY_hpblock* = 0x100000fc
  XKB_KEY_osfCopy* = 0x1004ff02
  XKB_KEY_osfCut* = 0x1004ff03
  XKB_KEY_osfPaste* = 0x1004ff04
  XKB_KEY_osfBackTab* = 0x1004ff07
  XKB_KEY_osfBackSpace* = 0x1004ff08
  XKB_KEY_osfClear* = 0x1004ff0b
  XKB_KEY_osfEscape* = 0x1004ff1b
  XKB_KEY_osfAddMode* = 0x1004ff31
  XKB_KEY_osfPrimaryPaste* = 0x1004ff32
  XKB_KEY_osfQuickPaste* = 0x1004ff33
  XKB_KEY_osfPageLeft* = 0x1004ff40
  XKB_KEY_osfPageUp* = 0x1004ff41
  XKB_KEY_osfPageDown* = 0x1004ff42
  XKB_KEY_osfPageRight* = 0x1004ff43
  XKB_KEY_osfActivate* = 0x1004ff44
  XKB_KEY_osfMenuBar* = 0x1004ff45
  XKB_KEY_osfLeft* = 0x1004ff51
  XKB_KEY_osfUp* = 0x1004ff52
  XKB_KEY_osfRight* = 0x1004ff53
  XKB_KEY_osfDown* = 0x1004ff54
  XKB_KEY_osfEndLine* = 0x1004ff57
  XKB_KEY_osfBeginLine* = 0x1004ff58
  XKB_KEY_osfEndData* = 0x1004ff59
  XKB_KEY_osfBeginData* = 0x1004ff5a
  XKB_KEY_osfPrevMenu* = 0x1004ff5b
  XKB_KEY_osfNextMenu* = 0x1004ff5c
  XKB_KEY_osfPrevField* = 0x1004ff5d
  XKB_KEY_osfNextField* = 0x1004ff5e
  XKB_KEY_osfSelect* = 0x1004ff60
  XKB_KEY_osfInsert* = 0x1004ff63
  XKB_KEY_osfUndo* = 0x1004ff65
  XKB_KEY_osfMenu* = 0x1004ff67
  XKB_KEY_osfCancel* = 0x1004ff69
  XKB_KEY_osfHelp* = 0x1004ff6a
  XKB_KEY_osfSelectAll* = 0x1004ff71
  XKB_KEY_osfDeselectAll* = 0x1004ff72
  XKB_KEY_osfReselect* = 0x1004ff73
  XKB_KEY_osfExtend* = 0x1004ff74
  XKB_KEY_osfRestore* = 0x1004ff78
  XKB_KEY_osfDelete* = 0x1004ffff

## ************************************************************
##  The use of the following macros is deprecated.
##  They are listed below only for backwards compatibility.
##

const
  XKB_KEY_Reset* = 0x1000ff6c
  XKB_KEY_System* = 0x1000ff6d
  XKB_KEY_User* = 0x1000ff6e
  XKB_KEY_ClearLine* = 0x1000ff6f
  XKB_KEY_InsertLine* = 0x1000ff70
  XKB_KEY_DeleteLine* = 0x1000ff71
  XKB_KEY_InsertChar* = 0x1000ff72
  XKB_KEY_DeleteChar* = 0x1000ff73
  XKB_KEY_BackTab* = 0x1000ff74
  XKB_KEY_KP_BackTab* = 0x1000ff75
  XKB_KEY_Ext16bit_L* = 0x1000ff76
  XKB_KEY_Ext16bit_R* = 0x1000ff77
  XKB_KEY_mute_acute* = 0x100000a8
  XKB_KEY_mute_grave* = 0x100000a9
  XKB_KEY_mute_asciicircum* = 0x100000aa
  XKB_KEY_mute_diaeresis* = 0x100000ab
  XKB_KEY_mute_asciitilde* = 0x100000ac
  XKB_KEY_lira* = 0x100000af
  XKB_KEY_guilder* = 0x100000be
  XKB_KEY_IO* = 0x100000ee
  XKB_KEY_longminus* = 0x100000f6
  XKB_KEY_block* = 0x100000fc
