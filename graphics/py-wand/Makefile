# $FreeBSD: ports/graphics/py-wand/Makefile,v 1.4 2012/12/13 18:44:02 svnexp Exp $

PORTNAME=	Wand
PORTVERSION=	0.2.2
PORTREVISION=	1
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	olivierd@FreeBSD.org
COMMENT=	MagickWand Python binding

LIB_DEPENDS=	MagickWand:${PORTSDIR}/graphics/ImageMagick

USE_PYTHON=	2.6+
USE_PYDISTUTILS=	easy_install

PLIST_FILES=	%%PYTHON_SITELIBDIR%%/%%PYEASYINSTALL_EGG%%

post-patch:
	@${REINPLACE_CMD} -e "s|cmdclass={'upload_doc': upload_doc}||" \
		${WRKSRC}/setup.py

.include <bsd.port.mk>
