# $FreeBSD: ports/shells/dash/Makefile,v 1.8 2012/11/17 06:01:23 svnexp Exp $

PORTNAME=	dash
PORTVERSION=	0.5.7
CATEGORIES=	shells
MASTER_SITES=	http://gondor.apana.org.au/~herbert/dash/files/

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	A POSIX-compliant implementation of /bin/sh

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
CFLAGS+=	-DUNUSABLE_RT_SIGNALS

PLIST_FILES=	bin/dash
MAN1=		dash.1

post-patch:
	@${REINPLACE_CMD} -e '/COMMON_CFLAGS =/ s|$$| ${CFLAGS}|' \
		${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
