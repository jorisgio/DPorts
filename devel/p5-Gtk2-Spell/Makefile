# New ports collection makefile for:	p5-Gtk2-Spell
# Date created:		2006-03-21
# Whom:			Jose Alonso Cardenas Marquez <acardenas@bsd.org.pe>
#
# $FreeBSD: ports/devel/p5-Gtk2-Spell/Makefile,v 1.14 2012/11/17 05:56:18 svnexp Exp $
#

PORTNAME=	Gtk2-Spell
PORTVERSION=	1.03
PORTREVISION=	6
CATEGORIES=	devel perl5
MASTER_SITES=	SF/gtk2-perl/Gtk2_Spell/${PORTVERSION}
PKGNAMEPREFIX=	p5-

MAINTAINER=	acm@FreeBSD.org
COMMENT=	Perl interface to the Gtk2Spell library

BUILD_DEPENDS=	p5-Cairo>=0:${PORTSDIR}/graphics/p5-Cairo \
		p5-ExtUtils-Depends>=0:${PORTSDIR}/devel/p5-ExtUtils-Depends \
		p5-ExtUtils-PkgConfig>=0:${PORTSDIR}/devel/p5-ExtUtils-PkgConfig \
		p5-Glib2>=1.001:${PORTSDIR}/devel/p5-Glib2 \
		p5-Gtk2>=1.001:${PORTSDIR}/x11-toolkits/p5-Gtk2
LIB_DEPENDS=	gtkspell.0:${PORTSDIR}/textproc/gtkspell

PERL_CONFIGURE=	yes

MAN3=	Gtk2::Spell.3

post-patch:
		@${REINPLACE_CMD} -e 's=1.00rc2=1.001=g' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>
