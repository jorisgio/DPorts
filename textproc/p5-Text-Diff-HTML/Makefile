# New ports collection makefile for:	textproc/p5-Text-Diff-HTML
# Date created:				28 September 2005
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-Text-Diff-HTML/Makefile,v 1.9 2012/11/17 06:02:09 svnexp Exp $
#

PORTNAME=	Text-Diff-HTML
PORTVERSION=	0.07
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Text::Diff::HTML - XHTML format for Text::Diff::Unified

BUILD_DEPENDS=	p5-Text-Diff>=0:${PORTSDIR}/textproc/p5-Text-Diff \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_MODBUILD=	yes

MAN3=		Text::Diff::HTML.3

.include <bsd.port.mk>
