# New ports collection makefile for:	leafpad
# Date created:				2004-10-18
# Whom:					Michael Johnson <ahze@ahze.net>
#
# $FreeBSD: ports/editors/leafpad/Makefile,v 1.44 2012/11/17 05:57:15 svnexp Exp $
#

PORTNAME=	leafpad
PORTVERSION=	0.8.18.1
PORTREVISION=	1
CATEGORIES=	editors
MASTER_SITES=	${MASTER_SITE_SAVANNAH}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	wen@FreeBSD.org
COMMENT=	GTK+ based simple text editor

USE_GNOME=	gtk20 desktopfileutils intlhack
USE_GETTEXT=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-chooser
INSTALLS_ICONS=	yes
CPPFLAGS+=	-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

PORTDOCS=	AUTHORS COPYING ChangeLog INSTALL README

post-extract:
	@${CHMOD} a+x ${WRKSRC}/install-sh

post-install:
.if !defined(NOPORTDOCS)
	@${INSTALL} -d ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}/
.endif
	-@update-desktop-database

.include <bsd.port.mk>
