# New ports collection makefile for:	libtext-charwidth-perl
# Date created:				08 Januar 2006
# Whom:					Meno Abels <meno.abels@adviser.com>
#
# $FreeBSD: ports/textproc/libtext-charwidth-perl/Makefile,v 1.6 2012/11/17 06:02:01 svnexp Exp $
#

PORTNAME=	libtext-charwidth-perl
PORTVERSION=	0.04
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_DEBIAN}
MASTER_SITE_SUBDIR=	pool/main/libt/libtext-charwidth-perl
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Documentation gettext tools

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

PERL_CONFIGURE=	yes

MAN3=		Text::CharWidth.3

post-extract:
	@${MV} ${WRKSRC}.orig ${WRKSRC}

.include <bsd.port.mk>
