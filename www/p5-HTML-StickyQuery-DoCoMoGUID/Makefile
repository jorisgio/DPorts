# New ports collection makefile for:	HTML::StickyQuery::DoCoMoGUID
# Date created:		22 Feb 2009
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-HTML-StickyQuery-DoCoMoGUID/Makefile,v 1.6 2012/11/17 06:02:50 svnexp Exp $
#

PORTNAME=	HTML-StickyQuery-DoCoMoGUID
PORTVERSION=	0.03
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:YAPPO
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension to add guid in query for DoCoMo imode

RUN_DEPENDS=	\
	p5-HTML-StickyQuery>0:${PORTSDIR}/www/p5-HTML-StickyQuery
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	HTML::StickyQuery::DoCoMoGUID.3

.include <bsd.port.mk>
