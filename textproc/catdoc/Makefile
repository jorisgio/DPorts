# New ports collection makefile for:	catdoc
# Date created:				11 November 1997
# Whom:					Brion Moss <brion@queeg.com>
#
# $FreeBSD: ports/textproc/catdoc/Makefile,v 1.33 2012/12/04 13:59:53 svnexp Exp $
#

PORTNAME=	catdoc
PORTVERSION=	0.94.2
PORTREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	http://mirror.amdmi3.ru/distfiles/ \
		${MASTER_SITE_LOCAL:S|%SUBDIR%|amdmi3|} \
		ftp://ftp.dvo.ru/pub/Gentoo/distfiles/ \
		ftp://ftp.demos.ru/pub/sunfreeware/SOURCES/

MAINTAINER=	amdmi3@FreeBSD.org
COMMENT=	MS Word/Excel converter to plain ASCII or TeX. TK viewer included

GNU_CONFIGURE=	yes
USE_GMAKE=	yes
MAN1=		catdoc.1 xls2csv.1 catppt.1

OPTIONS=	WORDVIEW	"Build Tcl/Tk document viewer" On

.if !defined(LANG) || ${LANG} != ru_RU.KOI8-R
# Remove the below line to get Cyrillic code page support instead
CFLAGS+=	-DLATIN1=1
.endif

post-patch:
	@${REINPLACE_CMD} -e 's,%%PREFIX%%,${PREFIX},' ${WRKSRC}/doc/catdoc.1.in

.include <bsd.port.pre.mk>

.if defined(WITH_WORDVIEW)
USE_TK=			83+
.include "${PORTSDIR}/Mk/bsd.tcl.mk"
CONFIGURE_ARGS+=	--with-wish=${WISH}
PLIST_SUB+=		WORDVIEW=""
MAN1+=			wordview.1
.else
CONFIGURE_ARGS+=	--disable-wordview
PLIST_SUB+=		WORDVIEW="@comment "
.endif

.include <bsd.port.post.mk>
