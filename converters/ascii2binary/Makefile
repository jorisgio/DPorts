# New ports collection makefile for:	ascii2binary
# Date created:		Sun 29 January 2006
# Whom:			thierry@pompo.net
#
# $FreeBSD: ports/converters/ascii2binary/Makefile,v 1.13 2012/11/17 05:55:02 svnexp Exp $
#

PORTNAME=	ascii2binary
PORTVERSION=	2.14
CATEGORIES=	converters
MASTER_SITES=	http://billposer.org/Software/Downloads/

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Convert between textual representations of numbers and binary

USE_BZIP2=	yes
USE_GETTEXT=	yes

LICENSE=	GPLv3

GNU_CONFIGURE=	yes
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PLIST_FILES=	bin/ascii2binary bin/binary2ascii

MAN1=		ascii2binary.1 binary2ascii.1

pre-configure:
	${REINPLACE_CMD} -e "s|/usr/local|${LOCALBASE}|" ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
