# Created by: Alejandro Pulver <alejandro@varnet.biz>
# $FreeBSD: ports/audio/xmms-defx/Makefile,v 1.14 2012/12/10 01:26:27 svnexp Exp $

PORTNAME=	xmms-defx
PORTVERSION=	0.9.9
PORTREVISION=	4
CATEGORIES=	audio
MASTER_SITES=	SF/defx/defx/${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Multi-effects processor plug-in for XMMS

LIB_DEPENDS=	xmms.4:${PORTSDIR}/multimedia/xmms

USE_GMAKE=	yes
USE_GNOME=	gtk12

PLIST_FILES=	lib/xmms/Effect/libdefx.so

post-patch:
	@${REINPLACE_CMD} -e 's|^MAKE=.*||; s|gcc|${CC}|; s|-O2|${CFLAGS} -fPIC|; \
		s|gtk-config|${GTK_CONFIG}|' ${WRKSRC}/config.mak
	@${REINPLACE_CMD} -e 's|-shared|-shared -fPIC|' ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/lib/libdefx.so ${PREFIX}/lib/xmms/Effect

.include <bsd.port.mk>
