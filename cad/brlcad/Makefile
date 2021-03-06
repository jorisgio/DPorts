# Created by: Pedro F. Giffuni <giffunip@asme.org>
# $FreeBSD: ports/cad/brlcad/Makefile,v 1.57 2012/12/15 17:11:55 svnexp Exp $

PORTNAME=	brlcad
PORTVERSION=	7.22.0
PORTREVISION=	1
CATEGORIES=	cad
MASTER_SITES=	SF/${PORTNAME}/BRL-CAD%20Source/${PORTVERSION}

MAINTAINER=	erik@brlcad.org
COMMENT=	CSG modelling system from the US Ballistic Research Laboratory

BUILD_DEPENDS=	${LOCALBASE}/include/tnt/jama_lu.h:${PORTSDIR}/math/jama	\
		xsltproc:${PORTSDIR}/textproc/libxslt
LIB_DEPENDS=	pthread-stubs:${PORTSDIR}/devel/libpthread-stubs \
		drm:${PORTSDIR}/graphics/libdrm \
		png15:${PORTSDIR}/graphics/png \
		rle:${PORTSDIR}/graphics/urt \
		freetype:${PORTSDIR}/print/freetype2 \
		expat:${PORTSDIR}/textproc/expat2 \
		fontconfig:${PORTSDIR}/x11-fonts/fontconfig \
		xcb:${PORTSDIR}/x11/libxcb

USE_BZIP2=	yes
USE_GL=		gl glu
USE_XORG=	ice inputproto sm x11 xau xdamage xdmcp xext xfixes xft xi \
		xproto xrender xscrnsaver xt xxf86vm
USE_GMAKE=	yes
USE_BISON=	build
USE_TCL=	85
USE_TK=		85
USE_LDCONFIG=	yes

PREFIX?=	${LOCALBASE}/${PORTNAME}
NO_MTREE=	yes
USE_GNOME=	gnomehack
USE_CMAKE=	yes
MAKE_JOBS_SAFE=	yes

PLIST_SUB+=	PORTVERSION=${PORTVERSION}

CFLAGS+=	-I${LOCALBASE}/include
#LDFLAGS+=	-L${LOCALBASE}/lib
CMAKE_ARGS=	-DBRLCAD_ENABLE_STRICT:BOOL=OFF -DBRLCAD_TOGL=SYSTEM
MANPREFIX=	${DATADIR}/${PORTVERSION}

MAN1=	aliastorle.1 anim_script.1 anim_sort.1 anim_time.1 anim_track.1		\
	anim_turn.1 ap-pix.1 applymap.1 asc-nmg.1 asc-pl.1 asc2dsp.1		\
	asc2g.1 asc2pix.1 avg4.1 azel.1 bary.1 benchmark.1 bot_dump.1		\
	bot_shell-vtk.1 brlcad-config.1 brlcad.1 buffer.1 bw-fb.1 bw-imp.1	\
	bw-pix.1 bw-png.1 bw-ps.1 bw-rle.1 bw3-pix.1 bwcrop.1 bwdiff.1		\
	bwfilter.1 bwhist.1 bwhisteq.1 bwmod.1 bwrect.1 bwrot.1 bwscale.1	\
	bwshrink.1 bwstat.1 bwthresh.1 cad_boundp.1 cad_parea.1 canonize.1	\
	cell-fb.1 chan_mult.1 chan_permute.1 cmap-fb.1 coil.1 comgeom-g.1	\
	conv-vg2g.1 crop.1 cubitorle.1 cv.1 cy-g.1 dataprobe.1 db.1		\
	dbclean.1 dbcp.1 dbupgrade.1 decimate.1 dpix-pix.1 dunncolor.1		\
	dunnsnap.1 dvirle.1 dxf-g.1 enf-g.1 enigma.1 euclid-g.1 fant.1		\
	fast4-g.1 fb-bw.1 fb-cmap.1 fb-fb.1 fb-orle.1 fb-pix.1 fb-png.1		\
	fb-rle.1 fbanim.1 fbcbars.1 fbclear.1 fbcmap.1 fbcmrot.1 fbcolor.1	\
	fbed.1 fbfade.1 fbframe.1 fbfree.1 fbgamma.1 fbgrid.1 fbhelp.1		\
	fblabel.1 fbline.1 fbpoint.1 fbscanplot.1 fbserv.1 fbstretch.1		\
	fbzoom.1 fedex.1 fedex_plus.1 firpass.1 g-acad.1 g-dxf.1 g-egg.1	\
	g-euclid.1 g-iges.1 g-nff.1 g-nmg.1 g-obj.1 g-shell-rect.1 g-stl.1	\
	g-tankill.1 g-var.1 g-vrml.1 g-x3d.1 g2asc.1 g_diff.1 g_lint.1		\
	gencolor.1 get4d.1 get_orion.1 getami.1 getap.1 getbob.1 getcx3d.1	\
	getfb.1 getgmr.1 getiris.1 getmac.1 getmex.1 getqcr.1 getren.1		\
	getsun.1 gettaac.1 getx10.1 getx11.1 gif-fb.1 gif2fb.1 giftorle.1	\
	gqa.1 graytorle.1 halftone.1 hex.1 iges-g.1 imgdims.1 into.1 ir-X.1	\
	irdisp.1 lgt.1 loop.1 mac-pix.1 mcut.1 mergechan.1 mged.1 mkProbe.1	\
	morphedit.1 nastran-g.1 nirt.1 nmg-bot.1 nmg-rib.1 obj-g.1		\
	orle-fb.1 orle-pix.1 painttorle.1 patch-g.1 pgmtorle.1 pix-alias.1	\
	pix-bw.1 pix-bw3.1 pix-fb.1 pix-orle.1 pix-png.1 pix-ppm.1 pix-ps.1	\
	pix-rle.1 pix-sun.1 pix2asc.1 pixautosize.1 pixbackgnd.1		\
	pixbgstrip.1 pixblend.1 pixborder.1 pixbustup.1 pixclump.1 pixcmp.1	\
	pixcolors.1 pixcut.1 pixdiff.1 pixdsplit.1 pixfade.1 pixfilter.1	\
	pixhalve.1 pixhist.1 pixhist3d-pl.1 pixhist3d.1 pixinterp2x.1		\
	pixmatte.1 pixmerge.1 pixmorph.1 pixrect.1 pixrot.1 pixsaturate.1	\
	pixscale.1 pixshrink.1 pixstat.1 pixsubst.1 pixtile.1 pixuntile.1	\
	pl-X.1 pl-asc.1 pl-fb.1 pl-hpgl.1 pl-pl.1 pl-ps.1 pl-tek.1		\
	plcolor.1 pldebug.1 plgetframe.1 plline2.1 plrot.1 ply-g.1 png-bw.1	\
	png-fb.1 png-pix.1 png_info.1 polar-fb.1 poly-bot.1 pp-fb.1		\
	ppmtorle.1 proe-g.1 pyrmask.1 random.1 rastorle.1 rawtorle.1		\
	read98721.1 remapid.1 remrt.1 repos.1 reshoot.1 rlatorle.1 rle-fb.1	\
	rle-pix.1 rleClock.1 rleaddcom.1 rleaddeof.1 rlebg.1 rlebox.1		\
	rlecat.1 rleccube.1 rlecomp.1 rledither.1 rleflip.1 rlegrid.1		\
	rlehdr.1 rlehisto.1 rleinterp.1 rleldmap.1 rlemandl.1 rlenoise.1	\
	rlepatch.1 rleprint.1 rlequant.1 rlescale.1 rleselect.1 rlesetbg.1	\
	rleskel.1 rlespiff.1 rlesplice.1 rlesplit.1 rlestereo.1 rleswap.1	\
	rletoabA60.1 rletoabA62.1 rletoalias.1 rletoascii.1 rletocgm.1		\
	rletogif.1 rletogray.1 rletopaint.1 rletoppm.1 rletops.1		\
	rletorast.1 rletoraw.1 rletorla.1 rletotarga.1 rletotiff.1		\
	rlezoom.1 rpatch.1 rt.1 rt_bot_faces.1 rtarea.1 rtcheck.1 rtedge.1	\
	rtg3.1 rthide.1 rtpp.1 rtrange.1 rtray.1 rtregis.1 rtscale.1		\
	rtshot.1 rttherm.1 rtwalk.1 rtweight.1 rtwizard.1 rtxray.1		\
	scriptsort.1 secpass.1 shapefact.1 show3.1 showshot.1 showtherm.1	\
	smush.1 ssamp-bw.1 stl-g.1 sun-pix.1 tabinterp.1 tabsub.1		\
	tankill-g.1 targatorle.1 template.1 terrain.1 tifftorle.1 tire.1	\
	to8.1 tobw.1 unexp.1 unslice.1 urt.1 vdeck.1 viewpoint-g.1		\
	wasatchrle.1 wavelet.1

MAN3=	buildmap.3 bwdithermap.3 colorquant.3 dither.3 ditherbw.3		\
	dithergb.3 dithermap.3 float_to_exp.3 hilbert.3 hilbert_c2i.3		\
	hilbert_i2c.3 htond.3 inv_cmap.3 libcursor.3 libfb.3 liborle.3		\
	libplot3.3 librle.3 librt.3 libutahrle.3 libwdb.3 make_square.3		\
	redblack.3 rgb_to_bw.3 rle_addhist.3 rle_cp.3 rle_debug.3		\
	rle_delcom.3 rle_freeraw.3 rle_get_error.3 rle_get_set.3		\
	rle_get_setup.3 rle_get_setup_ok.3 rle_getcom.3 rle_getraw.3		\
	rle_getrow.3 rle_getskip.3 rle_hdr.3 rle_op.3 rle_open_f.3		\
	rle_open_f_noexit.3 rle_put_init.3 rle_put_setup.3 rle_putcom.3		\
	rle_puteof.3 rle_putraw.3 rle_putrow.3 rle_raw_alloc.3			\
	rle_raw_free.3 rle_rawtorow.3 rle_row_alloc.3 rle_row_free.3		\
	rle_skiprow.3 scanargs.3

MAN5=	bw.5 cmap.5 dsp.5 gattributes.5 pix.5 plot3.5 rle.5

MANN=	3ptarb.nged B.nged E.nged M.nged Z.nged adc.nged ae.nged		\
	alias-pix.nged all_sf.nged analyze.nged anim_cascade.nged		\
	anim_fly.nged anim_hardtrack.nged anim_keyread.nged			\
	anim_lookat.nged anim_offset.nged anim_orient.nged animmate.nged	\
	apropos.nged aproposdevel.nged aproposlib.nged arb.nged arced.nged	\
	area.nged arot.nged attach.nged attr.nged autoview.nged bb.nged		\
	bev.nged bo.nged bolt.nged bot_condense.nged bot_decimate.nged		\
	bot_face_fuse.nged bot_face_sort.nged bot_vertex_fuse.nged		\
	build_region.nged c.nged cat.nged center.nged color.nged		\
	comb_color.nged copyeval.nged copymat.nged cp.nged cpi.nged d.nged	\
	dall.nged db.nged db_glob.nged dbconcat.nged debugbu.nged		\
	debugdir.nged debuglib.nged debugmem.nged debugnmg.nged			\
	decompose.nged delay.nged dg.nged dm.nged draw.nged dup.nged		\
	e_command.nged e_muves.nged eac.nged echo.nged edcodes.nged		\
	edcolor.nged edcomb.nged edgedir.nged edit.nged edit_translate.nged	\
	edmater.nged em.nged eqn.nged erase.nged erase_all.nged ev.nged		\
	exists.nged exit.nged expand.nged export_body.nged extrude.nged		\
	eye_pt.nged facedef.nged facetize.nged find.nged fracture.nged		\
	g.nged garbage_collect.nged gastank.nged gqa.nged gr.nged gui.nged	\
	handle.nged help.nged helpdevel.nged helplib.nged hide.nged		\
	history.nged i.nged idents.nged ill.nged in.nged inside.nged		\
	item.nged iwidgets_buttonbox.n iwidgets_calendar.n			\
	iwidgets_canvasprintbox.n iwidgets_canvasprintdialog.n			\
	iwidgets_checkbox.n iwidgets_combobox.n iwidgets_dateentry.n		\
	iwidgets_datefield.n iwidgets_dialog.n iwidgets_dialogshell.n		\
	iwidgets_disjointlistbox.n iwidgets_entryfield.n			\
	iwidgets_extbutton.n iwidgets_extfileselectionbox.n			\
	iwidgets_extfileselectiondialog.n iwidgets_feedback.n			\
	iwidgets_fileselectionbox.n iwidgets_fileselectiondialog.n		\
	iwidgets_finddialog.n iwidgets_hierarchy.n iwidgets_hyperhelp.n		\
	iwidgets_labeledframe.n iwidgets_labeledwidget.n			\
	iwidgets_mainwindow.n iwidgets_menubar.n iwidgets_messagebox.n		\
	iwidgets_messagedialog.n iwidgets_notebook.n iwidgets_optionmenu.n	\
	iwidgets_panedwindow.n iwidgets_promptdialog.n				\
	iwidgets_pushbutton.n iwidgets_radiobox.n iwidgets_scopedobject.n	\
	iwidgets_scrolledcanvas.n iwidgets_scrolledframe.n			\
	iwidgets_scrolledhtml.n iwidgets_scrolledlistbox.n			\
	iwidgets_scrolledtext.n iwidgets_selectionbox.n				\
	iwidgets_selectiondialog.n iwidgets_shell.n iwidgets_spindate.n		\
	iwidgets_spinint.n iwidgets_spinner.n iwidgets_spintime.n		\
	iwidgets_tabnotebook.n iwidgets_tabset.n iwidgets_timeentry.n		\
	iwidgets_timefield.n iwidgets_toolbar.n iwidgets_watch.n		\
	journal.nged keep.nged keypoint.nged kill.nged killall.nged		\
	killtree.nged knob.nged l.nged l_muves.nged labelvert.nged lc.nged	\
	listeval.nged lm.nged loadtk.nged lookat.nged ls.nged make.nged		\
	make_bb.nged make_pnts.nged mater.nged matpick.nged memprint.nged	\
	mirface.nged mrot.nged mv.nged mvall.nged nirt.nged			\
	nmg_collapse.nged nmg_simplify.nged oed.nged opendb.nged		\
	orientation.nged orot.nged oscale.nged overlay.nged p.nged		\
	pathlist.nged paths.nged permute.nged picket_fence.nged plot.nged	\
	prcolor.nged prefix.nged press.nged preview.nged prj_add.nged		\
	ps.nged push.nged put_comb.nged putmat.nged q.nged qorot.nged		\
	qray.nged query_ray.nged quit.nged qvrot.nged r.nged rcc-blend.nged	\
	rcc-cap.nged rcc-tgc.nged rcc-tor.nged rcodes.nged read_muves.nged	\
	red.nged redraw_vlist.nged refresh.nged regdebug.nged regdef.nged	\
	regions.nged release.nged rfarb.nged rm.nged rmater.nged rmats.nged	\
	rot.nged rotobj.nged rpp-arch.nged rpp-cap.nged rrt.nged rt.nged	\
	rtcheck.nged savekey.nged saveview.nged sca.nged search.nged		\
	sed.nged setview.nged shader.nged shell.nged showmats.nged		\
	size.nged solids.nged sph-part.nged status.nged summary.nged		\
	sv.nged sync.nged t.nged t_muves.nged ted.nged title.nged tkhtml.n	\
	tol.nged tops.nged tor-rcc.nged tra.nged track.nged translate.nged	\
	tree.nged units.nged vars.nged vdraw.nged view.nged viewsize.nged	\
	vnirt.nged vquery_ray.nged vrmgr.nged vrot.nged wcodes.nged		\
	whatid.nged which_shader.nged whichair.nged whichid.nged who.nged	\
	window.nged window_frame.nged wire.nged wmater.nged x.nged		\
	xpush.nged zoom.nged

OPTIONS=	OPTIMIZATION "Build with optimizations" on

.include <bsd.port.pre.mk>

EXTRA_LIBS=	${PTHREAD_LIBS}

.ifdef WITH_OPTIMIZATION
CMAKE_BUILD_TYPE=Release
.endif

.if ${ARCH} == "sparc64"
BROKEN=		Does not compile on sparc64: invokes i386 assembler
.endif

post-patch:
	@${REINPLACE_CMD} "s+-exact Tcl 8\.5\.1+Tcl 8.5+" ${WRKSRC}/src/other/tcl/library/init.tcl
	@${REINPLACE_CMD} -e 's|{LIB_DIR}|{prefix}/libdata|' \
			${WRKSRC}/misc/pkgconfig/CMakeLists.txt

pre-install:
	${CP} ${FILESDIR}/mged.sh ${WRKSRC}
	${REINPLACE_CMD} -e 's+%%BRLCAD_ROOT%%+${PREFIX}+g;' ${WRKSRC}/mged.sh

# note that installing outside of PREFIX wigs out package stuff... :/
post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mged.sh ${PREFIX}/bin/mged.sh
	${LN} -s ${PREFIX}/bin/mged.sh ${LOCALBASE}/bin/mged.sh

regression-test: build
	@(cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${GMAKE} test)

.include <bsd.port.post.mk>
