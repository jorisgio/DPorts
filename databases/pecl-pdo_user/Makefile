# Ports collection makefile for:  pear-pdo_user
# Date created:			  2011-05-26
# Whom:				  Jui-Nan Lin <jnlin@csie.nctu.edu.tw>
#
# $FreeBSD: ports/databases/pecl-pdo_user/Makefile,v 1.2 2012/11/17 05:55:18 svnexp Exp $
#

PORTNAME=	pdo_user
PORTVERSION=	0.3.0
CATEGORIES=	databases www
MASTER_SITES=	http://pecl.php.net/get/
PKGNAMEPREFIX=	pecl-
DISTNAME=	PDO_USER-${PORTVERSION}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	PECL

MAINTAINER=	jnlin@csie.nctu.edu.tw
COMMENT=	PECL classes provides a Userspace interface for PDO drivers

WRKSRC=		${WRKDIR}/PDO_USER-${PORTVERSION}

USE_PHP=	pdo
USE_PHP_BUILD=	yes
USE_PHPIZE=	yes
USE_PHPEXT=	yes
PHP_MODNAME=	pdo_user

.include <bsd.port.mk>
