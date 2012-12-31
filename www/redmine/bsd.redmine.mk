# Module that simplifies installation of Redmine plugins.
#
# Date created:                      2010-09-12
# Whom:                              Eygene Ryabinkin <rea-fbsd@codelabs.ru>
#
# $FreeBSD: ports/www/redmine/bsd.redmine.mk,v 1.2 2012/11/17 06:03:02 svnexp Exp $
#
# We're assuming standard plugin installation sequence that is described
# in the http://www.redmine.org/wiki/redmine/Plugins
#
# Basically, we need the following variables to be defined:
# - REDMINE_PLUGIN_NAME: the name of the plugin;
# - WWWDIR: the location of the Redmine installation;
#   the default value is ${PREFIX}/www/redmine;
#   the directory must lie under ${PREFIX} or such configuration
#   will be IGNORE'd;
# - WRKSRC must be set to the root directory of the plugin contents:
#   we will copy all objects in this directory to the plugin's
#   destination directory, excluding all files named *.orig.
#
# PLIST will be generated automatically, there is no need to worry
# about it.  But if you will need to use your own (even the standard
# packaging list in ${PORTDIR}/pkg-plist), set the variable PLIST
# pointing to that file.
#
# You can override the target 'do-build', but in this case, you should
# remember that the target named 'redmine-plugin-plist' does the
# automated generation of the PLIST: use it if you need.
#
#
# Here is an example of a simple Makefile for Redmine plugin:
# {{{
# PORTNAME=	me-the-plugin
# PORTVERSION=	1.0
# CATEGORIES=	www
# MASTER_SITES=	http://cool.org.name/some/path/
#
# MAINTAINER=	you@your.org
# COMMENT=	Another cool plugin for Redmine
#
# REDMINE_PLUGIN_NAME=	redmine_http_auth
#
# .include "${.CURDIR}/../../www/redmine/bsd.redmine.mk"
# }}}

PKGNAMEPREFIX?=	redmine-

RUN_DEPENDS+=	redmine>=0.9:${PORTSDIR}/www/redmine

USE_RUBY=	yes
.if !defined(PLIST)
PLIST=		${WRKDIR}/PLIST
_GEN_PLIST=	YesPlease
.endif

WWWDIR?=	${PREFIX}/www/redmine
WWWDIR_REL=	${WWWDIR:S|^${PREFIX}/||}

.if ${WWWDIR_REL} == ${WWWDIR}
IGNORE=		WWWDIR is not a child of PREFIX (${PREFIX})
.endif

.if !defined(do-build)
do-build: redmine-plugin-plist
	@${DO_NADA}
.endif

redmine-plugin-plist:
.if defined(_GEN_PLIST)
	cd ${WRKSRC} && ${FIND} . -type f | ${GREP} -v '\.orig$$' | ${SED} -e's|^\.|${WWWDIR_REL}/vendor/plugins/${REDMINE_PLUGIN_NAME}|' >> ${PLIST}
	cd ${WRKSRC} && ${FIND} -d . -type d | ${SED} -e's|^\.|@dirrm ${WWWDIR_REL}/vendor/plugins/${REDMINE_PLUGIN_NAME}|' >> ${PLIST}
.else
	@${DO_NADA}
.endif

do-install:
	${MKDIR} "${WWWDIR}/vendor/plugins/${REDMINE_PLUGIN_NAME}"
	${TAR} -C "${WRKSRC}" -cf - --exclude '*.orig' . | ${TAR} -C "${WWWDIR}/vendor/plugins/${REDMINE_PLUGIN_NAME}" -xf -

.include <bsd.port.mk>