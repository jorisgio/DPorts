# $FreeBSD: ports/textproc/libvisio/Makefile,v 1.19 2012/12/18 11:14:02 svnexp Exp $

PORTNAME=	libvisio
PORTVERSION=	0.0.24
CATEGORIES=	textproc devel
MASTER_SITES=	http://dev-www.libreoffice.org/src/ \
		LOCAL/sunpoet

MAINTAINER=	office@FreeBSD.org
COMMENT=	Library and tools for parsing the visio file format structure

LICENSE=	LGPL21 MPL GPLv2
LICENSE_COMB=	dual

BUILD_DEPENDS=	${LOCALBASE}/include/boost/spirit/include/classic_core.hpp:${PORTSDIR}/devel/boost-libs
LIB_DEPENDS=	wpd-0.9:${PORTSDIR}/textproc/libwpd \
		wpg-0.2:${PORTSDIR}/graphics/libwpg

USE_XZ=		yes
CONFIGURE_ARGS=	--disable-werror
CPPFLAGS+=	-I${LOCALBASE}/include
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomehack
USE_LDCONFIG=	yes
USE_PKGCONFIG=	build

.include <bsd.port.pre.mk>

BUILD_DEPENDS+=	${LOCALBASE}/bin/gperf:${PORTSDIR}/devel/gperf
CONFIGURE_ENV+=	GPERF=${LOCALBASE}/bin/gperf

.include <bsd.port.post.mk>
