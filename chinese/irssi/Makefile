# New ports collection makefile for:	zh-tw-irssi
# Date created:				April 26 2001
# Whom:					vanilla
#
# $FreeBSD: ports/chinese/irssi/Makefile,v 1.37 2012/11/17 05:54:56 svnexp Exp $
#

PORTREVISION=	0
CATEGORIES=	chinese
PKGNAMEPREFIX=	zh-

MAINTAINER=	vanilla@FreeBSD.org
COMMENT=	A zh-tw cursor movement friendly, wrapping clean irssi

CONFLICTS?=	irssi-*
MASTERDIR=	${.CURDIR}/../../irc/irssi

EXTRA_PATCHES=	${.CURDIR}/files/patch-irssi.conf \
		${.CURDIR}/files/patch-utf8_break

.include "${MASTERDIR}/Makefile"
