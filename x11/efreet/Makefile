# Created by: Stanislav Sedov <stas@FreeBSD.org>
# $FreeBSD: ports/x11/efreet/Makefile,v 1.12 2013/01/15 17:46:04 svnexp Exp $

PORTNAME=	efreet
PORTVERSION=	1.7.5
CATEGORIES=	x11 enlightenment
MASTER_SITES=	http://download.enlightenment.fr/releases/ \
		LOCAL/gblach/e17/

MAINTAINER=	gblach@FreeBSD.org
COMMENT=	Freedesktop.org EFL compatibility layer

LICENSE=	BSD

DIST_SUBDIR=	e17
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_EFL=	eet eina ecore libtool_hack librt_hack
USE_EFL_ECORE=	file
USE_GNOME=	gnomehack pkgconfig
USE_LDCONFIG=	yes

CONFIGURE_ARGS=	--disable-nls

.include <bsd.port.mk>
