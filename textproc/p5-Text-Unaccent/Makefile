# New ports collection makefile for:	p5-Text-Unaccent
# Date created:				25 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Text-Unaccent/Makefile,v 1.6 2012/11/17 06:02:10 svnexp Exp $
#

PORTNAME=	Text-Unaccent
PORTVERSION=	1.08
PORTREVISION=	1
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Remove accents from a string

MAN3=	Text::Unaccent.3

USE_ICONV=	yes
PERL_CONFIGURE=	yes
CFLAGS+=	-DICONV_CONST=const

.include <bsd.port.mk>
