# New ports collection makefile for:	seq2
# Date created:				31 Oct 2003
# Whom:					osa
#
# $FreeBSD: ports/misc/seq2/Makefile,v 1.8 2012/11/17 05:59:44 svnexp Exp $
#

PORTNAME=	seq2
PORTVERSION=	0.2
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	LOCAL/bf

MAINTAINER=	bf@FreeBSD.org
COMMENT=	A clone of the UNIX(tm) program called seq

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=	configure.1

MAN1=		seq2.1
PLIST_FILES=	bin/seq2

post-patch:
	@${REINPLACE_CMD} -e 's|$$(CC) -o|$$(CC) $$(CFLAGS) -o|' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
