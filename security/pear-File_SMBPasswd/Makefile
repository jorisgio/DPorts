# Ports collection makefile for:  pear-File_SMBPasswd
# Date created:			  09 March 2005
# Whom:				  Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
#
# $FreeBSD: ports/security/pear-File_SMBPasswd/Makefile,v 1.8 2012/11/17 06:01:15 svnexp Exp $
#

PORTNAME=	File_SMBPasswd
PORTVERSION=	1.0.3
CATEGORIES=	security www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR class for managing SAMBA style password files

BUILD_DEPENDS=	${PEARDIR}/Crypt/CHAP.php:${PORTSDIR}/security/pear-Crypt_CHAP
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PHP=	mhash

CATEGORY=	File
FILES=		SMBPasswd.php
EXAMPLES=	smbpasswd.php smbpasswd

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
