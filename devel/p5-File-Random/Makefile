# New ports collection makefile for:	p5-File-Random
# Date created: 			01 July 2005
# Whom: 				Aaron Dalton <aaron@daltons.ca>
#
# $FreeBSD: ports/devel/p5-File-Random/Makefile,v 1.9 2012/11/17 05:56:16 svnexp Exp $
#

PORTNAME=	File-Random
PORTVERSION=	0.17
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl module for random selecting of a file

BUILD_DEPENDS=	p5-Want>=0:${PORTSDIR}/devel/p5-Want \
		p5-Set-Scalar>0:${PORTSDIR}/devel/p5-Set-Scalar
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Class>=0.03:${PORTSDIR}/devel/p5-Test-Class \
		p5-Test-Differences>=0.43:${PORTSDIR}/devel/p5-Test-Differences \
		p5-Test-Exception>0.1:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-Warn>0.05:${PORTSDIR}/devel/p5-Test-Warn \
		p5-Test-ManyParams>0:${PORTSDIR}/devel/p5-Test-ManyParams

PERL_CONFIGURE=	yes

MAN3=		File::Random.3

.include <bsd.port.mk>
