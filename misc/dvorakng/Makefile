# ex:ts=8
# Ports collection makefile for:	dvorakNG
# Date created:			Mar 26, 2003
# Whom:				ijliao
#
# $FreeBSD: ports/misc/dvorakng/Makefile,v 1.6 2012/11/17 05:59:34 svnexp Exp $
#

PORTNAME=	dvorakng
PORTVERSION=	0.5.0
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	http://www.free.of.pl/n/nopik/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A Dvorak typing tutor

USE_BZIP2=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}
MAKE_ARGS=	CC="${CC}" CXX="${CXX}" CFLAGS="${CFLAGS} ${CPPFLAGS}" \
		CXXFLAGS="${CXXFLAGS} ${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

PLIST_FILES=	bin/dvorakng
.if !defined(NOPORTDOCS)
PORTDOCS=	README TODO
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dvorakng ${PREFIX}/bin
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
