# Created by: Jacek Pelka <jacek@combit.com.pl>
# $FreeBSD: ports/polish/ekg/Makefile,v 1.39 2013/01/05 14:44:25 svnexp Exp $

PORTNAME=	ekg
DISTVERSION=	1.8rc2
PORTREVISION=	1
PORTEPOCH=	3
CATEGORIES=	polish net-im
MASTER_SITES=	http://ekg.chmurka.net/

MAINTAINER=	pawel@FreeBSD.org
COMMENT=	Text-mode Gadu-Gadu client

LIB_DEPENDS=	execinfo:${PORTSDIR}/devel/libexecinfo \
		gadu:${PORTSDIR}/polish/libgadu

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_PKGCONFIG=	build
USE_GNOME=	gnomehack
USE_LDCONFIG=	yes

CONFIGURE_ARGS= --without-libungif \
		--without-libjpeg \
		--disable-ui-gtk

CFLAGS+=	-I/usr/include -I${LOCALBASE}/include
LDFLAGS+=	-L/usr/lib -lncurses -L${LOCALBASE}/lib -lexecinfo ${PTHREAD_LIBS}

MAN1=		ekg.1
MANLANG=	"" pl
MANCOMPRESSED=	no

OPTIONS_DEFINE=		ASPELL OPENSSL
OPTIONS_DEFAULT=	OPENSSL

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MASPELL}
LIB_DEPENDS+=		aspell:${PORTSDIR}/polish/aspell
CONFIGURE_ARGS+=	--enable-aspell
.endif

.if ! ${PORT_OPTIONS:MOPENSSL}
CONFIGURE_ARGS+=	--without-openssl
.endif

post-install:
	${STRIP_CMD} ${PREFIX}/bin/ekg

.include <bsd.port.mk>
