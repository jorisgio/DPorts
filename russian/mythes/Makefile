# New ports collection makefile for:	mythes
# Date created:		2011-07-21
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/russian/mythes/Makefile,v 1.6 2012/11/17 06:00:56 svnexp Exp $
#

PORTNAME=	mythes
PORTVERSION=	2007.06.13
PORTREVISION=	1
CATEGORIES=	russian textproc
MASTER_SITES=	LOCAL/sunpoet/${PORTNAME}/
DISTNAME=	thes_ru_RU_v2-${PORTVERSION:C/\.//g}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Russian thesaurus

LICENSE=	LGPL21

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_ru_RU_v2.dat \
		%%DATADIR%%/th_ru_RU_v2.idx \
		%%DATADIR%%/th_ru_UA_v2.dat \
		%%DATADIR%%/th_ru_UA_v2.idx
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_ru_RU_v2.dat ${WRKSRC}/th_ru_RU_v2.idx ${DATADIR}/
	${LN} -s th_ru_RU_v2.dat ${DATADIR}/th_ru_UA_v2.dat
	${LN} -s th_ru_RU_v2.idx ${DATADIR}/th_ru_UA_v2.idx

.include <bsd.port.mk>
