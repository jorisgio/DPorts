# New ports collection makefile for:   Log-Dispatch-FileShared
# Date created:           3 February 2007
# Whom:                   Craig Manley
#
# $FreeBSD: ports/devel/p5-Log-Dispatch-FileShared/Makefile,v 1.7 2012/11/17 05:56:21 svnexp Exp $
#

PORTNAME=	Log-Dispatch-FileShared
PORTVERSION=	1.02
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A Log::Dispatch output class for logging to shared files

BUILD_DEPENDS=	p5-Log-Dispatch>=0:${PORTSDIR}/devel/p5-Log-Dispatch \
		p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Log::Dispatch::FileShared.3

.include <bsd.port.mk>
