# New ports collection makefile for:	mediaproxy
# Date created:				08 August 2006
# Whom:					Steve Ames <steve@energistic.com>
#
# $FreeBSD: ports/net/mediaproxy/Makefile,v 1.12 2012/11/17 06:00:05 svnexp Exp $

PORTNAME=	mediaproxy
PORTVERSION=	1.8.2
PORTREVISION=	4
CATEGORIES=	net
MASTER_SITES=	http://mediaproxy.ag-projects.com/ \
		http://mediaproxy.ag-projects.com/old/

MAINTAINER=	steve@energistic.com
COMMENT=	A far-end NAT traversal solution for SER/OpenSER

USE_RC_SUBR=	mediaproxy proxydispatcher

USE_PYTHON=	2.5+

SUB_LIST+=	PYTHON_CMD=${PYTHON_CMD}

OPTIONS=	ACCOUNTING "ACCOUNTING support (Requires MySQL)" off

.include <bsd.port.pre.mk>

.if defined(WITH_ACCOUNTING)
USE_MYSQL=	yes
.endif

post-extract:
	@${MV} ${WRKDIR}/${PORTNAME} ${WRKSRC}

post-install:
	${CP} -pRP ${WRKSRC}/ ${PREFIX}/mediaproxy
	${CHOWN} -R 0:0 ${PREFIX}/mediaproxy

.include <bsd.port.post.mk>
