# New ports collection makefile for:	p5-Petal-Utils
# Date created:				26 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Petal-Utils/Makefile,v 1.8 2012/11/17 06:02:06 svnexp Exp $
#

PORTNAME=	Petal-Utils
PORTVERSION=	0.06
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:WMCKEE
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Useful template modifiers for Petal

RUN_DEPENDS=	p5-Petal>=0:${PORTSDIR}/textproc/p5-Petal \
		p5-TimeDate>=0:${PORTSDIR}/devel/p5-TimeDate \
		p5-URI>=0:${PORTSDIR}/net/p5-URI

MAN3=	Petal::Utils.3

PERL_MODBUILD=	yes

.include <bsd.port.mk>
