# $FreeBSD: ports/sysutils/tmpwatch/Makefile,v 1.22 2012/11/17 06:01:48 svnexp Exp $

PORTNAME=	tmpwatch
PORTVERSION=	2.11
CATEGORIES=	sysutils
MASTER_SITES=	https://fedorahosted.org/releases/t/m/tmpwatch/

MAINTAINER=	bapt@FreeBSD.org
COMMENT=	A utility for removing files based on when they were last accessed

LICENSE=	GPLv2

USE_BZIP2=	yes

GNU_CONFIGURE=	yes

MAN8=		tmpwatch.8
PLIST_FILES=	sbin/tmpwatch

post-patch:
	@${REINPLACE_CMD} -E "s/^#include.+mntent.h.+//g" ${WRKSRC}/tmpwatch.c

.include <bsd.port.mk>
