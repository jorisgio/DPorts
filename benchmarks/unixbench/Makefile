# New ports collection makefile for:    bytebench
# Date created:         28 December 1995
# Whom:                 se
#
# $FreeBSD: ports/benchmarks/unixbench/Makefile,v 1.26 2012/11/17 05:54:51 svnexp Exp $
#

PORTNAME=	unixbench
PORTVERSION=	4.1.0
PORTREVISION=	1
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.tux.org/pub/tux/benchmarks/System/unixbench/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The BYTE magazine's Public Domain benchmark for UNIX

SUB_FILES=	unixbench
MAKE_JOBS_UNSAFE=	yes

post-extract:
	${RM} -f ${WRKSRC}/pgms/select

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/unixbench ${PREFIX}/bin/
	-${MKDIR} ${PREFIX}/lib/unixbench
	for f in Run ; do \
		${INSTALL_SCRIPT} ${WRKSRC}/$${f} ${PREFIX}/lib/unixbench/ ; \
	done
	for f in Makefile README ; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${PREFIX}/lib/unixbench/ ; \
	done
	-${MKDIR} ${PREFIX}/lib/unixbench/pgms
	for f in ${WRKSRC}/pgms/* ; do \
		case $$f in \
	*.awk|*.sh|*perlbench) \
		${INSTALL_SCRIPT} $${f} ${PREFIX}/lib/unixbench/pgms/ ;; \
	*.logo|*.base) \
		${INSTALL_SCRIPT} $${f} ${PREFIX}/lib/unixbench/pgms/ ;; \
	*.orig|*.rej|*~) \
		;;\
	*) \
		${INSTALL_PROGRAM} $${f} ${PREFIX}/lib/unixbench/pgms/ ;; \
		esac ; \
	done
	-${MKDIR} ${PREFIX}/lib/unixbench/results
#	for f in ${WRKSRC}/results/* ; do \
#		${INSTALL_DATA} $${f} ${PREFIX}/lib/unixbench/results/ ; \
#	done
	-${MKDIR} ${PREFIX}/lib/unixbench/testdir
	for f in ${WRKSRC}/testdir/* ; do \
		${INSTALL_DATA} $${f} ${PREFIX}/lib/unixbench/testdir/ ; \
	done

.include <bsd.port.mk>
