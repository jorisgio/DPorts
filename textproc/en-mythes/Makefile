# New ports collection makefile for:	en-mythes
# Date created:		2011-07-21
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/en-mythes/Makefile,v 1.6 2012/11/17 06:01:55 svnexp Exp $
#

PORTNAME=	mythes
PORTVERSION=	2006.12.08
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	LOCAL/sunpoet/${PORTNAME}/
PKGNAMEPREFIX=	en-
DISTNAME=	thes_en_US_v2-${PORTVERSION:C/\.//g}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	English thesaurus

LICENSE=	LGPL21

USE_ZIP=	yes
NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/th_en_US_v2.dat \
		%%DATADIR%%/th_en_US_v2.idx
PLIST_DIRSTRY=	%%DATADIR%%

USALIASES=	en_AG en_AU en_BS en_BW en_BZ en_CA en_DK en_GB en_GH en_IE \
		en_IN en_JM en_NA en_NG en_NZ en_PH en_SG en_TT en_ZA en_ZW
.for ALIAS in ${USALIASES}
PLIST_FILES+=	%%DATADIR%%/th_${ALIAS}_v2.dat \
		%%DATADIR%%/th_${ALIAS}_v2.idx
.endfor

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/th_en_US_v2.dat ${WRKSRC}/th_en_US_v2.idx ${DATADIR}/
.for ALIAS in ${USALIASES}
	${LN} -s th_en_US_v2.dat ${DATADIR}/th_${ALIAS}_v2.dat
	${LN} -s th_en_US_v2.idx ${DATADIR}/th_${ALIAS}_v2.idx
.endfor

.include <bsd.port.mk>
