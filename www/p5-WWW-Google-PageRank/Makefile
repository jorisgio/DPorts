# New ports collection makefile for:	p5-WWW-Google-PageRank
# Date created:		2006-07-19
# Whom:			Tsung-Han Yeh <snowfly@yuntech.edu.tw>
#
# $FreeBSD: ports/www/p5-WWW-Google-PageRank/Makefile,v 1.8 2012/11/17 06:02:55 svnexp Exp $
#

PORTNAME=	WWW-Google-PageRank
PORTVERSION=	0.17
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	snowfly@yuntech.edu.tw
COMMENT=	Perl interface for querying Google pagerank

BUILD_DEPENDS=	p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		WWW::Google::PageRank.3

.include <bsd.port.mk>
