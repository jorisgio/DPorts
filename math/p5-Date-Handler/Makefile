# New ports collection makefile for:	p5-Date-Handler
# Date Created:				25 Aug 2001
# Whom:					Shell Hung <shell@shellhung.org>
#
# $FreeBSD: ports/math/p5-Date-Handler/Makefile,v 1.12 2012/11/17 05:59:25 svnexp Exp $
#
# Considering this module for calculating date, so
# I putted it into 'math' and not 'devel' or other

PORTNAME=	Date-Handler
PORTVERSION=	1.2
CATEGORIES=	math perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module for calculating time differences

PERL_CONFIGURE=	yes

MAN3=		Date::Handler.3 Date::Handler::Delta.3 \
		Date::Handler::Range.3 Date::Handler::Test.3

post-patch:
	@${PERL} -pi -e 's/[a-z][a-z]_[A-Z][A-Z]/$$&.ISO8859-15/g' \
		${WRKSRC}/Handler.* ${WRKSRC}/README*

.include <bsd.port.mk>
