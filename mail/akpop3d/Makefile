# New ports collection makefile for:  akpop3d
# Date created:        Sun Apr  6 10:12:16 CEST 2003
# Whom:                Kirill Ponomarew <ponomarew@oberon.net>
#
# $FreeBSD: ports/mail/akpop3d/Makefile,v 1.11 2012/11/17 05:58:58 svnexp Exp $
#

PORTNAME=	akpop3d
PORTVERSION=	0.7.7
CATEGORIES=	mail
MASTER_SITES=	http://www.synflood.at/akpop3d/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	POP3 daemon aimed to be small and secure

MAN8=		akpop3d.8
PLIST_FILES=	bin/akpop3d

USE_BZIP2=	yes
GNU_CONFIGURE=	yes

.if defined(WITH_SSL)
USE_OPENSSL=	YES
CONFIGURE_ARGS+=--with-openssl=${OPENSSLBASE}
CPPFLAGS+=	-I${OPENSSLBASE}/include
LDFLAGS+=	-L${OPENSSLBASE}/lib -lssl -lcrypto
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/akpop3d ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/akpop3d.8 ${MANPREFIX}/man/man8

.include <bsd.port.mk>
