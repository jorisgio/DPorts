# New ports collection makefile for:	p5-Data-Section-Simple
# Date created:		2011-08-01
# Whom:			Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Data-Section-Simple/Makefile,v 1.5 2012/11/17 05:56:10 svnexp Exp $
#

PORTNAME=	Data-Section-Simple
PORTVERSION=	0.03
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Read data from __DATA__

PERL_CONFIGURE=	yes

MAN3=		Data::Section::Simple.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 501001
TEST_DEPENDS+=	p5-Test-Simple>=0.88:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
