# New ports collection makefile for:    CGI::Builder::TT2
# Date created:                         20 Oct 2004
# Whom:                                 Daniel Wijnands <daniel@itxl.nl>
#
# $FreeBSD: ports/www/p5-CGI-Builder-TT2/Makefile,v 1.7 2012/11/17 06:02:45 svnexp Exp $
#

PORTNAME=	CGI-Builder-TT2
PORTVERSION=	0.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:LARSEN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	CGI::Builder and Template Toolkit 2 integration

BUILD_DEPENDS=	p5-CGI-Builder>=0:${PORTSDIR}/www/p5-CGI-Builder \
		p5-Template-Toolkit>=0:${PORTSDIR}/www/p5-Template-Toolkit
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		CGI::Builder::TT2.3

.include <bsd.port.mk>
