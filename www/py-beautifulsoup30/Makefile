# New ports collection makefile for:	beautifulsoup
# Date created:				15 July 2005
# Whom:					Mike Meyer <mwm@mired.org>
#
# $FreeBSD: ports/www/py-beautifulsoup30/Makefile,v 1.12 2012/11/17 06:02:59 svnexp Exp $
#

PORTNAME=	beautifulsoup
PORTVERSION=	3.0.8.1
CATEGORIES=	www python
MASTER_SITES=	http://www.crummy.com/software/BeautifulSoup/download/3.x/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	BeautifulSoup-${PORTVERSION}

MAINTAINER=	yzlin@FreeBSD.org
COMMENT=	HTML/XML Parser for Python

USE_PYTHON=	yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	BeautifulSoup

LATEST_LINK=	${PKGNAMEPREFIX}${PORTNAME}30

CONFLICTS=	py[0-9]*-beautifulsoup-3.1.*

.include <bsd.port.mk>
