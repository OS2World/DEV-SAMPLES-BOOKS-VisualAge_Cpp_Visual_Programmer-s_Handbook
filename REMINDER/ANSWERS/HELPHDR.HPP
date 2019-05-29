//*******************************************************************************
// FILE NAME: HELPHDR.HPP                                                      
// Copyright (C) 1996, Peter M. Jakab
//
// Adapted for use with VisualAge C++ by: Peter Jakab
//
// All Rights Reserved.
//                                                                              
//*******************************************************************************
#ifndef _HELPHANDLER_
#define _HELPHANDLER_  

#include "IHelphdr.hpp"

const int helpForKeysId = 9999;

class HelpHandler : public IHelpHandler
{
protected:
   virtual Boolean keysHelpId ( IEvent& event )
   {
      event.setResult( helpForKeysId );   // Resource ID for Keys help on IPF file
      return true;
   }
}; 

#endif
