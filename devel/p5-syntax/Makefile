# Created by: Po-Chien Lin <linpc@cs.nctu.edu.tw>
# $FreeBSD: ports/devel/p5-syntax/Makefile,v 1.1 2013/01/14 03:45:01 svnexp Exp $

PORTNAME=	syntax
PORTVERSION=	0.004
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PHAYLON
PKGNAMEPREFIX=	p5-

MAINTAINER=	linpc@cs.nctu.edu.tw
COMMENT=	Activate syntax extensions in Perl

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Data-OptList>=0.104:${PORTSDIR}/devel/p5-Data-OptList \
		p5-namespace-clean>=0:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	syntax.3

.include <bsd.port.mk>
