# Ports collection makefile for:	p5-Pod-Markdown
# Date created:			18 November, 2011
# Whom:				Cheng-Lung Sung <clsung@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Pod-Markdown/Makefile,v 1.6 2012/12/17 06:36:02 svnexp Exp $
#

PORTNAME=	Pod-Markdown
PORTVERSION=	1.320000
CATEGORIES=	textproc devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/000$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Module to convert POD to Markdown

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Pod-Parser>=0:${PORTSDIR}/textproc/p5-Pod-Parser
RUN_DEPENDS=	p5-Pod-Parser>=0:${PORTSDIR}/textproc/p5-Pod-Parser

TEST_DEPENDS=	p5-Test-Difference>=0:${PORTSDIR}/devel/p5-Test-Differences

PERL_CONFIGURE=	yes

MAN1=		pod2markdown.1
MAN3=		Pod::Markdown.3

.include <bsd.port.mk>
