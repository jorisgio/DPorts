# New ports collection makefile for:	Path::Class::URI
# Date created:		20 Jan 2009
# Whom:			Jun Kuriyama <kuriyama@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Path-Class-URI/Makefile,v 1.4 2012/11/17 06:02:52 svnexp Exp $
#

PORTNAME=	Path-Class-URI
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:MIYAGAWA
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for serialize Path::Class objects as file:// URI

RUN_DEPENDS=	\
	p5-Path-Class>0:${PORTSDIR}/devel/p5-Path-Class \
	p5-URI>0:${PORTSDIR}/net/p5-URI \
	p5-Exporter-Lite>0:${PORTSDIR}/devel/p5-Exporter-Lite
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Path::Class::URI.3 \
		Path::Class::Unicode.3

.include <bsd.port.mk>
