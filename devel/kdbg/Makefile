# Created by: Chris D. Faulhaber <jedgar@fxp.org>
# $FreeBSD: ports/devel/kdbg/Makefile,v 1.53 2012/11/17 05:55:52 svnexp Exp $

PORTNAME=	kdbg
PORTVERSION=	2.5.2
CATEGORIES=	devel kde
MASTER_SITES=	SF/${PORTNAME}/Source%20Code/${PORTVERSION}

MAINTAINER=	thomas.sander@gmx.de
COMMENT=	Graphical user interface around gdb using KDE

LICENSE=	GPLv2

USE_CMAKE=	yes
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build
INSTALLS_ICONS=	yes

OPTIONS_DEFINE=	NLS
OPTIONS_DEFAULT=NLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.else
PLIST_SUB+=	NLS="@comment "
.endif

post-patch:
.if empty(PORT_OPTIONS:MNLS)
	${REINPLACE_CMD} -e 's|add_subdirectory(po)||g' ${WRKSRC}/CMakeLists.txt
.endif

.include <bsd.port.mk>
