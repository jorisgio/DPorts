# New ports collection makefile for:	p5-Template-Moustache
# Date created:		2011-01-13
# Whom:			Kurt Lidl <kurt.lidl@cello.com>
#
# $FreeBSD: ports/www/p5-Template-Mustache/Makefile,v 1.5 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	Template-Mustache
PORTVERSION=	v0.5.1
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PVANDE
PKGNAMEPREFIX=	p5-

MAINTAINER=	kurt.lidl@cello.com
COMMENT=	Perl version of the fabulous Mustache template language

BUILD_DEPENDS=	p5-YAML-Syck>=1.15:${PORTSDIR}/textproc/p5-YAML-Syck
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS:=	p5-Test-Mini-Unit>=v1.0.3:${PORTSDIR}/devel/p5-Test-Mini-Unit

PERL_CONFIGURE=	yes

MAN3=	Template::Mustache.3

.include <bsd.port.mk>
