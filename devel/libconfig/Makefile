# Created by: Nikos Ntarmos <ntarmos@ceid.upatras.gr>
# $FreeBSD: ports/devel/libconfig/Makefile,v 1.12 2012/12/31 12:10:43 svnexp Exp $

PORTNAME=	libconfig
PORTVERSION=	1.4.9
CATEGORIES=	devel
MASTER_SITES=	http://www.hyperrealm.com/libconfig/

MAINTAINER=	ntarmos@ceid.upatras.gr
COMMENT=	Simple library for manipulating structured configuration files

CONFLICTS=	wand-libconfig-[0-9]*

USE_GNOME=	gnomehack
GNU_CONFIGURE=	yes
USE_LDCONFIG=	yes
USE_GMAKE=	yes
CONFIGURE_ARGS+=	--prefix=${PREFIX} --infodir=${PREFIX}/${INFO_PATH}
INFO=		libconfig

.include <bsd.port.mk>
