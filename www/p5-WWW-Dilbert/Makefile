# New ports collection makefile for:	p5-WWW-Dilbert
# Date created:				Aug 14 2004
# Whom:					Cheng-Lung Sung <clsung@dragon2.net>
#
# $FreeBSD: ports/www/p5-WWW-Dilbert/Makefile,v 1.16 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	WWW-Dilbert
PORTVERSION=	1.19
PORTEPOCH=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Dilbert of the day comic strip archive and retrieval module

RUN_DEPENDS=	p5-libwww>=0:${PORTSDIR}/www/p5-libwww
BUILD_DEPENDS:=	${RUN_DEPENDS}
BUILD_DEPENDS+=	p5-Test-Simple>=0:${PORTSDIR}/devel/p5-Test-Simple

PERL_MODBUILD=	yes

MAN3=		WWW::Dilbert.3

.include <bsd.port.mk>
