# $FreeBSD: ports/devel/p5-Test-File-ShareDir/Makefile,v 1.2 2012/11/17 05:56:32 svnexp Exp $

PORTNAME=	Test-File-ShareDir
PORTVERSION=	0.3.1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Test
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Create a fake ShareDir for your modules for testing

BUILD_DEPENDS=	p5-File-Copy-Recursive>0:${PORTSDIR}/devel/p5-File-Copy-Recursive \
		p5-File-ShareDir>=1.00:${PORTSDIR}/devel/p5-File-ShareDir \
		p5-Path-Class>0:${PORTSDIR}/devel/p5-Path-Class
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Fatal>0:${PORTSDIR}/devel/p5-Test-Fatal

PERL_MODBUILD=	yes

MAN3=	Test::File::ShareDir.3 \
	Test::File::ShareDir::TempDirObject.3

regression-test: build
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${PERL5} ${PL_BUILD} test

.include <bsd.port.mk>
