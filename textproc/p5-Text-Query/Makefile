# New ports collection makefile for:	textproc/p5-Text-Query
# Date created:				31 December 2000
# Whom:					Anton Berezin <tobez@tobez.org>
#
# $FreeBSD: ports/textproc/p5-Text-Query/Makefile,v 1.7 2012/11/17 06:02:10 svnexp Exp $
#

PORTNAME=	Text-Query
PORTVERSION=	0.07
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	tobez@FreeBSD.org
COMMENT=	Query processing framework

PERL_CONFIGURE=	yes

MAN3=		Text::Query.3 Text::Query::Build.3 \
		Text::Query::BuildAdvancedString.3 \
		Text::Query::BuildSimpleString.3 Text::Query::Optimize.3 \
		Text::Query::Parse.3 Text::Query::ParseAdvanced.3 \
		Text::Query::ParseSimple.3 Text::Query::Solve.3 \
		Text::Query::SolveAdvancedString.3 \
		Text::Query::SolveSimpleString.3

pre-patch:
	@${PERL} -pi -e 's/factor\(\$$self\)/\&factor(\$$self)/' \
		${WRKSRC}/lib/Text/Query/ParseAdvanced.pm

.include <bsd.port.mk>
