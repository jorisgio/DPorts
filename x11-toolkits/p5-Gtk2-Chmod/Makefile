# New ports collection makefile for:	x11-toolkits/p5-Gtk2-Chmod
# Date created:		2009-10-19
# Whom:			Zane C, Bowers <vvelox@vvelox.net>
#
# $FreeBSD: ports/x11-toolkits/p5-Gtk2-Chmod/Makefile,v 1.8 2012/11/17 06:03:37 svnexp Exp $
#

PORTNAME=	Gtk2-Chmod
PORTVERSION=	0.0.0
PORTREVISION=	4
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VVELOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Provides a dialog for getting values to use with chmod

BUILD_DEPENDS=	p5-File-Stat-Bits>=0:${PORTSDIR}/sysutils/p5-File-Stat-Bits \
		p5-Gtk2>=1.060:${PORTSDIR}/x11-toolkits/p5-Gtk2
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Gtk2::Chmod.3

.include <bsd.port.mk>
