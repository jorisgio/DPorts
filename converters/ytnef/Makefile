# New ports collection makefile for:	ytnef
# Date created:		21 Feb 2005
# Whom:			Rodrigo Graeff <delphus@gmail.com>
#
# $FreeBSD: ports/converters/ytnef/Makefile,v 1.9 2012/11/17 05:55:05 svnexp Exp $
#

PORTNAME=	ytnef
PORTVERSION=	2.6
PORTREVISION=	1
CATEGORIES=	converters mail
MASTER_SITES=	SF

MAINTAINER=	delphus@gmail.com
COMMENT=	Unpack data in MS Outlook TNEF format

LIB_DEPENDS=	ytnef.0:${PORTSDIR}/devel/libytnef
RUN_DEPENDS=	p5-MIME-Tools>=0:${PORTSDIR}/mail/p5-MIME-Tools

USE_PERL5_RUN=	yes
GNU_CONFIGURE=	yes

CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

PLIST_FILES=	bin/ytnef bin/ytnefprocess.pl bin/ytnefprint
PORTDOCS=	AUTHORS NEWS README

post-patch:
	@${REINPLACE_CMD} -e 's|^#!/usr/bin/perl|#!${PERL}|' \
		${WRKSRC}/src/ytnef/ytnefprocess.pl

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
