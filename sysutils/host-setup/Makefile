# New ports collection makefile for:	host-setup
# Date created:				2012-01-05
# Whom:					Devin Teske <dteske@vicor.com>
#
# $FreeBSD: ports/sysutils/host-setup/Makefile,v 1.3 2012/11/17 06:01:34 svnexp Exp $
#

PORTNAME=	host-setup
PORTVERSION=	4.0.2
CATEGORIES=	sysutils
MASTER_SITES=	http://druidbsd.sourceforge.net/download/

MAINTAINER=	dteske@vicor.com
COMMENT=	System configuration setup/management utility

NO_BUILD=	yes

PLIST_FILES=	sbin/${PORTNAME}
MAN1=		${PORTNAME}.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MANPREFIX}/man/man1/

.include <bsd.port.mk>
