# Created by: Matthias Petermann<matthias@petermann.it>
# $FreeBSD: ports/finance/trytond_product_cost_fifo/Makefile,v 1.2 2012/11/17 05:57:27 svnexp Exp $

PORTNAME=	trytond_product_cost_fifo
PORTVERSION=	2.4.0
CATEGORIES=	finance python
MASTER_SITES=	http://downloads2.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann.it
COMMENT=	Tryton Application Platform (Product Cost Fifo Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_product>=2.4.0:${PORTSDIR}/finance/trytond_product \
		trytond_stock>=2.4.0:${PORTSDIR}/finance/trytond_stock

USE_PYTHON=	yes
USE_PYDISTUTILS=easy_install

.include <bsd.port.mk>
