# New ports collection makefile for:	p5-Jifty-Plugin-OpenID
# Date created:		14 June, 2009
# Whom:			Wen Heping <wenheping@gmail.com>
#
# $FreeBSD: ports/security/p5-Jifty-Plugin-OpenID/Makefile,v 1.6 2012/11/17 06:01:13 svnexp Exp $
#

PORTNAME=	Jifty-Plugin-OpenID
PORTVERSION=	1.02
PORTREVISION=	1
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Provides OpenID authentication for your Jifty App

BUILD_DEPENDS=	p5-Jifty>=0:${PORTSDIR}/www/p5-Jifty \
		p5-Cache-Cache>=0:${PORTSDIR}/devel/p5-Cache-Cache \
		p5-Net-OpenID-Consumer>=0:${PORTSDIR}/net/p5-Net-OpenID-Consumer \
		p5-LWPx-ParanoidAgent>=0:${PORTSDIR}/www/p5-LWPx-ParanoidAgent
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Jifty::Plugin::OpenID::View.3 \
		Jifty::Plugin::OpenID.3 \
		Jifty::Plugin::OpenID::Action::VerifyOpenID.3 \
		Jifty::Plugin::OpenID::Action::AuthenticateOpenID.3 \
		Jifty::Plugin::OpenID::Mixin::Model::User.3 \
		Jifty::Plugin::OpenID::Action::CreateOpenIDUser.3 \
		Jifty::Plugin::OpenID::Dispatcher.3

.include <bsd.port.mk>
