# Created by: Baptiste Daroussin <bapt@FreeBSD.org>
# $FreeBSD: ports/german/mythes/Makefile,v 1.71 2012/11/17 05:57:59 svnexp Exp $

PORTNAME=	mythes
PORTVERSION=	2012.10.07
CATEGORIES=	german textproc
MASTER_SITES=	LOCAL/sunpoet/${PORTNAME}/
DISTNAME=	Deutscher-Thesaurus-${PORTVERSION:C/\.//g}
EXTRACT_SUFX=	.oxt
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	German thesaurus

LICENSE=	LGPL21

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_de_DE_v2.idx \
		%%DATADIR%%/th_de_DE_v2.dat
PLIST_DIRSTRY=	%%DATADIR%%

DEALIASES=	de_AT de_BE de_CH de_LI de_LU

.for ALIAS in ${DEALIASES}
PLIST_FILES+=	%%DATADIR%%/th_${ALIAS}_v2.idx \
		%%DATADIR%%/th_${ALIAS}_v2.dat
.endfor

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_de_DE_v2.dat ${WRKSRC}/th_de_DE_v2.idx ${DATADIR}/
.for ALIAS in ${DEALIASES}
	${LN} -s th_de_DE_v2.dat ${DATADIR}/th_${ALIAS}_v2.dat
	${LN} -s th_de_DE_v2.idx ${DATADIR}/th_${ALIAS}_v2.idx
.endfor

.include <bsd.port.mk>
