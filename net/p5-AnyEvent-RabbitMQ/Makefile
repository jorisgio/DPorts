# New ports collection makefile for:	AnyEvent::RabbitMQ
# Date created:				29 Oct 2011
# Whom:					Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/net/p5-AnyEvent-RabbitMQ/Makefile,v 1.7 2012/11/17 06:00:09 svnexp Exp $
#

PORTNAME=	AnyEvent-RabbitMQ
PORTVERSION=	1.08
CATEGORIES=	net devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	An asynchronous and multi channel Perl AMQP client

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-AnyEvent>=0:${PORTSDIR}/devel/p5-AnyEvent \
		p5-Net-AMQP>=0:${PORTSDIR}/net/p5-Net-AMQP \
		p5-Devel-GlobalDestruction>=0:${PORTSDIR}/devel/p5-Devel-GlobalDestruction \
		p5-File-ShareDir>=0:${PORTSDIR}/devel/p5-File-ShareDir \
		p5-List-MoreUtils>=0:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Readonly>=1.03:${PORTSDIR}/devel/p5-Readonly \
		p5-namespace-clean>=0:${PORTSDIR}/devel/p5-namespace-clean
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception

PERL_CONFIGURE=	yes

MAN3=		AnyEvent::RabbitMQ.3 \
    		AnyEvent::RabbitMQ::Channel.3

.include <bsd.port.mk>
