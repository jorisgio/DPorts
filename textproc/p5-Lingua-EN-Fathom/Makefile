# New ports collection makefile for:	textproc/p5-Lingua-EN-Fathom
# Date created:				28 February 2006
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Lingua-EN-Fathom/Makefile,v 1.9 2012/11/17 06:02:05 svnexp Exp $
#

PORTNAME=	Lingua-EN-Fathom
PORTVERSION=	1.15
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Lingua::EN::Fathom - Measure readability of English text

COMMON_DEPENDS=	p5-Lingua-EN-Syllable>0:${PORTSDIR}/textproc/p5-Lingua-EN-Syllable
BUILD_DEPENDS=	${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Lingua::EN::Fathom.3

.include <bsd.port.mk>
