#ifndef _KBDHDR_
#define _KBDHDR_
//************************************************************
// Reusable Handlers - Keyboard Handler
//
// Copyright (C) 1994, Law, Leong, Love, Olson, Tsuji.
//
// Adapted for use with VisualAge C++ by: Peter Jakab
//
// All Rights Reserved.
//************************************************************
#include <ikeyhdr.hpp>
#include <istring.hpp>
#include <iwindow.hpp>

#ifndef __NO_DEFAULT_LIBS__
  #pragma library("kbdhdr.lib")
#endif

// Keyboard handler example to convert lowercase characters
// to uppercase as the user types.
class UpperCaseKbdHandler : public IKeyboardHandler
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};

// Keyboard handler example to convert uppercase characters
// to lowercase as the user types.
class LowerCaseKbdHandler : public IKeyboardHandler
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};


// Keyboard handler example to restrict character input to
// digits ( 0-9 )  Positive and negative
class NumOnlyKbdHandler : public IKeyboardHandler
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};

// Keyboard handler example to restrict character input to
// digits ( 0-9 ) Positive numbers only
class PosNumOnlyKbdHandler : public IKeyboardHandler
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};

// Keyboard handler example to restrict character input to
// digits ( 0-9 ) and ( . + - )
class NumDecOnlyKbdHandler : public IKeyboardHandler
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};

// Keyboard handler example to restrict character input to
// hexadecimal digits (0-9, a-f, A-F).                    
class HexOnlyKbdHandler : public IKeyboardHandler 
{
protected:
   virtual Boolean characterKeyPress ( IKeyboardEvent& event );
};

#endif                                 /* _KBDHDR_                        */
