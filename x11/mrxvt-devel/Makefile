# New ports collection makefile for:	mrxvt-devel
# Date created:				24 Apr 2005
# Whom:					Lars Engels <lars.engels@0x20.net>
#
# $FreeBSD: ports/x11/mrxvt-devel/Makefile,v 1.24 2012/11/17 06:03:18 svnexp Exp $
#

PORTNAME=	mrxvt-devel
PORTVERSION=	0.5.4
PORTREVISION=	7
CATEGORIES=	x11
MASTER_SITES=	SF/materm/mrxvt%20source/${PORTVERSION}
DISTNAME=	mrxvt-${PORTVERSION}

MAINTAINER=	lme@FreeBSD.org
COMMENT=	Development version of mrxvt

CONFLICTS=	mrxvt-0.4.*
USE_XORG=	x11
GNU_CONFIGURE=	yes

MAN1=		mrxvt.1

SUB_FILES+=	pkg-message

DESKTOP_ENTRIES=	"mrxvt" "mrxvt terminal emulator" \
			"${PREFIX}/share/pixmaps/mrxvt.png" \
			"mrxvt" "Utility;TerminalEmulator;" \
			false

OPTIONS=	XFT "Enable Xft support for fonts" Off \
		BACKGROUND "Enable background images" On\
		JPEG "Enable JPEG background images" On \
		PNG "Enable PNG background images" On \
		TRANSPARENCY "Enable transparency" On \
		SWAPSCREEN "Enable swapscreen" On \
		JAPANESE "Enable support for Japanese language" Off \
		24BITS "Prefer 24 bits color" On \
		MENUBAR "Enable menubar" On \
		TEXTSHADOW "Enable text shadow" Off \
		FRILLS "Enable internal borders and smart resizing" Off

.include <bsd.port.pre.mk>

CONFIGURE_ARGS+=	--enable-utempter
.if ${OSVERSION} >= 900004
CONFIGURE_ARGS+=	--disable-lastlog
.else
LIB_DEPENDS+=		utempter.0:${PORTSDIR}/sysutils/libutempter
.endif

.if defined(WITH_JAPANESE)
CONFIGURE_ARGS+=	--enable-xim --enable-cjk --with-encoding=eucj
.endif

.if defined(WITH_XFT)
USE_XORG+=	xft
CONFIGURE_ARGS+=	--enable-xft
.endif

.if defined(WITH_24BITS)
CONFIGURE_ARGS+=	--enable-24bits
.endif

.if defined(WITHOUT_BACKGROUND)
CONFIGURE_ARGS+=	--disable-xpm
.endif

.if defined(WITHOUT_JPEG) || defined(WITHOUT_BACKGROUND)
CONFIGURE_ARGS+=	--disable-jpeg
.else
LIB_DEPENDS+=	jpeg.11:${PORTSDIR}/graphics/jpeg
.endif

.if defined(WITHOUT_PNG) || defined(WITHOUT_BACKGROUND)
CONFIGURE_ARGS+=	--disable-png
.else
LIB_DEPENDS+=	png15:${PORTSDIR}/graphics/png
.endif

.if defined(WITHOUT_TRANSPARENCY)
CONFIGURE_ARGS+=	--disable-transparency
.endif

.if !defined(WITHOUT_MENUBAR)
CONFIGURE_ARGS+=	--enable-menubar
.endif

.if defined(WITH_TEXTSHADOW)
CONFIGURE_ARGS+=	--enable-text-shadow
.endif

.if defined(WITHOUT_SWAPSCREEN)
CONFIGURE_ARGS+=	--disable-swapscreen
.endif

.if defined(WITH_FRILLS)
CONFIGURE_ARGS+=	--enable-frills
.endif

## Rarely used options, not in the main menu
# How many lines to save in the scroll buffer
.if defined(SAVE_LINES)
CONFIGURE_ARGS+=	--with-save-lines=${SAVE_LINES:M[0-9]*}
.endif

# Maximal number of terminals
.if defined(MAX_TERMINALS)
CONFIGURE_ARGS+=	--with-max-term=${MAX_TERMINALS:M[0-9]*}
.endif

# Maximal number of profiles
.if defined(MAX_PROFILES)
CONFIGURE_ARGS+=	--with-max-profiles=${MAX_PROFILES:M[0-9]*}
.endif

# Extra height of active tab as a percentage of the font height
.if defined(EXTRA_ATAB_HEIGHT)
CONFIGURE_ARGS+=	--with-atab-extra=${EXTRA_ATAB_HEIGHT:M[0-9]*}
.endif

# The radius of tab corners as a percentage of the font X offset
.if defined(TAB_RADIUS)
CONFIGURE_ARGS+=	--with-tab-radius=${TAB_RADIUS:M[0-9]*}
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/mrxvt ${PREFIX}/bin
	${MKDIR} ${PREFIX}/share/pixmaps
	@for pixmap in ${WRKSRC}/share/pixmaps/* ; \
	do ${INSTALL_DATA} $$pixmap ${PREFIX}/share/pixmaps/ ; \
	done
	${MKDIR} ${PREFIX}/etc/mrxvt
	${INSTALL_DATA} ${WRKSRC}/share/mrxvtrc ${PREFIX}/etc/mrxvt/mrxvtrc.sample
	${INSTALL_DATA} ${WRKSRC}/share/default.menu ${PREFIX}/etc/mrxvt/default.menu.sample
	${INSTALL_DATA} ${WRKSRC}/share/submenus.menu ${PREFIX}/etc/mrxvt/submenus.menu.sample
	${INSTALL_MAN} ${WRKSRC}/doc/mrxvt.1 ${MANPREFIX}/man/man1
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}/scripts
	${INSTALL_DATA} ${WRKSRC}/share/scripts/mrxvtset.pl ${EXAMPLESDIR}/scripts
	${INSTALL_DATA} ${WRKSRC}/share/scripts/settitle.c ${EXAMPLESDIR}/scripts
.endif
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${CP} ${WRKSRC}/doc/*.bz2 ${DOCSDIR}
	${BZIP2_CMD} -d ${DOCSDIR}/*.bz2
.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
