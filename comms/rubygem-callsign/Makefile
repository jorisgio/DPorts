# Ports collection makefile for:	rubygem-callsign
# Date created:				31 July 2009
# Whom:					Rick Elrod <codeblock@eighthbit.net>
#
# $FreeBSD: ports/comms/rubygem-callsign/Makefile,v 1.8 2012/11/17 05:55:01 svnexp Exp $

PORTNAME=	callsign
PORTVERSION=	2.2.0
CATEGORIES=	comms rubygems hamradio
MASTER_SITES=	RG

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Provides a Ruby-Frontend to callook.info ham Radio Callsign Lookup

RUN_DEPENDS=	rubygem-json>=0:${PORTSDIR}/devel/rubygem-json \
		rubygem-hashie>=0:${PORTSDIR}/devel/rubygem-hashie

USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
