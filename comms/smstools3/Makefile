# New ports collection makefile for:   	smstools3
# Date created:                        	2008-05-18
# Whom:                                	Martin Matuska <mm@FreeBSD.org>
#
# $FreeBSD: ports/comms/smstools3/Makefile,v 1.18 2012/11/17 05:55:01 svnexp Exp $
#

PORTNAME=	smstools
PORTVERSION=	3.1.14
CATEGORIES=	comms
MASTER_SITES=	http://smstools3.kekekasvi.com/packages/
DISTNAME=	smstools3-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	SMS Gateway software for GSM modems and mobile phones

CONFLICTS=	gnokii-[0-9]* smstools-2.* sendsms-[0-9]*

OPTIONS_DEFINE=	STATS EXAMPLES DOCS
OPTIONS_DEFAULT=	STATS
STATS_DESC=	Build status and statistics support

WRKSRC=		${WRKDIR}/smstools3

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_GMAKE=	yes
MAKE_JOBS_SAFE=	yes
USE_RC_SUBR=	smsd
SPOOLDIR?=	/var/spool/sms
LOGDIR?=	/var/log/smsd
PIDDIR?=	/var/run/smsd
SMSD_USER?=	uucp
SMSD_GROUP?=	dialer
SUB_LIST+=	SPOOLDIR="${SPOOLDIR}" LOGDIR="${LOGDIR}" PIDDIR="${PIDDIR}" \
		SMSD_USER="${SMSD_USER}" SMSD_GROUP="${SMSD_GROUP}"
PLIST_SUB+=	SPOOLDIR="${SPOOLDIR}" LOGDIR="${LOGDIR}" PIDDIR="${PIDDIR}" \
		SMSD_USER="${SMSD_USER}" SMSD_GROUP="${SMSD_GROUP}"

PORTDOCS=	*
PORTEXAMPLES=	.procmailrc .qmailrc *

.include <bsd.port.pre.mk>

.if ${PORT_OPTIONS:MSTATS}
LIB_DEPENDS+=	mm.14:${PORTSDIR}/devel/mm
CFLAGS+=	-I${LOCALBASE}/include
.else
CFLAGS+=	-DNOSTATS
.endif
.if ${OSVERSION} < 800045
SMSTOOLS_DEFAULT_COMPORT?= /dev/cuad0
.else
SMSTOOLS_DEFAULT_COMPORT?= /dev/cuau0
.endif

post-patch:
	@${REINPLACE_CMD} 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/Makefile \
		${WRKSRC}/install.sh ${WRKSRC}/src/smsd_cfg.h
	@${REINPLACE_CMD} 's|/dev/ttyS0|${SMSTOOLS_DEFAULT_COMPORT}|g' \
		${WRKSRC}/examples/smsd.conf.easy \
		${WRKSRC}/examples/smsd.conf.full \
		${WRKSRC}/examples/smsd.conf.non-root
	@${REINPLACE_CMD} 's|/bin/bash|/bin/sh|g' \
		${WRKSRC}/scripts/*

post-install:
	@${MKDIR} ${DATADIR}
	@for file in `${FIND} ${WRKSRC}/scripts -type f ! -name 'README' ! -name '*.bak'`; do \
		${INSTALL_SCRIPT} $$file ${DATADIR}/; \
	done
.for FILE in sendsms sms2html sms2unicode unicode2sms
	@${LN} -sf ${DATADIR}/${FILE} ${PREFIX}/bin/${FILE}
.endfor
	@${INSTALL_DATA} ${WRKSRC}/examples/smsd.conf.easy ${PREFIX}/etc/smsd.conf.sample
	@if [ ! -f ${PREFIX}/etc/smsd.conf ]; then \
		${CP} ${PREFIX}/etc/smsd.conf.sample ${PREFIX}/etc/smsd.conf; \
	fi
	@${MKDIR} ${SPOOLDIR} ${LOGDIR} ${PIDDIR}
	@${CHOWN} -R ${SMSD_USER}:${SMSD_GROUP} ${SPOOLDIR} ${LOGDIR} ${PIDDIR}
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}/slideshow
	@${INSTALL_DATA} ${WRKSRC}/doc/*.html ${DOCSDIR}/
	@${INSTALL_DATA} ${WRKSRC}/doc/slideshow/* ${DOCSDIR}/slideshow
.endif
.if ${PORT_OPTIONS:MEXAMPLES}
	@${MKDIR} ${EXAMPLESDIR}
	@for file in `${FIND} ${WRKSRC}/examples -type f ! -name 'README'`; do \
		${INSTALL_SCRIPT} $$file ${EXAMPLESDIR}/; \
	done
.endif
.include <bsd.port.post.mk>
