# New ports collection makefile for:    DateTime-Format-XSD
# Date created:         29 oct 2009
# Whom:                 Sergey V. Dyatko <Sergey.Dyatko@gmail.com>
#
# $FreeBSD: ports/devel/p5-DateTime-Format-XSD/Makefile,v 1.5 2012/11/17 05:56:12 svnexp Exp $
#

PORTNAME=	DateTime-Format-XSD
PORTVERSION=	0.2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	sergey.dyatko@gmail.com
COMMENT=	Format DateTime according to xsd:dateTime

BUILD_DEPENDS=	p5-DateTime-Format-ISO8601>=0:${PORTSDIR}/devel/p5-DateTime-Format-ISO8601
RUN_DEPENDS=	p5-DateTime-Format-ISO8601>=0:${PORTSDIR}/devel/p5-DateTime-Format-ISO8601

PERL_CONFIGURE=	yes

MAN3=		DateTime::Format::XSD.3

.include <bsd.port.mk>
