# New ports collection makefile for:	p5-Acme-Lou
# Date created:		2007-02-06
# Whom:			Masahiro Teramoto <markun@onohara.to>
#
# $FreeBSD: ports/japanese/p5-Acme-Lou/Makefile,v 1.5 2012/11/17 05:58:38 svnexp Exp $
#

PORTNAME=	Acme-Lou
PORTVERSION=	0.03
PORTREVISION=	1
CATEGORIES=	japanese textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	ja-p5-

MAINTAINER=	markun@onohara.to
COMMENT=	Let's together with Lou Ohshiba

BUILD_DEPENDS=	p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		ja-p5-Text-MeCab>=0:${PORTSDIR}/japanese/p5-Text-MeCab
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Acme::Lou.3

.include <bsd.port.mk>
