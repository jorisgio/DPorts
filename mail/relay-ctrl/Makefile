# New ports collection makefile for: relay-ctrl
# Date created:		2003-12-05
# Whom:			Fumihiko Kimura <jfkimura@yahoo.co.jp>
#
# $FreeBSD: ports/mail/relay-ctrl/Makefile,v 1.6 2012/11/17 05:59:13 svnexp Exp $
#

PORTNAME=	relay-ctrl
PORTVERSION=	3.1.1
PORTREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://untroubled.org/${PORTNAME}/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	SMTP Relaying Control for qmail & tcpserver

.if defined(WITH_DAEMONTOOLS)
RUN_DEPENDS+=	${LOCALBASE}/bin/envdir:${PORTSDIR}/sysutils/daemontools
.endif

RELAY_CTRL_EXPIRY?=	900
RELAY_CTRL_RELAYCLIENT?=	# e.g. "@example.com" (default: empty)

MAN8=		relay-ctrl-age.8 relay-ctrl-allow.8 relay-ctrl-check.8 \
		relay-ctrl-send.8 relay-ctrl-udp.8
DOCS=		ANNOUNCEMENT NEWS README TODO packet.html

PKGDEINSTALL=	${PKGINSTALL}
SUB_FILES=	pkg-message pkg-install
SUB_LIST=	EXPIRY=${RELAY_CTRL_EXPIRY} FIXUP=${RELAY_CTRL_RELAYCLIENT}

do-configure:
	${ECHO_CMD} "${CC} ${CFLAGS}"		> ${WRKSRC}/conf-cc
	${ECHO_CMD} "${CC} ${STRIP} ${LDGFLAGS} "	> ${WRKSRC}/conf-ld
	${ECHO_CMD} "${PREFIX}/bin"		> ${WRKSRC}/conf-bin
	${ECHO_CMD} "${MANPREFIX}/man"		> ${WRKSRC}/conf-man

do-install:
	cd ${WRKSRC} && ./installer
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif
	@${SETENV} PKG_PREFIX="${PREFIX}" ${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
