# New ports collection makefile for:	xfs
# Date Created:				17 Feb 2006
# Whom:					Florent Thoumie <flz@FreeBSD.org>
#
# $FreeBSD: ports/x11-fonts/xfs/Makefile,v 1.22 2012/11/17 06:03:29 svnexp Exp $
#

PORTNAME=	xfs
PORTVERSION=	1.1.1
PORTEPOCH=	1
CATEGORIES=	x11-fonts

MAINTAINER=	x11@FreeBSD.org
COMMENT=	X.Org font server

XORG_CAT=	app
USE_GMAKE=	yes
USE_XORG=	libfs xfont xtrans
USE_RC_SUBR=	xfs
CONFIGURE_ENV+=	ac_cv_path_XMLTO=""

MAN1=		xfs.1

post-patch:
	${REINPLACE_CMD} '/^config_DATA/d' ${WRKSRC}/config/Makefile.in
.if defined(WITHOUT_XFS_CACHE)
	${REINPLACE_CMD} -e 's|^cache|XCOMM &|' ${WRKSRC}/config.cpp
.endif

post-build:
	@cd ${WRKSRC}/config/ && ${GMAKE} config

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/config/config ${PREFIX}/etc/X11/fs/config.default
	@if [ ! -f ${PREFIX}/etc/X11/fs/config ]; then \
		${INSTALL_SCRIPT} ${WRKSRC}/config/config ${PREFIX}/etc/X11/fs/config; \
	fi

.include <bsd.port.mk>
