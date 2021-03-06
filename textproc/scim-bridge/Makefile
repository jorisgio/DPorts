# New ports collection makefile for:	scim-bridge
# Date created:		2008-09-10
# Whom:			Max Brazhnikov <makc@FreeBSD.org>
#
# $FreeBSD: ports/textproc/scim-bridge/Makefile,v 1.11 2012/11/17 06:02:21 svnexp Exp $
#

PORTNAME=	scim-bridge
PORTVERSION=	0.4.16
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	SF/scim/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ashish@FreeBSD.org
COMMENT=	Scim-bridge agent (server)

LIB_DEPENDS=	scim-1.0.10:${PORTSDIR}/textproc/scim

USE_GMAKE=	yes
USE_GETTEXT=	yes
GNU_CONFIGURE=	yes

LICENSE=	GPLv2 LGPL21
LICENSE_COMB=	dual
LICENSE_FILE_GPLv2=	${WRKSRC}/doc/LICENSE.GPL
LICENSE_FILE_LGPL21=	${WRKSRC}/doc/LICENSE.LGPL

CPPFLAGS+=	-I${LOCALBASE}/include -D__STDC_ISO_10646__
CXXFLAGS+=	${CPPFLAGS}

CONFIGURE_ARGS+=--with-libintl-prefix=${LOCALBASE} \
		--enable-agent \
		--disable-gtk2-immodule \
		--disable-qt3-immodule \
		--disable-qt4-immodule

PLIST_FILES=	bin/scim-bridge

post-patch:
	@${GREP} -lR "<malloc\.h>" ${WRKSRC} | ${XARGS} ${REINPLACE_CMD} -e \
		's|<malloc\.h>|<stdlib.h>|g'
	@${GREP} -lR "<alloca\.h>" ${WRKSRC} | ${XARGS} ${REINPLACE_CMD} -e \
		's|<alloca\.h>|<stdlib.h>|g'

.include <bsd.port.mk>
