# New ports collection makefile for:	p5-Danga-Socket
# Date created:		2005-08-08
# Whom:			Jacques Marneweck <jacques@php.net>
#
# $FreeBSD: ports/devel/p5-Danga-Socket/Makefile,v 1.17 2012/11/17 05:56:09 svnexp Exp $
#

PORTNAME=	Danga-Socket
PORTVERSION=	1.61
CATEGORIES=	devel net perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Event loop and event-driven async socket base class

RUN_DEPENDS=	p5-IO-KQueue>=0:${PORTSDIR}/devel/p5-IO-KQueue \
		p5-Sys-Syscall>=0:${PORTSDIR}/devel/p5-Sys-Syscall

PERL_CONFIGURE=	yes

MAN3=	Danga::Socket.3

.include <bsd.port.mk>
