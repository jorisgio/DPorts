# New ports collection makefile for:	p5-File-DesktopEntry
# Date created:		2006-05-31
# Whom:			Jose Alonso Cardenas Marquez <acardenas@bsd.org.pe>
#
# $FreeBSD: ports/devel/p5-File-DesktopEntry/Makefile,v 1.9 2012/11/17 05:56:15 svnexp Exp $
#

PORTNAME=	File-DesktopEntry
PORTVERSION=	0.04
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	acm@FreeBSD.org
COMMENT=	Object to handle desktop files

BUILD_DEPENDS=	p5-PathTools>=0:${PORTSDIR}/devel/p5-PathTools \
		p5-File-BaseDir>=0.03:${PORTSDIR}/devel/p5-File-BaseDir
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=	File::DesktopEntry.3

.include <bsd.port.mk>
