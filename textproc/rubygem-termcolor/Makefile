# New ports collection makefile for:	rubygem-termcolor
# Date created:		2009-07-12
# Whom:			Dennis Herrmann <dhn@FreeBSD.org>
#
# $FreeBSD: ports/textproc/rubygem-termcolor/Makefile,v 1.9 2012/11/17 06:02:20 svnexp Exp $
#

PORTNAME=	termcolor
PORTVERSION=	1.2.2
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	dhn@FreeBSD.org
COMMENT=	A library for ANSII color formatting like HTML for output in terminal

RUN_DEPENDS=	rubygem-highline>=1.5.0:${PORTSDIR}/devel/rubygem-highline

USE_RUBY=	yes
USE_RUBYGEMS=	yes
USE_RAKE=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
