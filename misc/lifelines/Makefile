# New ports collection makefile for:	lifelines
# Date created:		10 August 2000
# Whom:			Matt Emmerton <matt@gsicomp.on.ca>
#
# $FreeBSD: ports/misc/lifelines/Makefile,v 1.20 2012/11/17 05:59:41 svnexp Exp $
#

PORTNAME=	lifelines
PORTVERSION=	3.0.51
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}%20beta%20versions/${PORTVERSION}

MAINTAINER=	matt@gsicomp.on.ca
COMMENT=	An advanced genealogical system

GNU_CONFIGURE=	yes
USE_ICONV=	yes
USE_BZIP2=	yes
USE_BISON=	build

MAN1=		btedit.1 dbverify.1 llines.1

.if !defined(WITHOUT_NLS)
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
	@${REINPLACE_CMD} -e 's,ncursesw/curses.h,curses.h,' \
		${WRKSRC}/src/hdrs/mycurses.h
.ifdef NOPORTDOCS
	@${REINPLACE_CMD} -e 's,install-data-am: install-docDATA,install-data-am:,' \
		${WRKSRC}/Makefile.in
	@${REINPLACE_CMD} -e 's,install-data-am: install-dist_pkgdataDATA install-docDATA install-man,install-data-am: install-dist_pkgdataDATA,' \
		${WRKSRC}/docs/Makefile.in
.endif

post-install:
.for file in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/docs/${file} ${MANPREFIX}/man/man1
.endfor

.include <bsd.port.mk>
