# New ports collection makefile for:	sysutils/p5-Plugtools-Plugins-HomeOU
# Date created:		2010-02-26
# Whom:			Zane C, Bowers <vvelox@vvelox.net>
#
# $FreeBSD: ports/sysutils/p5-Plugtools-Plugins-HomeOU/Makefile,v 1.4 2012/11/17 06:01:40 svnexp Exp $
#

PORTNAME=	Plugtools-Plugins-HomeOU
PORTVERSION=	0.0.0
CATEGORIES=	sysutils perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:VVELOX
PKGNAMEPREFIX=	p5-

MAINTAINER=	vvelox@vvelox.net
COMMENT=	Automatically handles the home OU for when adding/removing users

RUN_DEPENDS=	p5-Plugtools>=0:${PORTSDIR}/sysutils/p5-Plugtools

PERL_CONFIGURE=	yes

MAN3=		Plugtools::Plugins::HomeOU.3 \
		Plugtools::Plugins::HomeOUremove.3

.include <bsd.port.mk>
