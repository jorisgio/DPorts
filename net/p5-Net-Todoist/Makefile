# New ports collection makefile for:	p5-Net-Todoist
# Date created:		2010-11-06
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/net/p5-Net-Todoist/Makefile,v 1.5 2012/11/17 06:00:12 svnexp Exp $
#

PORTNAME=	Net-Todoist
PORTVERSION=	0.04
CATEGORIES=	net www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	gslin@gslin.org
COMMENT=	Todoist API

RUN_DEPENDS=	p5-JSON-XS>=0:${PORTSDIR}/converters/p5-JSON-XS \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww

PERL_CONFIGURE=	yes

MAN3=		Net::Todoist.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 500903
BUILD_DEPENDS+=	p5-ExtUtils-MakeMaker>=6.31:${PORTSDIR}/devel/p5-ExtUtils-MakeMaker
.endif

.include <bsd.port.post.mk>
