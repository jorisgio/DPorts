# New ports collection makefile for:	kompose
# Date created:				31 Aug 2004
# Whom:					Lauri Watts <lauri@kde.org>
#
# $FreeBSD: ports/deskutils/kompose/Makefile,v 1.28 2012/12/30 18:55:45 svnexp Exp $
#

PORTNAME=	kompose
PORTVERSION=	0.5.3
PORTREVISION=	7
CATEGORIES=	deskutils kde
MASTER_SITES=	BERLIOS

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Full-screen task manager similar to Expose(tm)

EXTRA_PATCHES=	${PORTSDIR}/x11/kde3/files/extrapatch-old_configure

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_KDELIBS_VER=3
USE_AUTOTOOLS=	libtool
USE_EFL=	imlib2
INSTALLS_ICONS=	yes

DOCSDIR=	share/doc/HTML/en/${PORTNAME}

.if defined(WITHOUT_NLS)
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.else
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|-O2 ||g' ${WRKSRC}/configure

.include <bsd.port.mk>
