# New ports collection makefile for:	p5-IDNA-Punycode
# Date created:				Jan 19 2004
# Whom:	      				Erwin Lansing <erwin@FreeBSD.org>
#
# $FreeBSD: ports/textproc/p5-IDNA-Punycode/Makefile,v 1.13 2012/11/17 06:02:04 svnexp Exp $
#

PORTNAME=	IDNA-Punycode
PORTVERSION=	0.03
PORTREVISION=	2
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ROBURBAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl module to encode Unicode string in Punycode

PERL_CONFIGURE=	YES

MAN3=		IDNA::Punycode.3

post-patch:
	@${RM} -f ${WRKSRC}/lib/IDNA/.Punycode.pm.swp

.include <bsd.port.mk>
