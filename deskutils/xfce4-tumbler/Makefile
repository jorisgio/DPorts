# $FreeBSD: ports/deskutils/xfce4-tumbler/Makefile,v 1.16 2012/12/14 18:21:14 svnexp Exp $
#

PORTNAME=	tumbler
PORTVERSION=	0.1.26
CATEGORIES=	deskutils xfce
MASTER_SITES=	${MASTER_SITE_XFCE}
MASTER_SITE_SUBDIR=	src/xfce/${PORTNAME}/${PORTVERSION:R}
PKGNAMEPREFIX=	xfce4-
DIST_SUBDIR=	xfce4

MAINTAINER=	xfce@FreeBSD.org
COMMENT=	Thumbnail service for Xfce desktop

LIB_DEPENDS=	png15:${PORTSDIR}/graphics/png \
		freetype:${PORTSDIR}/print/freetype2 \
		dbus-glib-1:${PORTSDIR}/devel/dbus-glib

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_GNOME=	glib20 gnomehack intltool intlhack
USE_LDCONFIG=	yes
USE_XFCE=	configenv
USE_PKGCONFIG=	build

CONFIGURE_ARGS=	--enable-xdg-cache \
		--disable-gtk-doc-html

OPTIONS_DEFINE=	DOCS NLS PIXBUF FONTS JPEG FFMPEG POPPLER GSTREAMER ODF RAW
OPTIONS_DEFAULT=	PIXBUF FONTS JPEG POPPLER GSTREAMER ODF
# GStreamer thumbnailer needs new 1.0 API
OPTIONS_EXCLUDE=	GSTREAMER
FONTS_DESC=	Fonts thumbnailer plugin

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USE_GETTEXT=	yes
CONFIGURE_ARGS+=--enable-nls
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.if ${PORT_OPTIONS:MDOCS}
CONFIGURE_ARGS+=--with-html-dir=${PREFIX}/share/gtk-doc/html
PLIST_SUB+=	APIDOCS=""
.else
CONFIGURE_ARGS+=--without-html-dir
PLIST_SUB+=	APIDOCS="@comment "
.endif

.if ${PORT_OPTIONS:MPIXBUF}
USE_GNOME+=	gdkpixbuf2
CONFIGURE_ARGS+=--enable-pixbuf-thumbnailer
PLIST_SUB+=	PIXBUF=""
.else
CONFIGURE_ARGS+=--disable-pixbuf-thumbnailer
PLIST_SUB+=	PIXBUF="@comment "
.endif

.if ${PORT_OPTIONS:MFONTS}
CONFIGURE_ARGS+=--enable-font-thumbnailer
PLIST_SUB+=	FONTS=""
.else
CONFIGURE_ARGS+=--disable-font-thumbnailer
PLIST_SUB+=	FONTS="@comment "
.endif

.if ${PORT_OPTIONS:MJPEG}
LIB_DEPENDS+=	jpeg:${PORTSDIR}/graphics/jpeg \
		exif:${PORTSDIR}/graphics/exif
CONFIGURE_ARGS+=--enable-jpeg-thumbnailer
PLIST_SUB+=	JPEG=""
.else
CONFIGURE_ARGS+=--disable-jpeg-thumbnailer
PLIST_SUB+=	JPEG="@comment "
.endif

.if ${PORT_OPTIONS:MFFMPEG}
LIB_DEPENDS+=	ffmpegthumbnailer:${PORTSDIR}/multimedia/ffmpegthumbnailer
CONFIGURE_ARGS+=--enable-ffmpeg-thumbnailer
PLIST_SUB+=	FFMPEG=""
.else
CONFIGURE_ARGS+=--disable-ffmpeg-thumbnailer
PLIST_SUB+=	FFMPEG="@comment "
.endif

.if ${PORT_OPTIONS:MPOPPLER}
LIB_DEPENDS+=	poppler-glib:${PORTSDIR}/graphics/poppler-glib
CONFIGURE_ARGS+=--enable-poppler-thumbnailer
PLIST_SUB+=	POPPLER=""
.else
CONFIGURE_ARGS+=--disable-poppler-thumbnailer
PLIST_SUB+=	POPPLER="@comment "
.endif

.if ${PORT_OPTIONS:MGSTREAMER}
USE_GSTREAMER=	yes
CONFIGURE_ARGS+=--enable-gstreamer-thumbnailer
PLIST_SUB+=	GSTREAMER=""
.else
CONFIGURE_ARGS+=--disable-gstreamer-thumbnailer
PLIST_SUB+=	GSTREAMER="@comment "
.endif

.if ${PORT_OPTIONS:MODF}
USE_GNOME+=	libgsf
CONFIGURE_ARGS+=--enable-odf-thumbnailer
PLIST_SUB+=	ODF=""
.else
CONFIGURE_ARGS+=--disable-odf-thumbnailer
PLIST_SUB+=	ODF="@comment "
.endif

.if ${PORT_OPTIONS:MRAW}
LIB_DEPENDS+=	openraw:${PORTSDIR}/graphics/libopenraw
CONFIGURE_ARGS+=--enable-raw-thumbnailer
PLIST_SUB+=	RAW=""
.else
CONFIGURE_ARGS+=--disable-raw-thumbnailer
PLIST_SUB+=	RAW="@comment "
.endif

post-patch:
.if empty(PORT_OPTIONS:MNLS)
	@${REINPLACE_CMD} -e 's|	po||' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>