# New ports collection makefile for:	p5-DateTime-Calendar-Discordian
# Date created:				04 August 2006
# Whom:	      				Philip Paeps <philip@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-DateTime-Calendar-Discordian/Makefile,v 1.11 2012/11/17 05:56:11 svnexp Exp $
#

PORTNAME=	DateTime-Calendar-Discordian
PORTVERSION=	1.0
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	philip@FreeBSD.org
COMMENT=	Perl extension for the Discordian Calendar

RUN_DEPENDS=	p5-DateTime>=0:${PORTSDIR}/devel/p5-DateTime \
		p5-DateTime-Locale>=0:${PORTSDIR}/devel/p5-DateTime-Locale \
		p5-Params-Validate>=0:${PORTSDIR}/devel/p5-Params-Validate

PERL_CONFIGURE=	yes

MAN3=		DateTime::Calendar::Discordian.3

.include <bsd.port.mk>
