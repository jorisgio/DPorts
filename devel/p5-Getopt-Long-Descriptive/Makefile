# Created by: Lars Balker Rasmussen <lbr@FreeBSD.org>
# $FreeBSD: ports/devel/p5-Getopt-Long-Descriptive/Makefile,v 1.17 2012/11/18 01:10:13 svnexp Exp $

PORTNAME=	Getopt-Long-Descriptive
PORTVERSION=	0.093
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Getopt::Long with usage text

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Params-Validate>=0.97:${PORTSDIR}/devel/p5-Params-Validate \
		p5-Sub-Exporter>=0.972:${PORTSDIR}/devel/p5-Sub-Exporter
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Getopt::Long::Descriptive.3 \
		Getopt::Long::Descriptive::Opts.3 \
		Getopt::Long::Descriptive::Usage.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501400
TEST_DEPENDS+=	p5-Test-Simple>=0.96:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
