# New ports collection makefile for:	p5-Petal-Mail
# Date created:				26 May 2006
# Whom:					Aaron Dalton <aaron@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Petal-Mail/Makefile,v 1.10 2012/11/17 06:02:06 svnexp Exp $
#

PORTNAME=	Petal-Mail
PORTVERSION=	0.31
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BPOSTLE
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Format text e-mail using Petal

BUILD_DEPENDS=	p5-Petal>=0:${PORTSDIR}/textproc/p5-Petal \
		p5-Encode>=0:${PORTSDIR}/converters/p5-Encode
RUN_DEPENDS:=	${BUILD_DEPENDS}

MAN3=	Petal::Mail.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
