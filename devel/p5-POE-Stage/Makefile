# New ports collection makefile for:	POE-Stage
# Date created:	   09 July 2006
# Whom:		   Sergey Skvortsov <skv@protey.ru>
#
# $FreeBSD: ports/devel/p5-POE-Stage/Makefile,v 1.11 2012/11/17 05:56:25 svnexp Exp $
#

PORTNAME=	POE-Stage
PORTVERSION=	0.0600
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTVERSION=	0.060

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Base class for formalized POE components

BUILD_DEPENDS=	p5-POE>=1.351:${PORTSDIR}/devel/p5-POE \
		p5-PadWalker>=1.93:${PORTSDIR}/devel/p5-PadWalker \
		p5-Net-DNS>=0.68:${PORTSDIR}/dns/p5-Net-DNS \
		p5-Devel-LexAlias>=0.04:${PORTSDIR}/devel/p5-Devel-LexAlias \
		p5-Lexical-Persistence>=1.020:${PORTSDIR}/devel/p5-Lexical-Persistence \
		p5-Attribute-Handlers>=0.93:${PORTSDIR}/devel/p5-Attribute-Handlers
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		POE::Callback.3 POE::Request.3 POE::Request::Emit.3 \
		POE::Request::Recall.3 POE::Request::Return.3 \
		POE::Request::Upward.3 POE::Stage.3 POE::Stage::App.3 \
		POE::Stage::Echoer.3 POE::Stage::Receiver.3 \
		POE::Stage::Resolver.3 POE::Stage::Ticker.3 \
		POE::Watcher.3 POE::Watcher::Delay.3 POE::Watcher::Input.3 \
		POE::Watcher::Wheel.3

.include <bsd.port.mk>
