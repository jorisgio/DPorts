# New ports collection makefile for:	mail/p5-Mail-Mbox-MessageParser
# Date created:				Oct 28 2003
# Whom:					Cheng-Lung Sung <clsung@dragon2.net>
#
# $FreeBSD: ports/mail/p5-Mail-Mbox-MessageParser/Makefile,v 1.19 2012/11/17 05:59:09 svnexp Exp $
#

PORTNAME=	Mail-Mbox-MessageParser
PORTVERSION=	1.5002
PORTREVISION=	1
CATEGORIES=	mail perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A fast and simple mbox folder reader

BUILD_DEPENDS=	p5-Text-Diff>=0:${PORTSDIR}/textproc/p5-Text-Diff \
		p5-FileHandle-Unget>=0:${PORTSDIR}/devel/p5-FileHandle-Unget
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes
CONFIGURE_ARGS+=	</dev/null

MAN3=		Mail::Mbox::MessageParser.3 \
		Mail::Mbox::MessageParser::Cache.3 \
		Mail::Mbox::MessageParser::Grep.3 \
		Mail::Mbox::MessageParser::Perl.3 \
		Mail::Mbox::MessageParser::MetaInfo.3

.include <bsd.port.mk>
