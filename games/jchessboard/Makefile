# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD: ports/games/jchessboard/Makefile,v 1.9 2012/12/10 13:24:57 svnexp Exp $

PORTNAME=	jchessboard
PORTVERSION=	1.5
PORTREVISION=	2
CATEGORIES=	games java
MASTER_SITES=	SF
DISTNAME=	JChessBoard-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Chess game and PGN viewer/editor written in Java

USE_JAVA=	yes
JAVA_VERSION=	1.6+

DATADIR=	${JAVASHAREDIR}/${PORTNAME}

PLIST_FILES=	bin/${PORTNAME} \
		%%DATADIR%%/${JARFILE}
PLIST_DIRS=	%%DATADIR%%

JARFILE=	JChessBoard.jar

do-build:
	@(${ECHO_CMD} "#!${SH}"; \
	  ${ECHO_CMD} "${JAVA} -jar ${DATADIR}/${JARFILE}") \
	  > ${WRKDIR}/${PORTNAME}

do-install:
	@${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME} ${PREFIX}/bin
	@${MKDIR} ${DATADIR}
	@${INSTALL_DATA} ${WRKSRC}/${JARFILE} ${DATADIR}

.include <bsd.port.mk>
