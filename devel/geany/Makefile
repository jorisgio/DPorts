# Created by: Remington Lang <MrL0Lz@gmail.com>
# $FreeBSD: ports/devel/geany/Makefile,v 1.27 2012/11/17 05:55:44 svnexp Exp $

PORTNAME=	geany
PORTVERSION=	1.22
CATEGORIES=	devel editors
MASTER_SITES=	http://download.geany.org/ SF

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Fast and lightweight GTK+ IDE

LICENSE=	GPLv2

GNU_CONFIGURE=	yes
INSTALLS_ICONS=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomehack gtk20
USE_PKGCONFIG=	build
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_JOBS_SAFE=	yes

OPTIONS_DEFINE=	VTE NLS
OPTIONS_DEFAULT=	${OPTIONS_DEFINE}
VTE_DESC=	Embedded virtual terminal

MAN1=		geany.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.if ${PORT_OPTIONS:MVTE}
USE_GNOME+=	vte
CONFIGURE_ARGS+=--enable-vte
.else
CONFIGURE_ARGS+=--disable-vte
.endif

post-patch:
.if !${PORT_OPTIONS:MDOCS}
	@${REINPLACE_CMD} -e '/^SUBDIRS/ s|doc||' ${WRKSRC}/Makefile.in
.endif
.if !${PORT_OPTIONS:MNLS}
	@${REINPLACE_CMD} -e '/^SUBDIRS/ s|po||' ${WRKSRC}/Makefile.in
.endif

.include <bsd.port.mk>
