# New ports collection makefile for:	p5-DateTime-Format-SQLite
# Date created:		23 june 2009
# Whom:			Zach Thompson <hideo@lastamericanempire.com>
#
# $FreeBSD: ports/devel/p5-DateTime-Format-SQLite/Makefile,v 1.6 2012/11/17 05:56:12 svnexp Exp $
#

PORTNAME=	DateTime-Format-SQLite
PORTVERSION=	0.11
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parse and format SQLite dates and times

BUILD_DEPENDS=	p5-DateTime-Format-Builder>=0:${PORTSDIR}/devel/p5-DateTime-Format-Builder
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		DateTime::Format::SQLite.3

.include <bsd.port.mk>
