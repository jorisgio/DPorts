# New ports collection makefile for:	p5-Parse-CPAN-Packages-Fast
# Date created:				April 11 2010
# Whom:					jupengfei <jupengfei@gmail.com>
#
# $FreeBSD: ports/devel/p5-Parse-CPAN-Packages-Fast/Makefile,v 1.7 2012/11/17 05:56:25 svnexp Exp $
#

PORTNAME=	Parse-CPAN-Packages-Fast
PORTVERSION=	0.06
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parse CPAN's package index

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-CPAN-DistnameInfo>=0:${PORTSDIR}/devel/p5-CPAN-DistnameInfo \
		p5-PerlIO-gzip>=0:${PORTSDIR}/archivers/p5-PerlIO-gzip
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	YES

MAN3=		Parse::CPAN::Packages::Fast.3

.include <bsd.port.mk>
