# New ports collection makefile for:	textproc/p5-HTML-SBC
# Date created:				05 April 2007
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-HTML-SBC/Makefile,v 1.6 2012/11/17 06:02:04 svnexp Exp $
#

PORTNAME=	HTML-SBC
PORTVERSION=	0.15
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Simple blog code to valid XHTML

BUILD_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	HTML::SBC.3

.include <bsd.port.mk>
