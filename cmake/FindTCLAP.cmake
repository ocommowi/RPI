###############################################################################
# RPI
# Authors: B.Bleuzé, V.Garcia
# Created: 04/04/2011 
#
# Distributed under the BSD licence:
# Copyright (c) 2011, INRIA
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without 
# modification, are permitted provided that the following conditions are met:
#
# - Redistributions of source code must retain the above copyright notice, 
# this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
# - Neither the name of INRIA nor the names of its contributors may be used 
# to endorse or promote products derived from this software without
# specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
# PURPOSE ARE DISCLAIMED. 
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY 
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE 
# USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
###############################################################################



# Try to find the TCLAP library
# Once done this will define
#
# TCLAP_FOUND         - system has TCLAP and it can be used
# TCLAP_INCLUDE_DIR   - directory where the header file can be found
#

SET( TCLAP_FOUND FALSE )

IF( EXISTS TCLAP_INCLUDE_DIR )  # already found

    IF( TCLAP_INCLUDE_DIR )
        SET( TCLAP_FOUND TRUE )
    ENDIF()

ELSE()

    FIND_PATH( TCLAP_INCLUDE_DIR MultiSwitchArg.h /usr/include )

    IF( TCLAP_INCLUDE_DIR )
        SET( TCLAP_FOUND TRUE )
    ENDIF()

ENDIF()

IF( NOT TCLAP_FOUND )
  IF( TCLAP_FIND_REQUIRED )
    MESSAGE( FATAL_ERROR "TCLAP was not found." )
  ELSE ()
    MESSAGE( STATUS "TCLAP was not found.")
  ENDIF()
ENDIF()
