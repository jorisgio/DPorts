# New ports collection makefile for:	rtf2html
# Date created:				6 Jul 2005
# Whom:					Emanuel Haupt <ehaupt@critical.ch>
#
# $FreeBSD: ports/textproc/rtf2html/Makefile,v 1.7 2012/11/17 06:02:19 svnexp Exp $
#

PORTNAME=	rtf2html
DISTVERSION=	1.1b
CATEGORIES=	textproc
MASTER_SITES=	CRITICAL

MAINTAINER=	ehaupt@FreeBSD.org
COMMENT=	A simple rtf2html converter

MAKE_JOBS_SAFE=	yes

PLIST_FILES=	bin/rtf2html

WRKSRC=		${WRKDIR}/${PORTNAME}

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/${PORTNAME}.c -o ${WRKSRC}/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin

.include <bsd.port.mk>
