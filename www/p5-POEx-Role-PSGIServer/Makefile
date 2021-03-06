# New ports collection makefile for:	POEx::Role::PSGIServer
# Date created:		09 Oct 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-POEx-Role-PSGIServer/Makefile,v 1.6 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	POEx-Role-PSGIServer
PORTVERSION=	1.110670
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:FRODWITH
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for encapsulated PSGI server behaviors for POE

RUN_DEPENDS=	\
	p5-Plack>0:${PORTSDIR}/www/p5-Plack \
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-Moose-Autobox>0:${PORTSDIR}/devel/p5-Moose-Autobox \
	p5-MooseX-Declare>0:${PORTSDIR}/devel/p5-MooseX-Declare \
	p5-MooseX-Types>0:${PORTSDIR}/devel/p5-MooseX-Types \
	p5-MooseX-Types-Structured>0:${PORTSDIR}/devel/p5-MooseX-Types-Structured \
	p5-POE-Filter-HTTP-Parser>=1.06:${PORTSDIR}/www/p5-POE-Filter-HTTP-Parser \
	p5-POE>0:${PORTSDIR}/devel/p5-POE \
	p5-POEx-Role-Streaming>0:${PORTSDIR}/devel/p5-POEx-Role-Streaming \
	p5-POEx-Role-TCPServer>=1.102740:${PORTSDIR}/net/p5-POEx-Role-TCPServer \
	p5-POEx-Types>0:${PORTSDIR}/devel/p5-POEx-Types \
	p5-Plack>0:${PORTSDIR}/www/p5-Plack \
	p5-aliased>0:${PORTSDIR}/devel/p5-aliased
BUILD_DEPENDS:=	${RUN_DEPENDS}
TEST_DEPENDS=	p5-HTTP-Parser-XS>=0:${PORTSDIR}/www/p5-HTTP-Parser-XS \
		p5-Test-Requires>=0:${PORTSDIR}/devel/p5-Test-Requires \
		p5-Test-TCP>=0:${PORTSDIR}/devel/p5-Test-TCP

PERL_CONFIGURE=	yes

MAN3=	POEx::Role::PSGIServer.3 \
	POEx::Role::PSGIServer::ProxyWriter.3 \
	POEx::Role::PSGIServer::Streamer.3 \
	POEx::Types::PSGIServer.3

.include <bsd.port.mk>
