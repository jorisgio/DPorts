# Created by: Gvozdikov Veniamin <g.veniamin@googlemail.com>
# $FreeBSD: ports/science/massxpert/Makefile,v 1.9 2012/12/16 21:05:09 svnexp Exp $

PORTNAME=	massxpert
PORTVERSION=	3.3.0
CATEGORIES=	science
MASTER_SITES=	http://download.tuxfamily.org/massxpert/source/

MAINTAINER=	g.veniamin@googlemail.com
COMMENT=	The massXpert software for (bio)chemists

LIB_DEPENDS=	pthread-stubs:${PORTSDIR}/devel/libpthread-stubs \
		pcre:${PORTSDIR}/devel/pcre \
		png15:${PORTSDIR}/graphics/png \
		freetype:${PORTSDIR}/print/freetype2 \
		expat:${PORTSDIR}/textproc/expat2 \
		fontconfig:${PORTSDIR}/x11-fonts/fontconfig \
		xcb:${PORTSDIR}/x11/libxcb

LICENSE=	GPLv3

USE_CMAKE=	yes
USE_GETTEXT=	yes
USE_ICONV=	yes
USE_XORG=	ice sm x11 xau xdmcp xext xrender
USE_GNOME=	glib20
USE_QT4=	corelib gui xml rcc_build qmake_build uic_build moc_build \
		svg
USE_LDCONFIG=	yes
MAKE_JOBS_UNSAFE=	yes
MAN7=		massxpert-data.7
MAN1=		massxpert.1

.include <bsd.port.mk>
