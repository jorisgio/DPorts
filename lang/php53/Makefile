# Created by: Alex Dupre <sysadmin@alexdupre.com>
# $FreeBSD: ports/lang/php53/Makefile,v 1.187 2013/01/22 22:44:06 svnexp Exp $

PORTNAME=	php53
PORTVERSION=	5.3.21
PORTREVISION?=	0
CATEGORIES?=	lang devel www
MASTER_SITES=	${MASTER_SITE_PHP}
MASTER_SITE_SUBDIR=	distributions
DISTNAME=	php-${PORTVERSION}

MAINTAINER=	flo@FreeBSD.org
COMMENT=	PHP Scripting Language

LATEST_LINK=	${PKGNAMEPREFIX}${PORTNAME}${PKGNAMESUFFIX}

USE_BZIP2=	yes
MAKE_JOBS_SAFE=	yes
.if !defined(PKGNAMESUFFIX)
USE_AUTOTOOLS=	autoconf

LIB_DEPENDS=	pcre.3:${PORTSDIR}/devel/pcre

CONFIGURE_ARGS=	\
		--with-layout=GNU \
		--localstatedir=/var \
		--with-config-file-scan-dir=${PREFIX}/etc/php \
		--disable-all \
		--enable-libxml \
		--enable-mysqlnd \
		--with-libxml-dir=${LOCALBASE} \
		--with-pcre-regex=${LOCALBASE} \
		--with-zlib-dir=/usr \
		--program-prefix=""

USE_GNOME=	libxml2

OPTIONS_DEFINE=	CLI CGI FPM APACHE AP2FILTER DEBUG SUHOSIN MULTIBYTE IPV6 \
		MAILHEAD LINKTHR

OPTIONS_DEFAULT=	CLI CGI SUHOSIN IPV6

CLI_DESC=	Build CLI version
CGI_DESC=	Build CGI version
FPM_DESC=	Build FPM version (experimental)
APACHE_DESC=	Build Apache module
AP2FILTER_DESC=	Use Apache 2.x filter interface (experimental)
SUHOSIN_DESC=	Suhosin protection system
MULTIBYTE_DESC=	zend multibyte support
MAILHEAD_DESC=	mail header patch
LINKTHR_DESC=	Link thread lib (for threaded extensions)

CONFLICTS=	php52-5* php5-5*

MAN1=		php-config.1 phpize.1

.include <bsd.port.pre.mk>

PATCH_DIST_STRIP=	-p1

PATCH_SITES+=	${MASTER_SITE_LOCAL} \
		http://people.freebsd.org/~flo/
PATCH_SITE_SUBDIR=	flo

.if ${PORT_OPTIONS:MSUHOSIN}
PATCHFILES+=	suhosin-patch-5.3.x-0.9.10.2.patch.gz
PLIST_SUB+=	SUHOSIN=""
.else
PLIST_SUB+=	SUHOSIN="@comment "
.endif

.if ${PORT_OPTIONS:MMAILHEAD}
PATCHFILES+=	php-5.3.x-mail-header.patch:mail
PATCH_SITES+=	http://choon.net/opensource/php/:mail
.endif

.if ${PORT_OPTIONS:MCLI}
PHP_SAPI+=	cli
PLIST_SUB+=	CLI=""
MAN1+=		php.1
.else
PLIST_SUB+=	CLI="@comment "
CONFIGURE_ARGS+=--disable-cli
.endif

.if ${PORT_OPTIONS:MCGI}
PHP_SAPI+=	cgi
PLIST_SUB+=	CGI=""
.else
PLIST_SUB+=	CGI="@comment "
CONFIGURE_ARGS+=--disable-cgi
.endif

.if ${PORT_OPTIONS:MFPM}
PHP_SAPI+=	fpm
MAN8+=		php-fpm.8
USE_RC_SUBR+=	php-fpm
CONFIGURE_ARGS+=--enable-fpm \
		--with-fpm-user=${WWWOWN} \
		--with-fpm-group=${WWWGRP}
PLIST_SUB+=	FPM=""
.else
PLIST_SUB+=	FPM="@comment "
.endif

.if ${PORT_OPTIONS:MAPACHE}
PHP_SAPI+=	mod
USE_APACHE=	22+
.include "${PORTSDIR}/Mk/bsd.apache.mk"
.if ${PORT_OPTIONS:MAP2FILTER}
CONFIGURE_ARGS+=--with-apxs2filter=${APXS}
.else
CONFIGURE_ARGS+=--with-apxs2=${APXS}
.endif
PKGMESSAGE=	${PKGDIR}/pkg-message.mod
MODULENAME=	libphp5
SHORTMODNAME=	php5
PLIST_SUB+=	APACHE=""
.else
PLIST_SUB+=	APACHE="@comment "
.endif

.if !defined(WITH_REGEX_TYPE) || ${WITH_REGEX_TYPE} == "php"
CONFIGURE_ARGS+=--with-regex=php
.elif defined(WITH_REGEX_TYPE) && ${WITH_REGEX_TYPE} == "system"
CONFIGURE_ARGS+=--with-regex=system
.endif

.if !defined(WITH_ZEND_VM) || ${WITH_ZEND_VM} == "CALL"
CONFIGURE_ARGS+=--with-zend-vm=CALL
.elif defined(WITH_ZEND_VM) && ${WITH_ZEND_VM} == "SWITCH"
CONFIGURE_ARGS+=--with-zend-vm=SWITCH
.elif defined(WITH_ZEND_VM) && ${WITH_ZEND_VM} == "GOTO"
CONFIGURE_ARGS+=--with-zend-vm=GOTO
.endif

CONFIGURE_ENV+=	ac_cv_pthreads_lib="" \
		ac_cv_pthreads_cflags="" \
		pthreads_working="yes" \
		lt_cv_path_SED="sed"

.if ${PORT_OPTIONS:MLINKTHR}
CONFIGURE_ENV+=	LIBS="${LIBS} ${PTHREAD_LIBS}"
.endif

.if ${PORT_OPTIONS:MDEBUG}
CONFIGURE_ARGS+=--enable-debug
.endif

.if ${PORT_OPTIONS:MMULTIBYTE}
CONFIGURE_ARGS+=--enable-zend-multibyte
.endif

.if empty(PORT_OPTIONS:MIPV6)
CONFIGURE_ARGS+=--disable-ipv6
.endif

post-patch:
	@${TOUCH} ${WRKSRC}/ext/php_config.h
	@${REINPLACE_CMD} "s|^\(extension_dir\)|; \1|" ${WRKSRC}/php.ini-*
.if ${PORT_OPTIONS:MFPM}
	@${REINPLACE_CMD} -e "s|^;\(pid\)|\1|;s|^;\(pm\.[a-z_]*_servers\)|\1|" \
		${WRKSRC}/sapi/fpm/php-fpm.conf.in
.endif

# Work around issues with newer (>=2.64) autoconf
pre-configure:
	@${REINPLACE_CMD} -E 's:^((m4_)?divert)[(]([0-9]*)[)]:\1(600\3):' \
		${WRKSRC}/configure.in `${FIND} ${WRKSRC} -name '*.m4'`
	@${RM} ${WRKSRC}/configure
	@${CAT} ${WRKSRC}/acinclude.m4 ${WRKSRC}/build/libtool.m4 > ${WRKSRC}/aclocal.m4

post-build:
	@${ECHO_CMD} "PHP_VER=53" > ${WRKDIR}/php.conf
	@${ECHO_CMD} "PHP_VERSION=${PORTVERSION}" >> ${WRKDIR}/php.conf
	@${ECHO_CMD} "PHP_SAPI=${PHP_SAPI}" >> ${WRKDIR}/php.conf
	@${ECHO_CMD} "PHP_EXT_INC=pcre spl" >> ${WRKDIR}/php.conf

test: build
	@(cd ${WRKSRC} && ${MAKE} test)

post-install:
	@${INSTALL_DATA} ${WRKSRC}/php.ini-development ${PREFIX}/etc
	@${INSTALL_DATA} ${WRKSRC}/php.ini-production ${PREFIX}/etc
	@${INSTALL_DATA} ${WRKDIR}/php.conf ${PREFIX}/etc
	@${TOUCH} ${PREFIX}/include/php/ext/php_config.h
.if ${PORT_OPTIONS:MFPM}
	@${CP} -n ${PREFIX}/etc/php-fpm.conf.default ${PREFIX}/etc/php-fpm.conf
.endif
.if ${PORT_OPTIONS:MAPACHE}
	@${CAT} ${PKGMESSAGE}
.endif

.else
.include "${MASTERDIR}/Makefile.ext"
.endif
.include <bsd.port.post.mk>
