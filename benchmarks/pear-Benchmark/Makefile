# Ports collection makefile for:  pear-Benchmark
# Date created:			  09 September 2004
# Whom:				  Antonio Carlos Venancio Junior (<antonio@inf.ufsc.br>)
#
# $FreeBSD: ports/benchmarks/pear-Benchmark/Makefile,v 1.11 2012/11/17 05:54:50 svnexp Exp $
#

PORTNAME=	Benchmark
PORTVERSION=	1.2.9
CATEGORIES=	benchmarks devel www pear

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	PEAR framework to benchmark PHP scripts or function calls

BUILD_DEPENDS=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear
RUN_DEPENDS:=	${PEARDIR}/PEAR.php:${PORTSDIR}/devel/pear

USE_PHP=	bcmath
PEAR_AUTOINSTALL=	yes

.include <bsd.port.pre.mk>
.include "${PORTSDIR}/devel/pear/bsd.pear.mk"
.include <bsd.port.post.mk>
