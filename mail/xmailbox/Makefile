# New ports collection makefile for:	xmailbox
# Date created:				23 May 1998
# Whom:					Andrey Zakhvatov
#
# $FreeBSD: ports/mail/xmailbox/Makefile,v 1.21 2012/11/17 05:59:18 svnexp Exp $
#

PORTNAME=		xmailbox
PORTVERSION=		2.5
PORTREVISION=		2
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications

MAINTAINER=		ports@FreeBSD.org
COMMENT=	Mailbox checker with sound and animation for X Window System

USE_IMAKE=		yes
USE_XORG=		xaw
MAN1=			xmailbox.1

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" ${WRKSRC}/XMailbox.ad

post-install:
	@${MKDIR} ${PREFIX}/share/xmailbox
	${INSTALL_DATA} ${WRKSRC}/dingdong.au ${PREFIX}/share/xmailbox
	${INSTALL_DATA} ${WRKSRC}/ugotmail.au ${PREFIX}/share/xmailbox
.if !defined(NOPORTDOCS)
	@${MKDIR} ${PREFIX}/share/doc/xmailbox
	${INSTALL_DATA} ${WRKSRC}/DISCLAIMER ${PREFIX}/share/doc/xmailbox
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xmailbox
.endif

.include <bsd.port.mk>
