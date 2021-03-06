# New ports collection makefile for:	extmail
# Date created:				31 Frebruary 2006
# Whom:					Chifeng QU <chifeng@gmail.com>
#
# $FreeBSD: ports/mail/extmail/Makefile,v 1.16 2012/11/17 05:59:02 svnexp Exp $
#

PORTNAME=	extmail
PORTVERSION=	1.2
PORTREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	http://www.chifeng.name/dist/extmail/ \
		http://mirror3.extmail.net/dist/

MAINTAINER=	chifeng@gmail.com
COMMENT=	A high performance webmail system

RUN_DEPENDS=	p5-Unix-Syslog>=0:${PORTSDIR}/sysutils/p5-Unix-Syslog

USE_PERL5=	yes
NO_BUILD=	yes

OPTIONS=	MYSQL "Use MySQL support" On \
		LDAP "Use LDAP support" Off

.include <bsd.port.pre.mk>

.if defined(WITH_MYSQL)
RUN_DEPENDS+=	p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql
.endif
.if defined(WITH_LDAP)
RUN_DEPENDS+=	p5-DBD-LDAP>=0:${PORTSDIR}/databases/p5-DBD-LDAP
.endif

do-install:
	@cd ${WRKSRC} && ${COPYTREE_SHARE} . ${WWWDIR}

	@${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR}
	@${ECHO_CMD} '@exec ${CHOWN} -R ${WWWOWN}:${WWWGRP} ${WWWDIR:S,^${PREFIX}/,%D/,}' >> ${TMPPLIST}

	@${FIND} ${WWWDIR} -type d -print0 | ${XARGS} -0 ${CHMOD} 755
	@${ECHO_CMD} '@exec ${FIND} ${WWWDIR:S,^${PREFIX}/,%D/,} -type d -print0 | \
		${XARGS} -0 ${CHMOD} 755' >> ${TMPPLIST}

	@${FIND} \
		${WWWDIR}/cgi \
		${WWWDIR}/tools \
		${WWWDIR}/dispatch-init \
		${WWWDIR}/dispatch.fcgi \
		${WWWDIR}/dispatch_lig.sh \
		-type f -print0 | ${XARGS} -0 ${CHMOD} +x
	@${ECHO_CMD} '@exec ${FIND} \
		${WWWDIR:S,^${PREFIX}/,%D/,}/cgi \
		${WWWDIR:S,^${PREFIX}/,%D/,}/tools \
		${WWWDIR:S,^${PREFIX}/,%D/,}/dispatch-init \
		${WWWDIR:S,^${PREFIX}/,%D/,}/dispatch.fcgi \
		${WWWDIR:S,^${PREFIX}/,%D/,}/dispatch_lig.sh \
		-type f -print0 | ${XARGS} -0 ${CHMOD} +x' >> ${TMPPLIST}

post-install:
	@if [ ! -f ${WWWDIR}/webmail.cf ]; then \
		${CP} -p ${WWWDIR}/webmail.cf.default ${WWWDIR}/webmail.cf ; \
		${CHMOD} +w ${WWWDIR}/webmail.cf ; \
	fi

.include <bsd.port.post.mk>
