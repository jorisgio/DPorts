# New ports collection makefile for:	prodosemu
# Date created:		18th February 1997
# Whom:			Joel Sutton <sutton@aardvark.apana.org.au>
#
# $FreeBSD: ports/emulators/prodosemu/Makefile,v 1.19 2012/11/17 05:57:23 svnexp Exp $
#

PORTNAME=	prodosemu
PORTVERSION=	0.1
CATEGORIES=	emulators
MASTER_SITES=	http://mirrors.apple2.org.za/apple2.caltech.edu/emulators/
DISTNAME=	${PORTNAME}.v${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A text based Apple IIe ProDOS emulator

RESTRICTED=	apple.rom copyright is owned by Apple and cannot be distributed.
WRKSRC=		${WRKDIR}/${PORTNAME}-v${PORTVERSION}

PLIST_FILES=	bin/prodos share/apple2/prodos-2e.rom
PLIST_DIRS=	share/apple2

.if !defined(NOPORTDOCS)
PORTDOCS=	README
.endif

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
.endif

.include <bsd.port.mk>
