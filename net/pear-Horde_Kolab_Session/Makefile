# Ports collection makefile for:  pear-Horde_Kolab_Format
# Date created:			  7 July 2011
# Whom:				  Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: ports/net/pear-Horde_Kolab_Session/Makefile,v 1.6 2012/12/12 15:19:51 svnexp Exp $

PORTNAME=	Horde_Kolab_Session
PORTVERSION=	2.0.1
CATEGORIES=	net www pear

MAINTAINER=	horde@FreeBSD.org
COMMENT=	Horde library for managing an active Kolab session

USE_HORDE_RUN=	Horde_Exception

# Optional but we want it
USE_HORDE_RUN+=	Horde_Kolab_Server \
		Horde_Log

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear-channel-horde/bsd.horde.mk"
.include <bsd.port.post.mk>
