# New ports collection makefile for:	Xaric
# Date created:		14 Oct 01
# Whom:			alanp@unixpower.org
#
# $FreeBSD: ports/irc/xaric/Makefile,v 1.21 2012/11/17 05:58:30 svnexp Exp $
#

PORTNAME=	xaric
PORTVERSION=	0.13.6
CATEGORIES=	irc
MASTER_SITES=	http://xaric.org/software/xaric/releases/

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	IRC Client similer to BitchX or ircII

USE_GNOME=	gnomehack
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

MAN1=		xaric.1
PLIST_FILES=	bin/xaric \
		%%DATADIR%%/help/copying \
		%%DATADIR%%/help/help \
		%%DATADIR%%/help/warranty
PLIST_DIRS=	%%DATADIR%%/help \
		%%DATADIR%%

post-patch:
	@${REINPLACE_CMD} -e 's|-ggdb3||g' ${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xaric ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xaric.1 ${MANPREFIX}/man/man1
	@${MKDIR} ${DATADIR}/help
	${INSTALL_DATA} ${WRKSRC}/help/* ${DATADIR}/help

.include <bsd.port.mk>
