# Created by: George Hartzell <hartzell@alerce.com>
# $FreeBSD: ports/www/p5-CGI-Application-Plugin-DebugScreen/Makefile,v 1.9 2012/11/17 06:02:45 svnexp Exp $

PORTNAME=	CGI-Application-Plugin-DebugScreen
PORTVERSION=	1.00
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	This plug-in add DebugScreen support to CGI::Application

BUILD_DEPENDS=	p5-CGI-Application>=0:${PORTSDIR}/www/p5-CGI-Application \
		p5-HTML-Template>=0:${PORTSDIR}/www/p5-HTML-Template \
		p5-CGI-Application-Plugin-ViewCode>=0:${PORTSDIR}/www/p5-CGI-Application-Plugin-ViewCode \
		p5-Devel-StackTrace>=0:${PORTSDIR}/devel/p5-Devel-StackTrace \
		p5-UNIVERSAL-require>=0:${PORTSDIR}/devel/p5-UNIVERSAL-require
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	CGI::Application::Plugin::DebugScreen.3

.include <bsd.port.mk>
