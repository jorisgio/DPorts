# New ports collection makefile for:	www/p5-Catalyst-Component-ACCEPT_CONTEXT
# Date created:				26 April 2007
# Whom:					Lars Thegler <lth@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Catalyst-Component-ACCEPT_CONTEXT/Makefile,v 1.9 2012/11/17 06:02:46 svnexp Exp $
#

PORTNAME=	Catalyst-Component-ACCEPT_CONTEXT
PORTVERSION=	0.07
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	Make the Catalyst request context available in Models and Views

BUILD_DEPENDS=	p5-Catalyst-Runtime>0:${PORTSDIR}/www/p5-Catalyst-Runtime \
		p5-Scalar-List-Utils>0:${PORTSDIR}/lang/p5-Scalar-List-Utils
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Devel-Cycle>=0:${PORTSDIR}/devel/p5-Devel-Cycle

PERL_CONFIGURE=	yes

MAN3=	Catalyst::Component::ACCEPT_CONTEXT.3

post-patch:
	${PERL} -pi -e '$$_="" if /auto_install|Devel::Cycle/' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
