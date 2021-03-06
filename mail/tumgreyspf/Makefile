# New ports collection makefile for:	tumgreyspf
# Date created:				31 Aug 2005
# Whom:					Marcus Alves Grando <mnag@FreeBSD.org>
#
# $FreeBSD: ports/mail/tumgreyspf/Makefile,v 1.18 2012/11/17 05:59:17 svnexp Exp $
#

PORTNAME=	tumgreyspf
PORTVERSION=	1.36
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.tummy.com/pub/tummy/tumgreyspf/ \
		ftp://ftp.tummy.com/pub/tummy/tumgreyspf/old-releases/ \
		LOCAL/sunpoet

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	External policy checker for the postfix mail server

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/spf.py:${PORTSDIR}/mail/py-spf

USE_PYTHON=	yes
NO_BUILD=	yes

TUMGREYSPF_DIR?=	/var/db/${PORTNAME}
TUMGREYSPF_USER?=	nobody
TUMGREYSPF_GROUP?=	nobody

PKGMESSAGE=	${WRKSRC}/pkg-message
PKGDEINSTALL=	${WRKDIR}/pkg-deinstall
PKGINSTALL=	${WRKDIR}/pkg-install

SUB_FILES=	pkg-message pkg-deinstall pkg-install
SUB_LIST=	TUMGREYSPF_DIR=${TUMGREYSPF_DIR} \
		TUMGREYSPF_USER=${TUMGREYSPF_USER} \
		TUMGREYSPF_GROUP=${TUMGREYSPF_GROUP} \
		PYTHON_CMD=${PYTHON_CMD}

PORTDOCS=	*

pre-everything::
	@${ECHO_MSG}
	@${ECHO_MSG} "You may set following options:"
	@${ECHO_MSG}
	@${ECHO_MSG} "TUMGREYSPF_DIR=/var/db/${PORTNAME}	Local are used to greylist"
	@${ECHO_MSG} "TUMGREYSPF_USER=nobody			User to run ${PORTNAME} (Default: nobody)"
	@${ECHO_MSG} "TUMGREYSPF_GROUP=nobody			Group to run ${PORTNAME} (Default: nobody)"
	@${ECHO_MSG}

post-patch:
	@${REINPLACE_CMD} -e "s|%%PREFIX%%|${PREFIX}|g" -e "s|%%TUMGREYSPF_DIR%%|${TUMGREYSPF_DIR}|g" \
		-e "s|%%LOCALBASE%%|${LOCALBASE}|g" ${WRKSRC}/tumgreyspfsupp.py \
		${WRKSRC}/tumgreyspf.conf
	@${GREP} -r "env python" ${WRKSRC} | ${CUT} -d: -f1 | \
		${XARGS} ${REINPLACE_CMD} -e "s|env python|env ${PYTHON_CMD}|"

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tumgreyspfsupp.py ${PYTHONPREFIX_SITELIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/tumgreyspf ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/tumgreyspf-clean ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/tumgreyspf-configtest ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/gentest ${PREFIX}/bin/tumgreyspf-gentest
	${INSTALL_SCRIPT} ${WRKSRC}/tumgreyspf-stat ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/tumgreyspf.conf ${PREFIX}/etc/tumgreyspf.conf.default
.if !exists(${PREFIX}/etc/tumgreyspf.conf)
	${INSTALL_DATA} ${WRKSRC}/tumgreyspf.conf ${PREFIX}/etc
.endif

post-install:
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/__default__.dist ${DATADIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README* ${DOCSDIR}
.endif
	@${CAT} ${PKGMESSAGE}
.if !defined(PACKAGE_BUILDING)
	@${SETENV} ${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL
.endif

.include <bsd.port.mk>
