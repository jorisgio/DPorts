# ex:ts=8
# Ports collection makefile for:	divxcalc
# Date created:			Mar 21, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/graphics/divxcalc/Makefile,v 1.42 2012/11/17 05:58:03 svnexp Exp $
#

PORTNAME=	divxcalc
PORTVERSION=	0.6
PORTREVISION=	10
CATEGORIES=	graphics
MASTER_SITES=	http://www.axllent.org/uploads/files/divxcalc/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	DivX Calculator

USE_XORG=	x11 ice xext
USE_BZIP2=	yes
USE_QT_VER=	3
USE_GMAKE=	yes
USE_AUTOTOOLS=	automake:env autoconf:env
GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_FILES=	bin/divxcalc

pre-configure:
	@cd ${WRKSRC} && ${GMAKE} -f admin/Makefile.common

.include <bsd.port.mk>
