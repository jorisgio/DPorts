# New ports collection makefile for:	py-mutagen
# Date created:			15 May 2006
# Whom:				Byung-Hee HWANG <bh@izb.knu.ac.kr>
#
# $FreeBSD: ports/audio/py-mutagen/Makefile,v 1.17 2012/11/17 05:54:42 svnexp Exp $

PORTNAME=	mutagen
PORTVERSION=	1.20
CATEGORIES=	audio python
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	johnson.peter@gmail.com
COMMENT=	A Python-based audio metadata tag reader and writer

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes

MAN1=		mid3iconv.1 \
		mid3v2.1 \
		moggsplit.1 \
		mutagen-inspect.1 \
		mutagen-pony.1

.include <bsd.port.mk>
