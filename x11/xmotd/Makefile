# New ports collection makefile for:	xmotd
# Date created:		29 January 2001
# Whom:			Matthew West <mwest@uct.ac.za>
#
# $FreeBSD: ports/x11/xmotd/Makefile,v 1.13 2012/11/17 06:03:22 svnexp Exp $
#

PORTNAME=	xmotd
DISTVERSION=	1.17.3b
PORTREVISION=	2
CATEGORIES=	x11
MASTER_SITES=	http://www.ee.ryerson.ca/~elf/pub/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A message-of-the-day browser for X11 and dumb-terminals

USE_IMAKE=	yes
USE_XORG=	ice sm x11 xaw xext xmu xt
NO_INSTALL_MANPAGES=	yes
XFREE86_HTML_MAN=	no

MAN8=		xmotd.8
PLIST_FILES=	bin/xmotd

OPTIONS_DEFINE=	HTML MOTIF XPM
HTML_DESC=	Use HTML widget instead of ASCII text

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MHTML}
MAKE_ARGS+=	-DHAVE_HTML
BROKEN=		Does not compile when WITH_HTML is set
.endif

.if ${PORT_OPTIONS:MMOTIF}
MAKE_ARGS+=	-DMOTIF
USE_MOTIF=	yes
.endif

.if ${PORT_OPTIONS:MXPM}
USE_XORG+=	xpm
.endif

post-extract:
	@${TOUCH} ${WRKSRC}/xmotd.man

post-patch:
	@${REINPLACE_CMD} -e 's:/usr/local/bin/::g' ${WRKSRC}/xmotd.8
.for file in libhtmlw/HTML-PSformat.c main.c textmode.c xmotd.c
	@${REINPLACE_CMD} -e 's:malloc.h:stdlib.h:' ${WRKSRC}/${file}
.endfor
.if ${PORT_OPTIONS:MHTML}
	@${REINPLACE_CMD} -e 's:XCOMM #define HAVE_HTML:#define HAVE_HTML:g' ${WRKSRC}/Imakefile
.endif
.if ${PORT_OPTIONS:MMOTIF}
	@${REINPLACE_CMD} -e 's:XCOMM #define MOTIF:#define MOTIF:g' ${WRKSRC}/Imakefile
.endif
.if ${PORT_OPTIONS:MXPM}
	@${REINPLACE_CMD} -e 's:XCOMM #define HAVE_XPM:#define HAVE_XPM:g' ${WRKSRC}/Imakefile
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xmotd ${LOCALBASE}/bin/xmotd
	${INSTALL_MAN} ${WRKSRC}/xmotd.8 ${MANPREFIX}/man/man8

.include <bsd.port.mk>
