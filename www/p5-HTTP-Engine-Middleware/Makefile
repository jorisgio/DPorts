# New ports collection makefile for:	HTTP::Engine::Middleware
# Date created:		20 Feb 2009
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-HTTP-Engine-Middleware/Makefile,v 1.14 2012/11/17 06:02:50 svnexp Exp $
#

PORTNAME=	HTTP-Engine-Middleware
PORTVERSION=	0.22
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for official distribution of HTTP::Engine

BUILD_DEPENDS:=	${RUN_DEPENDS}
RUN_DEPENDS=	\
	p5-Any-Moose>=0.09:${PORTSDIR}/devel/p5-Any-Moose \
	p5-Mouse>=0.23:${PORTSDIR}/devel/p5-Moose \
	p5-Filter>0:${PORTSDIR}/devel/p5-Filter \
	p5-HTTP-Engine>=0.03004:${PORTSDIR}/www/p5-HTTP-Engine \
	p5-libwww>0:${PORTSDIR}/www/p5-libwww \
	p5-DateTime>0:${PORTSDIR}/devel/p5-DateTime

PERL_CONFIGURE=	yes

MAN3=	HTTP::Engine::Middleware.3 \
	HTTP::Engine::Middleware::AccessLog.3 \
	HTTP::Engine::Middleware::DebugRequest.3 \
	HTTP::Engine::Middleware::DebugScreen.3 \
	HTTP::Engine::Middleware::DoCoMoGUID.3 \
	HTTP::Engine::Middleware::Encode.3 \
	HTTP::Engine::Middleware::FillInForm.3 \
	HTTP::Engine::Middleware::HTTPSession.3 \
	HTTP::Engine::Middleware::MethodOverride.3 \
	HTTP::Engine::Middleware::MobileAttribute.3 \
	HTTP::Engine::Middleware::ModuleReload.3 \
	HTTP::Engine::Middleware::Profile.3 \
	HTTP::Engine::Middleware::ReverseProxy.3 \
	HTTP::Engine::Middleware::Static.3 \
	HTTP::Engine::Middleware::Status.3 \
	HTTP::Engine::Middleware::Status::Memory.3 \
	HTTP::Engine::Middleware::UploadTemp.3

.include <bsd.port.mk>
