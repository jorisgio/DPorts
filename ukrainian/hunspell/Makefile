# New ports collection makefile for:	hunspell
# Date created:		2011-07-20
# Whom:			Baptiste Daroussin <bapt@FreeBSD.org>
#
# $FreeBSD: ports/ukrainian/hunspell/Makefile,v 1.7 2012/11/17 06:02:26 svnexp Exp $
#

PORTNAME=	hunspell
PORTVERSION=	1.6.5
PORTREVISION=	1
CATEGORIES=	ukrainian textproc
MASTER_SITES=	SF/ispell-uk/spell-uk/${PORTVERSION}
DISTNAME=	spell-uk-${PORTVERSION}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Ukrainian hunspell dictionaries

BUILD_DEPENDS=	iconv:${PORTSDIR}/converters/libiconv

ALL_TARGET=	myspell
USE_GMAKE=	yes
USE_PERL5_BUILD=	yes

PLIST_FILES=	%%DATADIR%%/uk_UA.aff \
		%%DATADIR%%/uk_UA.dic
PLIST_DIRSTRY=	%%DATADIR%%

do-install:
	${MKDIR} ${DATADIR}/
	cd ${WRKSRC}/dist/my${DISTNAME}/ && ${INSTALL_DATA} uk_UA.aff uk_UA.dic ${DATADIR}/

.include <bsd.port.mk>
