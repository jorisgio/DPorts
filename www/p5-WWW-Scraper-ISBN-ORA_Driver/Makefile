# Ports collection makefile for:	p5-WWW-Scraper-ISBN-ORA_Driver
# Date created:			Nov 8, 2005
# Whom:				Ying-Chieh Liao <ijliao@csie.nctu.edu.tw>
#
# $FreeBSD: ports/www/p5-WWW-Scraper-ISBN-ORA_Driver/Makefile,v 1.13 2012/11/17 06:02:55 svnexp Exp $
#

PORTNAME=	WWW-Scraper-ISBN-ORA_Driver
PORTVERSION=	0.19
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	jadawin@FreeBSD.org
COMMENT=	Search driver for O'Reilly & Associates's online catalog

BUILD_DEPENDS=	p5-WWW-Scraper-ISBN>=0.25:${PORTSDIR}/www/p5-WWW-Scraper-ISBN
RUN_DEPENDS=	p5-Template-Extract>=0:${PORTSDIR}/textproc/p5-Template-Extract \
		p5-WWW-Mechanize>=0:${PORTSDIR}/www/p5-WWW-Mechanize \
		p5-WWW-Scraper-ISBN-Driver>=0.18:${PORTSDIR}/www/p5-WWW-Scraper-ISBN-Driver

PERL_CONFIGURE=	yes

MAN3=		WWW::Scraper::ISBN::ORA_Driver.3

.include <bsd.port.mk>
