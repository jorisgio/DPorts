# New ports collection makefile for:	EV
# Date created:		06 Jun 2008
# Whom:			Vladimir Timofeev <vovkasm@gmail.com>
#
# $FreeBSD: ports/devel/p5-EV/Makefile,v 1.19 2012/11/17 05:56:14 svnexp Exp $
#

PORTNAME=	EV
PORTVERSION=	4.11
PORTEPOCH=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MLEHMANN
PKGNAMEPREFIX=	p5-

MAINTAINER=	vovkasm@gmail.com
COMMENT=	Perl interface to libev, a high performance full-featured event loop

RUN_DEPENDS=	p5-common-sense>=0:${PORTSDIR}/devel/p5-common-sense
BUILD_DEPENDS=	p5-common-sense>=0:${PORTSDIR}/devel/p5-common-sense

USE_GCC=	any
PERL_CONFIGURE=	yes
CONFIGURE_ENV=	PERL_MM_USE_DEFAULT="YES"

MAN3=		EV.3 \
		EV::MakeMaker.3 \
		EV::libev.3

.include <bsd.port.mk>
