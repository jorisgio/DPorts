# Created by: Miguel Mendez <flynn@energyhq.es.eu.org>
# $FreeBSD: ports/sysutils/gtk-send-pr/Makefile,v 1.43 2012/12/07 09:41:48 svnexp Exp $

PORTNAME=	gtk-send-pr
PORTVERSION=	0.4.9
PORTREVISION=	6
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_BERLIOS}
MASTER_SITE_SUBDIR=	${PORTNAME}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	GTK2 send-pr tool

LIB_DEPENDS=	esmtp.7:${PORTSDIR}/mail/libesmtp

USE_GNOME=	gtk20

MAN1=		gtk-send-pr.1
PLIST_FILES=	bin/gtk-send-pr share/pixmaps/ladybird64.xpm
DESKTOP_ENTRIES="Send Problem Report" \
		"Send a FreeBSD PR" \
		"ladybird64.xpm" \
		"gtk-send-pr" \
		"Application;System;" \
		true

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/gtk-send-pr ${PREFIX}/bin
	@${INSTALL_MAN} ${WRKSRC}/common/gtk-send-pr.1 ${PREFIX}/man/man1
	@${INSTALL_DATA} ${WRKSRC}/icon/ladybird64.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
