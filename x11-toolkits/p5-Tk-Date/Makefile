# New ports collection makefile for:	p5-Tk-Date
# Date created:				May 28 2001
# Whom:					vanilla
#
# $FreeBSD: ports/x11-toolkits/p5-Tk-Date/Makefile,v 1.21 2012/11/17 06:03:37 svnexp Exp $
#

PORTNAME=	Tk-Date
PORTVERSION=	0.44
PORTREVISION=	1
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Tk::Date - a date/time widget for perl/Tk

BUILD_DEPENDS=	p5-Tk-GBARR>=0:${PORTSDIR}/x11-toolkits/p5-Tk-GBARR
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Tk::Date.3

.include <bsd.port.mk>
