# New ports collection makefile for:	zu-hunspell
# Date created:		2011-07-20
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/textproc/zu-hunspell/Makefile,v 1.5 2012/11/17 06:02:26 svnexp Exp $
#

PORTNAME=	hunspell
PORTVERSION=	20110323
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_MOZILLA_EXTENDED}
MASTER_SITE_SUBDIR=	addons/46490
PKGNAMEPREFIX=	zu-
DISTNAME=	zulu_spell_checker-${PORTVERSION}-tb+fn+fx+sm
EXTRACT_SUFX=	.xpi
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Zulu hunspell dictionaries

USE_ZIP=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}/dictionaries

PLIST_FILES=	%%DATADIR%%/zu.aff \
		%%DATADIR%%/zu.dic
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/zu-ZA.aff ${DATADIR}/zu.aff
	${INSTALL_DATA} ${WRKSRC}/zu-ZA.dic ${DATADIR}/zu.dic

.include <bsd.port.mk>
