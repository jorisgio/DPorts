# New ports collection makefile for:	libgda2
# Date created:				02 June 2002
# Whom:					Joe Marcus Clarke <marcus@FreeBSD.org>
#
# $FreeBSD: ports/databases/libgda3-odbc/Makefile,v 1.4 2012/11/17 05:55:09 svnexp Exp $
#   $MCom: ports/databases/libgda3-odbc/Makefile,v 1.2 2008/02/26 21:23:35 kwm Exp $
#

PORTREVISION?=	1
CATEGORIES=	databases gnome
PKGNAMESUFFIX?=	-odbc

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Provides odbc backend for the libgda3 library

MASTERDIR=	${.CURDIR}/../libgda3
BUILD_WRKSRC=	${WRKSRC}/providers/odbc/
INSTALL_WRKSRC=	${BUILD_WRKSRC}
PLIST=		${.CURDIR}/pkg-plist

LIBGDA3_SLAVE=	odbc

.include "${MASTERDIR}/Makefile"
