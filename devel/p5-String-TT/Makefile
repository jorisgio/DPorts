# New ports collection makefile for:    String-TT
# Date created:                         Mat 20 2012
# Whom:                                 Muhammad Moinur Rahman <5u623l20@gmail.com>
#
# $FreeBSD: ports/devel/p5-String-TT/Makefile,v 1.2 2012/11/17 05:56:30 svnexp Exp $
#

PORTNAME=	String-TT
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	5u623l20@gmail.com
COMMENT=	Perl interface to interpolate lexical variables

RUN_DEPENDS=	p5-PadWalker>=1:${PORTSDIR}/devel/p5-PadWalker \
		p5-Sub-Exporter>=0:${PORTSDIR}/devel/p5-Sub-Exporter \
		p5-Template-Toolkit>=2:${PORTSDIR}/www/p5-Template-Toolkit \
		p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-TableDriven>=0:${PORTSDIR}/devel/p5-Test-TableDriven
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		String::TT.3

.include <bsd.port.mk>
