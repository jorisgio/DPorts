# Ports collection makefile for:  pear-HTML_Javascript
# Date created:			  01 December 2004
# Whom:				  Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
#
# $FreeBSD: ports/devel/pear-HTML_Javascript/Makefile,v 1.7 2012/11/17 05:56:38 svnexp Exp $
#

PORTNAME=	HTML_Javascript
PORTVERSION=	1.1.2
CATEGORIES=	devel www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	Provides an interface for creating simple JS scripts

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS:=	${BUILD_DEPENDS}

CATEGORY=	HTML
FILES=		Javascript.php Javascript/Convert.php
EXAMPLES=	javascript.php js.php
TESTS=		js.php output.php

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
