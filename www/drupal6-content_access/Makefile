# New ports collection makefile for:	drupal6-content_access
# Date created:		02 jun	2010
# Whom:			Anderson Soares Ferreira <anderson@cnpm.embrapa.br>
#
# $FreeBSD: ports/www/drupal6-content_access/Makefile,v 1.4 2012/11/17 06:02:31 svnexp Exp $
#

PORTNAME=	content_access
DISTVERSION=	6.x-1.2
CATEGORIES=	www
MASTER_SITES=	http://ftp.drupal.org/files/projects/

MAINTAINER=	anderson@cnpm.embrapa.br
COMMENT=	Drupal 6.x Content Access module

USE_DRUPAL=	yes
DRUPAL6_MODULE=	yes

MODULE_DIRS=	translations tests

MODULE_FILES=	tests/content_access.test \
		tests/content_access_acl.test \
		tests/content_access_test_help.php \
		content_access.admin.inc \
		content_access.css \
		content_access.info \
		content_access.install \
		content_access.module \
		content_access.rules.inc \
		translations/content_access.pot \
		translations/de.po \
		translations/sv.po

DOC_FILES=	README.txt UPGRADE.txt LICENSE.txt

.include <bsd.port.mk>
