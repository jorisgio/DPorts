# New ports collection makefile for:    p5-HTML-Copy
# Date created:				2007/08/25
# Whom:	      				chinsan
#
# $FreeBSD: ports/textproc/p5-HTML-Copy/Makefile,v 1.6 2012/11/17 06:02:04 svnexp Exp $
#

PORTNAME=	HTML-Copy
PORTVERSION=	1.30
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0+$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Copy a HTML file without breaking links

BUILD_DEPENDS=	p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww \
		p5-Class-Accessor>=0:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-URI>=0:${PORTSDIR}/net/p5-URI

PERL_CONFIGURE=	yes

MAN1=		htmlcopy.1
MAN3=		HTML::Copy.3

.include <bsd.port.mk>
