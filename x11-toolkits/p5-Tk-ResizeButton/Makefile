# New ports collection makefile for:	p5-Tk-ResizeButton
# Date created:							August 10th 2004
# Whom:									Lubomir Marinov <lubomir_m@abv.bg>
#
# $FreeBSD: ports/x11-toolkits/p5-Tk-ResizeButton/Makefile,v 1.12 2012/11/17 06:03:37 svnexp Exp $
#

PORTNAME=		Tk-ResizeButton
PORTVERSION=	0.01
PORTREVISION=	4
CATEGORIES=		x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=		perl@FreeBSD.org
COMMENT=		A resizeable button to be used in a Tk::HList column header

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=			Tk::ResizeButton.3

.include <bsd.port.mk>
