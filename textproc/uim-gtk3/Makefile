# New ports collection makefile for:   uim-gtk3
# Date created:        6 August 2011
# Whom:                MANTANI Nobutaka <nobutaka@FreeBSD.org>
#
# $FreeBSD: ports/textproc/uim-gtk3/Makefile,v 1.2 2012/11/17 06:02:24 svnexp Exp $
#

PKGNAMESUFFIX=	-gtk3

COMMENT=	GTK+ 3.x modules of uim input method

USE_GNOME=	gtk30
LIB_DEPENDS=	uim.8:${PORTSDIR}/textproc/uim

MASTERDIR=	${.CURDIR}/../../textproc/uim
PKGDIR=		${.CURDIR}
CONFIGURE_ARGS=	--with-gtk3 --enable-pref --enable-default-toolkit=gtk3

UIM_SLAVE=	yes

EXTRA_PATCHES=	${PATCHDIR}/extra-patch-gtk3_candwin_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_dict_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_immodule_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_pad_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_pref_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_switcher_Makefile.in \
		${PATCHDIR}/extra-patch-gtk3_toolbar_Makefile.in

.if defined(WITHOUT_X11)
IGNORE=		requires X11
.endif

do-build:
	(cd ${WRKSRC}/uim && ${GMAKE} libuim-x-util.la libuim-counted-init.la)
	(cd ${WRKSRC}/gtk3 && ${GMAKE})

do-install:
	(cd ${WRKSRC}/gtk3 && ${GMAKE} install)

.include "${MASTERDIR}/Makefile"
