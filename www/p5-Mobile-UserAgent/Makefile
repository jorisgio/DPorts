# New ports collection makefile for:	p5-Mobile-UserAgent
# Date created:		Jun 15 2011
# Whom:			Dmitry Liakh <dliakh@ukr.net>
#
# $FreeBSD: ports/www/p5-Mobile-UserAgent/Makefile,v 1.2 2012/11/17 06:02:51 svnexp Exp $
#

PORTNAME=	Mobile-UserAgent
PORTVERSION=	1.05
CATEGORIES=	www
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	dliakh@ukr.net
COMMENT=	Parses a mobile user agent string into its basic constituent parts

RUN_DEPENDS=	p5-Class-Singleton>=0:${PORTSDIR}/devel/p5-Class-Singleton

PERL_CONFIGURE=	yes

MAN3=		Mobile::UserAgent.3 \
		Mobile::UserAgentFactory.3

.include <bsd.port.mk>
