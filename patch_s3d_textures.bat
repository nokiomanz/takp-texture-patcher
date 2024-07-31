@echo off

REM Enable command line extensions
verify other 2>nul
setlocal enableextensions
if %ErrorLevel%==1 (
	echo Cannot enable extensions.
	exit /b
)
setlocal enabledelayedexpansion
if %ErrorLevel%==1 (
	echo Cannot enable delayed expansion.
	exit /b
)

rem Verify existence of patch utility
if not exist "transpfx.exe" (
	echo Required file "transpfx.exe" could not be found
	exit /b
)

rem fix black areas for wood elf male plate helmet
set rt_global_chr=helm3.bmp

rem fix transparency for half elf male plate helmet
set mp_global_chr=helm24.bmp

rem fix transparency for felguard visors
set mp_felwithea_chr=femhe0003.bmp
set mp_gfaydark_chr=femhe0003.bmp
set mp_firiona_chr=femhe0003.bmp

rem fix transparency for ulak weapon
set mp_gequip=bl91bld.bmp

rem fix black eye of zomm
set rt_global_chr=%rt_global_chr%,eyehe0001.bmp

rem fix various feet textures which appear black or with black splotches
set rt_global_chr=%rt_global_chr%,bafft0202.bmp,bamft0202.bmp,bamhe0002.bmp
set rt_global_chr=%rt_global_chr%,bamhe0012.bmp,bamhe0022.bmp
set rt_global_chr=%rt_global_chr%,bamhe0032.bmp,bamhe0042.bmp,bamhe0052.bmp
set rt_global_chr=%rt_global_chr%,bamhe0062.bmp,dafft0002.bmp,dafft0102.bmp
set rt_global_chr=%rt_global_chr%,dafft0202.bmp,damft0002.bmp,damft0202.bmp
set rt_global_chr=%rt_global_chr%,dwmft0102.bmp,dwmft0202.bmp
set rt_global_chr=%rt_global_chr%,elfft0102.bmp,elfft0202.bmp,elfft0302.bmp
set rt_global_chr=%rt_global_chr%,elmft0002.bmp
set rt_global_chr=%rt_global_chr%,elmft0102.bmp,elmft0202.bmp,elmhe0012.bmp
set rt_global_chr=%rt_global_chr%,elmhe0022.bmp,elmhe0042.bmp,elmhe0052.bmp
set rt_global_chr=%rt_global_chr%,elmhe0062.bmp,elmhe0072.bmp,hafft0002.bmp
set rt_global_chr=%rt_global_chr%,hafft0202.bmp,hafft0302.bmp,hamft0002.bmp
set rt_global_chr=%rt_global_chr%,hamft0302.bmp,hamhe0012.bmp,hamhe0022.bmp
set rt_global_chr=%rt_global_chr%,hamhe0032.bmp,hamhe0042.bmp,hamhe0052.bmp
set rt_global_chr=%rt_global_chr%,hamhe0062.bmp,hamhe0072.bmp,hifft0102.bmp
set rt_global_chr=%rt_global_chr%,hifft0202.bmp,hifft0301.bmp,hifft0302.bmp
set rt_global_chr=%rt_global_chr%,himft0002.bmp,himft0102.bmp
set rt_global_chr=%rt_global_chr%,himft0202.bmp,hufft0002.bmp,humft0002.bmp
set rt_global_chr=%rt_global_chr%,humft0102.bmp,humft0202.bmp,humft0302.bmp
set rt_global_chr=%rt_global_chr%,humft0402.bmp,ivmhe0001.bmp,ogmhe0002.bmp
set rt_global_chr=%rt_global_chr%,ogmhe0012.bmp,ogmhe0022.bmp,ogmhe0032.bmp
set rt_global_chr=%rt_global_chr%,ogmhe0042.bmp,ogmhe0052.bmp,ogmhe0062.bmp
set rt_global_chr=%rt_global_chr%,ogmhe0072.bmp,trmch0102.bmp,trmch0202.bmp
set rt_global_chr=%rt_global_chr%,woehe0005.bmp,bamhe0072.bmp

rem remove transparency for many plate pieces
set rt_global_chr=%rt_global_chr%,damch0301.bmp,elflg0301.bmp,homch0301.bmp
set rt_global_chr=%rt_global_chr%,hafch0301.bmp,hafch0302.bmp,hoflg0301.bmp

rem fix transparency for classic skeletons
set mp_global_chr=%mp_global_chr%,skefa0001.bmp
set mp_global_chr=%mp_global_chr%,skelg0001.bmp
set mp_global_chr=%mp_global_chr%,skech0001.bmp

rem fix transparency for pegasus wings
set rt_airplane_chr=peghn0001.bmp
set mp_airplane_chr=peghn0001.bmp
set rt_southkarana_chr=peghn0001.bmp
set mp_southkarana_chr=peghn0001.bmp

rem remove transparency for some faces
set rt_global_chr=%rt_global_chr%,hifhe0051.bmp
set rt_global_chr=%rt_global_chr%,damhe0041.bmp

rem enable transparency for human male/female plate helmet, wood elf helm test
set mp_global_chr=%mp_global_chr%,helm15.bmp

rem fix various feet textures which appear black or with black splotches
set rt_global4_chr=bafft0002.bmp,bafft0102.bmp,bafft0202.bmp,bafft0302.bmp
set rt_global4_chr=%rt_global4_chr%,bamft0002.bmp,bamft0102.bmp,bamft0202.bmp
set rt_global4_chr=%rt_global4_chr%,bamft0302.bmp,bamhe0002.bmp,bamhe0012.bmp
set rt_global4_chr=%rt_global4_chr%,bamhe0022.bmp,bamhe0032.bmp,bamhe0042.bmp
set rt_global4_chr=%rt_global4_chr%,bamhe0052.bmp,bamhe0062.bmp,bamhe0072.bmp
set rt_global4_chr=%rt_global4_chr%,spehe0003.bmp
set rt_global_chr=%rt_global_chr%,ermft0201.bmp,ermft0202.bmp

rem fix various feet textures which appear black or with black splotches
set rt_gfaydark_chr=brfft0002.bmp,brmft0002.bmp,drihe0003.bmp,femft0102.bmp
set rt_gfaydark_chr=%rt_gfaydark_chr%,gffft0002.bmp,gfmft0002.bmp,golch0102.bmp
set rt_gfaydark_chr=%rt_gfaydark_chr%,golch0202.bmp,pifft0002.bmp,wolhe0006.bmp
set rt_gfaydark_chr=%rt_gfaydark_chr%,wolhe0106.bmp,wolhe0206.bmp,wolhe0306.bmp

rem nilbog test for qeynos citizen feet
set rt_commons_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_commons_chr=%rt_commons_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_eastkarana_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_eastkarana_chr=%rt_eastkarana_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_ecommons_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_ecommons_chr=%rt_ecommons_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_freporte_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_freporte_chr=%rt_freporte_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_freportn_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_freportn_chr=%rt_freportn_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_freportw_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_freportw_chr=%rt_freportw_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_highkeep_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_highkeep_chr=%rt_highkeep_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_highpass_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_highpass_chr=%rt_highpass_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_kithicor_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_kithicor_chr=%rt_kithicor_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_lakerathe_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_lakerathe_chr=%rt_lakerathe_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_lavastorm_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_lavastorm_chr=%rt_lavastorm_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_mistmoore_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_mistmoore_chr=%rt_mistmoore_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_neriaka_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_neriaka_chr=%rt_neriaka_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_northkarana_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_northkarana_chr=%rt_northkarana_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_nro_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_nro_chr=%rt_nro_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_oasis_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_oasis_chr=%rt_oasis_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_oot_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_oot_chr=%rt_oot_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qcat_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qcat_chr=%rt_qcat_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qey2hh1_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qey2hh1_chr=%rt_qey2hh1_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qeynos_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qeynos_chr=%rt_qeynos_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qeynos2_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qeynos2_chr=%rt_qeynos2_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qeytoqrg_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qeytoqrg_chr=%rt_qeytoqrg_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_qrg_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_qrg_chr=%rt_qrg_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp
set rt_rathemtn_chr=qcfft0002.bmp,qcfft0102.bmp,qcfft0202.bmp,qcfft0302.bmp,qcfft0402.bmp,qcfft0502.bmp
set rt_rathemtn_chr=%rt_rathemtn_chr%,qcmft0002.bmp,qcmft0102.bmp,qcmft0202.bmp,qcmft0302.bmp,qcmft0402.bmp,qcmft0502.bmp,qcmft0602.bmp

rem nilbog sand giant hats and terrorantula worshippers
set rt_oasis_chr=%rt_oasis_chr%,giahe0019.bmp,giahe0020.bmp,giahe0021.bmp
set rt_nro_chr=%rt_nro_chr%,giahe0019.bmp,giahe0020.bmp,giahe0021.bmp
set rt_sro_chr=giahe0019.bmp,giahe0020.bmp,giahe0021.bmp

rem nilbog dark elf guard feet
set rt_neriaka_chr=%rt_neriaka_chr%,ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp
set rt_neriakb_chr=ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp
set rt_neriakc_chr=ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp
set rt_nektulos_chr=ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp
set rt_overthere_chr=ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp
set rt_hateplane_chr=ngmft0001.bmp,ngmft0002.bmp,ngmft0101.bmp,ngmft0102.bmp

rem nilbog fungus men
set rt_guktop_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_guktop_chr=%rt_guktop_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp
set rt_innothule_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_innothule_chr=%rt_innothule_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp
set rt_mischiefplane_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_mischiefplane_chr=%rt_mischiefplane_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp
set rt_runnyeye_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_runnyeye_chr=%rt_runnyeye_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp
set rt_unrest_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_unrest_chr=%rt_unrest_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp
set rt_sebilis_chr=funfa0001.bmp,funfa0101.bmp,funfa0201.bmp,funlg0001.bmp,funlg0002.bmp,funlg0101.bmp,funlg0102.bmp
set rt_sebilis_chr=%rt_sebilis_chr%,funlg0103.bmp,funlg0201.bmp,funlg0202.bmp,funlg0203.bmp,funua0001.bmp,funua0101.bmp,funua0201.bmp

rem nilbog snow orc vests
set rt_everfrost_chr=orcch0201.bmp

rem nilbog buildings with splotches
set rt_qeytoqrg_obj=front2.bmp
set rt_qey2hh1_obj=front2.bmp
set rt_northkarana_obj=front2.bmp
set rt_eastkarana_obj=front2.bmp
set rt_qey2hh1_obj=front2.bmp

rem fix transparency for stumps in swamp of no hope
set mp_swampofnohope_obj=swstumppassable.bmp

rem fix black splotches for globe top in skyfire and sleeper's tomb
set rt_skyfire_obj=oceany.bmp,burrpole.bmp
set rt_sleeper_obj=oceany.bmp,burrpole.bmp

rem fix transparency for neriak-style braziers
set rt_neriakc_obj=nerbraz.bmp
set rt_arena_obj=nerbraz.bmp
set rt_commons_obj=nerbraz.bmp
set rt_ecommons_obj=nerbraz.bmp
set rt_hateplane_obj=nerbraz.bmp
set rt_lfaydark_obj=nerbraz.bmp
set rt_neriaka_obj=nerbraz.bmp
set rt_neriakb_obj=nerbraz.bmp
set rt_oasis_obj=nerbraz.bmp
set rt_timorous_obj=nerbraz.bmp
set rt_veeshan_obj=nerbraz.bmp

rem fix transparency for goblin king crown in permafrost ice cube
set rt_permafrost_obj=cubegobcrown.bmp

rem fix transparency for trakanon's wings
set mp_sebilis_chr=trkhn0001.bmp,trkch0005.bmp,trkch0007.bmp
set mp_sebilis_chr=%mp_sebilis_chr%,trkua0002.bmp

rem fix black splotches for vox-like models
set rt_permafrost_chr=drach0104.bmp
set rt_dreadlands_chr=drach0104.bmp
set rt_wakening_chr=drach0104.bmp
set rt_westwastes_chr=drach0104.bmp
set rt_templeveeshan_chr=drach0104.bmp
set rt_sleeper_chr=drach0104.bmp

rem fix black splotches for druushk/cekenar/lady nevedaria/etc.'s wings
set rt_veeshan_chr=draua0201.bmp,draua0202.bmp,draua0203.bmp,draua0204.bmp,draua0205.bmp
set mp_veeshan_chr=draua0201.bmp,draua0202.bmp,draua0203.bmp,draua0204.bmp,draua0205.bmp
set rt_westwastes_chr=%rt_westwastes_chr%,draua0201.bmp,draua0202.bmp,draua0203.bmp,draua0204.bmp,draua0205.bmp
set rt_templeveeshan_chr=%rt_templeveeshan_chr%,draua0201.bmp,draua0202.bmp,draua0203.bmp,draua0204.bmp,draua0205.bmp
set rt_sleeper_chr=%rt_sleeper_chr%,draua0201.bmp,draua0202.bmp,draua0203.bmp,draua0204.bmp,draua0205.bmp

rem fix evil eye texture in various zones
set rt_beholder_chr=behhe0002.bmp
set rt_airplane_chr=%rt_airplane_chr%,behhe0002.bmp
set rt_fearplane_chr=behhe0002.bmp
set rt_eastkarana_chr=%rt_eastkarana_chr%,behhe0002.bmp
set rt_gukbottom_chr=behhe0002.bmp
set rt_runnyeye_chr=behhe0002.bmp

rem fix black splotches on barbarian horns
set rt_global4_chr=%rt_global4_chr%,bamhe0005.bmp

rem fix transparency for charasis brazier grates
set rt_charasis_obj=chbrgrate.bmp


call :PatchS3D "airplane_chr.s3d" "-rt %rt_airplane_chr% -mp %mp_airplane_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "arena_obj.s3d" "-rt %rt_arena_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "beholder_chr.s3d" "-rt %rt_beholder_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "charasis_obj.s3d" "-rt %rt_charasis_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "commons_chr.s3d" "-rt %rt_commons_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "commons_obj.s3d" "-rt %rt_commons_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "dreadlands_chr.s3d" "-rt %rt_dreadlands_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "eastkarana_chr.s3d" "-rt %rt_eastkarana_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "eastkarana_obj.s3d" "-rt %rt_eastkarana_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "ecommons_chr.s3d" "-rt %rt_ecommons_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "ecommons_obj.s3d" "-rt %rt_ecommons_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "everfrost_chr.s3d" "-rt %rt_everfrost_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "fearplane_chr.s3d" "-rt %rt_fearplane_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "felwithea_chr.s3d" "-mp %mp_felwithea_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "firiona_chr.s3d" "-mp %mp_firiona_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "freporte_chr.s3d" "-rt %rt_freporte_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "freportn_chr.s3d" "-rt %rt_freportn_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "freportw_chr.s3d" "-rt %rt_freportw_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "gequip.s3d" "-mp %mp_gequip%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "gfaydark_chr.s3d" "-rt %rt_gfaydark_chr% -mp %mp_gfaydark_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "global_chr.s3d" "-mp %mp_global_chr% -rt %rt_global_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "global4_chr.s3d" "-rt %rt_global4_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "gukbottom_chr.s3d" "-rt %rt_gukbottom_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "guktop_chr.s3d" "-rt %rt_guktop_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "hateplane_chr.s3d" "-rt %rt_hateplane_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "hateplane_obj.s3d" "-rt %rt_hateplane_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "highkeep_chr.s3d" "-rt %rt_highkeep_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "highpass_chr.s3d" "-rt %rt_highpass_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "innothule_chr.s3d" "-rt %rt_innothule_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "kithicor_chr.s3d" "-rt %rt_kithicor_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "lakerathe_chr.s3d" "-rt %rt_lakerathe_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "lavastorm_chr.s3d" "-rt %rt_lavastorm_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "lfaydark_obj.s3d" "-rt %rt_lfaydark_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "mischiefplane_chr.s3d" "-rt %rt_mischiefplane_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "mistmoore_chr.s3d" "-rt %rt_mistmoore_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "nektulos_chr.s3d" "-rt %rt_nektulos_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriaka_chr.s3d" "-rt %rt_neriaka_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriaka_obj.s3d" "-rt %rt_neriaka_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriakb_chr.s3d" "-rt %rt_neriakb_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriakb_obj.s3d" "-rt %rt_neriakb_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriakc_chr.s3d" "-rt %rt_neriakc_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "neriakc_obj.s3d" "-rt %rt_neriakc_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "northkarana_chr.s3d" "-rt %rt_northkarana_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "northkarana_obj.s3d" "-rt %rt_northkarana_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "nro_chr.s3d" "-rt %rt_nro_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "oasis_chr.s3d" "-rt %rt_oasis_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "oasis_obj.s3d" "-rt %rt_oasis_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "oot_chr.s3d" "-rt %rt_oot_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "overthere_chr.s3d" "-rt %rt_overthere_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "permafrost_chr.s3d" "-rt %rt_permafrost_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "permafrost_obj.s3d" "-rt %rt_permafrost_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qcat_chr.s3d" "-rt %rt_qcat_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qey2hh1_chr.s3d" "-rt %rt_qey2hh1_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qey2hh1_obj.s3d" "-rt %rt_qey2hh1_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qeynos_chr.s3d" "-rt %rt_qeynos_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qeynos2_chr.s3d" "-rt %rt_qeynos2_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qeytoqrg_chr.s3d" "-rt %rt_qeytoqrg_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qeytoqrg_obj.s3d" "-rt %rt_qeytoqrg_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "qrg_chr.s3d" "-rt %rt_qrg_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "rathemtn_chr.s3d" "-rt %rt_rathemtn_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "runnyeye_chr.s3d" "-rt %rt_runnyeye_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "sebilis_chr.s3d" "-rt %rt_sebilis_chr% -mp %mp_sebilis_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "skyfire_obj.s3d" "-rt %rt_skyfire_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "sleeper_chr.s3d" "-rt %rt_sleeper_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "sleeper_obj.s3d" "-rt %rt_sleeper_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "southkarana_chr.s3d" "-rt %rt_southkarana_chr% -mp %mp_southkarana_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "sro_chr.s3d" "-rt %rt_sro_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "swampofnohope_obj.s3d" "-mp %mp_swampofnohope_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "templeveeshan_chr.s3d" "-rt %rt_templeveeshan_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "timorous_obj.s3d" "-rt %rt_timorous_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "unrest_chr.s3d" "-rt %rt_unrest_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "veeshan_chr.s3d" "-rt %rt_veeshan_chr% -mp %mp_veeshan_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "veeshan_obj.s3d" "-rt %rt_veeshan_obj%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "wakening_chr.s3d" "-rt %rt_wakening_chr%"
if %ErrorLevel%==1 exit /b

echo.
call :PatchS3D "westwastes_chr.s3d" "-rt %rt_westwastes_chr%"
if %ErrorLevel%==1 exit /b

echo.
echo Patch successful

pause

exit /b

:PatchS3D
REM -- %~1[In ]: .s3d pak name
REM -- %~2[In ]: transpfx args
	if "%~1"=="" (
		echo PatchS3D error: No pak file has been specified
		set ErrorLevel=1
		exit /b
	)
	if "%~2"=="" (
		echo PatchS3D error: Invalid argument list
		set ErrorLevel=1
		exit /b
	)

   rem Verify existence of the target .s3d file
   if not exist "%~1" (
      echo Required file "%~1" could not be found
      exit /b
   )

   rem Test to see if a '.old' version of this file exists, suggesting that the
   rem current version has previously been patched
   if not exist "%~1.old" (
      echo Making backup file %~1.old..
      copy %~1 %~1.old
   )

   del %~1

   echo Patching %~1..
   transpfx %~1.old %~2 -o %~1

   if not exist "%~1" (
      echo Patch failed. Restoring old %~1..
      copy %~1.old %~1
      exit /b
   )
exit /b

endlocal
