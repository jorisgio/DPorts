# New ports collection makefile for:	p5-Class-Base
# Date created:				Nov 23 2003
# Whom:					Lars Thegler <lars@thegler.dk>
#
# $FreeBSD: ports/devel/p5-Class-Base/Makefile,v 1.8 2012/11/17 05:56:06 svnexp Exp $

PORTNAME=	Class-Base
PORTVERSION=	0.05
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Useful base class for deriving other modules

PERL_CONFIGURE=	yes

MAN3=		Class::Base.3

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE} test

.include <bsd.port.mk>
