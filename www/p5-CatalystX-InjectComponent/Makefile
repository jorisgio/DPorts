# New ports collection makefile for:	p5-CatalystX-InjectComponent
# Date created:		2011-05-08
# Whom:			Steve Wills <swills@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-CatalystX-InjectComponent/Makefile,v 1.7 2012/12/17 10:27:26 svnexp Exp $
#

PORTNAME=	CatalystX-InjectComponent
PORTVERSION=	0.025
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Inject components into your Catalyst application

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Catalyst-Runtime>=5.80000:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Class-Inspector>=0:${PORTSDIR}/devel/p5-Class-Inspector
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Most>=0:${PORTSDIR}/devel/p5-Test-Most

PERL_CONFIGURE=	yes

MAN3=		CatalystX::InjectComponent.3

.include <bsd.port.mk>
