# New ports collection makefile for:	s-news
# Date created:				Jul 13 13:29:47 EEST 2004
# Whom:					Andrey Slusar <anray@FreeBSD.org>
#
# $FreeBSD: ports/news/s-news/Makefile,v 1.11 2012/11/18 02:51:57 svnexp Exp $
#

PORTNAME=	s-news
PORTVERSION=	0.1.11
PORTREVISION=	2
CATEGORIES=	news
MASTER_SITES=	http://www.lost.org.uk/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Simple news server for hosts with one or two users

LIB_DEPENDS=	gdbm:${PORTSDIR}/databases/gdbm

CONFLICTS=	leafnode-[1-9]* nntp-[0-9]*

CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--with-confdir=${PREFIX}/etc/s-news \
		--with-spooldir=/var/spool/s-news
CONFIGURE_ENV=	LIBS="-L${LOCALBASE}/lib"
CPPFLAGS+=	-I${LOCALBASE}/include

USE_GMAKE=	yes
HAS_CONFIGURE=	yes

MAN1=		inews.1
MAN8=		expire.8 listactive.8 makehistory.8 newgroup.8 nntpd.8 overview.8 \
		qnews.8 rmgroup.8 rnews.8

PORTDOCS=	README README.conf README.suck TODO

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
