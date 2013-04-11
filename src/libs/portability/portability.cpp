/***************************************************************************

    file                 : portability.cpp
    created              : August 2012
    copyright            : (C) 2012 Jean-Philippe Meuret
    web                  : speed-dreams.sourceforge.net
    version              : $Id$

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#include "portability.h"


// Missing strndup, define it here (for FreeBSD).
// Code provided by Thierry Thomas.
#ifndef HAVE_STRNDUP

char *strndup(const char *str, int len)
{
	if (!str || len < 0)
		return 0;

	char* ret;
	if (!(ret = (char*)malloc(len + 1)))
		return 0;

	memcpy(ret, str, len);
	ret[len] = '\0';

	return ret;
}

#endif // HAVE_STRNDUP

// Missing strtok_r, define it here (for MinGW).
// Code provided by Charlie Gordon http://bytes.com/topic/c/answers/708293-strtok-strtok_r.
#ifndef HAVE_STRTOK_R

#ifdef _MSC_VER
#undef strtok_r // Avoid warning C4273: 'strtok_s' : inconsistent dll linkage (yes, 'strtok_s', not '_r' !)
#endif

char *strtok_r(char *str, const char *delim, char **nextp)
{
	char *ret;

	if (!str)
		str = *nextp;
	str += strspn(str, delim);
	if (*str == '\0')
		return 0;
	ret = str;
	str += strcspn(str, delim);
	if (*str)
		*str++ = '\0';
	*nextp = str;
	
	return ret;
}

#endif // HAVE_STRTOK_R


