# New ports collection makefile for:    jishyo
# Date created:         30 Oct 2006
# Whom:                 gurkan@phys.ethz.ch
#
# $FreeBSD: ports/japanese/jishyo/Makefile,v 1.13 2012/11/17 05:58:35 svnexp Exp $
#

PORTNAME=	jishyo
PORTVERSION=	0.1
PORTREVISION=	2
CATEGORIES=	japanese gnustep
MASTER_SITES=	http://www.eskimo.com/~pburns/Dictionaries/files/ \
		${MASTER_SITE_GNUSTEP_CH}
DISTNAME=	Jishyo-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	English to Japanese dictionary for GNUstep

LICENSE=	GPLv2

USE_GNUSTEP=	yes
USE_GNUSTEP_BACK=	yes
USE_GNUSTEP_BUILD=	yes
USE_GNUSTEP_INSTALL=	yes

WRKSRC=	${WRKDIR}/${DISTNAME}

.include <bsd.port.mk>
