# New ports collection makefile for:    moosefs-chunkserver
# Date created:         1 April 2010
# Whom:                 Chifeng Qu <chifeng@gmail.com>
#
# $FreeBSD: ports/sysutils/moosefs-chunkserver/Makefile,v 1.9 2012/11/17 06:01:38 svnexp Exp $
#

PORTNAME=	moosefs
PORTVERSION=	#
CATEGORIES=	sysutils
PKGNAMESUFFIX=	-chunkserver
.include "${.CURDIR}/../moosefs-master/bsd.port.moosefs.mk"

MAINTAINER=	chifeng@gmail.com
COMMENT=	Storing files data and synchronizing it among themselves

DISTINFO_FILE=	${.CURDIR}/../moosefs-master/distinfo
USE_RC_SUBR=	mfschunkserver

MAN5=		mfschunkserver.cfg.5 mfshdd.cfg.5
MAN8=		mfschunkserver.8

SUB_FILES+=	pkg-message
SUB_LIST+=	MFS_WORKDIR="${MFS_WORKDIR}"

CONFIGURE_ARGS=	--localstatedir=${MFS_WORKDIR} \
		--bindir=${PREFIX}/sbin \
		--with-default-user=${MFSUSER} \
		--with-default-group=${MFSGROUP} \
		--disable-mfsmaster \
		--disable-mfsmount \
		--disable-mfscgi \
		--disable-mfscgiserv \
		--enable-mfschunkserver

.include <bsd.port.pre.mk>

post-patch:
	${REINPLACE_CMD} -e 's;^general_mans;#general_mans;g' ${WRKSRC}/doc/Makefile.am \
		${WRKSRC}/doc/Makefile.in

post-install:
.for FILE in mfschunkserver mfshdd
	@if [ ! -f ${PREFIX}/etc/${i}.cfg ]; then \
		${CP} ${PREFIX}/etc/${FILE}.cfg.dist ${PREFIX}/etc/${FILE}.cfg ; \
	fi
.endfor
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>
