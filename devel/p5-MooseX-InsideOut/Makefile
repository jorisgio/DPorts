# New ports collection makefile for:  MooseX-InsideOut
# Whom: gugu
# Date created: 03 December 2009
# $FreeBSD: ports/devel/p5-MooseX-InsideOut/Makefile,v 1.9 2012/11/17 05:56:23 svnexp Exp $
#

PORTNAME=	MooseX-InsideOut
PORTVERSION=	0.106
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Inside-out objects with Moose

BUILD_DEPENDS=	p5-Hash-Util-FieldHash-Compat>=0:${PORTSDIR}/devel/p5-Hash-Util-FieldHash-Compat \
		p5-Moose>=2:${PORTSDIR}/devel/p5-Moose \
		p5-namespace-clean>=0.11:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		MooseX::InsideOut.3 \
		MooseX::InsideOut::Role::Meta::Instance.3

.include <bsd.port.mk>
