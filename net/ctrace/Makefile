# Ports collection makefile for:  ctrace
# Date created:			  24 Aug 2001
# Whom:				  Kris Kennaway <kris@FreeBSD.org
#
# $FreeBSD: ports/net/ctrace/Makefile,v 1.11 2012/11/17 05:59:58 svnexp Exp $
#

PORTNAME=	ctrace
PORTVERSION=	0.9
CATEGORIES=	net
MASTER_SITES=	http://www.pratyeka.org/ctrace/download/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Multiprotocol traceroute tool

BUILD_DEPENDS=	p5-Net-RawIP>=0:${PORTSDIR}/net/p5-Net-RawIP
RUN_DEPENDS=	p5-Net-RawIP>=0:${PORTSDIR}/net/p5-Net-RawIP \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

NO_BUILD=	yes
USE_PERL5=	yes

MAN1=		ctrace.1
PLIST_FILES=	sbin/ctrace

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ctrace ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/ctrace.man ${PREFIX}/man/man1/ctrace.1

.include <bsd.port.mk>
