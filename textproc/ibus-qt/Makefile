# Created by: Henry Hu <henry.hu.sh@gmail.com>
# $FreeBSD: ports/textproc/ibus-qt/Makefile,v 1.11 2012/12/18 23:19:37 svnexp Exp $

PORTNAME=	ibus-qt
PORTVERSION=	1.3.1
PORTREVISION=	3
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}
DISTNAME=		${PORTNAME}-${PORTVERSION}-Source

MAINTAINER=	henry.hu.sh@gmail.com
COMMENT=	IBus input method module for Qt4

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/ibus-1.0.pc:${PORTSDIR}/textproc/ibus \
	${LOCALBASE}/libdata/pkgconfig/dbus-1.pc:${PORTSDIR}/devel/dbus \
	${LOCALBASE}/bin/icu-config:${PORTSDIR}/devel/icu \
	doxygen:${PORTSDIR}/devel/doxygen
RUN_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/ibus-1.0.pc:${PORTSDIR}/textproc/ibus \
	${LOCALBASE}/libdata/pkgconfig/dbus-1.pc:${PORTSDIR}/devel/dbus \
	${LOCALBASE}/bin/icu-config:${PORTSDIR}/devel/icu

USE_QT4=	gui dbus moc_build qmake_build moc_build uic_build rcc_build
USE_CMAKE=	yes
CMAKE_ARGS=	-DCMAKE_INSTALL_PREFIX=${PREFIX} -DDOCDIR=${PREFIX}/share/doc/ibus-qt
USE_LDCONFIG=	yes
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PROJECTHOST=	ibus
WRKSRC=			${WRKDIR}/${DISTNAME}

.include <bsd.port.pre.mk>

.if ${OSVERSION} < 700042
BROKEN=		Does not build
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
