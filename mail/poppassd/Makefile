# New ports collection makefile for:	poppassd
# Date Created:	21 August 1996
# Whom:	Andrew Stevenson <andrew@ugh.net.au> based heavily on the changes by Stephen Melvin <melvin@zytek.com>
#
# $FreeBSD: ports/mail/poppassd/Makefile,v 1.19 2012/11/17 05:59:11 svnexp Exp $
#

PORTNAME=	poppassd
PORTVERSION=	4.0
PORTREVISION=	3
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.qualcomm.com/eudora/servers/unix/password/
DISTNAME=	pwserve-4
EXTRACT_SUFX=

MAINTAINER=	tedm@ipinc.net
COMMENT=	A server to allow users to change their password from within Eudora

EXTRACT_CMD=	${CAT}
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	| ${SED} -e '1,16d' | ${SH}
WRKSRC=			${WRKDIR}/poppassd
ALL_TARGET=	poppassd
MAN8=		poppassd.8
PLIST_FILES=	libexec/poppassd

do-install:
	@ ${INSTALL_PROGRAM} ${WRKSRC}/poppassd ${PREFIX}/libexec
	@ ${INSTALL_MAN} ${FILESDIR}/poppassd.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
