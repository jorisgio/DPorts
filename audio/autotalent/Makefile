# Created by: Rich Neese <r.neese@gmail.com>
# $FreeBSD: ports/audio/autotalent/Makefile,v 1.4 2012/12/07 22:29:21 svnexp Exp $

PORTNAME=	autotalent
PORTVERSION=	0.2
CATEGORIES=	audio
MASTER_SITES=	http://web.mit.edu/tbaran/www/
DISTNAME=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A real-time pitch correction plugin for ladspa

BUILD_DEPENDS=	${LOCALBASE}/include/ladspa.h:${PORTSDIR}/audio/ladspa
RUN_DEPENDS=	${LOCALBASE}/include/ladspa.h:${PORTSDIR}/audio/ladspa

USE_GMAKE=	yes

MAKE_ARGS=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -fPIC -I${LOCALBASE}/include"

ALL_TARGET=	targets

PLIST_FILES=	lib/ladspa/autotalent.so

post-patch:
	@${FIND} ${BUILD_WRKSRC} -name '*.cpp' | ${XARGS} \
		${REINPLACE_CMD} -e "s|<malloc.h>|<stdlib.h>|g"
	${REINPLACE_CMD} -e "s,-O3 -Wall -fomit-frame-pointer -fstrength-reduce -funroll-loops -ffast-math,${CFLAGS}," ${WRKSRC}/Makefile

do-install:
	@${MKDIR}  ${PREFIX}/lib/ladspa/
	${INSTALL_DATA} ${WRKSRC}/autotalent.so ${PREFIX}/lib/ladspa/

.include <bsd.port.mk>
