# New ports collection makefile for:	Audio::Ecasound
# Date created:		20 Nov 2010
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/audio/p5-Audio-Ecasound/Makefile,v 1.2 2012/11/17 05:54:40 svnexp Exp $
#

PORTNAME=	Audio-Ecasound
PORTVERSION=	1.01
CATEGORIES=	audio perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for ecasound sampler, recorder, fx-processor

BUILD_DEPENDS=	libecasoundc-config:${PORTSDIR}/audio/ecasound

PERL_CONFIGURE=	yes

MAN3=	Audio::Ecasound.3

.include <bsd.port.mk>
