# $FreeBSD: ports/www/yahoo-ui/Makefile,v 1.17 2012/11/29 20:35:47 svnexp Exp $

PORTNAME=	yahoo
DISTVERSION=	2.8.2
PORTREVISION=	1
CATEGORIES=	www
MASTER_SITES=	http://yuilibrary.com/downloads/yui2/:main \
		http://yuilibrary.com/support/20121030-vulnerability/dropin_patches/:patch
PKGNAMESUFFIX=	-ui
DISTFILES=	yui_${DISTVERSION}r1.zip:main \
		charts-${DISTVERSION:S/.//g}.zip:patch \
		swfstore-${DISTVERSION:S/.//g}.zip:patch \
		uploader-${DISTVERSION:S/.//g}.zip:patch

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	The Yahoo! User Interface (YUI) Library

LICENSE=	BSD

USE_ZIP=	yes

WRKSRC=		${WRKDIR}/yui
NO_BUILD=	yes

OPTIONS=	APACHE	"Configure for Apache-2.x" off \
		MINIMAL "Do not install documentation and examples" off

.include <bsd.port.pre.mk>

.if defined(WITH_MINIMAL)
NOPORTDOCS=	yes
NOPORTEXAMPLES=	yes
.endif

.if defined(WITH_APACHE)
USE_APACHE_RUN=	22+
CONFDIR=	${PREFIX}/${CONFDIR_REL}
CONFDIR_REL=	${APACHEETCDIR}/Includes
PLIST_SUB+=	NOAPACHE="" CONFDIR=${CONFDIR_REL}

CONF=		yui.conf
SUB_FILES+=	pkg-message ${CONF}

.if defined(NOPORTDOCS)
SUB_LIST+=	HASHMARK1=\#
.else
SUB_LIST+=	HASHMARK1=
.endif

.if defined(NOPORTEXAMPLES)
SUB_LIST+=	HASHMARK2=\#
.else
SUB_LIST+=	HASHMARK2=
.endif
.else
PLIST_SUB+=	NOAPACHE="@comment "
.endif

pre-patch:
	@${FIND} ${WRKSRC} -type f \( -name charts.swf -o -name swfstore.swf -o -name uploader.swf \) -delete

post-patch: .SILENT
	${INSTALL_DATA} ${WRKDIR}/charts-${DISTVERSION:S/.//g}/charts.swf ${WRKSRC}/build/charts/assets/charts.swf
	${INSTALL_DATA} ${WRKDIR}/swfstore-${DISTVERSION:S/.//g}/swfstore.swf ${WRKSRC}/build/swfstore/swfstore.swf
	${INSTALL_DATA} ${WRKDIR}/swfstore-${DISTVERSION:S/.//g}/swfstore.swf ${WRKSRC}/examples/storage/swfstore.swf
	${INSTALL_DATA} ${WRKDIR}/swfstore-${DISTVERSION:S/.//g}/swfstore.swf ${WRKSRC}/examples/swfstore/swfstore.swf
	${INSTALL_DATA} ${WRKDIR}/uploader-${DISTVERSION:S/.//g}/uploader.swf ${WRKSRC}/build/uploader/assets/uploader.swf
	${INSTALL_DATA} ${WRKDIR}/uploader-${DISTVERSION:S/.//g}/uploader.swf ${WRKSRC}/examples/uploader/assets/uploader.swf

do-install:
	@cd ${WRKSRC} && ${COPYTREE_SHARE} "assets build index.html \
		tests" ${WWWDIR}
	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR}
	@${ECHO_CMD} '@exec ${CHOWN} -R ${WWWOWN}:${WWWGRP} \
		${WWWDIR:S|^${PREFIX}/|%D/|}' >> ${TMPPLIST}
	@${FIND} ${WWWDIR} -type f -print0 | ${XARGS} -0 ${CHMOD} 644
	@${ECHO_CMD} '@exec ${FIND} ${WWWDIR} -type f -print0 | \
		${XARGS} -0 ${CHMOD} 644' >> ${TMPPLIST}
	@${FIND} ${WWWDIR} -type d -print0 | ${XARGS} -0 ${CHMOD} 755
	@${ECHO_CMD} '@exec ${FIND} ${WWWDIR} -type d -print0 | \
		${XARGS} -0 ${CHMOD} 755' >> ${TMPPLIST}

post-install:
.if defined(WITH_APACHE)
.if !defined(MAINTAINER_MODE)
	@if [ -d "${CONFDIR}" ]; then \
	  ${CP} ${WRKDIR}/${CONF} ${CONFDIR}; \
	else \
	  ${ECHO_MSG} "" ; \
	  ${ECHO_MSG} "Please check your Apache 2.x installation -" ; \
	  ${ECHO_MSG} "${CONFDIR} doesn't exist," ; \
	  ${ECHO_MSG} "so I cannot install ${CONF} there!" ; \
	  ${ECHO_MSG} "" ; \
	  ${FALSE} ; \
	fi
.endif
	@${CAT} ${PKGMESSAGE}
.endif
.if !defined(NOPORTDOCS)
	@cd ${WRKSRC}/docs && ${COPYTREE_SHARE} . ${DOCSDIR}
.endif
.if !defined(NOPORTEXAMPLES)
	@cd ${WRKSRC}/examples && ${COPYTREE_SHARE} . ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
