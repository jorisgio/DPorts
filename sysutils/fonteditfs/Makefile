# New ports collection makefile for:    fnteditfs
# Date created:         Sat Oct 12 21:03:00 IST 2002
# Whom:                 uri@keves.org
#
# $FreeBSD: ports/sysutils/fonteditfs/Makefile,v 1.7 2012/11/17 06:01:30 svnexp Exp $
#

PORTNAME=	fonteditfs
PORTVERSION=	1.2
CATEGORIES=	sysutils
MASTER_SITES=	SF
DISTNAME=	fnteditfs-${PORTVERSION}
EXTRACT_SUFX=.tgz

MAINTAINER=	uri@keves.org
COMMENT=	Full screen syscons font editor

MAN1=		fnteditfs.1
PLIST_FILES=	bin/fnteditfs

post-patch:
	@${REINPLACE_CMD} -e 's|__PREFIX__|${PREFIX}|g ; \
		s|__INSTALL_MAN__|${INSTALL_MAN}|g ; \
		s|__INSTALL_SCRIPT__|${INSTALL_SCRIPT}|g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
