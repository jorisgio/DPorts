# New ports collection makefile for:	hachoir-metadata
# Date created:		25 January 2007
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/sysutils/hachoir-metadata/Makefile,v 1.11 2012/11/17 06:01:34 svnexp Exp $
#

PORTNAME=	hachoir-metadata
PORTVERSION=	1.3.3
CATEGORIES=	sysutils python
MASTER_SITES=	CHEESESHOP

MAINTAINER=	lwhsu@FreeBSD.org
COMMENT=	Extract metadata from files

BUILD_DEPENDS=	${PYTHON_SITELIBDIR}/hachoir_parser/__init__.py:${PORTSDIR}/devel/hachoir-parser
RUN_DEPENDS=	${PYTHON_SITELIBDIR}/hachoir_parser/__init__.py:${PORTSDIR}/devel/hachoir-parser

USE_PYTHON=	yes
USE_PYDISTUTILS=yes

PYDISTUTILS_CONFIGUREARGS+=	--disable-qt
PYDISTUTILS_BUILDARGS+=	--disable-qt
PYDISTUTILS_INSTALLARGS+=	--disable-qt

pre-everything::
	@${ECHO_MSG} ""
	@${ECHO_MSG} "To make hachoir-metadata-gtk work you need to have"
	@${ECHO_MSG} "py-gtk (x11-toolkits/py-gtk2) installed."
	@${ECHO_MSG} ""

.include <bsd.port.mk>
