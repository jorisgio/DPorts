# ex:ts=8
# Ports collection makefile for:  tcpsg
# Date created:                          Tue Oct 30, 2002
# Whom:                                  Michael L. Hostbaek (mich@freebsdcluster.org)
#
# $FreeBSD: ports/net/tcpsg/Makefile,v 1.6 2012/11/17 06:00:22 svnexp Exp $
#

PORTNAME=	tcpsg
PORTVERSION=	0.0.2
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	mich@FreeBSD.org
COMMENT=	A simple TCP port forwarder

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|" ${WRKSRC}/tcpsg.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/sbin

post-install:
	${INSTALL_DATA} ${WRKSRC}/tcpsg.conf ${PREFIX}/etc/
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}/README
	${INSTALL_DATA} ${WRKSRC}/tcpsg.ctl ${DOCSDIR}/tcpsg.ctl
.endif

.include <bsd.port.mk>
