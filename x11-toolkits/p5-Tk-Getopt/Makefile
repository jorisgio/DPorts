# New ports collection makefile for:	p5-Tk-Getopt
# Date created:				May 28 2001
# Whom:					vanilla
#
# $FreeBSD: ports/x11-toolkits/p5-Tk-Getopt/Makefile,v 1.20 2012/11/17 06:03:37 svnexp Exp $
#

PORTNAME=	Tk-Getopt
PORTVERSION=	0.50
PORTREVISION=	3
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	User configuration window for Tk with interface to Getopt::Long

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Tk::Getopt.3

.include <bsd.port.mk>
