# New ports collection makefile for:	KDE SDK
# Date created:				2 March 2001
# Whom:					Dmitry Sivachenko <demon@FreeBSD.org>
#
# $FreeBSD: ports/devel/kdesdk3/Makefile,v 1.82 2012/12/30 18:55:48 svnexp Exp $
#

PORTNAME=	kdesdk
PORTVERSION=	${KDE_VERSION}
PORTREVISION=	8
CATEGORIES=	devel kde
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTVERSION:S/.0//}/src
DIST_SUBDIR=	KDE

MAINTAINER=	ports@FreeBSD.org
COMMENT=	KDE Software Development Kit

RUN_DEPENDS=	bash:${PORTSDIR}/shells/bash
LIB_DEPENDS=	svn_client-1.0:${PORTSDIR}/devel/subversion

CONFLICTS=	umbrello-[0-9]* kcachegrind-[0-9]*

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_KDEBASE_VER=3

USE_PERL5=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
USE_BDB=	yes
USE_AUTOTOOLS=	libtool

USE_LDCONFIG=	yes

CONFIGURE_ARGS+=--mandir=${MANPREFIX}/man \
		--with-db-include-dir=${BDB_INCLUDE_DIR} \
		--with-db-lib-dir=${BDB_LIB_DIR} --with-db-name=${BDB_LIB_NAME} \
		--with-apr-config=${LOCALBASE}/bin/apr-1-config \
		--with-apu-config=${LOCALBASE}/bin/apu-1-config \
		--with-svn-include=${LOCALBASE}/include \
		--with-svn-lib=${LOCALBASE}/lib

MAN1=		cervisia.1 cvsblame.1 cvscheck.1 cvsversion.1 includemocs.1 kde-build.1 kdesvn-build.1 noncvslist.1

OPTIONS_DEFINE=	VALGRIND
VALGRIND_DESC=	Install devel/valgrind

.include "${.CURDIR}/../../x11/kde3/Makefile.kde"
.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MVALGRIND}
RUN_DEPENDS+=	valgrind:${PORTSDIR}/devel/valgrind
.endif

post-patch:
# Breakage might be caused by security/heimdal's broken fnmatch.h
	@${REINPLACE_CMD} -e 's|<\(fnmatch.h\)>|"/usr/include/\1"|' \
		${WRKSRC}/cervisia/stringmatcher.cpp

.include <bsd.port.mk>
