# New ports collection makefile for:	p5-Config-IniHash
# Date created:		2006-08-15
# Whom:			Gea-Suan Lin <gslin@gslin.org>
#
# $FreeBSD: ports/devel/p5-Config-IniHash/Makefile,v 1.12 2012/11/17 05:56:08 svnexp Exp $
#

PORTNAME=	Config-IniHash
PORTVERSION=	3.01.01
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	Config/JENDA
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension for reading and writing INI files

RUN_DEPENDS=	p5-Hash-Case>=0:${PORTSDIR}/devel/p5-Hash-Case \
		p5-IO-stringy>=0:${PORTSDIR}/devel/p5-IO-stringy \
		p5-Hash-WithDefaults>=0.04:${PORTSDIR}/devel/p5-Hash-WithDefaults
BUILD_DEPENDS:=	${RUN_DEPENDS}

PERL_CONFIGURE=	yes
USE_DOS2UNIX=	yes

MAN3=		Config::IniHash.3

.include <bsd.port.mk>
