# Created by: jkh / pst
# $FreeBSD: ports/irc/zircon/Makefile,v 1.79 2012/12/04 10:45:22 svnexp Exp $

PORTNAME=	zircon
PORTVERSION=	1.18.256
PORTREVISION=	2
CATEGORIES=	irc tk
MASTER_SITES=	ftp://catless.ncl.ac.uk/pub/ \
		${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	dinoex

DEPRECATED=	Development has ceased 10 years ago
EXPIRATION_DATE=2013-02-01

MAINTAINER=	tcltk@FreeBSD.org
COMMENT=	An X11 interface to Internet Relay Chat

LICENSE=	BSD
LICENSE_FILE=	${WRKSRC}/doc/COPYRIGHT

# zircon will start with tk84, but a lot of functions won't work
# a lot of variable names conflicts with new functions.
.if defined(ZIRCON_WITH_TCL84) || defined(ZIRCON_WITH_TK84)
USE_TK=		84
USE_TCL=	84
.else
USE_TK=		83
USE_TCL=	83
.endif

NO_BUILD=	yes

do-configure:
	${REINPLACE_CMD} -e 's=%%WISH%%=wish${TCL_VER}=' \
		-e 's=%%TCLSH%%=tclsh${TCL_VER}=' \
		${WRKSRC}/installZircon
	${REINPLACE_CMD} -e 's=%%WISH%%=wish${TCL_VER}=' \
		-e 's=%%TCL_INCLUDE%%=${LOCALBASE}/include/tcl${TCL_VER}=' \
		-e 's=/usr/local=${PREFIX}=' \
		${WRKSRC}/installer/unix.tcl

do-install:
	${ECHO_CMD} "set go {Yes}" >>${WRKSRC}/install.in
	(cd ${WRKSRC} && ./installZircon NoGui)

.include <bsd.port.mk>
