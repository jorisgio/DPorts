# New ports collection makefile for:	umurmur
# Date created:		2011-02-24
# Whom:			Ayumi Mitsui <ayu@commun.jp>
#
# $FreeBSD: ports/audio/umurmur/Makefile,v 1.4 2012/11/17 05:54:46 svnexp Exp $
#

PORTNAME=	umurmur
PORTVERSION=	0.2.8
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_GOOGLE_CODE}

MAINTAINER=	ayu@commun.jp
COMMENT=	Minimalistic Murmur (Mumble server)

LIB_DEPENDS=	config.10:${PORTSDIR}/devel/libconfig \
		protobuf-c.0:${PORTSDIR}/devel/protobuf-c

USE_GMAKE=	yes
GNU_CONFIGURE=	yes
USE_OPENSSL=	yes
CONFIGURE_ARGS=	--with-ssl=openssl

USE_RC_SUBR=	umurmur

CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.pre.mk>

pre-su-install:
	@PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL} ${PKGNAME} PRE-INSTALL

post-patch:
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/src/conf.h
	@${REINPLACE_CMD} -e 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/src/conf.c
	@${REINPLACE_CMD} \
		-e 's|/etc/|${PREFIX}/etc/|g' ${WRKSRC}/umurmur.conf.example

post-install:
	@${MKDIR} ${PREFIX}/etc/umurmur
	@${INSTALL_DATA} ${WRKSRC}/umurmur.conf.example ${PREFIX}/etc/umurmur/umurmur.conf.sample
	@if [ ! -f ${PREFIX}/etc/umurmur/umurmur.conf ]; then \
		${CP} -p ${PREFIX}/etc/umurmur/umurmur.conf.sample ${PREFIX}/etc/umurmur/umurmur.conf; \
	fi

.include <bsd.port.post.mk>
