# New ports collection makefile for:	devel/p5-Test-Group
# Date created:				10 April 2007
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Test-Group/Makefile,v 1.10 2012/11/17 05:56:32 svnexp Exp $
#

PORTNAME=	Test-Group
PORTVERSION=	0.18
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Group together related tests in a test suite

BUILD_DEPENDS=	p5-File-Slurp>0:${PORTSDIR}/devel/p5-File-Slurp \
		p5-Test-Cmd>=0:${PORTSDIR}/devel/p5-Test-Cmd
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		Test::Group.3 \
		Test::Group::Extending.3 \
		Test::Group::NoWarnings.3 \
		Test::Group::Plan.3 \
		Test::Group::Tester.3

.include <bsd.port.mk>
