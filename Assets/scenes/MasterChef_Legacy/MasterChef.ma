//Maya ASCII 2014 scene
//Name: MasterCheif.ma
//Last modified: Tue, Oct 22, 2013 09:00:36 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.8.5";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -56.85251707768748 4.8425904740678387 15.666017515757149 ;
	setAttr ".r" -type "double3" 3.8616472439842022 279.79999999999745 359.99999999996811 ;
	setAttr ".rp" -type "double3" 0 3.5527136788005009e-15 0 ;
	setAttr ".rpt" -type "double3" -3.7727201676813089e-16 -1.542394815301852e-15 -2.904833622767644e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 55.547641577643162;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0172695592045784 7.0316159725189209 0.014718055725097656 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.6077516959489095 80.627141703869697 -0.87928619126734464 ;
	setAttr ".r" -type "double3" -89.999999999999972 0 0 ;
	setAttr ".rp" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".rpt" -type "double3" 0 3.7173177227586167e-17 7.2946754127583593e-16 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1.8936410044656533;
	setAttr ".ow" 9.5837031062940454;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -13.627799034118652 28.418291091918945 -0.13113903999328655 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.4668340682983398 0.80899637937545776 105.2809552085743 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.6695688747571005;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 40.773773815046091 2.9800174725996031 -2.973946169600401 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -2.2204460492503131e-16 0 8.8817841970012523e-16 ;
	setAttr ".rpt" -type "double3" 1.110223024625152e-15 0 -6.6613381477507282e-16 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 5.2579120354044182;
	setAttr ".ow" 18.582971061235515;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.3841857998974092e-07 1.0464278385043144 1.4580678939819325 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "RootJ";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 8 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8 0 1;
	setAttr ".radi" 1.8;
createNode joint -n "BellyJ" -p "RootJ";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -av ".is" -type "double3" 1 1 1 ;
	setAttr -av ".is";
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 8 0 1;
	setAttr ".radi" 0.5;
createNode transform -n "theDiverMesh";
createNode transform -n "polySurface6" -p "theDiverMesh";
createNode transform -n "polySurface7" -p "polySurface6";
createNode transform -n "polySurface12" -p "polySurface7";
createNode transform -n "polySurface14" -p "polySurface12";
	setAttr ".rp" -type "double3" -2.0923371315002441 7.1620159149169922 0.53057181835174561 ;
	setAttr ".sp" -type "double3" -2.0923371315002441 7.1620159149169922 0.53057181835174561 ;
createNode transform -n "polySurface8";
	setAttr ".t" -type "double3" -0.0975189208984375 0.39570770263671839 -0.1497618556022644 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".rp" -type "double3" -2.9024810791015625 11.704292297363279 -0.60276979207992554 ;
	setAttr ".sp" -type "double3" -2.9024810791015625 11.704292297363279 -0.60276979207992554 ;
createNode transform -n "polySurface10" -p "polySurface8";
	setAttr ".t" -type "double3" -3.5749181392930044e-15 0.10000000000000007 0 ;
	setAttr ".rp" -type "double3" -8.5382404327392578 12.590993881225586 -0.86089879274368286 ;
	setAttr ".sp" -type "double3" -8.5382404327392578 12.590993881225586 -0.86089879274368286 ;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -3.9489165517873057 7.399909598123334 -1.4484233935363549 ;
	setAttr ".s" -type "double3" 0.7869582447983875 0.7869582447983875 0.7869582447983875 ;
	setAttr ".rp" -type "double3" 0.48786505432443605 1.7019680582979284 0.17600482411142596 ;
	setAttr ".rpt" -type "double3" 0 1.7267342999893742e-08 -1.079429330363979e-07 ;
	setAttr ".sp" -type "double3" 0.40647596120834439 1.7019683122634888 -0.026683002710344184 ;
	setAttr ".spt" -type "double3" 0.081389093116091646 -2.5396556041501483e-07 0.20268782682177017 ;
createNode transform -n "group1";
	setAttr ".rp" -type "double3" -3.6 12.821533981123991 0.12153398112399072 ;
	setAttr ".sp" -type "double3" -3.6 12.821533981123991 0.12153398112399072 ;
createNode transform -n "group2";
	setAttr ".t" -type "double3" 2.3350584268569947 -5.6215339811239913 -1.4215339811239909 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -3.6 12.821533981123991 0.12153398112399072 ;
	setAttr ".sp" -type "double3" -3.6 12.821533981123991 0.12153398112399072 ;
createNode transform -n "group3";
createNode transform -n "polySurface27" -p "group3";
createNode transform -n "polySurface39" -p "polySurface27";
createNode transform -n "polySurface28" -p "group3";
	setAttr ".rp" -type "double3" -1.3327177302545454 6.1769631638996705 -0.09390561259915664 ;
	setAttr ".sp" -type "double3" -1.3327177302545454 6.1769631638996705 -0.09390561259915664 ;
createNode mesh -n "polySurfaceShape31" -p "polySurface28";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:39]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 57 ".uvst[0].uvsp[0:56]" -type "float2" 0.375 0 0.625 0 0.375
		 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.125 0 0.25683233 0 0.375 0.8818323 0.625
		 0.8818323 0.74316764 0 0.25683233 0.16212602 0.125 0.16212602 0.375 0.58787394 0.625
		 0.58787394 0.875 0.16212602 0.74316764 0.16212602 0.625 0.16212602 0.375 0.16212602
		 0.375 0.75 0.625 0.75 0.625 0.8818323 0.375 0.8818323 0.625 1 0.375 1 0.50103045
		 0.58787394 0.50103045 0.75 0.50103045 0.75 0.50103045 0.8818323 0.50103045 1 0.50103045
		 0 0.50103045 1 0.50103045 0.16212602 0.625 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375
		 0.25 0.375 0.125 0.625 0.375 0.5 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625
		 0.625 0.5 0.625 0.375 0.625 0.875 0.125 0.75 0.125 0.875 0.25 0.75 0.25 0.25 0.125
		 0.25 0.25 0.125 0.25 0.125 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  -0.87007964 4.1469903 -0.81300157 -1.50517881 4.1469903 -0.81300157
		 -0.6808067 4.078465939 0.80000001 -1.69445169 4.078465939 0.80000001 -0.67252654 4.21138477 -7.4505806e-08
		 -1.70496678 4.21138477 -0.11241205 -0.33472389 4.57846594 2.9802322e-08 -0.57183069 4.77846575 0.89999998
		 -1.86090732 4.77846575 0.89999998 -2.098013639 4.57846594 -0.087587982 -1.86090732 4.47846603 -0.89999998
		 -0.79999995 4.47846603 -0.89999998 -0.87007964 3.57846594 0.39999998 -1.50517881 3.57846594 0.39999998
		 -1.50517881 3.37846565 0 -0.87007964 3.37846565 0 -1.50517881 3.078465939 -0.54047853
		 -0.87007964 3.078465939 -0.54047853 -1.23915875 4.77846575 1.19999993 -1.19180727 4.078465939 1
		 -1.19024694 3.57846594 0.39999998 -1.19024694 3.37846565 0 -1.19024694 3.078465939 -0.54047853
		 -1.19024694 4.1469903 -0.81300157 -1.16084111 4.47846603 -0.89999998 -0.60824972 6.93515778 -0.8566919
		 -2.12163353 6.93515778 -0.8566919 -0.60824972 6.93515778 0.65669185 -2.12163353 6.93515778 0.65669185
		 -1.3649416 7.19999981 -1.12153399 -1.3649416 7.19999981 0.92153394 -0.34340763 6.17846584 -1.12153399
		 -2.38647556 6.17846584 -1.12153399 -0.34340763 7.19999981 -0.1 -2.38647556 7.19999981 -0.1
		 -0.34340763 6.17846584 0.92153394 -2.20000005 6.17846584 0.92153394 -1.3649416 6.17846584 -1.46204531
		 -1.3649416 7.54051113 -0.1 -1.3649416 6.17846584 1.26204526 -2.5999999 6.17846584 -0.1
		 -0.0028963089 6.17846584 -0.1;
	setAttr -s 80 ".ed[0:79]"  0 23 0 2 19 0 0 11 0 1 10 0 2 4 0 3 5 0 4 0 0
		 4 6 1 5 1 0 7 2 0 6 7 1 8 3 0 7 18 1 9 5 1 8 9 1 9 10 1 10 24 1 11 6 1 2 12 0 3 13 0
		 12 20 0 5 14 0 13 14 0 4 15 0 14 21 1 12 15 0 1 16 0 14 16 0 0 17 0 17 22 0 15 17 0
		 18 8 1 19 3 0 18 19 1 20 13 0 19 20 1 21 15 1 20 21 1 22 16 0 21 22 1 23 1 0 22 23 1
		 24 11 1 23 24 1 25 29 1 29 26 1 27 30 1 30 28 1 11 31 1 31 25 1 10 32 1 32 26 1 25 33 1
		 33 27 1 26 34 1 34 28 1 27 35 1 35 7 1 28 36 1 36 8 1 37 24 1 37 32 1 37 29 1 37 31 1
		 38 29 1 38 34 1 38 30 1 38 33 1 39 30 1 39 36 1 39 18 1 39 35 1 40 9 1 40 36 1 40 34 1
		 40 32 1 41 6 1 41 31 1 41 33 1 41 35 1;
	setAttr -s 40 -ch 160 ".fc[0:39]" -type "polyFaces" 
		f 4 0 43 42 -3
		mu 0 4 0 31 33 19
		f 4 12 33 -2 -10
		mu 0 4 14 26 27 2
		f 4 20 37 36 -26
		mu 0 4 20 28 29 23
		f 4 -6 -12 14 13
		mu 0 4 11 6 16 17
		f 4 4 7 10 9
		mu 0 4 7 8 12 13
		f 4 6 2 17 -8
		mu 0 4 8 0 19 12
		f 4 -9 -14 15 -4
		mu 0 4 1 11 17 18
		f 4 -37 39 -30 -31
		mu 0 4 23 29 30 25
		f 4 -11 -77 79 57
		mu 0 4 13 12 53 56
		f 4 -13 -58 -72 70
		mu 0 4 26 14 48 47
		f 4 -18 48 -78 76
		mu 0 4 12 19 39 53
		f 4 1 35 -21 -19
		mu 0 4 2 27 28 20
		f 4 5 21 -23 -20
		mu 0 4 3 10 22 21
		f 4 -5 18 25 -24
		mu 0 4 9 2 20 23
		f 4 8 26 -28 -22
		mu 0 4 10 5 24 22
		f 4 -1 28 29 41
		mu 0 4 32 4 25 30
		f 4 -7 23 30 -29
		mu 0 4 4 9 23 25
		f 4 31 11 -33 -34
		mu 0 4 26 15 3 27
		f 4 -36 32 19 -35
		mu 0 4 28 27 3 21
		f 4 -38 34 22 24
		mu 0 4 29 28 21 22
		f 4 -40 -25 27 -39
		mu 0 4 30 29 22 24
		f 4 -41 -42 38 -27
		mu 0 4 5 32 30 24
		f 4 -44 40 3 16
		mu 0 4 33 31 1 18
		f 4 -32 -71 69 59
		mu 0 4 15 26 47 46
		f 4 50 -62 60 -17
		mu 0 4 18 34 35 33
		f 4 51 -46 -63 61
		mu 0 4 34 36 37 35
		f 4 -45 -50 -64 62
		mu 0 4 37 38 39 35
		f 4 -61 63 -49 -43
		mu 0 4 33 35 39 19
		f 4 45 54 -66 64
		mu 0 4 37 36 40 41
		f 4 55 -48 -67 65
		mu 0 4 40 42 43 41
		f 4 -47 -54 -68 66
		mu 0 4 43 44 45 41
		f 4 -53 44 -65 67
		mu 0 4 45 38 37 41
		f 4 47 58 -70 68
		mu 0 4 43 42 46 47
		f 4 -57 46 -69 71
		mu 0 4 48 44 43 47
		f 4 -60 -74 72 -15
		mu 0 4 16 49 50 17
		f 4 -59 -56 -75 73
		mu 0 4 49 51 52 50
		f 4 -55 -52 -76 74
		mu 0 4 52 36 34 50
		f 4 -73 75 -51 -16
		mu 0 4 17 50 34 18
		f 4 49 52 -79 77
		mu 0 4 39 38 54 53
		f 4 53 56 -80 78
		mu 0 4 54 55 56 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface40" -p "polySurface28";
	setAttr ".rp" -type "double3" -1.1569760690855313 3.5061341308743015 -0.24172970486160053 ;
	setAttr ".sp" -type "double3" -1.1569760690855313 3.5061341308743015 -0.24172970486160053 ;
createNode mesh -n "polySurfaceShape43" -p "polySurface40";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:59]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 117 ".uvst[0].uvsp[0:116]" -type "float2" 0.27248836 0.15713131
		 0.24671376 0.017550588 0.2197324 0.020031154 0.22450542 0.15751147 0.2585125 0.0069100261
		 0.2920903 0.15633947 0.27622783 0.0041904896 0.32014215 0.15301591 0.29425788 0.0026036203
		 0.34973407 0.14303756 0.20290887 0.023337215 0.18491709 0.017250031 0.16011357 0.15003484
		 0.19185674 0.154369 0.50985247 0.5 0.43362689 0.5 0.11916065 0.90618384 0.14093924
		 0.8808617 0.11547923 0.86722636 0.10200429 0.90047008 0.13025188 0.92053765 0.16037917
		 0.89595199 0.16168475 0.91528535 0.14664388 0.92151135 0.14786029 0.94728613 0.16325021
		 0.94592571 0.095779181 0.8870818 0.096266508 0.87227076 0.077402592 0.87650371 0.081585646
		 0.89036673 0.15901446 0.9961316 0.16283965 0.97387576 0.13682294 0.96708661 0.13230538
		 0.98556769 0.056378841 0.91112101 0.041854858 0.88740551 0.023052216 0.89485478 0.038953304
		 0.91991997 0.061842203 0.89668387 0.055171251 0.88402987 0.13007665 0.9510811 0.16277575
		 0.95941645 0.14828324 0.95796001 0 0 1 0 1 0.47442532 0 0.47442532 0 0 1 0 1 0.47442532
		 0 0.47442532 0 0 1 0 1 0.47442532 0 0.47442532 0 0 1 0 1 0.47442532 0 0.47442532
		 0.43362689 0.25 0.375 0.25 0.50985247 0.3681677 0.625 0.3681677 0.625 0.5 0.50985247
		 0.5 0.50985247 0.25 0.625 0.25 0.25683233 0.25 0.125 0.25 0.625 0.5 0.875 0.25 0.74316764
		 0.25 0.625 0.25 0.50985247 0.25 0.43362689 0.3681677 0.50985247 0.3681677 0.375 0.5
		 0.375 0.3681677 0.43362689 0.3681677 0.43362689 0.5 0.375 0.5 0.375 0.25 0.43362689
		 0.25 0.625 0.3681677 0.375 0.3681677 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[59:61]" -type "float3"  0 0.1283562 0 0 0.24486703 
		0 0 0.1283562 0;
	setAttr -s 62 ".vt[0:61]"  -0.87007964 2.23209691 -1.69108653 -1.50517881 2.23205423 -1.69108653
		 -2.040585279 2.23168612 -1.3979733 -2.30744171 2.23151851 -0.52153397 -1.51835334 2.23178864 0.65296656
		 -0.90000004 2.23178864 0.65296656 -2.19917226 2.23180795 0.19363183 -1.68868351 1.48368645 -1.026242256
		 -1.23210359 1.46540439 -1.24540305 -0.71218318 1.65293348 -1.068343401 -0.90131122 1.83009338 0.18249047
		 -0.65595108 1.6829052 -0.79274154 -0.75214005 1.36645401 0.36297259 -1.21618176 1.52647018 0.56408656
		 -1.80353224 1.30834424 0.41126546 -1.82028639 1.50343597 -0.10169673 -1.91035879 1.25298679 0.04634586
		 -0.66585428 1.7567215 -0.11911175 -0.56247991 1.69922316 -0.4419508 -0.47128442 1.28679371 -0.40707088
		 -0.56791723 1.39684427 0.0055486262 -1.82673097 1.52113914 -0.47285026 -1.96938086 1.33485341 -0.44002587
		 -1.21561968 0.90999252 -1.32097483 -1.67142928 0.92868358 -1.10237813 -0.60687459 0.92975038 -1.14000607
		 -1.76502848 1.33541477 -0.77889115 -1.88620162 1.034824491 -0.81035882 -0.47788998 1.131145 -0.83991331
		 -1.27326715 1.81324327 0.41045517 -1.71331155 1.68948233 0.14482689 -1.80756986 1.65952325 -0.5525617
		 -0.46530706 2.18922973 -1.12153387 -0.30369172 2.1910615 -0.37290192 -0.50962639 2.20025682 0.18335176
		 -0.56348658 3.48034358 -1.13386893 -1.80453444 3.48034358 -1.13386893 -0.56348658 3.48034358 0.56901163
		 -1.80453444 3.48034358 0.56901163 -0.33521432 3.48034358 -0.22291595 -2.032806635 3.48034358 -0.22291595
		 -1.50517893 3.48034358 0.82975411 -1.50517893 3.4803443 -0.22153398 -1.50517893 2.97359276 -1.39019001
		 -0.87007976 3.48034358 0.82975411 -0.87007976 3.48034358 -0.22231507 -0.87007976 2.97359276 -1.39019001
		 -1.70287228 4.10336351 -0.23489574 -1.9045347 4.10336351 -0.23593114 -1.80453444 3.97226 0.35742432
		 -1.70496678 3.97226 0.44844747 -1.70496678 3.98484588 -0.76047534 -1.80453444 3.98484588 -0.68085027
		 -0.40453482 4.10336351 -0.23593134 -0.66671962 4.10336351 -0.23548113 -0.6725266 3.97226 0.44844747
		 -0.56348658 3.97226 0.35742414 -0.56348658 3.98484588 -0.68085051 -0.6725266 3.98484588 -0.76047528
		 -1.22030449 1.40882587 0.11240185 -1.22033262 1.39473391 -0.43665621 -1.22038996 1.16689515 -0.92719483;
	setAttr -s 120 ".ed[0:119]"  1 0 0 9 0 0 3 2 0 5 4 0 6 3 0 4 6 0 2 1 0
		 31 3 1 7 31 0 8 7 0 30 6 0 2 7 0 1 8 0 5 10 0 4 29 0 4 41 0 9 11 0 12 10 0 13 12 0
		 29 13 0 30 14 0 21 15 0 15 16 0 17 18 0 18 19 0 20 19 0 20 17 0 22 16 0 21 22 1 8 23 0
		 7 24 0 23 24 0 25 23 0 9 25 0 18 11 0 14 16 0 30 15 0 7 26 0 26 27 0 24 27 0 31 21 1
		 10 17 0 12 20 0 25 28 0 11 28 0 26 21 0 27 22 0 19 28 0 29 10 0 30 29 0 9 8 0 31 30 0
		 11 32 0 17 34 0 18 33 0 0 32 1 32 33 1 33 34 1 34 5 1 35 46 1 37 44 1 35 39 1 36 40 1
		 37 34 0 38 6 0 39 37 1 40 38 1 40 3 1 33 39 1 2 36 0 32 35 0 41 38 1 41 42 0 43 36 1
		 42 43 0 43 1 1 44 41 0 5 44 1 45 42 1 44 45 0 46 43 0 45 46 0 46 0 1 42 47 1 40 48 0
		 47 48 1 38 49 0 48 49 0 41 50 0 50 49 0 50 47 0 43 51 0 36 52 0 51 52 0 52 48 0 47 51 0
		 39 53 0 45 54 1 53 54 1 44 55 0 55 54 0 37 56 0 56 55 0 53 56 0 35 57 0 46 58 0 57 58 0
		 54 58 0 57 53 0 20 59 0 19 60 0 59 60 0 22 60 0 16 59 0 14 13 0 13 59 0 27 61 0 28 61 0
		 23 61 0 61 60 0;
	setAttr -s 60 -ch 240 ".fc[0:59]" -type "polyFaces" 
		f 4 -8 51 10 4
		mu 0 4 0 1 2 3
		f 4 8 7 2 11
		mu 0 4 4 1 0 5
		f 4 9 -12 6 12
		mu 0 4 6 4 5 7
		f 4 50 -13 0 -2
		mu 0 4 8 6 7 9
		f 4 48 -14 3 14
		mu 0 4 10 11 12 13
		f 4 49 -15 5 -11
		mu 0 4 2 10 13 3
		f 4 -16 -4 77 76
		mu 0 4 14 13 12 15
		f 4 19 18 17 -49
		mu 0 4 16 17 18 19
		f 4 20 114 -20 -50
		mu 0 4 20 21 17 16
		f 4 -23 -22 28 27
		mu 0 4 22 23 24 25
		f 4 -27 25 -25 -24
		mu 0 4 26 27 28 29
		f 4 31 -31 -10 29
		mu 0 4 30 31 32 33
		f 4 33 32 -30 -51
		mu 0 4 34 35 36 37
		f 4 -35 24 47 -45
		mu 0 4 38 29 28 39
		f 4 -21 36 22 -36
		mu 0 4 21 20 23 22
		f 4 21 -37 -52 40
		mu 0 4 24 23 20 40
		f 4 30 39 -39 -38
		mu 0 4 32 31 41 42
		f 4 -18 42 26 -42
		mu 0 4 19 18 27 26
		f 4 -34 16 44 -44
		mu 0 4 35 34 38 39
		f 4 -9 37 45 -41
		mu 0 4 40 32 42 24
		f 4 38 46 -29 -46
		mu 0 4 42 41 25 24
		f 4 -17 1 55 -53
		mu 0 4 43 44 45 46
		f 4 23 54 57 -54
		mu 0 4 47 48 49 50
		f 4 34 52 56 -55
		mu 0 4 51 52 53 54
		f 4 41 53 58 13
		mu 0 4 55 56 57 58
		f 4 -56 -83 -60 -71
		mu 0 4 46 45 59 60
		f 4 85 87 -90 90
		mu 0 4 61 62 63 64
		f 4 93 94 -86 95
		mu 0 4 65 66 62 61
		f 4 68 65 63 -58
		mu 0 4 49 67 68 50
		f 4 71 64 -6 15
		mu 0 4 14 69 3 13
		f 4 -65 -67 67 -5
		mu 0 4 3 70 71 0
		f 4 -68 -63 -70 -3
		mu 0 4 0 71 72 5
		f 4 69 -74 75 -7
		mu 0 4 5 72 73 7
		f 4 70 61 -69 -57
		mu 0 4 53 60 67 54
		f 4 78 -73 -77 79
		mu 0 4 74 75 14 15
		f 4 80 -75 -79 81
		mu 0 4 59 73 75 74
		f 4 -76 -81 82 -1
		mu 0 4 7 73 59 9
		f 4 -64 60 -78 -59
		mu 0 4 57 76 15 58
		f 4 98 -101 -103 -104
		mu 0 4 77 78 79 80
		f 4 106 -108 -99 -109
		mu 0 4 81 82 78 77
		f 4 66 86 -88 -85
		mu 0 4 83 69 63 62
		f 4 -72 88 89 -87
		mu 0 4 69 14 64 63
		f 4 72 83 -91 -89
		mu 0 4 14 75 61 64
		f 4 73 92 -94 -92
		mu 0 4 73 72 66 65
		f 4 62 84 -95 -93
		mu 0 4 72 83 62 66
		f 4 74 91 -96 -84
		mu 0 4 75 73 65 61
		f 4 -80 99 100 -98
		mu 0 4 74 15 79 78
		f 4 -61 101 102 -100
		mu 0 4 15 76 80 79
		f 4 -66 96 103 -102
		mu 0 4 76 84 77 80
		f 4 59 105 -107 -105
		mu 0 4 60 59 82 81
		f 4 -82 97 107 -106
		mu 0 4 59 74 78 82
		f 4 -62 104 108 -97
		mu 0 4 84 60 81 77
		f 4 -26 109 111 -111
		mu 0 4 85 86 87 88
		f 4 -28 112 -112 -114
		mu 0 4 89 90 91 92
		f 4 35 113 -116 -115
		mu 0 4 93 94 95 96
		f 4 -40 -32 118 -117
		mu 0 4 97 98 99 100
		f 4 -43 -19 115 -110
		mu 0 4 101 102 103 104
		f 4 43 117 -119 -33
		mu 0 4 105 106 107 108
		f 4 -47 116 119 -113
		mu 0 4 109 110 111 112
		f 4 -48 110 -120 -118
		mu 0 4 113 114 115 116;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface43" -p "polySurface40";
	setAttr ".rp" -type "double3" -1.2275043279762168 0.69404772059686648 -0.38943011189788246 ;
	setAttr ".sp" -type "double3" -1.2275043279762168 0.69404772059686648 -0.38943011189788246 ;
createNode mesh -n "polySurfaceShape46" -p "polySurface43";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:86]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 153 ".uvst[0].uvsp[0:152]" -type "float2" 0.14093924 0.8808617
		 0.16037917 0.89595199 0.17545056 0.87199712 0.15602469 0.85749727 0.11547923 0.86722636
		 0.13069153 0.84344447 0.18109536 0.90370119 0.19199848 0.87851751 0.20836926 0.85702437
		 0.18924809 0.84484965 0.17136788 0.83200532 0.14624333 0.82200563 0.11332464 0.82985854
		 0.13171959 0.81167209 0.21326947 0.82965863 0.20060658 0.82146424 0.16215682 0.80597973
		 0.14488435 0.79871523 0.18388605 0.81163549 0.050521374 0.77831912 0.06270647 0.76058793
		 0.075937986 0.74327576 0.069699764 0.77245569 0.084228992 0.75232005 0.085735559
		 0.72803271 0.096683025 0.73242271 0.24659896 0.80233943 0.10677099 0.68963051 0.1185832
		 0.78817773 0.09595561 0.80573523 0.13248686 0.77152044 0.23258257 0.75432718 0.22796631
		 0.74908185 0.21543217 0.76047504 0.22149873 0.76693904 0.16808891 0.71533954 0.1771636
		 0.70379734 0.17066336 0.70102882 0.16010594 0.71150887 0.24656153 0.78464794 0.24150252
		 0.78109634 0.23467827 0.79008305 0.24095631 0.79425877 0.13601422 0.69153666 0.13175893
		 0.68894446 0.12492228 0.69641435 0.12975812 0.69960439 0.23048878 0.78064823 0.22499442
		 0.7763474 0.2406199 0.76757824 0.23580265 0.76339436 0.14703631 0.70670259 0.14116406
		 0.70327783 0.10939121 0.74152875 0.12168145 0.75117946 0.15788174 0.69618058 0.15273356
		 0.6930505 0.11321473 0.69257116 0.11452937 0.68629766 0.10979128 0.68451142 0.19394207
		 0.74596822 0.1755476 0.72748935 0.20440435 0.73654509 0.18610287 0.71955693 0.20439553
		 0.75601912 0.21244836 0.7437799 0.25181198 0.79813576 0.21796535 0.88896739 0.27206808
		 0.8615582 0.10510397 0.76985085 0.087778091 0.7896874 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.09151268 0.84626436 0.18557167 0.95056963 0.021212339
		 0.81173754 0.17990994 0.97110897 0.010941982 0.8275311 0.17927241 0.9980318 0.020185471
		 0.84593332 0.017653942 0.87361801 0.039357662 0.87119401 0.033343077 0.85146558 0.071130753
		 0.80780447 0.074863434 0.82471287 0.056195259 0.79270649 0.068283558 0.85523105 0.054767132
		 0.83498907 0.063663006 0.80025548 0.063663006 0.80025548 0.056195259 0.79270649 0.031596899
		 0.83196878 0.071130753 0.80780447 0.021212339 0.81173754 0.010941982 0.8275311 0.020185471
		 0.84593332 0.050521374 0.77831912 0.033343077 0.85146558 0.054767132 0.83498907 0.074863434
		 0.82471287 0.079898134 0.8507477 0.18333352 0.92713541 0.625 0.125 0.625 0.25 0.5
		 0.25 0.5 0.125 0.375 0.25 0.375 0.125 0.5 0.30534834 0.625 0.30534834 0.625 0.375
		 0.5 0.375 0.625 0.43567711 0.5 0.43567711 0.375 0.43567711 0.375 0.375 0.375 0.30534834
		 0.5 0.5 0.625 0.5 0.625 0.625 0.5 0.625 0.375 0.625 0.375 0.5 0.81067717 0.125 0.81067717
		 0.25 0.75 0.25 0.75 0.125 0.6803484 0.25 0.6803484 0.125 0.31965166 0.125 0.31965166
		 0.25 0.25 0.25 0.25 0.125 0.18932289 0.25 0.18932289 0.125 0.875 0.125 0.875 0.25
		 0.125 0.25 0.125 0.125;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[28]" -type "float3" 0.18367916 0 0 ;
	setAttr ".pt[32]" -type "float3" 0.18367916 0 0 ;
	setAttr ".pt[33]" -type "float3" 0.18367916 0 0 ;
	setAttr ".pt[36]" -type "float3" 0.18367916 0 0 ;
	setAttr ".pt[42]" -type "float3" 0.18367916 0 0 ;
	setAttr -s 88 ".vt[0:87]"  -1.26768732 1.074721813 0.77254117 -1.72323298 0.89273322 0.69032848
		 -0.69884902 0.97939211 0.60722876 -0.49242511 0.64322531 0.46669978 -1.95719945 0.59570342 0.64145696
		 -1.86752427 0.77650267 1.10552907 -2.31595016 0.46713695 1.059366465 -1.34715509 0.95883977 1.12435198
		 -0.88747674 0.88593489 0.98191309 -0.69778579 0.61208445 0.88423395 -1.96752429 0.99065936 1.55900812
		 -2.38035727 0.46333918 1.55900955 -0.70791942 0.79143721 1.55902326 -0.91243052 1.059409738 1.55901635
		 -1.33421731 1.15313435 1.55900848 -1.31678486 6.0715322e-18 0.60439193 -0.66752434 0.099999987 0.49695414
		 -2.11663651 -1.8460355e-17 0.68697667 -2.33397794 -7.9086374e-18 1.059022903 -1.78118622 0 0.60439193
		 -2.010805607 0 1.023731232 -2.3957057 3.516048e-17 1.55901468 -2.0010704994 0 1.55901301
		 -0.7675243 0.22751947 0.9373672 -0.71071911 0.18085663 1.55901706 -1.67868817 0 1.55901265
		 -0.86752427 1.15759969 2.080878496 -0.99721456 0.7723946 2.6514914 -1.46923423 9.6097865e-18 2.080810785
		 -0.5540511 5.6060127e-18 2.49530196 -1.96752429 0.97218466 2.08079958 -1.92354476 0.7344203 2.5473938
		 -1.76270759 0 2.080751896 -1.60672605 -2.448629e-17 2.54084444 -1.36752427 1.14529741 2.080858946
		 -1.47902524 0.80000001 2.65022206 -1.27973461 3.8593051e-17 2.59095502 -2.46752429 0.42732191 2.080877304
		 -2.29627061 0.42732191 2.32987642 -2.48917842 6.1100176e-18 2.080599308 -2.19726491 0 2.24919248
		 -2.33298779 1.4826906e-17 2.28939104 -2.024267197 7.1357596e-18 2.43480015 -0.44448972 1.0648647e-17 2.080877304
		 -0.52866113 0.96554673 2.080863476 -0.58099753 0.64668512 2.53045297 -1.50554264 0 0.60439193
		 -1.67742908 0 1.023731232 -1.44479704 1.582485e-18 1.55901265 -1.49345779 -5.4027252e-18 1.023731232
		 -1.23380375 1.33143425 0.56408656 -1.7986275 1.0049982071 0.45514703 -0.79903281 1.16995263 0.36297256
		 -1.91955829 0.93709898 0.11877629 -0.57505798 0.66769135 0.17700636 -1.94889855 0.74612093 -0.61665446
		 -1.8488034 1.3496613e-17 -0.27998146 -2.0082018375 -7.1547591e-18 0.4375197 -1.7986275 0.63424808 -0.99222445
		 -1.72428763 -2.155053e-17 -0.92243296 -1.21997571 0.55478191 -1.27234924 -1.23803961 -2.6532745e-18 -1.047342539
		 -0.69043982 0.63424808 -0.99222445 -0.77517182 5.7595117e-17 -0.95088106 -1.27322054 2.6020852e-18 0.32742098
		 -0.83954942 9.3046238e-19 0.16418052 -1.64902294 0 0.31183237 -0.54016852 0.75692385 -0.58147126
		 -0.7922861 5.0362954e-17 -0.27510735 -1.39280856 0 0.31962666 -1.39097452 0 -0.64613408
		 -0.55761331 0.75660741 -0.23904389 -1.99801326 0.81869602 -0.25686437 -1.75181258 1.36133146 0.21469484
		 -0.87776124 1.36709177 0.21831915 -1.63302445 1.00058722496 -1.0066576004 -0.74713743 0.98647386 -1.040677071
		 -1.22366238 1.54864264 0.41025418 -1.17118931 1.05524087 -1.21952677 -1.88611996 1.27173388 -0.42464948
		 -0.56394279 1.28680468 -0.4158999 -1.28859711 1.55285609 -0.44614258 -1.85054767 1.33830941 -0.075578466
		 -1.2544055 1.61799276 0.005967766 -0.68713963 1.34924865 -0.072251335 -0.57620382 1.14214396 -0.79704177
		 -1.23066688 1.37996459 -0.8490501 -1.79100144 1.12870431 -0.79872173;
	setAttr -s 173 ".ed";
	setAttr ".ed[0:165]"  50 0 0 1 0 1 51 1 0 52 2 0 0 2 1 2 3 1 1 5 0 6 5 0
		 0 7 0 5 7 0 2 8 0 7 8 0 3 9 0 9 8 0 5 10 0 10 11 0 6 11 0 9 12 0 12 13 0 8 13 0 13 14 0
		 7 14 0 14 10 0 12 24 0 16 15 0 6 18 0 20 18 0 19 20 0 18 21 0 11 21 1 21 22 0 20 22 0
		 3 16 1 16 23 0 23 9 0 23 24 0 22 25 0 27 26 0 26 34 0 27 35 0 28 43 0 36 29 0 31 30 0
		 30 37 0 31 38 0 40 32 0 32 33 0 42 33 0 35 34 0 34 30 0 35 31 0 32 28 0 33 36 0 28 36 0
		 38 37 0 39 21 0 39 40 0 41 39 0 41 42 0 40 42 0 29 43 0 45 44 0 44 26 0 45 27 0 25 32 0
		 14 34 0 10 30 0 13 26 0 12 44 0 22 40 0 11 37 0 37 39 0 38 41 0 29 45 0 43 44 0 15 46 0
		 20 47 0 46 47 0 19 46 0 47 25 0 49 48 0 49 47 0 48 25 0 15 49 0 48 28 0 49 23 0 24 43 0
		 48 24 1 27 36 0 35 33 0 31 42 0 58 59 0 64 15 0 69 46 0 51 50 0 50 52 0 53 51 0 52 54 0
		 55 58 0 58 60 0 60 62 0 62 67 0 64 69 0 3 54 0 60 61 0 62 63 0 64 65 0 67 68 0 67 71 0
		 54 65 0 65 68 0 16 65 0 59 61 0 63 68 0 61 63 0 71 54 0 68 71 0 19 66 0 66 69 0 66 70 0
		 61 70 0 68 70 0 64 70 0 72 55 0 1 4 1 4 6 0 4 17 1 17 18 0 17 19 0 4 53 0 53 57 0
		 56 72 0 55 56 1 57 66 0 17 57 0 56 59 0 56 70 1 56 57 0 53 72 0 73 77 1 77 74 1 75 78 1
		 78 76 1 51 73 1 52 74 1 73 82 1 79 87 1 74 84 1 80 85 1 75 58 1 76 62 1 50 77 1 81 83 1
		 81 80 1 81 86 1 81 79 1 60 78 1 71 80 1 72 79 1 82 79 1 53 82 1 83 77 1 82 83 1 84 80 1
		 83 84 1 84 54 1;
	setAttr ".ed[166:172]" 85 76 1 67 85 1 86 78 1 85 86 1 87 75 1 86 87 1 87 55 1;
	setAttr -s 87 -ch 346 ".fc[0:86]" -type "polyFaces" 
		f 4 -95 2 1 -1
		mu 0 4 0 1 2 3
		f 4 -96 0 4 -4
		mu 0 4 4 0 3 5
		f 4 -2 6 9 -9
		mu 0 4 3 2 9 10
		f 4 -5 8 11 -11
		mu 0 4 5 3 10 11
		f 4 -6 10 -14 -13
		mu 0 4 12 5 11 13
		f 4 16 -16 -15 -8
		mu 0 4 8 14 15 9
		f 4 19 -19 -18 13
		mu 0 4 11 16 17 13
		f 4 21 -21 -20 -12
		mu 0 4 10 18 16 11
		f 4 14 -23 -22 -10
		mu 0 4 9 15 18 10
		f 4 25 28 -30 -17
		mu 0 4 8 21 24 14
		f 4 31 -31 -29 -27
		mu 0 4 23 25 24 21
		f 4 -71 29 -56 -72
		mu 0 4 26 14 24 27
		f 4 -35 -34 -33 12
		mu 0 4 13 28 29 12
		f 4 -36 34 17 23
		mu 0 4 30 28 13 17
		f 4 -40 37 38 -49
		mu 0 4 31 32 33 34
		f 4 -61 -42 -54 40
		mu 0 4 35 36 37 38
		f 4 -45 42 43 -55
		mu 0 4 39 40 41 42
		f 4 -48 -60 45 46
		mu 0 4 43 44 45 46
		f 4 -50 -66 22 66
		mu 0 4 47 48 18 15
		f 4 -43 -51 48 49
		mu 0 4 47 49 50 48
		f 4 -52 -65 -83 84
		mu 0 4 51 52 53 54
		f 4 53 -53 -47 51
		mu 0 4 51 55 56 52
		f 4 -57 55 30 69
		mu 0 4 57 27 24 25
		f 4 59 -59 57 56
		mu 0 4 57 58 59 27
		f 4 -75 -87 -24 68
		mu 0 4 60 61 30 17
		f 4 -62 -74 60 74
		mu 0 4 60 62 63 61
		f 4 -63 -69 18 67
		mu 0 4 64 60 17 16
		f 4 -38 -64 61 62
		mu 0 4 64 65 62 60
		f 4 -68 20 65 -39
		mu 0 4 33 16 18 34
		f 4 -70 36 64 -46
		mu 0 4 45 25 53 46
		f 4 -67 15 70 -44
		mu 0 4 41 15 14 42
		f 4 71 -58 -73 54
		mu 0 4 26 27 59 66
		f 4 78 77 -77 -28
		mu 0 4 22 67 68 23
		f 4 76 79 -37 -32
		mu 0 4 23 68 53 25
		f 4 82 -80 -82 80
		mu 0 4 54 53 68 69
		f 4 81 -78 -76 83
		mu 0 4 69 68 67 70
		f 4 -86 -84 -25 33
		mu 0 4 28 69 70 29
		f 4 -81 85 35 -88
		mu 0 4 54 69 28 30
		f 4 -85 87 86 -41
		mu 0 4 38 54 30 35
		f 4 39 89 52 -89
		mu 0 4 71 72 73 74
		f 4 44 72 58 -91
		mu 0 4 75 76 77 78
		f 4 50 90 47 -90
		mu 0 4 79 80 81 82
		f 4 63 88 41 73
		mu 0 4 83 84 85 86
		f 4 75 -94 -103 92
		mu 0 4 70 67 102 97
		f 4 5 103 -98 3
		mu 0 4 5 12 87 4
		f 4 -92 99 104 -113
		mu 0 4 91 90 92 93
		f 4 100 105 -115 -105
		mu 0 4 94 95 96 93
		f 4 106 -112 24 -93
		mu 0 4 97 98 29 70
		f 4 -106 101 107 -114
		mu 0 4 96 95 100 101
		f 4 116 115 109 110
		mu 0 4 101 114 87 98
		f 4 -104 32 111 -110
		mu 0 4 87 12 29 98
		f 3 -117 -108 108
		mu 0 3 114 101 100
		f 4 -79 117 118 93
		mu 0 4 67 22 99 102
		f 4 -119 119 -123 102
		mu 0 4 103 104 105 106
		f 4 113 121 -121 114
		mu 0 4 111 112 105 109
		f 4 122 -122 -111 -107
		mu 0 4 106 105 112 113
		f 4 -7 124 125 7
		mu 0 4 9 2 7 8
		f 4 -126 126 127 -26
		mu 0 4 8 7 20 21
		f 4 128 27 26 -128
		mu 0 4 20 22 23 21
		f 4 -3 -97 -130 -125
		mu 0 4 2 1 6 7
		f 4 129 130 -135 -127
		mu 0 4 7 6 19 20
		f 3 131 123 132
		mu 0 3 89 115 88
		f 4 -133 98 91 -136
		mu 0 4 89 88 90 91
		f 4 133 -118 -129 134
		mu 0 4 19 99 22 20
		f 4 -137 135 112 120
		mu 0 4 105 107 108 109
		f 4 -134 -138 136 -120
		mu 0 4 104 110 107 105
		f 4 138 -132 137 -131
		mu 0 4 6 115 89 19
		f 4 144 -141 -152 95
		mu 0 4 116 117 118 119
		f 4 -140 -144 94 151
		mu 0 4 118 120 121 119
		f 4 164 163 -154 152
		mu 0 4 122 123 124 125
		f 4 148 169 -155 153
		mu 0 4 124 126 127 125
		f 4 171 -147 -156 154
		mu 0 4 127 128 129 125
		f 4 -160 162 -153 155
		mu 0 4 129 130 122 125
		f 4 142 150 -101 156
		mu 0 4 131 132 133 134
		f 4 -150 141 -157 -100
		mu 0 4 135 136 131 134
		f 4 167 -149 -158 -109
		mu 0 4 137 138 139 140
		f 4 -164 165 -116 157
		mu 0 4 139 141 142 140
		f 4 160 159 -159 -139
		mu 0 4 143 144 145 146
		f 4 146 172 -124 158
		mu 0 4 145 147 148 146
		f 4 143 145 -161 96
		mu 0 4 121 120 144 143
		f 4 -163 -146 139 -162
		mu 0 4 122 130 120 118
		f 4 140 147 -165 161
		mu 0 4 118 117 123 122
		f 4 -166 -148 -145 97
		mu 0 4 142 141 117 116
		f 4 -151 -167 -168 -102
		mu 0 4 149 150 138 137
		f 4 -170 166 -143 -169
		mu 0 4 127 126 132 131
		f 4 -142 -171 -172 168
		mu 0 4 131 136 128 127
		f 4 -173 170 149 -99
		mu 0 4 148 147 151 152;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "polySurface37";
createNode transform -n "polySurface45" -p "polySurface37";
	setAttr ".rp" -type "double3" 0 7.031486988067627 -0.24762606620788574 ;
	setAttr ".sp" -type "double3" 0 7.031486988067627 -0.24762606620788574 ;
createNode mesh -n "polySurfaceShape52" -p "polySurface45";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:117]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 218 ".uvst[0].uvsp[0:217]" -type "float2" 0.52148581 0.066767886
		 0.54129827 0.097699806 0.54259002 0.088109076 0.52416074 0.054619074 0.57281774 0.11816826
		 0.57383025 0.10638362 0.60294873 0.13169013 0.60216331 0.12057924 0.65559852 0.1030366
		 0.67921591 0.081747919 0.6687296 0.065827906 0.65113425 0.087295055 0.69430208 0.16125134
		 0.72806346 0.14854681 0.69551879 0.055019245 0.67693204 0.035029113 0.73823035 0.14852348
		 0.71472508 0.20138401 0.72692072 0.20222858 0.48760089 0.071296692 0.47700307 0.060233474
		 0.44936842 0.15080523 0.46891189 0.15775263 0.70301074 0.047693044 0.68605059 0.029617274
		 0.65251076 0.17825469 0.59431458 0.18325171 0.51845527 0.018902451 0.51955307 0.028668992
		 0.53093588 0.019947946 0.53137636 0.012024522 0.52181822 0.040001608 0.53502321 0.028955042
		 0.68415648 0.21002027 0.48730534 0.16909832 0.49537072 0.094911158 0.5080328 0.18087301
		 0.51050007 0.11611456 0.53144425 0.1923568 0.53513265 0.14768875 0.56084919 0.20262691
		 0.56850433 0.17312235 0.58304429 0.21064168 0.64316159 0.22137335 0.7109369 0.039942276
		 0.69569761 0.023891807 0.74898636 0.14849877 0.73982316 0.20312211 0.66842484 0.0085445046
		 0.5985353 0.00049948692 0.59770739 0.0048813224 0.66886318 0.020511031 0.53137636
		 0.012024522 0.53093588 0.019947946 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0 1 0.72333586
		 0 0.72333586 0.18502769 1 0.18502769 1 0 0.72333586 0.43363699 0.72333586 0.63503289
		 1 0.63503289 1 0.43363699 0.72333586 0.87268454 1 0.87268454 0.25191468 0.63503289
		 0.25191468 0.87268454 0.44324827 0.87268454 0.44324827 0.63503289 0.25191468 0.43363696
		 0.44324827 0.43363699 0.25191468 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827
		 0 0 0.63503289 0 0.43363699 0 0.18502769 0 0 0.52148581 0.066767886 0.54129827 0.097699806
		 0.54259002 0.088109076 0.52416074 0.054619074 0.57281774 0.11816826 0.57383025 0.10638362
		 0.60294873 0.13169013 0.60216331 0.12057924 0.65559852 0.1030366 0.67921591 0.081747919
		 0.6687296 0.065827906 0.65113425 0.087295055 0.69430208 0.16125134 0.72806346 0.14854681
		 0.69551879 0.055019245 0.67693204 0.035029113 0.73823035 0.14852348 0.71472508 0.20138401
		 0.72692072 0.20222858 0.48760089 0.071296692 0.47700307 0.060233474 0.44936842 0.15080523
		 0.46891189 0.15775263 0.70301074 0.047693044 0.68605059 0.029617274 0.65251076 0.17825469
		 0.59431458 0.18325171 0.51845527 0.018902451 0.51955307 0.028668992 0.53093588 0.019947946
		 0.53137636 0.012024522 0.52181822 0.040001608 0.53502321 0.028955042 0.68415648 0.21002027
		 0.48730534 0.16909832 0.49537072 0.094911158 0.5080328 0.18087301 0.51050007 0.11611456
		 0.53144425 0.1923568 0.53513265 0.14768875 0.56084919 0.20262691 0.56850433 0.17312235
		 0.58304429 0.21064168 0.64316159 0.22137335 0.7109369 0.039942276 0.69569761 0.023891807
		 0.74898636 0.14849877 0.73982316 0.20312211 0.66842484 0.0085445046 0.5985353 0.00049948692
		 0.59770739 0.0048813224 0.66886318 0.020511031 0.53137636 0.012024522 0.53093588
		 0.019947946 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0 1 0.72333586 0 0.72333586 0.18502769
		 1 0.18502769 1 0 0.72333586 0.43363699 0.72333586 0.63503289 1 0.63503289 1 0.43363699
		 0.72333586 0.87268454 1 0.87268454 0.25191468 0.63503289 0.25191468 0.87268454 0.44324827
		 0.87268454 0.44324827 0.63503289 0.25191468 0.43363696 0.44324827 0.43363699 0.25191468
		 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827 0 0 0.63503289 0 0.43363699
		 0 0.18502769 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[16]" -type "float3" 0.14866282 0 -0.28233069 ;
	setAttr ".pt[19]" -type "float3" 0.14866282 0 -0.11792931 ;
	setAttr ".pt[43]" -type "float3" 0.14866282 0 -0.11792931 ;
	setAttr ".pt[44]" -type "float3" 0.14866282 0 -0.11792931 ;
	setAttr ".pt[69]" -type "float3" -0.14866282 0 -0.11792931 ;
	setAttr ".pt[71]" -type "float3" -0.14866282 0 -0.11792931 ;
	setAttr ".pt[91]" -type "float3" -0.14866282 0 -0.28233069 ;
	setAttr ".pt[106]" -type "float3" -0.14866282 0 -0.11792931 ;
	setAttr -s 130 ".vt[0:129]"  -1.19403231 7.021808624 1.18109488 -0.5 6.5 1.10000002
		 -1.42723143 5.82433319 -1.49035823 -2.52417994 7.060192585 0.41583914 -1.75800073 7.19999981 1.0086219311
		 -2.60006857 6.69430542 -0.65192753 -0.69999993 5.9000001 -1.4000001 -0.86022931 8.39970398 -1.57976246
		 -1.41126454 8.39971161 -1.38052368 -1.90355825 8.51184845 -0.87922764 -2.10453129 8.51179504 0.39999992
		 -2.192307 8.51182175 -0.23881397 -0.54253352 8.51119614 1.37448716 -0.94826663 8.5112915 1.21364641
		 -1.49209976 8.51152515 0.9828006 -1.24698412 8.51181221 -1.12669992 -2.41426778 8.39971828 -0.024582475
		 -0.34574586 8.39970207 -1.59793472 -0.44202361 8.39967251 1.48721695 -2.28118658 8.39971733 0.56776667
		 -1.79999995 8.39971066 0.97838485 -0.24367093 6 -1.14999998 -2.10886931 8.39971352 -0.78038561
		 -0.75930023 8.51168346 -1.37952805 -0.32714075 8.51158905 -1.38018334 -0.1930804 6.20887518 1
		 -1.79999995 8.51172256 0.80000007 -1.31481779 8.3996954 1.20807862 -0.84216541 8.39968204 1.35594177
		 -0.099999994 5.55112553 -0.42241025 0 8.51113892 1.41368115 0 8.39966869 1.59793472
		 0 6.19999981 1 0 6 -1.14999998 0 8.39970112 -1.56849861 0 8.51152515 -1.35393465
		 0 5.55170679 -0.45252848 -2.15708733 6.12603331 -1.3415482 0 7.28129625 1.42294836
		 -0.24813959 7.30191755 1.4287914 -0.73853278 7.58745623 1.38536692 -1.20281529 7.77709579 1.32426298
		 -1.82319629 7.87870407 1.11467373 -2.51741457 7.76703644 0.52317607 -2.54185772 7.63234806 -0.54147255
		 -2.20779586 7.041675568 -1.60088217 -1.55355144 6.79800653 -2.087392807 -0.80000001 6.77734756 -2.093186855
		 -0.30028832 6.79222775 -1.99261379 0 6.80794764 -1.87635005 -1.19999993 6.93349981 -0.40431094
		 -0.5 6.29556274 -0.50431097 -1.92671204 6.99589825 -0.44940472 0 7.55995941 0.22190607
		 0 7.79391479 0.94369447 0 7.71084499 -0.52973145 -1.16509628 7.9356842 -0.55793619
		 -1.19062412 7.83094311 -0.08000195 -1.12069678 7.94686794 0.50585473 -0.56403226 7.75393867 -0.53490198
		 -0.57116997 7.62598324 0.080725431 -0.53957719 7.8012867 0.73496592 -1.71782899 8.11375141 -0.58061934
		 -1.7578187 8.066838264 -0.20215493 -1.66127586 8.13273239 0.33820772 1.20281529 7.77709579 1.32426298
		 1.82319629 7.87870407 1.11467373 1.75800073 7.19999981 1.0086219311 1.19403231 7.021808624 1.18109488
		 2.51741457 7.76703644 0.52317607 2.52417994 7.060192585 0.41583914 2.54185772 7.63234806 -0.54147255
		 2.60006857 6.69430542 -0.65192753 2.20779586 7.041675568 -1.60088217 1.55355144 6.79800653 -2.087392807
		 1.42723143 5.82433319 -1.49035823 2.15708733 6.12603331 -1.3415482 1.41126454 8.39971161 -1.38052368
		 0.86022931 8.39970398 -1.57976246 0.80000001 6.77734756 -2.093186855 0.69999993 5.9000001 -1.4000001
		 0.34574586 8.39970207 -1.59793472 0.75930023 8.51168346 -1.37952805 0.32714075 8.51158905 -1.38018334
		 0.44202361 8.39967251 1.48721695 1.9440935e-17 8.39966869 1.59793472 4.4658436e-17 8.51113892 1.41368115
		 0.54253352 8.51119614 1.37448716 0.30028832 6.79222775 -1.99261379 0.24367093 6 -1.14999998
		 2.10886931 8.39971352 -0.78038561 2.41426778 8.39971828 -0.024582475 -2.9831488e-17 7.28129625 1.42294836
		 0.24813959 7.30191755 1.4287914 0.1930804 6.20887518 1 -2.6888217e-18 6.19999981 1
		 0.73853278 7.58745623 1.38536692 0.5 6.5 1.10000002 1.24698412 8.51181221 -1.12669992
		 0.94826663 8.5112915 1.21364641 0.84216541 8.39968204 1.35594177 1.49209976 8.51152515 0.9828006
		 1.31481779 8.3996954 1.20807862 1.79999995 8.51172256 0.80000007 1.79999995 8.39971066 0.97838485
		 2.10453129 8.51179504 0.39999992 2.28118658 8.39971733 0.56776667 2.192307 8.51182175 -0.23881397
		 1.90355825 8.51184845 -0.87922764 -4.8188902e-17 6.80794764 -1.87635005 -9.5409824e-19 6 -1.14999998
		 -3.5592506e-17 8.39970112 -1.56849861 -2.5383769e-17 8.51152515 -1.35393465 -3.839913e-18 5.55170679 -0.45252848
		 0.099999994 5.55112553 -0.42241025 1.19999993 6.93349981 -0.40431094 0.5 6.29556274 -0.50431097
		 1.92671204 6.99589825 -0.44940472 0.53957719 7.8012867 0.73496592 -9.4519024e-17 7.79391479 0.94369447
		 0.57116997 7.62598324 0.080725431 0.56403226 7.75393867 -0.53490198 8.4211605e-17 7.71084499 -0.52973145
		 -1.4794238e-17 7.55995941 0.22190607 1.71782899 8.11375141 -0.58061934 1.16509628 7.9356842 -0.55793619
		 1.7578187 8.066838264 -0.20215493 1.19062412 7.83094311 -0.08000195 1.66127586 8.13273239 0.33820772
		 1.12069678 7.94686794 0.50585473;
	setAttr -s 246 ".ed";
	setAttr ".ed[0:165]"  0 1 0 2 37 0 4 0 0 5 3 0 2 6 0 0 41 0 5 44 0 37 45 1
		 7 8 0 11 9 0 10 11 0 30 12 0 13 14 0 9 15 0 17 7 0 18 31 0 20 19 0 12 18 0 6 21 0
		 21 48 1 22 8 1 16 22 1 23 24 0 19 16 0 25 32 0 1 40 0 10 26 0 15 23 0 8 15 0 12 13 0
		 1 25 0 26 14 0 27 20 0 13 28 1 28 18 0 28 27 0 27 14 0 26 20 1 10 19 0 11 16 0 22 9 1
		 23 7 0 17 24 1 7 47 0 8 46 0 19 43 1 20 42 0 18 39 0 21 33 0 34 17 0 24 35 0 29 21 0
		 36 29 0 25 29 0 30 31 0 31 38 0 33 49 0 34 35 0 36 33 0 32 36 0 3 4 0 37 5 0 38 32 0
		 39 25 0 38 39 1 40 28 0 39 40 1 41 27 0 40 41 1 42 4 0 41 42 1 43 3 1 42 43 1 44 16 0
		 43 44 1 45 22 1 44 45 1 46 2 0 45 46 1 47 6 0 46 47 1 48 17 1 47 48 1 49 34 0 48 49 1
		 0 50 0 1 51 0 50 51 0 4 52 0 52 50 0 51 29 0 5 52 0 50 2 0 51 6 0 52 37 0 30 54 0
		 53 55 0 53 60 1 54 53 0 54 61 1 55 35 0 55 59 1 56 62 1 23 56 1 57 63 1 56 57 1 58 64 1
		 57 58 1 58 13 1 59 56 1 24 59 1 60 57 1 59 60 1 61 58 1 60 61 1 61 12 1 62 9 1 15 62 1
		 63 11 1 62 63 1 64 10 1 63 64 1 64 14 1 65 66 1 66 67 0 67 68 0 68 65 0 66 69 1 69 70 1
		 70 67 0 69 71 1 72 71 0 72 70 0 73 74 1 74 75 0 75 76 0 76 73 1 76 72 0 71 73 1 77 74 0
		 78 77 0 78 79 0 74 79 1 79 80 0 75 80 0 81 78 0 82 78 0 82 83 0 81 83 1 84 85 0 86 85 0
		 86 87 0 87 84 0 88 81 1 79 88 1 89 88 1 80 89 0 90 77 1 73 90 1 91 90 1 71 91 0 92 93 1
		 93 94 0 94 95 0 92 95 0 96 65 1;
	setAttr ".ed[166:245]" 68 97 0 97 96 0 77 98 0 98 82 0 93 96 1 97 94 0 99 100 1
		 100 84 0 87 99 0 102 101 0 100 102 0 99 101 0 103 104 1 102 104 0 103 101 0 105 106 0
		 104 106 0 105 103 0 107 91 0 106 91 0 105 107 0 107 108 0 90 108 1 108 98 0 65 102 0
		 96 100 0 84 93 0 85 92 0 106 69 1 104 66 0 88 109 1 110 109 0 89 110 0 111 81 0 109 111 0
		 111 112 0 83 112 0 113 110 0 113 114 0 114 89 0 95 113 0 94 114 0 68 115 0 115 116 0
		 97 116 0 67 117 0 117 115 0 116 114 0 72 117 0 115 75 0 116 80 0 117 76 0 118 87 1
		 119 118 1 86 119 0 121 120 1 122 121 1 123 122 0 123 120 1 120 118 1 119 123 0 83 121 1
		 122 112 0 98 124 1 82 125 1 125 124 1 124 126 1 125 127 1 127 126 1 126 128 1 127 129 1
		 129 128 1 128 101 1 129 99 1 121 125 1 120 127 1 118 129 1 124 108 1 126 107 1 128 105 1;
	setAttr -s 118 -ch 468 ".fc[0:117]" -type "polyFaces" 
		f 4 70 69 2 5
		mu 0 4 0 1 2 3
		f 4 72 71 60 -70
		mu 0 4 1 4 5 2
		f 4 74 -7 3 -72
		mu 0 4 4 6 7 5
		f 4 78 77 1 7
		mu 0 4 8 9 10 11
		f 4 -8 61 6 76
		mu 0 4 8 11 7 6
		f 4 -45 -9 43 -81
		mu 0 4 9 12 13 14
		f 4 80 79 -5 -78
		mu 0 4 9 14 15 10
		f 4 14 -42 22 -43
		mu 0 4 16 13 17 18
		f 4 15 -55 11 17
		mu 0 4 19 20 21 22
		f 4 -44 -15 -82 -83
		mu 0 4 14 13 16 23
		f 4 -80 82 -20 -19
		mu 0 4 15 14 23 24
		f 4 20 44 -79 75
		mu 0 4 25 12 9 8
		f 4 21 -76 -77 73
		mu 0 4 26 25 8 6
		f 4 64 63 24 -63
		mu 0 4 27 28 29 30
		f 4 68 -6 0 25
		mu 0 4 31 0 3 32
		f 4 8 28 27 41
		mu 0 4 13 12 33 17
		f 4 66 -26 30 -64
		mu 0 4 28 31 32 29
		f 4 33 34 -18 29
		mu 0 4 34 35 19 22
		f 4 -37 -36 -34 12
		mu 0 4 36 37 35 34
		f 4 37 -33 36 -32
		mu 0 4 38 39 37 36
		f 4 38 -17 -38 -27
		mu 0 4 40 41 39 38
		f 4 39 -24 -39 10
		mu 0 4 42 26 41 40
		f 4 9 -41 -22 -40
		mu 0 4 42 43 25 26
		f 4 -29 -21 40 13
		mu 0 4 33 12 25 43
		f 4 35 -68 -69 65
		mu 0 4 35 37 0 31
		f 4 -48 -35 -66 -67
		mu 0 4 28 19 35 31
		f 4 -56 -16 47 -65
		mu 0 4 27 20 19 28
		f 4 -46 23 -74 -75
		mu 0 4 4 41 26 6
		f 4 -47 16 45 -73
		mu 0 4 1 39 41 4
		f 4 32 46 -71 67
		mu 0 4 37 39 1 0
		f 4 19 84 -57 -49
		mu 0 4 24 23 44 45
		f 4 -50 -84 -85 81
		mu 0 4 16 46 44 23
		f 4 -58 49 42 50
		mu 0 4 47 46 16 18
		f 4 -59 52 51 48
		mu 0 4 48 49 50 51
		f 4 -53 -60 -25 53
		mu 0 4 50 49 52 53
		f 4 -1 85 87 -87
		mu 0 4 54 55 56 57
		f 4 -3 88 89 -86
		mu 0 4 58 59 60 61
		f 4 -31 86 90 -54
		mu 0 4 62 63 64 65
		f 4 -61 -4 91 -89
		mu 0 4 66 67 68 69
		f 4 -88 92 4 -94
		mu 0 4 70 71 72 73
		f 4 -90 94 -2 -93
		mu 0 4 74 75 76 77
		f 4 -91 93 18 -52
		mu 0 4 78 79 80 81
		f 3 -92 -62 -95
		mu 0 3 82 83 84
		f 4 -116 -100 -96 11
		mu 0 4 85 86 87 88
		f 4 -113 -102 -97 97
		mu 0 4 89 90 91 92
		f 4 -115 -98 -99 99
		mu 0 4 86 89 92 87
		f 4 -111 50 -101 101
		mu 0 4 90 93 94 91
		f 4 -118 27 103 102
		mu 0 4 95 96 97 98
		f 4 -120 -103 105 104
		mu 0 4 99 95 98 100
		f 4 -122 -105 107 106
		mu 0 4 101 99 100 102
		f 4 -123 -107 108 12
		mu 0 4 103 101 102 104
		f 4 -104 22 110 109
		mu 0 4 98 97 93 90
		f 4 -106 -110 112 111
		mu 0 4 100 98 90 89
		f 4 -108 -112 114 113
		mu 0 4 102 100 89 86
		f 4 -109 -114 115 29
		mu 0 4 104 102 86 85
		f 3 13 117 116
		mu 0 3 105 96 95
		f 4 9 -117 119 118
		mu 0 4 106 105 95 99
		f 4 10 -119 121 120
		mu 0 4 107 106 99 101
		f 4 -27 -121 122 -32
		mu 0 4 108 107 101 103
		f 4 -127 -126 -125 -124
		mu 0 4 109 112 111 110
		f 4 124 -130 -129 -128
		mu 0 4 110 111 114 113
		f 4 128 -133 131 -131
		mu 0 4 113 114 116 115
		f 4 -137 -136 -135 -134
		mu 0 4 117 120 119 118
		f 4 -139 -132 -138 136
		mu 0 4 117 115 116 120
		f 4 142 -142 140 139
		mu 0 4 118 123 122 121
		f 4 134 144 -144 -143
		mu 0 4 118 119 124 123
		f 4 148 -148 146 -146
		mu 0 4 125 127 126 122
		f 4 -153 -152 150 -150
		mu 0 4 128 131 130 129
		f 4 154 153 145 141
		mu 0 4 123 132 125 122
		f 4 156 155 -155 143
		mu 0 4 124 133 132 123
		f 4 -159 133 -140 -158
		mu 0 4 134 117 118 121
		f 4 -161 138 158 -160
		mu 0 4 135 115 117 134
		f 4 164 -164 -163 -162
		mu 0 4 136 139 138 137
		f 4 -168 -167 126 -166
		mu 0 4 140 141 112 109
		f 4 -147 -170 -169 -141
		mu 0 4 122 126 142 121
		f 4 162 -172 167 -171
		mu 0 4 137 138 141 140
		f 4 -175 152 -174 -173
		mu 0 4 143 131 128 144
		f 4 -178 172 176 175
		mu 0 4 145 143 144 146
		f 4 180 -176 179 -179
		mu 0 4 147 145 146 148
		f 4 183 178 182 -182
		mu 0 4 149 147 148 150
		f 4 -187 181 185 -185
		mu 0 4 151 149 150 135
		f 4 184 159 188 -188
		mu 0 4 151 135 134 152
		f 4 -190 -189 157 168
		mu 0 4 142 152 134 121
		f 4 -192 165 190 -177
		mu 0 4 144 140 109 146
		f 4 170 191 173 192
		mu 0 4 137 140 144 128
		f 4 161 -193 149 193
		mu 0 4 136 137 128 129
		f 4 130 160 -186 194
		mu 0 4 113 115 135 150
		f 4 127 -195 -183 195
		mu 0 4 110 113 150 148
		f 4 -191 123 -196 -180
		mu 0 4 146 109 110 148
		f 4 198 197 -197 -156
		mu 0 4 133 154 153 132
		f 4 -154 196 200 199
		mu 0 4 125 132 153 155
		f 4 -203 -149 -200 201
		mu 0 4 156 127 125 155
		f 4 -199 -206 -205 203
		mu 0 4 157 160 159 158
		f 4 -208 163 206 204
		mu 0 4 159 162 161 158
		f 4 210 -210 -209 166
		mu 0 4 163 166 165 164
		f 4 208 -213 -212 125
		mu 0 4 167 170 169 168
		f 4 207 -214 -211 171
		mu 0 4 171 174 173 172
		f 4 211 -215 132 129
		mu 0 4 175 178 177 176
		f 4 216 -145 -216 209
		mu 0 4 179 182 181 180
		f 4 215 135 -218 212
		mu 0 4 183 186 185 184
		f 4 205 -157 -217 213
		mu 0 4 187 190 189 188
		f 3 217 137 214
		mu 0 3 191 193 192
		f 4 -152 220 219 218
		mu 0 4 194 197 196 195
		f 4 -225 223 222 221
		mu 0 4 198 201 200 199
		f 4 -220 226 224 225
		mu 0 4 195 196 201 198
		f 4 -223 228 -203 227
		mu 0 4 199 200 203 202
		f 4 -232 -231 -170 229
		mu 0 4 204 207 206 205
		f 4 -235 -234 231 232
		mu 0 4 208 209 207 204
		f 4 -238 -237 234 235
		mu 0 4 210 211 209 208
		f 4 -178 -240 237 238
		mu 0 4 212 213 211 210
		f 4 -241 -228 -148 230
		mu 0 4 207 199 202 206
		f 4 -242 -222 240 233
		mu 0 4 209 198 199 207
		f 4 -243 -226 241 236
		mu 0 4 211 195 198 209
		f 4 -175 -219 242 239
		mu 0 4 213 194 195 211
		f 3 -244 -230 -190
		mu 0 3 214 204 205
		f 4 -245 -233 243 -188
		mu 0 4 215 208 204 214
		f 4 -246 -236 244 -187
		mu 0 4 216 210 208 215
		f 4 180 -239 245 183
		mu 0 4 217 212 210 216;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface36" -p "polySurface45";
	setAttr ".rp" -type "double3" 0 8.5112924575805664 0.12259715769845933 ;
	setAttr ".sp" -type "double3" 0 8.5112924575805664 0.1225971576984598 ;
createNode mesh -n "polySurfaceShape38" -p "polySurface36";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:107]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 208 ".uvst[0].uvsp[0:207]" -type "float2" 0.6368565 0.27838725
		 0.64316159 0.22137335 0.58304429 0.21064168 0.57474828 0.26351237 0.56084919 0.20262691
		 0.55806565 0.26004565 0.46891189 0.15775263 0.44936842 0.15080523 0.43939739 0.27940291
		 0.46274441 0.27121419 0.68415648 0.21002027 0.67945051 0.27321476 0.72692072 0.20222858
		 0.71472508 0.20138401 0.7147609 0.2554974 0.72320664 0.2558955 0.53144425 0.1923568
		 0.53607482 0.26108786 0.48448297 0.25032777 0.48730534 0.16909832 0.5080328 0.18087301
		 0.50872648 0.26534158 0.73214191 0.25631666 0.73982316 0.20312211 0.43561664 0.29346415
		 0.42655426 0.34243846 0.44916418 0.32756701 0.47325438 0.28125924 0.50872648 0.26534158
		 0.49358684 0.3111074 0.57474828 0.26351237 0.55806565 0.26004565 0.54170442 0.31874284
		 0.57012773 0.31875074 1 1 0.59098518 0.2686497 0.59149027 0.32048762 0 1 0.51542252
		 0.31401327 0.53607482 0.26108786 1 1 1 0 0 0 0 1 0.7147609 0.2554974 0.71706247 0.27768463
		 0.73440021 0.27711582 0.73214191 0.25631666 0.67945051 0.27321476 0.67392111 0.29544139
		 0.6368565 0.27838725 0.64051747 0.30255392 0 0 1 0 1 1 0 1 0.72333586 0 1 0 1 0.18502769
		 0.72333586 0.18502769 0.72333586 0.43363699 1 0.43363699 1 0.63503289 0.72333586
		 0.63503289 1 0.87268454 0.72333586 0.87268454 0.25191468 0.63503289 0.44324827 0.63503289
		 0.44324827 0.87268454 0.25191468 0.87268454 0.25191468 0.43363696 0.44324827 0.43363699
		 0.25191468 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827 0 0 0.63503289
		 0 0.43363699 0 0.18502769 0 0 0.72333586 0 1 0 1 0.18502769 0.72333586 0.18502769
		 0.72333586 0.43363699 1 0.43363699 1 0.63503289 0.72333586 0.63503289 1 0.87268454
		 0.72333586 0.87268454 0.25191468 0.63503289 0.44324827 0.63503289 0.44324827 0.87268454
		 0.25191468 0.87268454 0.25191468 0.43363696 0.44324827 0.43363699 0.25191468 0.18502769
		 0.44324827 0.18502769 0.25191468 0 0.44324827 0 0 0.63503289 0 0.43363699 0 0.18502769
		 0 0 0.6368565 0.27838725 0.64316159 0.22137335 0.58304429 0.21064168 0.57474828 0.26351237
		 0.56084919 0.20262691 0.55806565 0.26004565 0.46891189 0.15775263 0.44936842 0.15080523
		 0.43939739 0.27940291 0.46274441 0.27121419 0.68415648 0.21002027 0.67945051 0.27321476
		 0.72692072 0.20222858 0.71472508 0.20138401 0.7147609 0.2554974 0.72320664 0.2558955
		 0.53144425 0.1923568 0.53607482 0.26108786 0.48448297 0.25032777 0.48730534 0.16909832
		 0.5080328 0.18087301 0.50872648 0.26534158 0.73214191 0.25631666 0.73982316 0.20312211
		 0.43561664 0.29346415 0.42655426 0.34243846 0.44916418 0.32756701 0.47325438 0.28125924
		 0.50872648 0.26534158 0.49358684 0.3111074 0.57474828 0.26351237 0.55806565 0.26004565
		 0.54170442 0.31874284 0.57012773 0.31875074 1 1 0.59098518 0.2686497 0.59149027 0.32048762
		 0 1 0.51542252 0.31401327 0.53607482 0.26108786 1 1 1 0 0 0 0 1 0.7147609 0.2554974
		 0.71706247 0.27768463 0.73440021 0.27711582 0.73214191 0.25631666 0.67945051 0.27321476
		 0.67392111 0.29544139 0.6368565 0.27838725 0.64051747 0.30255392 0 0 1 0 1 1 0 1
		 0.72333586 0 1 0 1 0.18502769 0.72333586 0.18502769 0.72333586 0.43363699 1 0.43363699
		 1 0.63503289 0.72333586 0.63503289 1 0.87268454 0.72333586 0.87268454 0.25191468
		 0.63503289 0.44324827 0.63503289 0.44324827 0.87268454 0.25191468 0.87268454 0.25191468
		 0.43363696 0.44324827 0.43363699 0.25191468 0.18502769 0.44324827 0.18502769 0.25191468
		 0 0.44324827 0 0 0.63503289 0 0.43363699 0 0.18502769 0 0 0.72333586 0 0.72333586
		 0.18502769 1 0.18502769 1 0 0.72333586 0.43363699 0.72333586 0.63503289 1 0.63503289
		 1 0.43363699 0.72333586 0.87268454 1 0.87268454 0.25191468 0.63503289 0.25191468
		 0.87268454 0.44324827 0.87268454 0.44324827 0.63503289 0.25191468 0.43363696 0.44324827
		 0.43363699 0.25191468 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827 0
		 0 0.63503289 0 0.43363699 0 0.18502769 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 120 ".vt[0:119]"  -0.79171294 9.034147263 -1.23060071 -0.36066172 9.034148216 -1.29504132
		 -1.83367693 9.037312508 -0.9037118 -2.1402986 9.041810989 -0.30352867 -2.026695251 9.041810989 0.16701567
		 -0.6362443 9.040433884 1.39276862 -1.77297235 9.041810989 0.65997332 -1.29363942 9.036624908 -1.094701052
		 -1.029687166 9.039470673 1.1689868 -1.45849156 9.043554306 0.88129103 0 9.04043293 1.47243381
		 0 9.034148216 -1.29291737 -1.83711123 8.51184654 -0.82895225 -2.11578059 8.51182175 -0.22515833
		 -2.031068563 8.51179504 0.37712765 -0.52359533 8.51119614 1.29589283 0 8.51113892 1.33284581
		 -1.20345628 8.5118103 -1.062274098 -0.31572133 8.51159 -1.30126321 -0.73279554 8.51168346 -1.30064535
		 -1.73716748 8.51172256 0.75425524 -0.91516554 8.51129246 1.14424908 -1.44001532 8.5115242 0.92660314
		 0 8.51152515 -1.27651525 0 9.96473503 1.77576268 -0.70827693 9.96473503 1.73413599
		 -1.22126627 9.90018272 1.41382575 -1.95329726 9.58105564 0.60133004 -2.1402986 9.43526745 0.16126093
		 -2.17826676 9.43526936 -0.43138805 -2.04917264 9.4352684 -1.1063894 -1.63658917 9.77222347 1.048936248
		 -1.61628187 9.43526459 -1.41991663 -0.46551603 9.43526649 -1.48714721 0 9.4352684 -1.47684681
		 -1.027062535 9.43526554 -1.53056836 0 10.92255783 0.15954083 0 10.74859238 1.086140275
		 0 10.61674309 -0.74272513 -1.17978477 10.26903439 -0.74177498 -1.21275377 10.47251415 -0.16945989
		 -1.1409452 10.42661572 0.57088965 -0.58626509 10.53008461 -0.74225301 -0.60264826 10.78504658 -0.0039480217
		 -0.56696481 10.67472076 0.83009911 -1.72508359 10.015265465 -0.74144846 -1.76938319 10.13091087 -0.28252435
		 -1.67289686 10.14090443 0.39381826 0 7.73912287 0.22160269 0 7.94238901 0.8880626
		 0 7.82865572 -0.46455878 -1.042205572 7.9976058 -0.5367586 -1.090171099 7.93390799 -0.10205327
		 -1.047504187 8.042526245 0.44051439 -0.46693969 7.86051226 -0.49369392 -0.50380313 7.78381777 0.067512505
		 -0.50022763 7.94005013 0.67240709 -1.57097054 8.13197327 -0.57749736 -1.62743163 8.10901451 -0.23333071
		 -1.55785525 8.17791748 0.26759014 1.83367693 9.037312508 -0.9037118 1.83711123 8.51184654 -0.82895225
		 2.11578059 8.51182175 -0.22515833 2.1402986 9.041810989 -0.30352867 2.031068563 8.51179504 0.37712765
		 2.026695251 9.041810989 0.16701567 0.52359533 8.51119614 1.29589283 -4.8036046e-17 8.51113892 1.33284581
		 -1.021706e-17 9.04043293 1.47243381 0.6362443 9.040433884 1.39276862 1.20345628 8.5118103 -1.062274098
		 1.29363942 9.036624908 -1.094701052 0.31572133 8.51159 -1.30126321 0.73279554 8.51168346 -1.30064535
		 0.79171294 9.034147263 -1.23060071 0.36066172 9.034148216 -1.29504132 1.73716748 8.51172256 0.75425524
		 1.77297235 9.041810989 0.65997332 1.029687166 9.039470673 1.1689868 0.91516554 8.51129246 1.14424908
		 1.44001532 8.5115242 0.92660314 1.45849156 9.043554306 0.88129103 4.2241983e-17 9.034148216 -1.29291737
		 2.6398841e-18 8.51152515 -1.27651525 8.3370038e-17 9.96473503 1.77576268 0.70827693 9.96473503 1.73413599
		 1.22126627 9.90018272 1.41382575 1.95329726 9.58105564 0.60133004 2.1402986 9.43526745 0.16126093
		 2.17826676 9.43526936 -0.43138805 2.04917264 9.4352684 -1.1063894 1.63658917 9.77222347 1.048936248
		 1.61628187 9.43526459 -1.41991663 0.46551603 9.43526649 -1.48714721 3.842916e-17 9.4352684 -1.47684681
		 1.027062535 9.43526554 -1.53056836 1.7931313e-16 10.74859238 1.086140275 0.56696481 10.67472076 0.83009911
		 0.60264826 10.78504658 -0.0039480217 1.3490324e-16 10.92255783 0.15954083 3.7743454e-17 10.61674309 -0.74272513
		 0.58626509 10.53008461 -0.74225301 1.72508359 10.015265465 -0.74144846 1.17978477 10.26903439 -0.74177498
		 1.76938319 10.13091087 -0.28252435 1.21275377 10.47251415 -0.16945989 1.67289686 10.14090443 0.39381826
		 1.1409452 10.42661572 0.57088965 0.50022763 7.94005013 0.67240709 6.4754412e-17 7.94238901 0.8880626
		 0.50380313 7.78381777 0.067512505 0.46693969 7.86051226 -0.49369392 -7.9364234e-17 7.82865572 -0.46455878
		 7.1833185e-17 7.73912287 0.22160269 1.57097054 8.13197327 -0.57749736 1.042205572 7.9976058 -0.5367586
		 1.62743163 8.10901451 -0.23333071 1.090171099 7.93390799 -0.10205327 1.55785525 8.17791748 0.26759014
		 1.047504187 8.042526245 0.44051439;
	setAttr -s 226 ".ed";
	setAttr ".ed[0:165]"  14 4 0 18 1 1 0 1 0 2 12 0 3 13 1 4 3 0 5 15 0 10 5 0
		 6 4 0 8 21 1 3 2 0 17 7 0 2 7 0 0 19 0 6 20 1 7 0 0 8 5 0 9 6 0 22 9 0 8 9 0 1 11 0
		 25 5 0 31 9 0 29 3 1 28 4 1 27 6 0 26 8 0 30 2 0 32 7 0 33 1 0 0 35 0 10 16 0 23 11 0
		 24 10 0 11 34 0 13 12 0 14 13 0 16 15 0 12 17 0 19 18 0 14 20 0 17 19 0 15 21 0 20 22 0
		 21 22 0 18 23 0 25 24 0 25 26 0 28 27 0 29 30 0 26 31 0 29 28 0 30 32 0 34 33 0 33 35 0
		 35 32 0 27 31 0 24 37 0 36 38 0 36 43 1 37 36 0 37 44 1 38 34 0 38 42 1 39 45 1 35 39 1
		 40 46 1 39 40 1 41 47 1 40 41 1 41 26 1 42 39 1 33 42 1 43 40 1 42 43 1 44 41 1 43 44 1
		 44 25 1 45 30 1 32 45 1 46 29 1 45 46 1 47 28 1 46 47 1 47 31 1 16 49 0 48 50 0 48 55 1
		 49 48 0 49 56 1 50 23 0 50 54 1 51 57 1 19 51 1 52 58 1 51 52 1 53 59 1 52 53 1 53 21 1
		 54 51 1 18 54 1 55 52 1 54 55 1 56 53 1 55 56 1 56 15 1 57 12 1 17 57 1 58 13 1 57 58 1
		 59 14 1 58 59 1 59 22 1 60 61 0 62 61 0 63 62 1 63 60 0 64 62 0 64 65 0 65 63 0 67 66 0
		 68 67 0 68 69 0 69 66 0 61 70 0 60 71 0 70 71 0 73 72 0 74 73 0 74 75 0 72 75 1 64 76 0
		 77 76 1 77 65 0 71 74 0 70 73 0 78 69 0 78 79 1 66 79 0 76 80 0 80 81 0 81 77 0 78 81 0
		 79 80 0 83 82 0 72 83 0 75 82 0 84 68 0 85 84 0 85 69 0 85 86 0 86 78 0 87 77 0 88 87 0
		 88 65 1 89 63 1 89 90 0 90 60 0 91 81 0 86 91 0 89 88 0 90 92 0 92 71 0 93 75 0 94 93 0
		 82 94 0;
	setAttr ".ed[166:225]" 74 95 0 93 95 0 95 92 0 87 91 0 84 96 0 96 97 1 97 85 1
		 99 98 1 99 100 0 100 101 1 101 98 1 96 99 0 98 97 1 100 94 0 93 101 1 103 102 1 95 103 1
		 92 102 1 105 104 1 103 105 1 102 104 1 107 106 1 105 107 1 104 106 1 107 86 1 106 91 1
		 101 103 1 98 105 1 97 107 1 102 90 1 104 89 1 106 88 1 108 66 1 109 108 1 67 109 0
		 111 110 1 112 111 1 113 112 0 113 110 1 110 108 1 109 113 0 72 111 1 112 83 0 70 114 1
		 73 115 1 115 114 1 114 116 1 115 117 1 117 116 1 116 118 1 117 119 1 119 118 1 118 80 1
		 119 79 1 111 115 1 110 117 1 108 119 1 114 61 1 116 62 1 118 64 1;
	setAttr -s 108 -ch 428 ".fc[0:107]" -type "polyFaces" 
		f 4 3 -36 -5 10
		mu 0 4 0 1 2 3
		f 4 -37 0 5 4
		mu 0 4 2 4 5 3
		f 4 -38 -32 7 6
		mu 0 4 6 7 8 9
		f 4 -39 -4 12 -12
		mu 0 4 10 1 0 11
		f 4 -40 -14 2 -2
		mu 0 4 12 13 14 15
		f 4 -1 40 -15 8
		mu 0 4 5 4 16 17
		f 4 11 15 13 -42
		mu 0 4 10 11 14 13
		f 4 -7 -17 9 -43
		mu 0 4 6 9 18 19
		f 4 14 43 18 17
		mu 0 4 17 16 20 21
		f 4 19 -19 -45 -10
		mu 0 4 18 21 20 19
		f 4 -33 -46 1 20
		mu 0 4 22 23 12 15
		f 4 -34 -47 21 -8
		mu 0 4 24 25 26 27
		f 4 16 -22 47 26
		mu 0 4 28 27 26 29
		f 4 -9 -26 -49 24
		mu 0 4 30 31 32 33
		f 4 -11 -24 49 27
		mu 0 4 34 35 36 37
		f 4 22 -20 -27 50
		mu 0 4 38 39 28 29
		f 4 23 -6 -25 -52
		mu 0 4 36 35 30 33
		f 4 -13 -28 52 28
		mu 0 4 40 41 42 43
		f 4 -30 -54 -35 -21
		mu 0 4 44 45 46 47
		f 4 30 -55 29 -3
		mu 0 4 48 49 45 44
		f 4 -29 -56 -31 -16
		mu 0 4 50 51 49 48
		f 4 25 -18 -23 -57
		mu 0 4 52 53 54 55
		f 4 46 57 61 77
		mu 0 4 56 57 58 59
		f 4 -60 58 63 74
		mu 0 4 60 61 62 63
		f 4 -62 60 59 76
		mu 0 4 59 58 61 60
		f 4 -64 62 53 72
		mu 0 4 63 62 64 65
		f 4 -65 -66 55 79
		mu 0 4 66 67 68 69
		f 4 -67 -68 64 81
		mu 0 4 70 71 67 66
		f 4 -69 -70 66 83
		mu 0 4 72 73 71 70
		f 4 -51 -71 68 84
		mu 0 4 74 75 73 72
		f 4 -72 -73 54 65
		mu 0 4 67 63 65 68
		f 4 -74 -75 71 67
		mu 0 4 71 60 63 67
		f 4 -76 -77 73 69
		mu 0 4 73 59 60 71
		f 4 -48 -78 75 70
		mu 0 4 75 56 59 73
		f 3 -79 -80 -53
		mu 0 3 76 66 69
		f 4 -81 -82 78 -50
		mu 0 4 77 70 66 76
		f 4 -83 -84 80 51
		mu 0 4 78 72 70 77
		f 4 56 -85 82 48
		mu 0 4 79 74 72 78
		f 4 -106 -90 -86 37
		mu 0 4 80 83 82 81
		f 4 -103 -92 -87 87
		mu 0 4 84 87 86 85
		f 4 -105 -88 -89 89
		mu 0 4 83 84 85 82
		f 4 -101 45 -91 91
		mu 0 4 87 89 88 86
		f 4 -108 41 93 92
		mu 0 4 90 93 92 91
		f 4 -110 -93 95 94
		mu 0 4 94 90 91 95
		f 4 -112 -95 97 96
		mu 0 4 96 94 95 97
		f 4 -113 -97 98 44
		mu 0 4 98 96 97 99
		f 4 -94 39 100 99
		mu 0 4 91 92 89 87
		f 4 -96 -100 102 101
		mu 0 4 95 91 87 84
		f 4 -98 -102 104 103
		mu 0 4 97 95 84 83
		f 4 -99 -104 105 42
		mu 0 4 99 97 83 80
		f 3 38 107 106
		mu 0 3 100 93 90
		f 4 35 -107 109 108
		mu 0 4 101 100 90 94
		f 4 36 -109 111 110
		mu 0 4 102 101 94 96
		f 4 -41 -111 112 -44
		mu 0 4 103 102 96 98
		f 4 -117 115 114 -114
		mu 0 4 104 107 106 105
		f 4 -116 -120 -119 117
		mu 0 4 106 107 109 108
		f 4 -124 -123 121 120
		mu 0 4 110 113 112 111
		f 4 126 -126 113 124
		mu 0 4 114 115 104 105
		f 4 130 -130 128 127
		mu 0 4 116 119 118 117
		f 4 -134 132 -132 118
		mu 0 4 109 121 120 108
		f 4 135 -129 -135 -127
		mu 0 4 114 117 118 115
		f 4 138 -138 136 123
		mu 0 4 110 123 122 113
		f 4 -142 -141 -140 -133
		mu 0 4 121 125 124 120
		f 4 137 143 140 -143
		mu 0 4 122 123 124 125
		f 4 -147 -131 145 144
		mu 0 4 126 119 116 127
		f 4 122 -150 148 147
		mu 0 4 128 131 130 129
		f 4 -152 -151 149 -137
		mu 0 4 132 133 130 131
		f 4 -155 153 152 133
		mu 0 4 134 137 136 135
		f 4 -158 -157 155 116
		mu 0 4 138 141 140 139
		f 4 -160 151 142 -159
		mu 0 4 142 133 132 143
		f 4 160 154 119 -156
		mu 0 4 140 137 134 139
		f 4 -163 -162 157 125
		mu 0 4 144 147 146 145
		f 4 146 165 164 163
		mu 0 4 148 151 150 149
		f 4 129 -164 167 -167
		mu 0 4 152 148 149 153
		f 4 134 166 168 162
		mu 0 4 154 152 153 155
		f 4 169 158 141 -153
		mu 0 4 156 159 158 157
		f 4 -173 -172 -171 -149
		mu 0 4 160 163 162 161
		f 4 -177 -176 -175 173
		mu 0 4 164 167 166 165
		f 4 -179 -174 -178 171
		mu 0 4 163 164 165 162
		f 4 -181 -165 -180 175
		mu 0 4 167 169 168 166
		f 4 -184 -169 182 181
		mu 0 4 170 173 172 171
		f 4 -187 -182 185 184
		mu 0 4 174 170 171 175
		f 4 -190 -185 188 187
		mu 0 4 176 174 175 177
		f 4 -192 -188 190 159
		mu 0 4 178 176 177 179
		f 4 -183 -168 180 192
		mu 0 4 171 172 169 167
		f 4 -186 -193 176 193
		mu 0 4 175 171 167 164
		f 4 -189 -194 178 194
		mu 0 4 177 175 164 163
		f 4 -191 -195 172 150
		mu 0 4 179 177 163 160
		f 3 161 183 195
		mu 0 3 180 173 170
		f 4 156 -196 186 196
		mu 0 4 181 180 170 174
		f 4 -161 -197 189 197
		mu 0 4 182 181 174 176
		f 4 -154 -198 191 -170
		mu 0 4 183 182 176 178
		f 4 -121 200 199 198
		mu 0 4 184 187 186 185
		f 4 -205 203 202 201
		mu 0 4 188 191 190 189
		f 4 -200 206 204 205
		mu 0 4 185 186 191 188
		f 4 -203 208 -146 207
		mu 0 4 189 190 193 192
		f 4 -212 -211 -136 209
		mu 0 4 194 197 196 195
		f 4 -215 -214 211 212
		mu 0 4 198 199 197 194
		f 4 -218 -217 214 215
		mu 0 4 200 201 199 198
		f 4 -144 -220 217 218
		mu 0 4 202 203 201 200
		f 4 -221 -208 -128 210
		mu 0 4 197 189 192 196
		f 4 -222 -202 220 213
		mu 0 4 199 188 189 197
		f 4 -223 -206 221 216
		mu 0 4 201 185 188 199
		f 4 -139 -199 222 219
		mu 0 4 203 184 185 201
		f 3 -224 -210 -125
		mu 0 3 204 194 195
		f 4 -225 -213 223 -115
		mu 0 4 205 198 194 204
		f 4 -226 -216 224 -118
		mu 0 4 206 200 198 205
		f 4 139 -219 225 131
		mu 0 4 207 202 200 206;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface48" -p "polySurface36";
	setAttr ".rp" -type "double3" 0 9.9647350311279297 -0.24406147003173828 ;
	setAttr ".sp" -type "double3" 0 9.9647350311279297 -0.24406147003173828 ;
createNode mesh -n "polySurfaceShape57" -p "polySurface48";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:293]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 574 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.375 0.25 0.375 0.5
		 0.375 0.75 0.125 0 0.125 0.25 0.375 0.1207444 0.125 0.11881003 0.375 0.63118994 0.5
		 0.059598453 0.5 0.375 0.5 0.69044983 0.25 0.059574272 0.25 0.18457428 0.5 0.56405759
		 0.5 0.18599075 0.5 0 0.5 0.1207444 0.375 0.059598453 0.5 0.26577944 0.5 0.4842205
		 0.375 0.375 0.5 0.62954569 0.5 0.75 0.375 0.69059497 0.25 0 0.25 0.12059932 0.125
		 0.059405014 0.375 0.1848305 0.25 0.25 0.125 0.18440501 0.375 0.56559497 0.4375 0.089881279
		 0.4375 0.029702509 0.4375 0.43378717 0.4375 0.3162128 0.4375 0.72029746 0.4375 0.66050559
		 0.3125 0.029702507 0.3125 0.089881271 0.1875 0.089494392 0.1875 0.029702507 0.3125
		 0.15238127 0.3125 0.21720251 0.1875 0.21720251 0.1875 0.15199439 0.4375 0.59800553
		 0.4375 0.52908462 0.4375 0.22091532 0.4375 0.15238127 0.5 0.029702509 0.5 0.089881271
		 0.4375 0.1207444 0.375 0.089881271 0.4375 0.059598453 0.375 0.029702509 0.4375 0
		 0.5 0.31806919 0.5 0.43193078 0.4375 0.48700511 0.375 0.4375 0.4375 0.375 0.375 0.3125
		 0.4375 0.26299483 0.5 0.66031212 0.5 0.72029746 0.4375 0.75 0.375 0.72029746 0.4375
		 0.69049823 0.375 0.66089249 0.4375 0.62983584 0.3125 0 0.3125 0.059598453 0.25 0.029702507
		 0.3125 0.1207444 0.25 0.089784555 0.1875 0.12016408 0.125 0.089107521 0.1875 0.059501734
		 0.125 0.029702507 0.1875 0 0.375 0.15238127 0.3125 0.18459845 0.25 0.15228455 0.375
		 0.21813071 0.3125 0.25 0.25 0.21720251 0.1875 0.25 0.125 0.21720251 0.1875 0.18450174
		 0.125 0.15160751 0.5 0.52722824 0.5 0.59781212 0.375 0.59839249 0.4375 0.56457001
		 0.375 0.53279746 0.5 0.15238127 0.5 0.22277172 0.4375 0.18552665 0.72333586 0 1 0
		 1 0.18502769 0.72333586 0.18502769 0.72333586 0.43363699 1 0.43363699 1 0.63503289
		 0.72333586 0.63503289 1 0.87268454 0.72333586 0.87268454 0.25191468 0.63503289 0.44324827
		 0.63503289 0.44324827 0.87268454 0.25191468 0.87268454 0.25191468 0.43363696 0.44324827
		 0.43363699 0.25191468 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827 0
		 0 0.63503289 0 0.43363699 0 0.18502769 0 0 0.61113119 0.55587816 0.62963706 0.55110705
		 0.59963286 0.48257205 0.58140957 0.48615277 0.56478083 0.47170922 0.58726335 0.46221197
		 0.64330351 0.58127183 0.62041557 0.58097887 0.55646241 0.42403749 0.56697202 0.44438064
		 0.58477056 0.42567796 0.57946134 0.40790579 0.54119074 0.46091038 0.55730921 0.47753161
		 0.54725403 0.45474851 0.57204717 0.49186176 0.59910983 0.55567873 0.60551959 0.57558823
		 0.62466323 0.59893131 0.60727799 0.59320986 0 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0.51163328
		 0.43765894 0.504246 0.36658084 0.47618642 0.36317372 0.47776324 0.42795095 0.53457165
		 0.42758131 0.52210712 0.36172995 0.74367541 0.39805156 0.72001833 0.40155545 0.72214895
		 0.42375457 0.74520952 0.42076671 0.75963688 0.39413503 0.7619195 0.41814667 0.71841192
		 0.29069275 0.67067921 0.30847257 0.44281483 0.35861865 0.42505085 0.36523032 0.42452249
		 0.37770379 0.43633375 0.37427762 0.73572421 0.2893101 0.42760667 0.43423492 0.43972939
		 0.42953914 0.74593014 0.44919166 0.7636143 0.44774526 0.7234183 0.45107067 0.65627855
		 0.4372918 0.67418653 0.4520517 0.66439956 0.38025397 0.65081036 0.37313235 0.59926856
		 0.40825683 0.64140904 0.42503625 0.63952678 0.36721906 0.59555233 0.34464914 0.55646241
		 0.42403749 0.57946134 0.40790579 0.57530749 0.34254146 0.54215443 0.33466914 0 0
		 0 1 1 1 1 0 0 0 0 1 1 1 1 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0.71706247 0.27768463
		 0.73440021 0.27711582 0.67392111 0.29544139 0.64051747 0.30255392 0.64266384 0.31672254
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0.48137882 1 0.48137882 1 1 0 1 0 0 1 0 0.51383466 0.34161386 0.50135255
		 0.3531993 0.47730002 0.34789267 0.53653455 0.4656423 0.55157149 0.48200282 0.56485748
		 0.49624589 0.5898782 0.55552554 0.59408045 0.57144862 0.5939272 0.58881623 0 0 1
		 0 1 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0.4375 0.1207444 0.375 0.1207444 0.375 0.089881271 0.4375
		 0.089881279 0.375 0.059598453 0.4375 0.059598453 0.5 0.059598453 0.5 0.089881271
		 0.5 0.1207444 0.375 0.029702509 0.375 0 0.4375 0 0.4375 0.029702509 0.5 0 0.5 0.029702509
		 0.4375 0.48700511 0.375 0.5 0.375 0.4375 0.4375 0.43378717 0.375 0.375 0.4375 0.375
		 0.5 0.375 0.5 0.43193078 0.5 0.4842205 0.375 0.3125 0.375 0.25 0.4375 0.26299483
		 0.4375 0.3162128 0.5 0.26577944 0.5 0.31806919 0.4375 0.75 0.375 0.75 0.375 0.72029746
		 0.4375 0.72029746 0.375 0.69059497 0.4375 0.69049823 0.5 0.69044983 0.5 0.72029746
		 0.5 0.75 0.375 0.66089249 0.375 0.63118994 0.4375 0.62983584 0.4375 0.66050559 0.5
		 0.62954569 0.5 0.66031212 0.3125 0 0.3125 0.029702507 0.3125 0.059598453 0.25 0.059574272
		 0.25 0.029702507 0.25 0 0.3125 0.1207444 0.3125 0.089881271 0.25 0.12059932 0.25
		 0.089784555 0.1875 0.12016408 0.125 0.11881003 0.125 0.089107521 0.1875 0.089494392
		 0.125 0.059405014 0.1875 0.059501734 0.125 0.029702507 0.125 0 0.1875 0 0.1875 0.029702507
		 0.375 0.15238127 0.3125 0.15238127 0.375 0.1848305 0.3125 0.18459845 0.25 0.18457428
		 0.25 0.15228455 0.375 0.21813071 0.3125 0.25 0.3125 0.21720251 0.25 0.25 0.25 0.21720251
		 0.1875 0.25 0.125 0.25 0.125 0.21720251 0.1875 0.21720251 0.125 0.18440501 0.1875
		 0.18450174 0.125 0.15160751 0.1875 0.15199439 0.375 0.59839249 0.4375 0.59800553
		 0.375 0.56559497 0.4375 0.56457001 0.5 0.56405759 0.5 0.59781212 0.375 0.53279746
		 0.4375 0.52908462 0.5 0.52722824 0.4375 0.22091532 0.4375 0.18552665 0.5 0.18599075
		 0.5 0.22277172 0.4375 0.15238127 0.5 0.15238127 0.72333586 0 1 0 1 0.18502769 0.72333586
		 0.18502769 0.72333586 0.43363699 1 0.43363699 1 0.63503289 0.72333586 0.63503289
		 1 0.87268454 0.72333586 0.87268454 0.25191468 0.63503289 0.44324827 0.63503289 0.44324827
		 0.87268454 0.25191468 0.87268454 0.25191468 0.43363696 0.44324827 0.43363699 0.25191468
		 0.18502769 0.44324827 0.18502769 0.25191468 0 0.44324827 0 0 0.63503289 0 0.43363699
		 0 0.18502769 0 0 0.61113119 0.55587816 0.62963706 0.55110705 0.59963286 0.48257205
		 0.58140957 0.48615277 0.56478083 0.47170922 0.58726335 0.46221197 0.64330351 0.58127183
		 0.62041557 0.58097887 0.55646241 0.42403749 0.56697202 0.44438064 0.58477056 0.42567796
		 0.57946134 0.40790579 0.54119074 0.46091038 0.55730921 0.47753161 0.54725403 0.45474851
		 0.57204717 0.49186176 0.59910983 0.55567873 0.60551959 0.57558823 0.62466323 0.59893131
		 0.60727799 0.59320986 0 0 0 1 1 1 1 0 1 1 1 0 0 0 0 1 0.51163328 0.43765894 0.504246
		 0.36658084 0.47618642 0.36317372 0.47776324 0.42795095 0.53457165 0.42758131 0.52210712
		 0.36172995 0.74367541 0.39805156 0.72001833 0.40155545 0.72214895 0.42375457 0.74520952
		 0.42076671 0.75963688 0.39413503 0.7619195 0.41814667 0.71841192 0.29069275 0.67067921
		 0.30847257 0.44281483 0.35861865 0.42505085 0.36523032 0.42452249 0.37770379 0.43633375
		 0.37427762 0.73572421 0.2893101 0.42760667 0.43423492 0.43972939 0.42953914 0.74593014
		 0.44919166 0.7636143 0.44774526 0.7234183 0.45107067 0.65627855 0.4372918 0.67418653
		 0.4520517 0.66439956 0.38025397 0.65081036 0.37313235 0.59926856 0.40825683 0.64140904
		 0.42503625 0.63952678 0.36721906 0.59555233 0.34464914 0.55646241 0.42403749 0.57946134
		 0.40790579 0.57530749 0.34254146 0.54215443 0.33466914 0 0 0 1 1 1 1 0 0 0 0 1 1
		 1 1 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 1 0 0.71706247 0.27768463 0.73440021 0.27711582
		 0.67392111 0.29544139 0.64051747 0.30255392 0.64266384 0.31672254 0 0 1 0 1 1 0 1
		 0 0;
	setAttr ".uvst[0].uvsp[500:573]" 1 0 1 1 0 1 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0.48137882 1 0.48137882 1 1 0 1 0 0 1 0 0.51383466
		 0.34161386 0.50135255 0.3531993 0.47730002 0.34789267 0.53653455 0.4656423 0.55157149
		 0.48200282 0.56485748 0.49624589 0.5898782 0.55552554 0.59408045 0.57144862 0.5939272
		 0.58881623 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 324 ".vt";
	setAttr ".vt[0:165]"  -1.66882849 12.14859009 1.22741818 -1.23276818 16.81951904 0.97639263
		 -1.23276818 16.81951904 -1.55184197 -1.89029098 12.86491776 -1.78370428 -1.48694348 14.57277393 1.26921439
		 -1.58438456 14.75262833 -1.82912254 0 11.60000038 1.8537426 0 17.054664612 1.32415843
		 0 17.054664612 -1.89562845 0 12.62284756 -2.050695181 -1.47814679 13.39704227 1.13882113
		 -1.5724746 17.054664612 -0.29956642 -1.55592728 15.92673588 -1.8658824 -2.16321588 13 -0.099999994
		 -1.54416859 15.9069252 1.31807113 -1.61748052 13.85786629 -1.75912082 -2.027238131 14.66511536 -0.2706303
		 0 14.67152691 -2.40040541 0 14.51776314 1.89971244 0 13.18304443 1.78521633 0 17.47595024 -0.30043232
		 0 13.69725704 -2.29907703 -2.0213902 13.819067 -0.29399198 -2.1121316 15.93153 -0.2836473
		 0 15.93513298 -2.44539905 0 15.9200573 1.92799401 -1.12520742 11.80000019 1.59584451
		 -0.73586196 16.97446251 1.21064413 -0.73586196 16.97446251 -1.78378606 -0.94514549 12.74388313 -1.91719973
		 -1.67780817 12.83134556 1.14837837 -1.43997157 13.96669292 1.19256353 -1.4616437 16.97446251 0.45931688
		 -1.4616437 16.97446251 -1.049269795 -1.42814338 16.46553421 -1.74780083 -1.58975661 15.32700253 -1.87269449
		 -2.026753426 13.13268757 -1.074221492 -2.20681524 12.68370533 0.48660403 -1.54272223 15.24776173 1.32838178
		 -1.42814338 16.46553421 1.18628764 -1.59456396 14.28990173 -1.79605162 -1.6503197 13.37556553 -1.70396924
		 -1.88267803 14.61534691 0.56360006 -1.94763875 14.72421455 -1.11756504 -0.87797976 14.71034336 -2.25722098
		 -0.81301916 14.53525734 1.73030102 0 12.48024368 1.77496266 0 13.84964943 1.83490884
		 -0.80831909 13.24251842 1.59828854 0 17.36734009 0.5886035 0 17.36734009 -1.18083382
		 -0.86549956 17.36734009 -0.30100816 0 14.16318989 -2.35806561 0 13.21060085 -2.19331813
		 -0.90120834 13.75968075 -2.15769029 -2.072323322 13.40812111 -0.2 -1.87099123 13.62238503 0.47831219
		 -2.003944397 14.20960426 -0.27885637 -1.96388054 13.88761139 -1.088845491 -2.098522425 15.2709837 -0.27421933
		 -1.96794534 15.91840267 0.58563471 -1.96240067 16.55107498 -0.29293787 -1.9757843 15.93061352 -1.14734507
		 0 16.55107498 -2.28784299 0 15.28539562 -2.45621848 -0.84958488 15.93097973 -2.29968309
		 0 15.22509289 1.95529974 0 16.55107498 1.74411786 -0.84174591 15.91278934 1.77123237
		 -0.78372365 13.88215923 1.65620995 -0.9399935 12.58452797 1.58572674 -0.80403078 17.26555824 -1.11906075
		 -0.80403078 17.26555824 0.52598548 -0.92166781 13.26156044 -2.049701691 -0.88678509 14.21869278 -2.21665239
		 -2.011265516 13.15333939 0.47400743 -1.84126854 14.090251923 0.51641977 -1.94433022 14.28151321 -1.099899888
		 -1.99293971 13.45330715 -1.080785036 -1.95580053 15.25607491 0.59512269 -1.82642078 16.5083046 0.50978291
		 -1.82642078 16.5083046 -1.086990118 -1.98715687 15.30491543 -1.14545834 -0.87437385 15.30638218 -2.3100276
		 -0.7772305 16.5083046 -2.15079784 -0.7772305 16.5083046 1.60169125 -0.8430177 15.23362064 1.79137206
		 -2.023947001 9.58105564 0.63780004 0 9.96473503 1.88346076 0 9.4352684 -1.56641579
		 0 11.31550884 0.16921681 -2.25705361 9.43526936 -0.45755127 0 11.088393211 1.15201354
		 -2.21771216 9.4352684 0.17104124 0 10.91626167 -0.78777063 -2.12328982 9.4352684 -1.17349052
		 -1.064210892 9.43526554 -1.62339568 -1.22245681 10.46232128 -0.78676283 -1.2566185 10.72796822 -0.17973745
		 -1.18221259 10.66804695 0.60551339 -1.26543868 9.90018272 1.49957275 -0.48235348 9.43526649 -1.57734108
		 -0.60746992 10.80312729 -0.78726983 -0.62444574 11.13598442 -0.0041874647 -0.58747154 10.9919529 0.88044369
		 -0.73389494 9.96473503 1.83930945 -1.67474198 9.43526459 -1.50603306 -1.78747892 10.1310215 -0.78641641
		 -1.8333807 10.28199863 -0.29965913 -1.73340452 10.2950449 0.41770291 -1.69578362 9.77222347 1.11255312
		 -2.57846594 12.55669212 -1.65669191 -2.57846594 12.62270164 -2.070962667 -2.57846594 11 -1.5
		 -2.57846594 11.38268852 -2.4000001 -2.57846594 12.19923687 -2.4000001 -2.57846594 12.19901657 -1.92153394
		 -2.57846594 11.80000019 0.12153399 -2.57846594 12.55669212 -0.14330813 -2.57846594 13 -0.10000001
		 -2.57846594 12.82153416 -0.89999998 -2.57846594 13.13268757 -1.074221492 -2.57846594 11.043308258 -0.14330813
		 -1.74986887 12.16372681 -2.41345859 -2.63292646 10.92821693 0.046842411 -1.60000002 11.38389397 -2.38897038
		 -2.57846594 10.60000038 -0.75249475 -1.39092088 10.6339798 -2.35349107 -0.69999999 10.80000019 -2.38897038
		 -0.80000001 11.38148308 -2.38897038 -2.64085412 11.57351303 0.58401489 -0.89999998 12.19963074 -2.38897038
		 -2.31994939 9.9016695 0.7076273 -2.46711779 9.52785778 0.10543657 -2.078274012 9.52785587 -1.78279662
		 -1.26392674 9.52785587 -1.90508032 -0.51973587 9.52785587 -1.74881732 -2.46720552 9.52785969 -0.60335606
		 -2.29999995 9.52785587 -1.39999998 -2.13663316 10.220397 -2.25564003 -2.57846594 10.80000019 -1.70000005
		 0 11.38268852 -2.38897038 0 10.80000019 -2.38897038 0 12.19973564 -2.38897038 0 9.52785587 -1.69557714
		 -2.57846594 12.095931053 0.12153399 -2.60966015 12.33477402 0.45492557 -2.57846594 11.38389397 -1.93297613
		 -2.0083260536 10.16509247 1.17373836 -1.55061841 10.27214432 1.60674632 0 10.27214432 1.96809554
		 -0.88729221 10.27214432 1.93689632 -2.38265681 12.52579117 0.47639665 -2.3435874 13 -0.099999994
		 -2.26639986 13.13268757 -1.074221492 -2.18921232 12.7597065 -1.90848017 -2.12289643 12.19923687 -2.38897038
		 -2.12289643 11.38268852 -2.38897038 -2.27175236 11.92351437 0.91866815 -2.31600571 12.19901657 -0.93781757
		 -2.31600571 11.38389397 -0.93817914 -2.57846594 10.77846527 -0.90000004 0.81301916 14.53525734 1.73030102
		 1.48694348 14.57277393 1.26921439 1.43997157 13.96669292 1.19256353 0.78372365 13.88215923 1.65620995;
	setAttr ".vt[166:323]" 1.47814679 13.39704227 1.13882113 0.80831909 13.24251842 1.59828854
		 -1.0133426e-17 13.18304443 1.78521633 -8.5193647e-19 13.84964943 1.83490884 -2.3792535e-17 14.51776314 1.89971244
		 1.67780817 12.83134556 1.14837837 1.66882849 12.14859009 1.22741818 1.12520742 11.80000019 1.59584451
		 0.9399935 12.58452797 1.58572674 -7.3231305e-17 11.60000038 1.8537426 -5.1851817e-17 12.48024368 1.77496266
		 0.73586196 16.97446251 -1.78378606 1.23276818 16.81951904 -1.55184197 1.4616437 16.97446251 -1.049269795
		 0.80403078 17.26555824 -1.11906075 1.5724746 17.054664612 -0.29956642 0.86549956 17.36734009 -0.30100816
		 2.043486e-16 17.47595024 -0.30043232 -1.1975587e-16 17.36734009 -1.18083382 -2.293972e-16 17.054664612 -1.89562845
		 1.4616437 16.97446251 0.45931688 1.23276818 16.81951904 0.97639263 0.73586196 16.97446251 1.21064413
		 0.80403078 17.26555824 0.52598548 2.9612314e-16 17.054664612 1.32415843 3.2266942e-16 17.36734009 0.5886035
		 0.94514549 12.74388313 -1.91719973 1.89029098 12.86491776 -1.78370428 1.6503197 13.37556553 -1.70396924
		 0.92166781 13.26156044 -2.049701691 1.61748052 13.85786629 -1.75912082 0.90120834 13.75968075 -2.15769029
		 9.12051e-17 13.69725704 -2.29907703 1.2478819e-16 13.21060085 -2.19331813 6.4862223e-17 12.62284756 -2.050695181
		 1.59456396 14.28990173 -1.79605162 1.58438456 14.75262833 -1.82912254 0.87797976 14.71034336 -2.25722098
		 0.88678509 14.21869278 -2.21665239 1.0165809e-17 14.67152691 -2.40040541 3.0481113e-17 14.16318989 -2.35806561
		 2.20681524 12.68370533 0.48660403 2.011265516 13.15333939 0.47400743 1.87099123 13.62238503 0.47831219
		 2.0213902 13.819067 -0.29399198 2.072323322 13.40812111 -0.2 2.16321588 13 -0.099999994
		 1.88267803 14.61534691 0.56360006 1.84126854 14.090251923 0.51641977 2.027238131 14.66511536 -0.2706303
		 2.003944397 14.20960426 -0.27885637 1.94763875 14.72421455 -1.11756504 1.94433022 14.28151321 -1.099899888
		 1.96388054 13.88761139 -1.088845491 2.026753426 13.13268757 -1.074221492 1.99293971 13.45330715 -1.080785036
		 1.54272223 15.24776173 1.32838178 1.95580053 15.25607491 0.59512269 1.54416859 15.9069252 1.31807113
		 1.96794534 15.91840267 0.58563471 2.1121316 15.93153 -0.2836473 2.098522425 15.2709837 -0.27421933
		 1.42814338 16.46553421 1.18628764 1.82642078 16.5083046 0.50978291 1.96240067 16.55107498 -0.29293787
		 1.42814338 16.46553421 -1.74780083 1.82642078 16.5083046 -1.086990118 1.55592728 15.92673588 -1.8658824
		 1.9757843 15.93061352 -1.14734507 1.58975661 15.32700253 -1.87269449 1.98715687 15.30491543 -1.14545834
		 0.87437385 15.30638218 -2.3100276 0.84958488 15.93097973 -2.29968309 1.2004176e-16 15.93513298 -2.44539905
		 1.3872005e-16 15.28539562 -2.45621848 0.7772305 16.5083046 -2.15079784 -3.9397898e-17 16.55107498 -2.28784299
		 0.7772305 16.5083046 1.60169125 0.84174591 15.91278934 1.77123237 -5.681633e-17 15.9200573 1.92799401
		 1.1129507e-16 16.55107498 1.74411786 0.8430177 15.23362064 1.79137206 -1.0771346e-16 15.22509289 1.95529974
		 0.73389494 9.96473503 1.83930945 1.1074384e-16 9.96473503 1.88346076 3.1443737e-16 11.088393211 1.15201354
		 0.58747154 10.9919529 0.88044369 0.62444574 11.13598442 -0.0041874647 1.4929628e-16 11.31550884 0.16921681
		 -2.8570272e-17 10.91626167 -0.78777063 0.60746992 10.80312729 -0.78726983 -1.682259e-17 9.4352684 -1.56641579
		 0.48235348 9.43526649 -1.57734108 1.78747892 10.1310215 -0.78641641 1.22245681 10.46232128 -0.78676283
		 1.064210892 9.43526554 -1.62339568 1.67474198 9.43526459 -1.50603306 1.8333807 10.28199863 -0.29965913
		 1.2566185 10.72796822 -0.17973745 1.73340452 10.2950449 0.41770291 1.18221259 10.66804695 0.60551339
		 1.69578362 9.77222347 1.11255312 1.26543868 9.90018272 1.49957275 2.12328982 9.4352684 -1.17349052
		 2.25705361 9.43526936 -0.45755127 2.21771216 9.4352684 0.17104124 2.023947001 9.58105564 0.63780004
		 2.57846594 12.62270164 -2.070962667 2.57846594 12.55669212 -1.65669191 2.57846594 12.82153416 -0.89999998
		 2.57846594 13.13268757 -1.074221492 2.57846594 13 -0.10000001 2.57846594 12.55669212 -0.14330813
		 2.57846594 12.19901657 -1.92153394 2.57846594 12.19923687 -2.4000001 2.64085412 11.57351303 0.58401489
		 2.57846594 11.80000019 0.12153399 2.57846594 11.043308258 -0.14330813 2.63292646 10.92821693 0.046842411
		 2.38265681 12.52579117 0.47639665 2.3435874 13 -0.099999994 2.60966015 12.33477402 0.45492557
		 2.26639986 13.13268757 -1.074221492 2.18921232 12.7597065 -1.90848017 2.12289643 12.19923687 -2.38897038
		 2.57846594 11.38268852 -2.4000001 2.12289643 11.38268852 -2.38897038 2.57846594 10.77846527 -0.90000004
		 2.57846594 10.60000038 -0.75249475 2.57846594 11 -1.5 2.57846594 10.80000019 -1.70000005
		 1.55061841 10.27214432 1.60674632 0.88729221 10.27214432 1.93689632 2.27175236 11.92351437 0.91866815
		 2.0083260536 10.16509247 1.17373836 0.69999999 10.80000019 -2.38897038 1.39092088 10.6339798 -2.35349107
		 1.60000002 11.38389397 -2.38897038 0.80000001 11.38148308 -2.38897038 3.6043982e-17 10.80000019 -2.38897038
		 -6.6174449e-24 11.38268852 -2.38897038 0.51973587 9.52785587 -1.74881732 1.26392674 9.52785587 -1.90508032
		 -3.8303942e-17 10.27214432 1.96809554 -1.064548e-17 9.52785587 -1.69557714 0.89999998 12.19963074 -2.38897038
		 -3.4192963e-17 12.19973564 -2.38897038 1.74986887 12.16372681 -2.41345859 2.13663316 10.220397 -2.25564003
		 2.078274012 9.52785587 -1.78279662 2.29999995 9.52785587 -1.39999998 2.46720552 9.52785969 -0.60335606
		 2.46711779 9.52785778 0.10543657 2.31994939 9.9016695 0.7076273 2.57846594 12.095931053 0.12153399
		 2.57846594 11.38389397 -1.93297613 2.31600571 12.19901657 -0.93781757 2.31600571 11.38389397 -0.93817914;
	setAttr -s 616 ".ed";
	setAttr ".ed[0:165]"  0 26 0 26 6 0 1 27 1 27 7 1 2 28 1 28 8 1 3 29 0 29 9 0
		 0 30 1 30 10 1 10 31 1 31 4 1 1 32 1 32 11 1 11 33 1 33 2 1 2 34 1 34 12 1 12 35 1
		 35 5 1 3 36 0 36 13 0 13 37 0 37 0 0 4 38 1 38 14 1 14 39 1 39 1 1 5 40 1 40 15 1
		 15 41 1 41 3 1 4 42 1 42 16 1 16 43 1 43 5 1 5 44 1 44 17 1 18 45 1 45 4 1 19 46 0
		 46 6 0 19 47 0 47 18 0 19 48 1 48 10 1 20 49 0 49 7 0 20 50 0 50 8 0 20 51 1 51 11 1
		 21 52 0 52 17 0 21 53 0 53 9 0 21 54 1 54 15 1 22 55 1 55 13 1 22 56 1 56 10 1 22 57 1
		 57 16 1 22 58 1 58 15 1 23 59 1 59 16 1 23 60 1 60 14 1 23 61 1 61 11 1 23 62 1 62 12 1
		 24 63 0 63 8 0 24 64 0 64 17 0 24 65 1 65 12 1 25 66 0 66 18 0 25 67 0 67 7 0 25 68 1
		 68 14 1 69 45 1 69 31 1 69 48 1 69 47 1 70 30 1 70 26 1 70 46 1 70 48 1 71 28 1 71 33 1
		 71 51 1 71 50 1 72 32 1 72 27 1 72 49 1 72 51 1 73 29 1 73 41 1 73 54 1 73 53 1 74 40 1
		 74 44 1 74 52 1 74 54 1 75 37 1 75 30 1 75 56 1 75 55 1 76 31 1 76 42 1 76 57 1 76 56 1
		 77 43 1 77 40 1 77 58 1 77 57 1 78 41 1 78 36 1 78 55 1 78 58 1 79 42 1 79 38 1 79 60 1
		 79 59 1 80 39 1 80 32 1 80 61 1 80 60 1 81 33 1 81 34 1 81 62 1 81 61 1 82 35 1 82 43 1
		 82 59 1 82 62 1 83 44 1 83 35 1 83 65 1 83 64 1 84 34 1 84 28 1 84 63 1 84 65 1 85 27 1
		 85 39 1 85 68 1 85 67 1 86 38 1 86 45 1 86 66 1 86 68 1 87 110 0 87 93 0 88 92 0
		 90 94 0 91 95 0 90 103 1 92 90 0 93 91 0;
	setAttr ".ed[166:331]" 92 104 1 94 89 0 95 106 0 94 102 1 96 101 0 97 107 1
		 96 97 1 98 108 1 97 98 1 99 109 1 98 99 1 100 105 0 99 100 1 101 89 0 102 97 1 101 102 1
		 103 98 1 102 103 1 104 99 1 103 104 1 105 88 0 104 105 1 106 96 0 107 95 1 106 107 1
		 108 91 1 107 108 1 109 93 1 108 109 1 110 100 0 109 110 1 111 120 0 112 111 0 116 115 0
		 119 118 0 146 119 0 121 112 1 120 121 0 120 118 0 119 121 1 112 115 1 116 111 0 3 123 0
		 117 130 0 124 122 0 117 122 0 146 152 0 13 153 0 121 154 0 3 155 0 115 156 0 161 113 0
		 161 126 0 130 124 0 124 126 0 100 149 0 110 148 0 129 128 0 141 129 1 142 128 0 123 131 0
		 130 132 0 133 132 0 134 135 0 131 143 0 136 144 0 135 136 0 126 137 1 128 136 0 137 138 0
		 131 129 0 133 124 0 137 133 0 138 134 0 87 132 0 93 133 0 91 137 0 95 138 0 106 134 0
		 136 101 0 96 135 0 142 141 0 144 142 0 6 150 0 141 143 0 89 144 0 131 29 0 143 9 0
		 105 151 0 132 148 0 158 148 0 130 158 0 117 145 0 130 146 0 145 146 0 145 118 0 113 147 0
		 147 116 0 149 0 0 148 149 1 149 151 1 150 88 0 151 26 0 150 151 1 152 37 0 153 119 0
		 152 153 1 154 36 0 153 154 1 155 112 0 154 155 1 156 123 0 155 156 1 152 158 0 158 0 0
		 116 159 0 159 120 0 117 160 0 122 161 0 160 161 0 145 159 0 160 159 0 147 160 0 162 163 1
		 164 163 1 165 164 1 165 162 1 166 164 1 167 166 1 165 167 1 168 167 1 168 169 0 165 169 1
		 169 170 0 170 162 1 172 171 1 172 173 0 174 173 1 174 171 1 173 175 0 176 175 0 174 176 1
		 168 176 0 174 167 1 171 166 1 178 177 1 179 178 1 180 179 1 180 177 1 181 179 1 182 181 1
		 180 182 1 183 182 1 183 184 0 180 184 1 184 185 0 177 185 1 187 186 1 187 188 1 189 188 1
		 189 186 1 188 190 1 191 190 0 189 191 1 183 191 0 189 182 1;
	setAttr ".ed[332:497]" 186 181 1 193 192 0 194 193 1 195 194 1 195 192 1 196 194 1
		 197 196 1 195 197 1 198 197 1 198 199 0 195 199 1 199 200 0 192 200 0 202 201 1 202 203 1
		 204 203 1 204 201 1 203 205 1 206 205 0 204 206 1 198 206 0 204 197 1 201 196 1 207 172 0
		 208 171 1 208 207 1 209 166 1 208 209 1 210 209 1 210 211 1 208 211 1 211 212 1 212 207 0
		 163 213 1 214 213 1 214 164 1 213 215 1 216 215 1 214 216 1 210 216 1 214 209 1 217 202 1
		 218 201 1 218 217 1 219 196 1 218 219 1 210 219 1 218 216 1 215 217 1 193 220 0 221 220 1
		 221 194 1 220 212 0 221 211 1 221 219 1 163 222 1 223 222 1 223 213 1 222 224 1 225 224 1
		 223 225 1 226 225 1 226 227 1 223 227 1 227 215 1 228 187 1 229 186 1 229 228 1 230 181 1
		 229 230 1 226 230 1 229 225 1 224 228 1 178 231 1 232 231 1 232 179 1 231 233 1 234 233 1
		 232 234 1 226 234 1 232 230 1 235 202 1 236 217 1 236 235 1 236 227 1 236 234 1 233 235 1
		 237 235 1 237 203 1 238 233 1 237 238 1 239 238 1 239 240 0 237 240 1 240 205 0 241 177 1
		 241 231 1 242 185 0 241 242 1 239 242 0 241 238 1 243 228 1 243 188 1 244 224 1 243 244 1
		 245 244 1 245 246 0 243 246 1 246 190 0 247 162 1 247 222 1 248 170 0 247 248 1 245 248 0
		 247 244 1 249 250 0 250 251 0 251 252 1 252 249 1 254 253 1 254 255 0 255 256 1 256 253 1
		 251 254 0 253 252 1 255 257 0 258 257 0 258 256 1 260 259 1 261 260 1 262 261 0 262 259 1
		 264 263 1 260 264 1 259 263 1 266 265 1 264 266 1 263 265 1 267 268 0 266 268 1 265 267 1
		 256 260 1 261 258 0 253 264 1 252 266 1 268 249 0 259 269 1 269 262 0 263 270 1 270 269 0
		 265 271 1 271 270 0 272 267 0 272 271 0 273 274 0 274 275 0 275 276 0 276 273 1 277 276 1
		 275 278 0 277 278 0 279 274 0 273 280 1 279 280 0 282 281 0 282 283 0;
	setAttr ".ed[498:615]" 284 283 0 281 284 0 285 286 1 286 277 0 287 277 0 287 285 0
		 286 288 1 276 288 0 288 289 1 289 273 0 289 290 1 280 290 0 293 294 0 284 294 0 283 293 0
		 293 295 0 297 172 0 297 298 1 298 173 0 299 300 0 300 297 1 299 172 0 301 302 0 303 302 0
		 304 303 1 304 301 0 305 301 0 306 304 1 305 306 0 308 307 0 308 302 0 301 307 0 309 250 0
		 309 298 1 249 298 0 310 305 0 307 310 0 175 309 0 311 304 0 311 312 0 306 312 0 313 303 0
		 313 311 0 315 308 0 317 316 0 294 317 1 318 284 0 318 319 0 281 319 0 317 318 0 316 315 0
		 272 319 0 271 318 0 270 317 0 269 316 0 262 315 0 307 258 0 257 310 0 261 308 0 193 313 0
		 311 192 0 312 200 0 281 299 0 319 300 0 267 300 0 281 287 0 320 287 0 282 320 0 320 278 0
		 321 279 0 295 321 0 268 297 0 212 286 0 285 207 0 288 220 0 193 289 0 290 313 0 285 299 0
		 279 322 0 322 275 0 282 323 0 323 293 0 320 322 0 323 322 0 321 323 0 114 115 0 156 157 1
		 113 140 0 125 129 1 127 128 0 127 135 0 134 139 1 126 140 0 138 140 0 114 147 1 114 140 0
		 123 125 0 125 157 0 127 139 0 139 157 0 125 127 0 139 140 0 114 157 0 114 139 0 291 292 0
		 280 291 0 294 296 0 314 315 1 302 314 0 296 316 0 291 321 1 295 296 0 292 303 0 290 292 1
		 292 314 0 291 296 0 296 314 0 291 314 0;
	setAttr -s 294 -ch 1170 ".fc[0:293]" -type "polyFaces" 
		f 4 39 -12 -88 86
		mu 0 4 52 6 53 32
		f 4 -11 -46 -89 87
		mu 0 4 53 18 54 32
		f 4 -45 42 -90 88
		mu 0 4 54 9 51 32
		f 4 43 38 -87 89
		mu 0 4 51 17 52 32
		f 4 -9 0 -92 90
		mu 0 4 55 0 56 33
		f 4 1 -42 -93 91
		mu 0 4 56 16 50 33
		f 4 -41 44 -94 92
		mu 0 4 50 9 54 33
		f 4 45 -10 -91 93
		mu 0 4 54 18 55 33
		f 4 -5 -16 -96 94
		mu 0 4 59 2 60 34
		f 4 -15 -52 -97 95
		mu 0 4 60 21 61 34
		f 4 -51 48 -98 96
		mu 0 4 61 10 58 34
		f 4 49 -6 -95 97
		mu 0 4 58 20 59 34
		f 4 -13 2 -100 98
		mu 0 4 62 1 63 35
		f 4 3 -48 -101 99
		mu 0 4 63 19 57 35
		f 4 -47 50 -102 100
		mu 0 4 57 10 61 35
		f 4 51 -14 -99 101
		mu 0 4 61 21 62 35
		f 4 -7 -32 -104 102
		mu 0 4 66 3 67 36
		f 4 -31 -58 -105 103
		mu 0 4 67 24 68 36
		f 4 -57 54 -106 104
		mu 0 4 68 11 65 36
		f 4 55 -8 -103 105
		mu 0 4 65 23 66 36
		f 4 -29 36 -108 106
		mu 0 4 69 8 70 37
		f 4 37 -54 -109 107
		mu 0 4 70 22 64 37
		f 4 -53 56 -110 108
		mu 0 4 64 11 68 37
		f 4 57 -30 -107 109
		mu 0 4 68 24 69 37
		f 4 23 8 -112 110
		mu 0 4 71 0 55 38
		f 4 9 -62 -113 111
		mu 0 4 55 18 72 38
		f 4 -61 58 -114 112
		mu 0 4 72 12 73 38
		f 4 59 22 -111 113
		mu 0 4 73 25 71 38
		f 4 11 32 -116 114
		mu 0 4 53 6 74 39
		f 4 33 -64 -117 115
		mu 0 4 74 26 75 39
		f 4 -63 60 -118 116
		mu 0 4 75 12 72 39
		f 4 61 10 -115 117
		mu 0 4 72 18 53 39
		f 4 35 28 -120 118
		mu 0 4 76 7 77 40
		f 4 29 -66 -121 119
		mu 0 4 77 27 78 40
		f 4 -65 62 -122 120
		mu 0 4 78 12 75 40
		f 4 63 34 -119 121
		mu 0 4 75 26 76 40
		f 4 31 20 -124 122
		mu 0 4 79 4 80 41
		f 4 21 -60 -125 123
		mu 0 4 80 25 73 41
		f 4 -59 64 -126 124
		mu 0 4 73 12 78 41
		f 4 65 30 -123 125
		mu 0 4 78 27 79 41
		f 4 -33 24 -128 126
		mu 0 4 74 6 81 42
		f 4 25 -70 -129 127
		mu 0 4 81 28 82 42
		f 4 -69 66 -130 128
		mu 0 4 82 13 83 42
		f 4 67 -34 -127 129
		mu 0 4 83 26 74 42
		f 4 27 12 -132 130
		mu 0 4 84 1 85 43
		f 4 13 -72 -133 131
		mu 0 4 85 29 86 43
		f 4 -71 68 -134 132
		mu 0 4 86 13 82 43
		f 4 69 26 -131 133
		mu 0 4 82 28 84 43
		f 4 15 16 -136 134
		mu 0 4 87 5 88 44
		f 4 17 -74 -137 135
		mu 0 4 88 30 89 44
		f 4 -73 70 -138 136
		mu 0 4 89 13 86 44
		f 4 71 14 -135 137
		mu 0 4 86 29 87 44
		f 4 19 -36 -140 138
		mu 0 4 90 7 76 45
		f 4 -35 -68 -141 139
		mu 0 4 76 26 83 45
		f 4 -67 72 -142 140
		mu 0 4 83 13 89 45
		f 4 73 18 -139 141
		mu 0 4 89 30 90 45
		f 4 -37 -20 -144 142
		mu 0 4 70 8 93 46
		f 4 -19 -80 -145 143
		mu 0 4 93 31 94 46
		f 4 -79 76 -146 144
		mu 0 4 94 14 92 46
		f 4 77 -38 -143 145
		mu 0 4 92 22 70 46
		f 4 -17 4 -148 146
		mu 0 4 95 2 59 47
		f 4 5 -76 -149 147
		mu 0 4 59 20 91 47
		f 4 -75 78 -150 148
		mu 0 4 91 14 94 47
		f 4 79 -18 -147 149
		mu 0 4 94 31 95 47
		f 4 -3 -28 -152 150
		mu 0 4 63 1 84 48
		f 4 -27 -86 -153 151
		mu 0 4 84 28 98 48
		f 4 -85 82 -154 152
		mu 0 4 98 15 97 48
		f 4 83 -4 -151 153
		mu 0 4 97 19 63 48
		f 4 -25 -40 -156 154
		mu 0 4 81 6 52 49
		f 4 -39 -82 -157 155
		mu 0 4 52 17 96 49
		f 4 -81 84 -158 156
		mu 0 4 96 15 98 49
		f 4 85 -26 -155 157
		mu 0 4 98 28 81 49
		f 4 186 160 166 187
		mu 0 4 99 100 101 102
		f 4 -164 161 169 183
		mu 0 4 103 104 105 106
		f 4 -167 164 163 185
		mu 0 4 102 101 104 103
		f 4 -170 167 -180 181
		mu 0 4 106 105 107 108
		f 4 -172 -173 -189 190
		mu 0 4 109 110 111 112
		f 4 -174 -175 171 192
		mu 0 4 113 114 110 109
		f 4 -176 -177 173 194
		mu 0 4 115 116 114 113
		f 4 195 -179 175 196
		mu 0 4 117 118 116 115
		f 4 -181 -182 -171 172
		mu 0 4 110 106 108 111
		f 4 -183 -184 180 174
		mu 0 4 114 103 106 110
		f 4 -185 -186 182 176
		mu 0 4 116 102 103 114
		f 4 177 -188 184 178
		mu 0 4 118 99 102 116
		f 3 -190 -191 -169
		mu 0 3 119 109 112
		f 4 -192 -193 189 -163
		mu 0 4 120 113 109 119
		f 4 -194 -195 191 -166
		mu 0 4 121 115 113 120
		f 4 158 -197 193 -160
		mu 0 4 122 117 115 121
		f 4 198 197 203 202
		mu 0 4 123 124 125 126
		f 4 205 -204 204 -201
		mu 0 4 127 126 125 128
		f 4 207 -199 206 -200
		mu 0 4 129 124 123 130
		f 4 -210 211 -211 -220
		mu 0 4 131 132 133 134
		f 4 272 271 -202 212
		mu 0 4 135 136 127 137
		f 4 274 -215 -206 -272
		mu 0 4 136 138 126 127
		f 4 276 275 -203 214
		mu 0 4 138 139 123 126
		f 4 -207 -276 278 -217
		mu 0 4 130 123 139 140
		f 4 218 -221 210 284
		mu 0 4 143 144 145 146
		f 4 -265 266 268 -1
		mu 0 4 151 152 153 154
		f 4 256 265 264 -281
		mu 0 4 155 156 152 151
		f 4 225 -224 -225 -248
		mu 0 4 161 157 160 162
		f 4 186 -268 269 -255
		mu 0 4 165 166 167 168
		f 4 -235 -226 -249 -232
		mu 0 4 163 157 161 169
		f 4 -250 -2 -269 -270
		mu 0 4 167 170 171 168
		f 4 -237 230 -251 224
		mu 0 4 160 172 173 162
		f 4 219 -238 228 -228
		mu 0 4 183 184 185 186
		f 4 237 220 233 238
		mu 0 4 185 184 179 182
		f 4 240 -229 -242 -160
		mu 0 4 187 188 189 190
		f 4 241 -239 -243 -166
		mu 0 4 191 192 193 194
		f 4 235 -244 -163 242
		mu 0 4 195 196 197 198
		f 4 239 -245 -169 243
		mu 0 4 199 200 201 202
		f 4 -246 231 -252 -180
		mu 0 4 203 163 169 204
		f 4 246 232 245 -171
		mu 0 4 205 164 163 203
		f 4 244 229 -247 -189
		mu 0 4 206 207 164 205
		f 4 -227 -209 6 -253
		mu 0 4 208 209 210 211
		f 4 -231 252 7 -254
		mu 0 4 212 213 214 215
		f 4 -258 227 255 -257
		mu 0 4 216 217 218 219
		f 4 -241 158 222 -256
		mu 0 4 220 221 222 223
		f 4 209 259 -261 -259
		mu 0 4 224 225 226 227
		f 4 260 201 200 -262
		mu 0 4 228 229 230 231
		f 4 195 221 -266 -223
		mu 0 4 238 239 152 156
		f 4 -267 -222 177 254
		mu 0 4 153 152 239 240
		f 4 -23 213 -273 270
		mu 0 4 241 242 136 135
		f 4 -22 -274 -275 -214
		mu 0 4 242 243 138 136
		f 4 -21 215 -277 273
		mu 0 4 243 244 139 138
		f 4 -279 -216 208 -278
		mu 0 4 140 139 244 245
		f 4 -213 -260 257 -280
		mu 0 4 255 256 257 258
		f 4 -271 279 280 -24
		mu 0 4 259 260 261 262
		f 4 -208 281 282 -198
		mu 0 4 263 264 265 266
		f 4 -212 283 285 -285
		mu 0 4 267 268 269 270
		f 4 258 286 -288 -284
		mu 0 4 271 272 273 274
		f 4 261 -205 -283 -287
		mu 0 4 275 276 277 278
		f 4 -263 -218 -286 -289
		mu 0 4 279 280 281 282
		f 4 -264 288 287 -282
		mu 0 4 283 284 285 286
		f 4 -293 291 290 -290
		mu 0 4 287 290 289 288
		f 4 -292 295 294 293
		mu 0 4 289 290 292 291
		f 4 -296 298 -298 296
		mu 0 4 292 290 294 293
		f 4 -299 292 -301 -300
		mu 0 4 294 290 287 295
		f 4 -305 303 -303 301
		mu 0 4 296 299 298 297
		f 4 -304 307 306 -306
		mu 0 4 298 299 301 300
		f 4 -308 309 -297 308
		mu 0 4 301 299 292 293
		f 4 -310 304 310 -295
		mu 0 4 292 299 296 291
		f 4 -315 313 312 311
		mu 0 4 302 305 304 303
		f 4 -314 317 316 315
		mu 0 4 304 305 307 306
		f 4 -318 320 -320 318
		mu 0 4 307 305 309 308
		f 4 -321 314 322 -322
		mu 0 4 309 305 302 310
		f 4 -327 325 -325 323
		mu 0 4 311 314 313 312
		f 4 -326 329 328 -328
		mu 0 4 313 314 316 315
		f 4 -330 331 -319 330
		mu 0 4 316 314 307 308
		f 4 -332 326 332 -317
		mu 0 4 307 314 311 306
		f 4 -337 335 334 333
		mu 0 4 317 320 319 318
		f 4 -336 339 338 337
		mu 0 4 319 320 322 321
		f 4 -340 342 -342 340
		mu 0 4 322 320 324 323
		f 4 -343 336 344 -344
		mu 0 4 324 320 317 325
		f 4 -349 347 -347 345
		mu 0 4 326 329 328 327
		f 4 -348 351 350 -350
		mu 0 4 328 329 331 330
		f 4 -352 353 -341 352
		mu 0 4 331 329 322 323
		f 4 -354 348 354 -339
		mu 0 4 322 329 326 321
		f 4 -358 356 -302 -356
		mu 0 4 332 333 296 297
		f 4 -357 359 358 -311
		mu 0 4 296 333 334 291
		f 4 -360 362 -362 360
		mu 0 4 334 333 336 335
		f 4 -363 357 -365 -364
		mu 0 4 336 333 332 337
		f 4 -368 366 -366 -291
		mu 0 4 289 339 338 288
		f 4 -367 370 369 -369
		mu 0 4 338 339 341 340
		f 4 -371 372 -361 371
		mu 0 4 341 339 334 335
		f 4 -373 367 -294 -359
		mu 0 4 334 339 289 291
		f 4 -376 374 -346 -374
		mu 0 4 342 345 344 343
		f 4 -375 377 376 -355
		mu 0 4 344 345 347 346
		f 4 -378 379 -372 378
		mu 0 4 347 345 341 335
		f 4 -380 375 -381 -370
		mu 0 4 341 345 342 340
		f 4 -384 382 -382 -335
		mu 0 4 348 351 350 349
		f 4 -383 385 363 -385
		mu 0 4 350 351 336 337
		f 4 -386 386 -379 361
		mu 0 4 336 351 347 335
		f 4 -387 383 -338 -377
		mu 0 4 347 351 348 346
		f 4 -390 388 -388 365
		mu 0 4 338 353 352 288
		f 4 -389 392 391 -391
		mu 0 4 352 353 355 354
		f 4 -393 395 -395 393
		mu 0 4 355 353 357 356
		f 4 -396 389 368 -397
		mu 0 4 357 353 338 340
		f 4 -400 398 -324 -398
		mu 0 4 358 360 359 312
		f 4 -399 401 400 -333
		mu 0 4 359 360 362 361
		f 4 -402 403 -394 402
		mu 0 4 362 360 355 356
		f 4 -404 399 -405 -392
		mu 0 4 355 360 358 354
		f 4 -408 406 -406 -313
		mu 0 4 363 366 365 364
		f 4 -407 410 409 -409
		mu 0 4 365 366 368 367
		f 4 -411 412 -403 411
		mu 0 4 368 366 362 356
		f 4 -413 407 -316 -401
		mu 0 4 362 366 363 361
		f 4 -416 414 373 -414
		mu 0 4 369 370 342 343
		f 4 -415 416 396 380
		mu 0 4 342 370 357 340
		f 4 -417 417 -412 394
		mu 0 4 357 370 368 356
		f 4 -418 415 -419 -410
		mu 0 4 368 370 369 367
		f 4 -421 419 413 346
		mu 0 4 328 372 371 327
		f 4 -420 422 421 418
		mu 0 4 371 372 374 373
		f 4 -423 425 -425 423
		mu 0 4 374 372 376 375
		f 4 -426 420 349 -427
		mu 0 4 376 372 328 330
		f 4 -429 427 -312 405
		mu 0 4 377 378 302 303
		f 4 -428 430 429 -323
		mu 0 4 302 378 379 310
		f 4 -431 432 -424 431
		mu 0 4 379 378 374 375
		f 4 -433 428 408 -422
		mu 0 4 374 378 377 373
		f 4 -435 433 397 324
		mu 0 4 313 380 358 312
		f 4 -434 436 435 404
		mu 0 4 358 380 381 354
		f 4 -437 439 -439 437
		mu 0 4 381 380 383 382
		f 4 -440 434 327 -441
		mu 0 4 383 380 313 315
		f 4 -443 441 289 387
		mu 0 4 352 384 287 288
		f 4 -442 444 443 300
		mu 0 4 287 384 385 295
		f 4 -445 446 -438 445
		mu 0 4 385 384 381 382
		f 4 -447 442 390 -436
		mu 0 4 381 384 352 354
		f 4 -451 -450 -449 -448
		mu 0 4 386 389 388 387
		f 4 -455 -454 -453 451
		mu 0 4 390 393 392 391
		f 4 -457 -452 -456 449
		mu 0 4 389 390 391 388
		f 4 -460 458 -458 453
		mu 0 4 393 395 394 392
		f 4 -464 462 461 460
		mu 0 4 396 399 398 397
		f 4 -467 -461 465 464
		mu 0 4 400 396 397 401
		f 4 -470 -465 468 467
		mu 0 4 402 400 401 403
		f 4 -473 -468 471 -471
		mu 0 4 404 402 403 405
		f 4 -462 474 459 473
		mu 0 4 397 398 395 393
		f 4 -466 -474 454 475
		mu 0 4 401 397 393 390
		f 4 -469 -476 456 476
		mu 0 4 403 401 390 389
		f 4 -472 -477 450 -478
		mu 0 4 405 403 389 386
		f 3 479 463 478
		mu 0 3 406 399 396
		f 4 481 -479 466 480
		mu 0 4 407 406 396 400
		f 4 483 -481 469 482
		mu 0 4 408 407 400 402
		f 4 485 -483 472 -485
		mu 0 4 409 408 402 404
		f 4 -490 -489 -488 -487
		mu 0 4 410 413 412 411
		f 4 492 -492 488 -491
		mu 0 4 414 415 412 413
		f 4 495 -495 486 -494
		mu 0 4 416 417 410 411
		f 4 499 498 -498 496
		mu 0 4 418 421 420 419
		f 4 -504 502 -502 -501
		mu 0 4 422 424 414 423
		f 4 501 490 505 -505
		mu 0 4 423 414 413 425
		f 4 -506 489 -508 -507
		mu 0 4 425 413 410 426
		f 4 509 -509 507 494
		mu 0 4 417 427 426 410
		f 4 -513 -499 511 -511
		mu 0 4 430 433 432 431
		f 4 302 -517 -516 514
		mu 0 4 438 441 440 439
		f 4 519 -515 -519 -518
		mu 0 4 442 438 439 443
		f 4 -524 522 521 -521
		mu 0 4 444 447 446 445
		f 4 526 525 523 -525
		mu 0 4 448 449 447 444
		f 4 -530 520 -529 527
		mu 0 4 450 444 445 451
		f 4 532 -532 530 -448
		mu 0 4 452 455 454 453
		f 4 534 533 524 529
		mu 0 4 450 456 448 444
		f 4 531 516 305 535
		mu 0 4 454 455 458 457
		f 4 -526 538 -538 536
		mu 0 4 447 449 460 459
		f 4 -523 -537 -541 539
		mu 0 4 446 447 459 461
		f 4 546 -546 544 -500
		mu 0 4 470 473 472 471
		f 4 -548 -544 -512 -545
		mu 0 4 472 469 466 471
		f 4 485 550 545 -550
		mu 0 4 474 477 476 475
		f 4 483 551 547 -551
		mu 0 4 478 481 480 479
		f 4 -552 481 552 -543
		mu 0 4 482 485 484 483
		f 4 -553 479 553 -549
		mu 0 4 486 489 488 487
		f 4 458 555 -535 554
		mu 0 4 490 491 456 450
		f 4 474 -555 -528 -557
		mu 0 4 492 490 450 451
		f 4 462 556 -542 -554
		mu 0 4 493 492 451 494
		f 4 558 -334 557 540
		mu 0 4 495 498 497 496
		f 4 559 -345 -559 537
		mu 0 4 499 502 501 500
		f 4 517 -562 -547 560
		mu 0 4 503 506 505 504
		f 4 561 -563 -485 549
		mu 0 4 507 510 509 508
		f 4 565 564 -564 -497
		mu 0 4 511 514 513 512
		f 4 566 -493 -503 -565
		mu 0 4 515 518 517 516
		f 4 562 518 -570 -471
		mu 0 4 525 443 439 526
		f 4 -533 -478 569 515
		mu 0 4 440 527 526 439
		f 4 -572 500 -571 364
		mu 0 4 528 422 423 529
		f 4 570 504 572 384
		mu 0 4 529 423 425 530
		f 4 -573 506 -574 381
		mu 0 4 530 425 426 531
		f 4 574 -558 573 508
		mu 0 4 427 532 531 426
		f 4 575 -561 563 503
		mu 0 4 542 545 544 543
		f 4 355 -520 -576 571
		mu 0 4 546 549 548 547
		f 4 487 -578 -577 493
		mu 0 4 550 553 552 551
		f 4 512 -580 -579 497
		mu 0 4 554 557 556 555
		f 4 578 581 -581 -566
		mu 0 4 558 561 560 559
		f 4 580 577 491 -567
		mu 0 4 562 565 564 563
		f 4 582 579 513 568
		mu 0 4 566 569 568 567
		f 4 576 -582 -583 567
		mu 0 4 570 573 572 571
		f 4 -601 583 216 584
		mu 0 4 142 141 130 140
		f 4 -591 -219 217 585
		mu 0 4 150 147 148 149
		f 4 223 -588 -599 586
		mu 0 4 160 157 158 159
		f 4 234 -233 -589 587
		mu 0 4 157 163 164 158
		f 4 -595 226 236 -587
		mu 0 4 159 174 172 160
		f 4 -597 588 -230 589
		mu 0 4 175 176 177 178
		f 4 590 -592 -236 -234
		mu 0 4 179 180 181 182
		f 4 591 -600 -590 -240
		mu 0 4 181 180 175 178
		f 4 -584 592 263 199
		mu 0 4 235 232 233 234
		f 4 -586 262 -593 593
		mu 0 4 236 237 233 232
		f 4 -585 277 594 595
		mu 0 4 142 140 245 246
		f 4 596 597 -596 598
		mu 0 4 247 248 249 250
		f 3 -602 600 -598
		mu 0 3 251 253 254
		f 3 601 599 -594
		mu 0 3 253 251 252
		f 4 603 602 -612 -510
		mu 0 4 417 428 429 427
		f 4 510 604 -610 -514
		mu 0 4 435 434 437 436
		f 4 605 541 528 606
		mu 0 4 462 465 464 463
		f 4 543 542 -608 -605
		mu 0 4 466 469 468 467
		f 4 548 -606 -615 607
		mu 0 4 468 465 462 467
		f 4 -609 -604 -496 -568
		mu 0 4 520 519 522 521
		f 4 -614 608 -569 609
		mu 0 4 523 519 520 524
		f 4 610 -540 -575 611
		mu 0 4 429 533 532 427
		f 4 -522 -611 612 -607
		mu 0 4 534 537 536 535
		f 3 -616 613 614
		mu 0 3 538 540 539
		f 3 615 -613 -603
		mu 0 3 540 538 541;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface49" -p "polySurface48";
	setAttr ".rp" -type "double3" -3.5999999046325684 11.800000190734863 -0.89999997615814209 ;
	setAttr ".sp" -type "double3" -3.5999999046325684 11.800000190734863 -0.89999997615814209 ;
createNode mesh -n "polySurfaceShape61" -p "polySurface49";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 77 ".uvst[0].uvsp[0:76]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.25683233 0 0.375 0.8818323 0.25683233 0.25 0.74316764
		 0.25 0.625 0.8818323 0.74316764 0 0.25683233 0.16212602 0.125 0.16212602 0.375 0.58787394
		 0.625 0.58787394 0.875 0.16212602 0.74316764 0.16212602 0.625 0.16212602 0.375 0.16212602
		 0.375 0.75 0.625 0.75 0.625 0.8818323 0.375 0.8818323 0.625 1 0.375 1 0.50188321
		 0.5 0.50188321 0.58787394 0.50188321 0.75 0.50188321 0.75 0.50188321 0.8818323 0.50188321
		 1 0.50188321 0 0.50188321 1 0.50188321 0.16212602 0.50188321 0.25 0.5 0 0.625 0 0.625
		 0.125 0.5 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.375 0.125 0.375 0 0.625 0.375 0.5
		 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.375 0.375 0.625 0.625 0.5 0.625 0.625 0.75 0.5
		 0.75 0.375 0.75 0.375 0.625 0.75 0 0.875 0 0.875 0.125 0.75 0.125 0.875 0.25 0.75
		 0.25 0.25 0 0.25 0.125 0.25 0.25 0.125 0.25 0.125 0.125 0.125 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -4.094861984 9.76852512 -0.18699837 -3.45976281 9.76852512 -0.18699837
		 -4.35669184 11.043308258 -0.14330815 -2.84330797 11.043308258 -0.14330815 -4.35669184 11.043308258 -1.65669179
		 -2.84330797 11.043308258 -1.65669179 -4.28413486 9.69999981 -1.70920277 -3.27048969 9.69999981 -1.70920277
		 -4.29241514 9.83291912 -1.19118035 -4.62153435 10.77846527 -0.89999998 -2.57846594 10.77846527 -0.89999998
		 -3.25997496 9.83291912 -1.048021197 -4.63021755 10.19999981 -1.1114068 -4.39311123 10.39999962 -1.94291568
		 -3.10403419 10.39999962 -1.94291568 -2.86692786 10.19999981 -1.26707983 -3.10403419 10.099999428 0.17419112
		 -4.39311123 10.099999428 0.17419112 -4.094861984 9.20000076 -1.39999998 -3.45976281 9.20000076 -1.39999998
		 -3.45976281 9 -1 -4.094861984 9 -1 -3.45976281 8.69999981 -0.45952147 -4.094861984 8.69999981 -0.45952147
		 -3.5999999 10.77846622 -1.92153394 -3.73886251 10.39999962 -2.033712864 -3.76967669 9.69999981 -1.79999995
		 -3.77252817 9.20000076 -1.39999998 -3.77252817 9 -1 -3.77252817 8.69999981 -0.45952147
		 -3.77252817 9.76852512 0.0075114965 -3.73886251 10.099999428 0.36870098 -3.5999999 10.77846622 0.12153399
		 -4.35669184 12.55669212 -0.14330813 -2.84330797 12.55669212 -0.14330813 -4.35669184 12.55669212 -1.65669191
		 -2.84330797 12.55669212 -1.65669191 -3.5999999 12.82153416 0.12153399 -3.5999999 12.82153416 -1.92153394
		 -4.62153387 11.80000019 0.12153399 -2.57846594 11.80000019 0.12153399 -4.62153387 12.82153416 -0.89999998
		 -2.57846594 12.82153416 -0.89999998 -4.62153387 11.80000019 -1.92153394 -2.57846594 11.80000019 -1.92153394
		 -3.5999999 11.80000019 0.46204531 -3.5999999 13.16204453 -0.89999998 -3.5999999 11.80000019 -2.26204538
		 -2.23795462 11.80000019 -0.89999998 -4.96204519 11.80000019 -0.89999998;
	setAttr -s 96 ".ed[0:95]"  0 30 0 2 32 0 4 24 0 6 26 0 0 17 0 1 16 0
		 2 9 0 3 10 0 4 13 0 5 14 0 6 8 0 7 11 0 8 0 0 9 4 0 8 12 1 10 5 0 11 1 0 10 15 1
		 12 9 1 13 6 0 12 13 1 14 7 0 13 25 1 15 11 1 14 15 1 16 3 0 15 16 1 17 2 0 16 31 1
		 17 12 1 6 18 0 7 19 0 18 27 0 11 20 0 19 20 0 8 21 0 20 28 1 18 21 0 1 22 0 20 22 0
		 0 23 0 23 29 0 21 23 0 24 5 0 25 14 1 24 25 1 26 7 0 25 26 1 27 19 0 26 27 1 28 21 1
		 27 28 1 29 22 0 28 29 1 30 1 0 29 30 1 31 17 1 30 31 1 32 3 0 31 32 1 33 37 1 37 34 1
		 35 38 1 38 36 1 2 39 1 39 33 1 3 40 1 40 34 1 33 41 1 41 35 1 34 42 1 42 36 1 35 43 1
		 43 4 1 36 44 1 44 5 1 45 32 1 45 40 1 45 37 1 45 39 1 46 37 1 46 42 1 46 38 1 46 41 1
		 47 38 1 47 44 1 47 24 1 47 43 1 48 10 1 48 44 1 48 42 1 48 40 1 49 9 1 49 39 1 49 41 1
		 49 43 1;
	setAttr -s 48 -ch 192 ".fc[0:47]" -type "polyFaces" 
		f 4 0 57 56 -5
		mu 0 4 0 40 42 27
		f 4 22 47 -4 -20
		mu 0 4 22 35 36 6
		f 4 32 51 50 -38
		mu 0 4 28 37 38 31
		f 4 -12 -22 24 23
		mu 0 4 19 10 24 25
		f 4 10 14 20 19
		mu 0 4 12 14 20 21
		f 4 12 4 29 -15
		mu 0 4 14 0 27 20
		f 4 -17 -24 26 -6
		mu 0 4 1 19 25 26
		f 4 -51 53 -42 -43
		mu 0 4 31 38 39 33
		f 4 -21 18 13 8
		mu 0 4 21 20 16 13
		f 4 2 45 -23 -9
		mu 0 4 4 34 35 22
		f 4 -25 -10 -16 17
		mu 0 4 25 24 11 17
		f 4 -27 -18 -8 -26
		mu 0 4 26 25 17 3
		f 4 -57 59 -2 -28
		mu 0 4 27 42 43 2
		f 4 -30 27 6 -19
		mu 0 4 20 27 2 16
		f 4 3 49 -33 -31
		mu 0 4 6 36 37 28
		f 4 11 33 -35 -32
		mu 0 4 7 18 30 29
		f 4 -11 30 37 -36
		mu 0 4 15 6 28 31
		f 4 16 38 -40 -34
		mu 0 4 18 9 32 30
		f 4 -1 40 41 55
		mu 0 4 41 8 33 39
		f 4 -13 35 42 -41
		mu 0 4 8 15 31 33
		f 4 43 9 -45 -46
		mu 0 4 34 5 23 35
		f 4 -48 44 21 -47
		mu 0 4 36 35 23 7
		f 4 -50 46 31 -49
		mu 0 4 37 36 7 29
		f 4 -52 48 34 36
		mu 0 4 38 37 29 30
		f 4 -54 -37 39 -53
		mu 0 4 39 38 30 32
		f 4 -55 -56 52 -39
		mu 0 4 9 41 39 32
		f 4 -58 54 5 28
		mu 0 4 42 40 1 26
		f 4 -60 -29 25 -59
		mu 0 4 43 42 26 3
		f 4 58 66 -78 76
		mu 0 4 44 45 46 47
		f 4 67 -62 -79 77
		mu 0 4 46 48 49 47
		f 4 -61 -66 -80 78
		mu 0 4 49 50 51 47
		f 4 -65 1 -77 79
		mu 0 4 51 52 44 47
		f 4 61 70 -82 80
		mu 0 4 49 48 53 54
		f 4 71 -64 -83 81
		mu 0 4 53 55 56 54
		f 4 -63 -70 -84 82
		mu 0 4 56 57 58 54
		f 4 -69 60 -81 83
		mu 0 4 58 50 49 54
		f 4 63 74 -86 84
		mu 0 4 56 55 59 60
		f 4 75 -44 -87 85
		mu 0 4 59 61 62 60
		f 4 -3 -74 -88 86
		mu 0 4 62 63 64 60
		f 4 -73 62 -85 87
		mu 0 4 64 57 56 60
		f 4 15 -76 -90 88
		mu 0 4 65 66 67 68
		f 4 -75 -72 -91 89
		mu 0 4 67 69 70 68
		f 4 -71 -68 -92 90
		mu 0 4 70 48 46 68
		f 4 -67 7 -89 91
		mu 0 4 46 45 65 68
		f 4 -7 64 -94 92
		mu 0 4 71 52 51 72
		f 4 65 68 -95 93
		mu 0 4 51 50 73 72
		f 4 69 72 -96 94
		mu 0 4 73 74 75 72
		f 4 73 -14 -93 95
		mu 0 4 75 76 71 72;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface18" -p "polySurface49";
	setAttr ".rp" -type "double3" -3.4597627450395936 9.1018783303777404 -1.2724186539146771 ;
	setAttr ".sp" -type "double3" -3.4597627450395936 9.1018783303777404 -1.2724186539146771 ;
createNode mesh -n "polySurfaceShape20" -p "polySurface18";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:33]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 64 ".uvst[0].uvsp[0:63]" -type "float2" 0.50985247 0.3681677
		 0.625 0.3681677 0.625 0.5 0.50985247 0.5 0.50985247 0.25 0.625 0.25 0.125 0.16212602
		 0.25683233 0.16212602 0.25683233 0.25 0.125 0.25 0.50985247 0.5 0.625 0.5 0.625 0.58787394
		 0.50985247 0.58787394 0.74316764 0.16212602 0.875 0.16212602 0.875 0.25 0.74316764
		 0.25 0.625 0.16212602 0.625 0.25 0.50985247 0.25 0.50985247 0.16212602 0.375 0.16212602
		 0.375 0.25 0.43362689 0.5 0.43362689 0.58787394 0.43362689 0.3681677 0.50985247 0.3681677
		 0.43362689 0.25 0.43362689 0.16212602 0.375 0.5 0.375 0.58787394 0.375 0.3681677
		 0.43362689 0.3681677 0.43362689 0.5 0.375 0.5 0.375 0.25 0.43362689 0.25 0.625 0.3681677
		 0.375 0.3681677 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".vt[0:35]"  -4.40145493 9.10187721 -0.36008358 -3.16040707 9.10187721 -0.36008358
		 -4.40145493 9.10187721 -2.062964439 -3.16040707 9.10187721 -2.062964439 -4.62972736 9.10187721 -1.27103674
		 -2.93213511 9.10187721 -1.27103674 -4.66484451 8.16030598 -1.2251265 -4.4254694 8.16030598 -2.27546024
		 -3.13639283 8.16030598 -2.27546024 -3.13639283 8.16030598 -0.23135531 -4.4254694 8.16030598 -0.23135531
		 -3.45976257 8.16030598 -0.1098702 -3.45976257 8.16030598 -2.39554262 -3.45976257 9.10187721 -2.32370687
		 -3.45976257 9.10187817 -1.27241862 -3.45976257 8.59512711 -0.10376263 -4.094861984 8.16030598 -0.1098702
		 -4.094861984 8.16030598 -2.39474821 -4.094861984 9.10187721 -2.32370687 -4.094861984 9.10187721 -1.27163756
		 -4.094861984 8.59512711 -0.10376263 -3.26206946 9.72489738 -1.25905693 -3.060406923 9.72489738 -1.25802147
		 -3.16040707 9.59379387 -1.85137701 -3.25997472 9.59379387 -1.9424001 -3.25997472 9.60638046 -0.73347723
		 -3.16040707 9.60638046 -0.81310236 -4.56040668 9.72489738 -1.25802135 -4.29822206 9.72489738 -1.25847149
		 -4.29241467 9.59379387 -1.9424001 -4.40145493 9.59379387 -1.85137677 -4.40145493 9.60638046 -0.81310213
		 -4.29241467 9.60638046 -0.73347735 -2.89588356 8.16030598 -1.23629832 -3.33935356 8.16030598 -1.25270641
		 -4.21255779 8.16030598 -1.2527051;
	setAttr -s 68 ".ed[0:67]"  0 20 1 2 18 1 0 4 1 1 5 1 2 7 0 3 8 0 4 2 1
		 5 3 1 5 33 1 6 4 1 6 7 0 7 17 0 8 33 0 9 1 0 10 0 0 9 11 0 10 6 0 11 16 0 12 8 0
		 13 3 1 12 13 1 13 14 0 15 1 1 14 15 0 15 11 1 16 10 0 17 12 0 18 13 0 17 18 1 19 14 1
		 18 19 0 20 15 0 19 20 0 20 16 1 14 21 1 5 22 0 21 22 1 3 23 0 22 23 0 13 24 0 24 23 0
		 24 21 0 15 25 0 1 26 0 25 26 0 26 22 0 21 25 0 4 27 0 19 28 1 27 28 1 18 29 0 29 28 0
		 2 30 0 30 29 0 27 30 0 0 31 0 20 32 0 31 32 0 28 32 0 31 27 0 17 35 0 6 35 0 9 33 0
		 11 34 0 33 34 0 16 35 0 34 35 0 12 34 0;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 36 38 -41 41
		mu 0 4 0 1 2 3
		f 4 44 45 -37 46
		mu 0 4 4 5 1 0
		f 4 -11 9 6 4
		mu 0 4 6 7 8 9
		f 4 19 5 -19 20
		mu 0 4 10 11 12 13
		f 4 -13 -6 -8 8
		mu 0 4 14 15 16 17
		f 4 62 -9 -4 -14
		mu 0 4 18 14 17 19
		f 4 24 -16 13 -23
		mu 0 4 20 21 18 19
		f 4 -17 14 2 -10
		mu 0 4 7 22 23 8
		f 4 27 -21 -27 28
		mu 0 4 24 10 13 25
		f 4 29 -22 -28 30
		mu 0 4 26 27 10 24
		f 4 31 -24 -30 32
		mu 0 4 28 20 27 26
		f 4 33 -18 -25 -32
		mu 0 4 28 29 21 20
		f 4 1 -29 -12 -5
		mu 0 4 30 24 25 31
		f 4 49 -52 -54 -55
		mu 0 4 32 33 34 35
		f 4 57 -59 -50 -60
		mu 0 4 36 37 33 32
		f 4 -26 -34 -1 -15
		mu 0 4 22 29 28 23
		f 4 7 37 -39 -36
		mu 0 4 38 11 2 1
		f 4 -20 39 40 -38
		mu 0 4 11 10 3 2
		f 4 21 34 -42 -40
		mu 0 4 10 27 0 3
		f 4 22 43 -45 -43
		mu 0 4 20 19 5 4
		f 4 3 35 -46 -44
		mu 0 4 19 38 1 5
		f 4 23 42 -47 -35
		mu 0 4 27 20 4 0
		f 4 -31 50 51 -49
		mu 0 4 26 24 34 33
		f 4 -2 52 53 -51
		mu 0 4 24 30 35 34
		f 4 -7 47 54 -53
		mu 0 4 30 39 32 35
		f 4 0 56 -58 -56
		mu 0 4 23 28 37 36
		f 4 -33 48 58 -57
		mu 0 4 28 26 33 37
		f 4 -3 55 59 -48
		mu 0 4 39 23 36 32
		f 4 11 60 -62 10
		mu 0 4 40 41 42 43
		f 4 15 63 -65 -63
		mu 0 4 44 45 46 47
		f 4 17 65 -67 -64
		mu 0 4 48 49 50 51
		f 4 18 12 64 -68
		mu 0 4 52 53 54 55
		f 4 25 16 61 -66
		mu 0 4 56 57 58 59
		f 4 26 67 66 -61
		mu 0 4 60 61 62 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface17" -p "polySurface18";
	setAttr ".rp" -type "double3" -3.7624424974970467 8.1603059768676758 -1.2251265048980713 ;
	setAttr ".sp" -type "double3" -3.7624424974970467 8.1603059768676758 -1.2251265048980713 ;
createNode mesh -n "polySurfaceShape19" -p "polySurface17";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:37]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 74 ".uvst[0].uvsp[0:73]" -type "float2" 0.50985247 0 0.625
		 0 0.625 0.16212602 0.50985247 0.16212602 0.50985247 0.58787394 0.625 0.58787394 0.625
		 0.75 0.50985247 0.75 0.625 0.8818323 0.50985247 0.8818323 0.74316764 0 0.875 0 0.875
		 0.16212602 0.74316764 0.16212602 0.125 0 0.25683233 0 0.25683233 0.16212602 0.125
		 0.16212602 0.375 0 0.375 0.16212602 0.625 1 0.50985247 1 0.43362689 0 0.43362689
		 0.16212602 0.43362689 0.8818323 0.43362689 1 0.43362689 0.75 0.43362689 0.58787394
		 0.375 0.8818323 0.375 1 0.375 0.75 0.375 0.58787394 0.43362689 0.8818323 0.43362689
		 1 0.375 1 0.375 0.8818323 0.375 0.75 0.43362689 0.75 0.375 0.13135278 0.25683233
		 0.13135278 0.125 0.13135278 0.375 0.61864722 0.43362689 0.61864722 0.50985247 0.61864722
		 0.625 0.61864722 0.875 0.13135278 0.74316764 0.13135278 0.625 0.13135278 0.50985247
		 0.13135278 0.43362689 0.13135278 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 
		0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 0 -0.05516243 0.038380623 
		0 -0.05516243;
	setAttr -s 40 ".vt[0:39]"  -4.18675756 6.42312527 -0.48754615 -3.37510395 6.69999981 -0.48754615
		 -4.18675756 6.42312527 -1.75986779 -3.37510395 6.69999981 -1.75986779 -4.33605003 6.42312527 -1.087161779
		 -3.22581244 6.69999981 -1.087161779 -3.7058835 6.69999981 -0.39633715 -3.69411612 6.69999981 -1.087492824
		 -3.7058835 6.69999981 -1.8190186 -4.10000038 6.60000038 -0.39633715 -4.10000038 6.60000038 -1.087305665
		 -4.10000038 6.60000038 -1.85266578 -3.13639259 8.16030598 -0.23135531 -3.45976257 8.16030598 -0.1098702
		 -3.45976257 8.16030598 -2.39554262 -3.13639259 8.16030598 -2.27546024 -2.89928675 8.16030598 -1.19754398
		 -4.66257572 8.16030598 -1.19754398 -4.42546892 8.16030598 -2.27546024 -4.42546892 8.16030598 -0.23135531
		 -4.094861984 8.16030598 -0.1098702 -4.094861984 8.16030598 -2.39474821 -4.099999905 5.75000048 -1.086964726
		 -4.23051739 5.79999971 -1.086888075 -4.099999905 5.8499999 -0.73719054 -4.15733576 5.90000057 -0.78570473
		 -4.15733576 5.90000057 -1.46245301 -4.099999905 5.8499999 -1.51181221 -4.45966578 7.83057117 -0.15419137
		 -4.70935297 7.83057117 -1.17014611 -4.45966578 7.83057117 -2.30358315 -4.099999905 7.83057117 -2.43300343
		 -3.45976257 7.83057117 -2.42649841 -3.10219574 7.83057117 -2.30358315 -2.85250902 7.83057117 -1.17014611
		 -3.10219574 7.83057117 -0.15419137 -3.45976257 7.83057117 -0.023096442 -4.099999905 7.83057117 -0.023096442
		 -3.37773418 8.16030598 -1.19754398 -4.18412828 8.16030598 -1.19754398;
	setAttr -s 76 ".ed[0:75]"  0 9 0 2 11 0 0 28 0 1 35 0 2 4 0 3 5 0 4 0 0
		 4 29 1 5 1 0 5 7 1 18 30 0 15 33 0 16 34 1 6 1 0 13 36 1 7 10 1 6 7 1 8 3 0 7 8 1
		 8 32 1 9 6 0 20 37 1 9 10 0 11 8 0 10 11 0 11 31 1 12 13 0 14 15 0 15 16 0 17 18 0
		 19 17 0 16 12 0 13 20 0 21 14 0 20 19 0 18 21 0 10 22 0 4 23 0 22 23 1 9 24 0 24 22 0
		 0 25 0 25 24 0 23 25 0 2 26 0 11 27 0 26 27 0 22 27 0 26 23 0 28 19 0 29 17 1 28 29 1
		 30 2 0 29 30 1 31 21 1 30 31 1 32 14 1 31 32 1 33 3 0 32 33 1 34 5 1 33 34 1 35 12 0
		 34 35 1 36 6 1 35 36 1 37 9 1 36 37 1 37 28 1 16 38 0 14 38 0 17 39 0 39 21 0 20 39 0
		 38 13 0 39 38 0;
	setAttr -s 38 -ch 152 ".fc[0:37]" -type "polyFaces" 
		f 4 13 3 65 64
		mu 0 4 0 1 47 48
		f 4 59 58 -18 19
		mu 0 4 43 44 6 7
		f 4 17 5 9 18
		mu 0 4 7 6 8 9
		f 4 -6 -59 61 60
		mu 0 4 10 11 45 46
		f 4 4 7 53 52
		mu 0 4 14 15 39 40
		f 4 6 2 51 -8
		mu 0 4 15 18 38 39
		f 4 -9 -61 63 -4
		mu 0 4 1 10 46 47
		f 4 -10 8 -14 16
		mu 0 4 9 8 20 21
		f 4 20 -65 67 66
		mu 0 4 22 0 48 49
		f 4 -16 -17 -21 22
		mu 0 4 24 9 21 25
		f 4 23 -19 15 24
		mu 0 4 26 7 9 24
		f 4 57 -20 -24 25
		mu 0 4 42 43 7 26
		f 4 0 -67 68 -3
		mu 0 4 18 22 49 38
		f 4 -39 -41 -43 -44
		mu 0 4 35 32 33 34
		f 4 46 -48 38 -49
		mu 0 4 36 37 32 35
		f 4 55 -26 -2 -53
		mu 0 4 41 42 26 30
		f 4 -23 39 40 -37
		mu 0 4 24 25 33 32
		f 4 -1 41 42 -40
		mu 0 4 25 29 34 33
		f 4 -7 37 43 -42
		mu 0 4 29 28 35 34
		f 4 1 45 -47 -45
		mu 0 4 30 26 37 36
		f 4 -25 36 47 -46
		mu 0 4 26 24 32 37
		f 4 -5 44 48 -38
		mu 0 4 28 30 36 35
		f 4 -52 49 30 -51
		mu 0 4 39 38 19 16
		f 4 -54 50 29 10
		mu 0 4 40 39 16 17
		f 4 35 -55 -56 -11
		mu 0 4 31 27 42 41
		f 4 33 -57 -58 54
		mu 0 4 27 4 43 42
		f 4 27 11 -60 56
		mu 0 4 4 5 44 43
		f 4 -62 -12 28 12
		mu 0 4 46 45 12 13
		f 4 -64 -13 31 -63
		mu 0 4 47 46 13 2
		f 4 -66 62 26 14
		mu 0 4 48 47 2 3
		f 4 -68 -15 32 21
		mu 0 4 49 48 3 23
		f 4 -69 -22 34 -50
		mu 0 4 38 49 23 19
		f 4 -29 -28 70 -70
		mu 0 4 50 51 52 53
		f 4 -30 71 72 -36
		mu 0 4 54 55 56 57
		f 4 -31 -35 73 -72
		mu 0 4 58 59 60 61
		f 4 -32 69 74 -27
		mu 0 4 62 63 64 65
		f 4 -73 75 -71 -34
		mu 0 4 66 67 68 69
		f 4 -74 -33 -75 -76
		mu 0 4 70 71 72 73;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface47" -p "polySurface17";
	setAttr ".rp" -type "double3" -3.5362606158229668 6.3757840406729338 -1.2021055542271979 ;
	setAttr ".sp" -type "double3" -3.5362606158229668 6.3757840406729338 -1.2021055542271979 ;
createNode mesh -n "polySurfaceShape55" -p "polySurface47";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:187]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 285 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.30661976 0.8147341 0.30386603
		 0.80908084 0.34090528 0.79542196 0.36989844 0.81878662 0.36153829 0.80300736 0.34625405
		 0.85891062 0.3697412 0.82751346 0.75740516 0.55500501 0.76673466 0.57475263 0.77801687
		 0.57695711 0.76509601 0.5528512 0.32899582 0.78724444 0.75288379 0.54372627 0.75993264
		 0.54174471 0.35669297 0.76893198 0.34651569 0.76714909 0.37479907 0.77127421 0.4020952
		 0.80997515 0.39503968 0.82704651 0.36254731 0.86267447 0.33278424 0.7669003 0.75552976
		 0.52799094 0.74855518 0.53226554 0.3233225 0.7805413 0.30127755 0.8035441 0.32266489
		 0.78638983 0.31953734 0.78361356 0.80400264 0.4849264 0.79709303 0.4848032 0.79033887
		 0.48402429 0.79791969 0.51946312 0.80760849 0.52062953 0.77266973 0.51630116 0.78582776
		 0.52014357 0.79565448 0.57181215 0.8325814 0.57074118 0.83328485 0.52792323 0.86797935
		 0.51058775 0.36682647 0.86444688 0.87323517 0.51391995 0.40018171 0.83213472 0.84558207
		 0.55265421 0.8595621 0.55590451 0.77397215 0.54785973 0.76745921 0.53713882 0.84065557
		 0.52862257 0.85779196 0.50006145 0.76142645 0.52532619 0.77266973 0.51630116 0.3186872
		 0.79066491 0.3161999 0.78533888 0.84785312 0.57354343 0.41215187 0.81404734 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0.30386603 0.80908084 0.28973466 0.81595528 0.28813678
		 0.81004596 0.30127755 0.8035441 0.28135562 0.8198477 0.2788747 0.81442845 0.2745114
		 0.82301086 0.27140185 0.81840289 0.26614368 0.82760334 0.26391783 0.82290459 0.25475547
		 0.83347028 0.25128919 0.8303231 0.25050747 0.83653873 0.24662256 0.8362155 0.30386603
		 0.80908084 0.28973466 0.81595528 0.28135562 0.8198477 0.2745114 0.82301086 0.26614368
		 0.82760334 0.25475547 0.83347028 0.25050747 0.83653873 0.79033887 0.48402429 0.7905795
		 0.47039956 0.79670256 0.47055149 0.79709303 0.4848032 0.78809202 0.46080244 0.7941221
		 0.45991278 0.78681171 0.45247376 0.79222751 0.45105481 0.78583199 0.44382 0.79083705
		 0.4433192 0.78298944 0.42934704 0.78719121 0.42885518 0.78472286 0.42138529 0.78691763
		 0.42340159 0.24662256 0.8362155 0.78472286 0.42138529 0.78691763 0.42340159 0.30127755
		 0.8035441 0.28813678 0.81004596 0.2788747 0.81442845 0.27140185 0.81840289 0.26391783
		 0.82290459 0.25128919 0.8303231 0.79033887 0.48402429 0.79709303 0.4848032 0.79670256
		 0.47055149 0.7905795 0.47039956 0.7941221 0.45991278 0.78809202 0.46080244 0.79222751
		 0.45105481 0.78681171 0.45247376 0.79083705 0.4433192 0.78583199 0.44382 0.78298944
		 0.42934704 0.78719121 0.42885518 0.30386603 0.80908084 0.28973466 0.81595528 0.28813678
		 0.81004596 0.30127755 0.8035441 0.28135562 0.8198477 0.2788747 0.81442845 0.2745114
		 0.82301086 0.27140185 0.81840289 0.26614368 0.82760334 0.26391783 0.82290459 0.25475547
		 0.83347028 0.25128919 0.8303231 0.25050747 0.83653873 0.24662256 0.8362155 0.30386603
		 0.80908084 0.28973466 0.81595528 0.28135562 0.8198477 0.2745114 0.82301086 0.26614368
		 0.82760334 0.25475547 0.83347028 0.25050747 0.83653873 0.79033887 0.48402429 0.7905795
		 0.47039956 0.79670256 0.47055149 0.79709303 0.4848032 0.78809202 0.46080244 0.7941221
		 0.45991278 0.78681171 0.45247376 0.79222751 0.45105481 0.78583199 0.44382 0.79083705
		 0.4433192 0.78298944 0.42934704 0.78719121 0.42885518 0.78472286 0.42138529 0.78691763
		 0.42340159 0.24662256 0.8362155 0.78472286 0.42138529 0.78691763 0.42340159 0.30127755
		 0.8035441 0.28813678 0.81004596 0.2788747 0.81442845 0.27140185 0.81840289 0.26391783
		 0.82290459 0.25128919 0.8303231 0.79033887 0.48402429 0.79709303 0.4848032 0.79670256
		 0.47055149 0.7905795 0.47039956 0.7941221 0.45991278 0.78809202 0.46080244 0.79222751
		 0.45105481 0.78681171 0.45247376 0.79083705 0.4433192 0.78583199 0.44382 0.78298944
		 0.42934704 0.78719121 0.42885518 0.30386603 0.80908084 0.28973466 0.81595528 0.28813678
		 0.81004596 0.30127755 0.8035441 0.28135562 0.8198477 0.2788747 0.81442845 0.2745114
		 0.82301086 0.27140185 0.81840289 0.26614368 0.82760334 0.26391783 0.82290459 0.25475547
		 0.83347028 0.25128919 0.8303231 0.25050747 0.83653873 0.24662256 0.8362155 0.30386603
		 0.80908084 0.28973466 0.81595528 0.28135562 0.8198477 0.2745114 0.82301086 0.26614368
		 0.82760334 0.25475547 0.83347028 0.25050747 0.83653873 0.79033887 0.48402429 0.7905795
		 0.47039956 0.79670256 0.47055149 0.79709303 0.4848032 0.78809202 0.46080244 0.7941221
		 0.45991278 0.78681171 0.45247376 0.79222751 0.45105481 0.78583199 0.44382 0.79083705
		 0.4433192 0.78298944 0.42934704 0.78719121 0.42885518 0.78472286 0.42138529 0.78691763
		 0.42340159 0.24662256 0.8362155 0.78472286 0.42138529 0.78691763 0.42340159 0.30127755
		 0.8035441 0.28813678 0.81004596 0.2788747 0.81442845 0.27140185 0.81840289 0.26391783
		 0.82290459 0.25128919 0.8303231 0.79033887 0.48402429 0.79709303 0.4848032 0.79670256
		 0.47055149 0.7905795 0.47039956 0.7941221 0.45991278 0.78809202 0.46080244 0.79222751
		 0.45105481 0.78681171 0.45247376 0.79083705 0.4433192 0.78583199 0.44382 0.78298944
		 0.42934704 0.78719121 0.42885518 0.30386603 0.80908084 0.28973466 0.81595528 0.28813678
		 0.81004596 0.30127755 0.8035441 0.28135562 0.8198477 0.2788747 0.81442845 0.2745114
		 0.82301086 0.27140185 0.81840289 0.26614368 0.82760334 0.26391783 0.82290459 0.25475547
		 0.83347028 0.25128919 0.8303231 0.25050747 0.83653873 0.24662256 0.8362155 0.30386603
		 0.80908084 0.28973466 0.81595528 0.28135562 0.8198477 0.2745114 0.82301086 0.26614368
		 0.82760334 0.25475547 0.83347028 0.25050747 0.83653873;
	setAttr ".uvst[0].uvsp[250:284]" 0.79033887 0.48402429 0.7905795 0.47039956
		 0.79670256 0.47055149 0.79709303 0.4848032 0.78809202 0.46080244 0.7941221 0.45991278
		 0.78681171 0.45247376 0.79222751 0.45105481 0.78583199 0.44382 0.79083705 0.4433192
		 0.78298944 0.42934704 0.78719121 0.42885518 0.78472286 0.42138529 0.78691763 0.42340159
		 0.24662256 0.8362155 0.78472286 0.42138529 0.78691763 0.42340159 0.30127755 0.8035441
		 0.28813678 0.81004596 0.2788747 0.81442845 0.27140185 0.81840289 0.26391783 0.82290459
		 0.25128919 0.8303231 0.79033887 0.48402429 0.79709303 0.4848032 0.79670256 0.47055149
		 0.7905795 0.47039956 0.7941221 0.45991278 0.78809202 0.46080244 0.79222751 0.45105481
		 0.78681171 0.45247376 0.79083705 0.4433192 0.78583199 0.44382 0.78298944 0.42934704
		 0.78719121 0.42885518;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 188 ".vt";
	setAttr ".vt[0:165]"  -3.36525965 4.86915064 -0.51039082 -3.2114687 5.50603676 -0.78904766
		 -3.070595741 5.80437851 -1.42788458 -3.18877125 5.80340672 -1.066638708 -3.27542305 4.83570385 -1.49213123
		 -3.048138618 5.67184258 -1.57874179 -3.12249279 6.22588348 -0.45241266 -3.44854832 6.32607937 -0.37112394
		 -3.60701466 6.74165154 -0.87684548 -3.30583858 6.62403393 -0.81361431 -3.23980546 5.57885599 -0.56176817
		 -3.074283838 6.13691092 -0.37358499 -3.34246564 6.11361647 -0.21813314 -3.2451334 6.53075027 -1.59875894
		 -3.1955862 6.12349796 -1.94735909 -3.27160645 4.94212866 -1.85071671 -3.14561796 5.78168106 -0.31081867
		 -3.20404315 5.7945919 -0.079581261 -3.14215302 5.60523891 -0.47884035 -3.53619242 4.79123545 -0.47352052
		 -3.57590246 5.26647997 -0.44370642 -3.47766852 5.40168095 -0.30882499 -3.75444341 4.71975994 -0.92443401
		 -3.73055744 4.6899271 -0.54572487 -3.97104549 5.51013184 -0.99059206 -3.89701939 5.52203941 -0.74243635
		 -3.73916721 5.5916605 -0.36987028 -4.10000134 6.60000134 -0.89999998 -3.93987751 6.48123646 -1.47020578
		 -3.94835758 5.5700531 -1.34742641 -3.771945 4.75079155 -1.83579469 -3.46419501 4.88101101 -1.93026614
		 -3.42422581 6.10529995 -2.019723654 -3.80842876 6.088796616 -1.81561041 -3.80371952 6.25086784 -0.40855929
		 -3.73925114 6.038959026 -0.22971037 -3.86982632 5.5545845 -1.64559627 -3.80963683 4.73586178 -1.43065476
		 -3.49893761 5.72385406 0.056124307 -3.60853338 5.48453999 -0.15308392 -3.5454874 6.59090233 -1.71869159
		 -3.21853375 4.71150589 -0.88285589 -3.15711427 4.66356277 -0.89337593 -3.18607497 4.46497345 -0.9592253
		 -3.35506797 4.51171875 -0.94606864 -3.054297209 4.6755085 -0.89163965 -2.9061892 4.56610489 -0.95496917
		 -3.04404664 4.7273407 -0.87812936 -2.84617114 4.76215553 -0.93262947 -3.075696707 4.99863052 -0.88647348
		 -2.903723 5.051109314 -0.93914485 -3.057177782 5.12170982 -0.86535132 -2.92835641 5.18889236 -0.89419442
		 -3.2102325 4.21750641 -0.9038468 -3.54318929 4.37914467 -0.89139056 -2.88089442 4.35319519 -0.90237874
		 -2.65680432 4.79272079 -0.88668388 -2.74867654 5.091997147 -0.89583504 -2.80321002 5.19656754 -0.87154204
		 -3.36696482 4.78979015 -0.8646872 -3.21853375 4.71150589 -0.61046487 -3.15711427 4.66356277 -0.59994489
		 -3.18607497 4.46497345 -0.53409535 -3.35506797 4.51171875 -0.54725212 -3.054297209 4.6755085 -0.60168117
		 -2.9061892 4.56610489 -0.53835166 -3.04404664 4.7273407 -0.61519146 -2.84617114 4.76215553 -0.56069136
		 -3.075696707 4.99863052 -0.60684723 -2.903723 5.051109314 -0.55417597 -3.057177782 5.12170982 -0.62796938
		 -2.92835641 5.18889236 -0.5991264 -3.2102325 4.21750641 -0.58947396 -3.54318929 4.37914467 -0.6019302
		 -2.88089442 4.35319519 -0.59094203 -2.65680432 4.79272079 -0.60663682 -2.74867654 5.091997147 -0.59748566
		 -2.80321002 5.19656754 -0.62177873 -3.31236649 4.61578178 -1.33180714 -3.27476501 4.54754066 -1.34232712
		 -3.37952423 4.3763628 -1.40817654 -3.5164957 4.4858284 -1.39501989 -3.17553902 4.51807022 -1.34059083
		 -3.082422256 4.35921478 -1.40392041 -3.14572144 4.56168842 -1.32708061 -2.95010853 4.51584053 -1.38158071
		 -3.068079948 4.82355118 -1.33542466 -2.88932991 4.80413151 -1.38809609 -3.0026292801 4.92941666 -1.31430256
		 -2.8577652 4.94049454 -1.34314561 -3.49909782 4.15836143 -1.35279799 -3.74160576 4.43796349 -1.34034181
		 -3.14293671 4.15352821 -1.35132992 -2.76398849 4.46943569 -1.33563507 -2.73070145 4.78071976 -1.34478629
		 -2.73969269 4.89831161 -1.32049322 -3.57982707 4.83481789 -1.42799044 -3.31236649 4.61578178 -1.059416056
		 -3.27476501 4.54754066 -1.048896074 -3.37952423 4.3763628 -0.98304653 -3.5164957 4.4858284 -0.9962033
		 -3.17553902 4.51807022 -1.050632358 -3.082422256 4.35921478 -0.9873029 -3.14572144 4.56168842 -1.064142704
		 -2.95010853 4.51584053 -1.009642601 -3.068079948 4.82355118 -1.055798411 -2.88932991 4.80413151 -1.0031272173
		 -3.0026292801 4.92941666 -1.076920629 -2.8577652 4.94049454 -1.048077583 -3.49909782 4.15836143 -1.038425207
		 -3.74160576 4.43796349 -1.050881386 -3.14293671 4.15352821 -1.03989327 -2.76398849 4.46943569 -1.055588007
		 -2.73070145 4.78071976 -1.046436906 -2.73969269 4.89831161 -1.070729971 -3.5666399 4.76901054 -0.97113603
		 -3.24068928 4.80809784 -1.78711581 -3.1842742 4.75402641 -1.79576993 -3.23170805 4.55913544 -1.86195135
		 -3.39527845 4.62311745 -1.85372233 -3.080862045 4.7553215 -1.79113436 -2.94311237 4.63089943 -1.84996319
		 -3.065701485 4.80589104 -1.77745914 -2.86383772 4.81983757 -1.82638335 -3.068945408 5.078950882 -1.78733778
		 -2.89106417 5.11314392 -1.83521318 -3.038426876 5.19957542 -1.76598573 -2.9026022 5.25296974 -1.79130602
		 -3.28281546 4.31577301 -1.80670261 -3.59753561 4.51092911 -1.80411315 -2.9414072 4.41680145 -1.79617429
		 -2.67369342 4.83096504 -1.77513528 -2.7339046 5.13806343 -1.78760147 -2.77801871 5.24782372 -1.76511669
		 -3.24833965 4.80953407 -1.51483607 -3.19251537 4.75557327 -1.50245881 -3.24364805 4.56137657 -1.43699491
		 -3.40647936 4.62521935 -1.45506883 -3.08900547 4.75684929 -1.50129426 -2.954813 4.63309479 -1.43351579
		 -3.073086262 4.80727768 -1.51462865 -2.87428379 4.82179832 -1.45459712 -3.076798916 5.080425262 -1.50782585
		 -2.90187597 5.11517334 -1.45040154 -3.045094013 5.20082664 -1.52870059 -2.91088963 5.25452423 -1.49635839
		 -3.29164457 4.3174305 -1.49245822 -3.60566521 4.51245499 -1.51477098 -2.9501543 4.41844368 -1.48486471
		 -2.68155861 4.83244133 -1.49520254 -2.74228382 5.13963699 -1.48937392 -2.78503346 5.24913979 -1.51545548
		 -3.2051568 5.41075039 -0.40539265 -3.15890408 5.35362625 -0.4108448 -3.18648434 5.1885519 -0.30076408
		 -3.30858278 5.27962589 -0.23856926 -3.085615635 5.33109951 -0.46992493 -2.99963546 5.17148781 -0.50627041
		 -3.078838587 5.37085247 -0.50188255 -2.97715902 5.29573059 -0.65246391 -3.15592098 5.55111122 -0.66575623
		 -3.074966431 5.49664021 -0.81370068 -3.15109158 5.63981533 -0.74421787 -3.088635206 5.62435913 -0.86773396
		 -3.12375021 5.072937012 -0.10021687 -3.38549995 5.28836727 -0.029524803;
	setAttr ".vt[166:187]" -2.90917063 5.061285973 -0.35463428 -2.81620073 5.28896141 -0.74522781
		 -2.94237161 5.50528622 -0.89705181 -2.98497343 5.60648823 -0.92481995 -3.029794931 5.59653378 -0.26778126
		 -2.96999693 5.55376053 -0.26260376 -2.91279101 5.47851086 -0.085988998 -3.051829815 5.5516367 -0.03708744
		 -2.89894414 5.52886486 -0.32343864 -2.73142242 5.45564079 -0.29579639 -2.90956259 5.55018902 -0.36904716
		 -2.73771 5.54940987 -0.46456146 -2.97590113 5.74182892 -0.5244894 -2.82712841 5.75920773 -0.61921501
		 -2.99826813 5.80172062 -0.62429333 -2.89867401 5.82560921 -0.71866608 -2.92136097 5.28735352 0.05860424
		 -3.19914889 5.48579311 0.11670971 -2.70867157 5.27369976 -0.1972971 -2.63591003 5.47996712 -0.60374832
		 -2.75029802 5.70877361 -0.74632645 -2.82417893 5.77683926 -0.79864025;
	setAttr -s 375 ".ed";
	setAttr ".ed[0:165]"  7 6 0 8 7 0 8 9 0 6 9 0 10 0 0 12 11 0 7 12 0 11 6 0
		 11 10 0 15 14 0 59 4 0 11 16 0 17 16 0 12 17 0 18 10 0 16 18 0 19 0 0 20 19 0 10 20 0
		 21 20 0 18 21 0 37 22 0 23 19 0 15 31 0 31 30 0 14 32 0 31 32 0 32 33 0 30 33 0 35 12 0
		 22 23 0 30 37 0 28 33 0 38 17 0 35 38 0 39 38 0 21 39 0 32 40 0 28 40 0 40 8 0 13 9 0
		 29 36 0 36 37 0 28 29 0 33 36 0 29 37 0 20 26 0 8 27 0 27 34 0 34 35 0 7 34 0 26 39 0
		 24 27 0 27 28 0 24 25 0 25 34 0 26 35 0 25 26 0 23 26 0 22 25 0 24 29 0 22 24 0 42 41 0
		 43 42 0 44 43 0 44 41 0 45 42 0 46 45 0 43 46 0 47 45 0 48 47 0 46 48 0 48 50 0 49 47 0
		 50 49 0 51 49 0 52 51 0 50 52 0 53 43 0 54 53 0 54 44 0 55 46 0 53 55 0 56 48 0 55 56 0
		 56 57 0 57 50 0 58 52 0 57 58 0 22 54 0 115 44 0 61 60 0 62 61 0 63 62 0 63 60 0
		 64 61 0 65 64 0 62 65 0 66 64 0 67 66 0 65 67 0 67 69 0 68 66 0 69 68 0 70 68 0 71 70 0
		 69 71 0 61 42 0 60 41 0 64 45 0 66 47 0 68 49 0 70 51 0 72 62 0 73 72 0 73 63 0 74 65 0
		 72 74 0 75 67 0 74 75 0 75 76 0 76 69 0 77 71 0 76 77 0 53 72 0 54 73 0 55 74 0 56 75 0
		 57 76 0 58 77 0 71 52 0 23 73 0 19 63 0 60 0 0 80 79 0 81 80 0 82 79 0 83 82 0 80 83 0
		 84 82 0 85 84 0 83 85 0 85 87 0 86 84 0 87 86 0 88 86 0 89 88 0 87 89 0 90 80 0 91 90 0
		 91 81 0 92 83 0 90 92 0 93 85 0 92 93 0 93 94 0 94 87 0 95 89 0 94 95 0 37 91 0 96 81 0
		 37 96 0 99 98 0 100 99 0 101 98 0 102 101 0;
	setAttr ".ed[166:331]" 99 102 0 103 101 0 104 103 0 102 104 0 104 106 0 105 103 0
		 106 105 0 107 105 0 108 107 0 106 108 0 98 79 0 101 82 0 103 84 0 105 86 0 107 88 0
		 109 99 0 110 109 0 110 100 0 111 102 0 109 111 0 112 104 0 111 112 0 112 113 0 113 106 0
		 114 108 0 113 114 0 90 109 0 91 110 0 92 111 0 93 112 0 94 113 0 95 114 0 108 89 0
		 22 110 0 115 100 0 59 4 0 22 115 0 117 116 0 118 117 0 119 118 0 119 116 0 120 117 0
		 121 120 0 118 121 0 122 120 0 123 122 0 121 123 0 123 125 0 124 122 0 125 124 0 126 124 0
		 127 126 0 125 127 0 128 118 0 129 128 0 129 119 0 130 121 0 128 130 0 131 123 0 130 131 0
		 131 132 0 132 125 0 133 127 0 132 133 0 30 129 0 31 119 0 116 15 0 135 134 0 136 135 0
		 137 136 0 137 134 0 138 135 0 139 138 0 136 139 0 140 138 0 141 140 0 139 141 0 141 143 0
		 142 140 0 143 142 0 144 142 0 145 144 0 143 145 0 135 117 0 134 116 0 138 120 0 140 122 0
		 142 124 0 144 126 0 146 136 0 147 146 0 147 137 0 148 139 0 146 148 0 149 141 0 148 149 0
		 149 150 0 150 143 0 151 145 0 150 151 0 128 146 0 129 147 0 130 148 0 131 149 0 132 150 0
		 133 151 0 145 127 0 37 147 0 96 137 0 153 152 0 154 153 0 155 154 0 155 152 0 156 153 0
		 157 156 0 154 157 0 158 156 0 159 158 0 157 159 0 159 161 0 160 158 0 161 160 0 162 160 0
		 163 162 0 161 163 0 164 154 0 165 164 0 165 155 0 166 157 0 164 166 0 167 159 0 166 167 0
		 167 168 0 168 161 0 169 163 0 168 169 0 39 165 0 21 155 0 152 18 0 171 170 0 172 171 0
		 173 172 0 173 170 0 174 171 0 175 174 0 172 175 0 176 174 0 177 176 0 175 177 0 177 179 0
		 178 176 0 179 178 0 180 178 0 181 180 0 179 181 0 171 153 0 170 152 0 174 156 0 176 158 0
		 178 160 0 180 162 0 182 172 0 183 182 0 183 173 0 184 175 0 182 184 0;
	setAttr ".ed[332:374]" 185 177 0 184 185 0 185 186 0 186 179 0 187 181 0 186 187 0
		 164 182 0 165 183 0 166 184 0 167 185 0 168 186 0 169 187 0 181 163 0 38 183 0 17 173 0
		 170 16 0 1 10 0 1 3 0 3 9 0 1 6 0 13 14 0 13 40 0 4 15 0 4 78 0 78 81 0 78 79 0 78 97 0
		 97 98 0 97 100 0 4 134 0 4 96 0 3 59 0 0 59 0 2 13 0 2 3 0 2 5 0 5 14 0 4 5 0 41 59 0
		 59 97 0 59 115 0 1 59 0 2 4 0;
	setAttr -s 188 -ch 748 ".fc[0:187]" -type "polyFaces" 
		f 4 3 -3 1 0
		mu 0 4 7 8 9 10
		f 4 7 -1 6 5
		mu 0 4 12 7 10 13
		f 4 -9 11 15 14
		mu 0 4 11 15 20 23
		f 4 -6 13 12 -12
		mu 0 4 12 13 21 22
		f 4 16 -5 18 17
		mu 0 4 24 1 11 25
		f 4 -19 -15 20 19
		mu 0 4 25 11 23 26
		f 4 -10 23 26 -26
		mu 0 4 18 19 38 40
		f 4 24 28 -28 -27
		mu 0 4 39 37 41 42
		f 4 -30 34 33 -14
		mu 0 4 13 44 47 21
		f 4 27 -33 38 -38
		mu 0 4 42 41 35 51
		f 4 -45 -29 31 -43
		mu 0 4 45 41 37 46
		f 4 44 -42 -44 32
		mu 0 4 41 45 36 35
		f 3 -46 41 42
		mu 0 3 46 36 45
		f 4 22 -18 46 -59
		mu 0 4 28 29 32 33
		f 4 47 48 -51 -2
		mu 0 4 9 34 43 10
		f 4 50 49 29 -7
		mu 0 4 10 43 44 13
		f 4 51 35 -35 -57
		mu 0 4 33 48 47 44
		f 4 -52 -47 -20 36
		mu 0 4 50 49 25 26
		f 4 -39 -54 -48 -40
		mu 0 4 53 54 55 56
		f 4 52 53 43 -61
		mu 0 4 31 34 35 36
		f 4 -49 -53 54 55
		mu 0 4 43 34 31 30
		f 4 56 -50 -56 57
		mu 0 4 33 44 43 30
		f 4 58 -58 -60 30
		mu 0 4 28 33 30 27
		f 4 45 21 61 60
		mu 0 4 36 46 27 31
		f 3 -62 59 -55
		mu 0 3 31 27 30
		f 4 -63 -64 -65 65
		mu 0 4 62 65 66 63
		f 4 -67 -68 -69 63
		mu 0 4 65 67 68 66
		f 4 -70 -71 -72 67
		mu 0 4 67 69 70 68
		f 4 -74 -75 -73 70
		mu 0 4 69 71 72 70
		f 4 -76 -77 -78 74
		mu 0 4 71 73 74 72
		f 4 62 -109 -92 107
		mu 0 4 65 62 76 77
		f 4 66 -108 -96 109
		mu 0 4 67 65 77 78
		f 4 69 -110 -99 110
		mu 0 4 69 67 78 79
		f 4 73 -111 -103 111
		mu 0 4 71 69 79 80
		f 4 75 -112 -105 112
		mu 0 4 73 71 80 81
		f 4 90 -81 -90 202
		mu 0 4 82 83 84 85
		f 4 64 -79 -80 80
		mu 0 4 83 86 87 84
		f 4 68 -82 -83 78
		mu 0 4 86 88 89 87
		f 4 71 -84 -85 81
		mu 0 4 88 90 91 89
		f 4 -87 -86 83 72
		mu 0 4 92 93 91 90
		f 4 77 -88 -89 86
		mu 0 4 92 94 95 93
		f 4 76 -113 -106 130
		mu 0 4 74 73 81 96
		f 4 87 -131 -123 -130
		mu 0 4 95 94 97 98
		f 4 -17 132 94 133
		mu 0 4 75 99 100 76
		f 4 -95 93 92 91
		mu 0 4 76 100 101 77
		f 4 -93 97 96 95
		mu 0 4 77 101 102 78
		f 4 -97 100 99 98
		mu 0 4 78 102 103 79
		f 4 -100 101 103 102
		mu 0 4 79 103 104 80
		f 4 -104 106 105 104
		mu 0 4 80 104 96 81
		f 4 -23 131 115 -133
		mu 0 4 105 106 107 108
		f 4 -116 114 113 -94
		mu 0 4 108 107 109 110
		f 4 -114 117 116 -98
		mu 0 4 110 109 111 112
		f 4 -117 119 118 -101
		mu 0 4 112 111 113 114
		f 4 -102 -119 120 121
		mu 0 4 115 114 113 116
		f 4 -122 123 122 -107
		mu 0 4 115 116 98 97
		f 4 125 -132 -31 89
		mu 0 4 84 107 106 85
		f 4 124 -115 -126 79
		mu 0 4 87 109 107 84
		f 4 126 -118 -125 82
		mu 0 4 89 111 109 87
		f 4 127 -120 -127 84
		mu 0 4 91 113 111 89
		f 4 128 -121 -128 85
		mu 0 4 93 116 113 91
		f 4 129 -124 -129 88
		mu 0 4 95 98 116 93
		f 4 -137 -138 -139 134
		mu 0 4 121 123 124 122
		f 4 -140 -141 -142 137
		mu 0 4 123 125 126 124
		f 4 -144 -145 -143 140
		mu 0 4 125 127 128 126
		f 4 -146 -147 -148 144
		mu 0 4 127 129 130 128
		f 4 136 -177 -165 177
		mu 0 4 123 121 133 134
		f 4 139 -178 -168 178
		mu 0 4 125 123 134 135
		f 4 143 -179 -172 179
		mu 0 4 127 125 135 136
		f 4 145 -180 -174 180
		mu 0 4 129 127 136 137
		f 4 160 -151 -160 161
		mu 0 4 138 139 140 141
		f 4 135 -149 -150 150
		mu 0 4 139 142 143 140
		f 4 138 -152 -153 148
		mu 0 4 142 144 145 143
		f 4 141 -154 -155 151
		mu 0 4 144 146 147 145
		f 4 -157 -156 153 142
		mu 0 4 148 149 147 146
		f 4 147 -158 -159 156
		mu 0 4 148 150 151 149
		f 4 146 -181 -175 198
		mu 0 4 130 129 137 152
		f 4 157 -199 -191 -198
		mu 0 4 151 150 153 154
		f 4 -163 166 165 164
		mu 0 4 133 157 158 134
		f 4 -166 169 168 167
		mu 0 4 134 158 159 135
		f 4 -169 170 172 171
		mu 0 4 135 159 160 136
		f 4 -173 175 174 173
		mu 0 4 136 160 152 137
		f 4 -203 199 183 -201
		mu 0 4 161 162 163 164
		f 4 -184 182 181 -164
		mu 0 4 164 163 165 166
		f 4 -182 185 184 -167
		mu 0 4 166 165 167 168
		f 4 -185 187 186 -170
		mu 0 4 168 167 169 170
		f 4 -171 -187 188 189
		mu 0 4 171 170 169 172
		f 4 -190 191 190 -176
		mu 0 4 171 172 154 153
		f 4 193 -200 -22 159
		mu 0 4 140 163 162 141
		f 4 192 -183 -194 149
		mu 0 4 143 165 163 140
		f 4 194 -186 -193 152
		mu 0 4 145 167 165 143
		f 4 195 -188 -195 154
		mu 0 4 147 169 167 145
		f 4 196 -189 -196 155
		mu 0 4 149 172 169 147
		f 4 197 -192 -197 158
		mu 0 4 151 154 172 149
		f 4 -233 -207 -232 -24
		mu 0 4 173 174 175 176
		f 4 -204 -205 -206 206
		mu 0 4 174 177 178 175
		f 4 -208 -209 -210 204
		mu 0 4 177 179 180 178
		f 4 -211 -212 -213 208
		mu 0 4 179 181 182 180
		f 4 -215 -216 -214 211
		mu 0 4 181 183 184 182
		f 4 -217 -218 -219 215
		mu 0 4 183 185 186 184
		f 4 203 -251 -234 249
		mu 0 4 177 174 188 189
		f 4 207 -250 -238 251
		mu 0 4 179 177 189 190
		f 4 210 -252 -241 252
		mu 0 4 181 179 190 191
		f 4 214 -253 -245 253
		mu 0 4 183 181 191 192
		f 4 216 -254 -247 254
		mu 0 4 185 183 192 193
		f 4 231 -222 -231 -25
		mu 0 4 194 195 196 197
		f 4 205 -220 -221 221
		mu 0 4 195 198 199 196
		f 4 209 -223 -224 219
		mu 0 4 198 200 201 199
		f 4 212 -225 -226 222
		mu 0 4 200 202 203 201
		f 4 -228 -227 224 213
		mu 0 4 204 205 203 202
		f 4 218 -229 -230 227
		mu 0 4 204 206 207 205
		f 4 217 -255 -248 272
		mu 0 4 186 185 193 208
		f 4 228 -273 -265 -272
		mu 0 4 207 206 209 210
		f 4 -237 235 234 233
		mu 0 4 188 212 213 189
		f 4 -235 239 238 237
		mu 0 4 189 213 214 190
		f 4 -239 242 241 240
		mu 0 4 190 214 215 191
		f 4 -242 243 245 244
		mu 0 4 191 215 216 192
		f 4 -246 248 247 246
		mu 0 4 192 216 208 193
		f 4 -162 273 257 -275
		mu 0 4 217 218 219 220
		f 4 -258 256 255 -236
		mu 0 4 220 219 221 222
		f 4 -256 259 258 -240
		mu 0 4 222 221 223 224
		f 4 -259 261 260 -243
		mu 0 4 224 223 225 226
		f 4 -244 -261 262 263
		mu 0 4 227 226 225 228
		f 4 -264 265 264 -249
		mu 0 4 227 228 210 209
		f 4 267 -274 -32 230
		mu 0 4 196 219 218 197
		f 4 266 -257 -268 220
		mu 0 4 199 221 219 196
		f 4 268 -260 -267 223
		mu 0 4 201 223 221 199
		f 4 269 -262 -269 225
		mu 0 4 203 225 223 201
		f 4 270 -263 -270 226
		mu 0 4 205 228 225 203
		f 4 271 -266 -271 229
		mu 0 4 207 210 228 205
		f 4 -305 -279 -304 -21
		mu 0 4 229 230 231 232
		f 4 -276 -277 -278 278
		mu 0 4 230 233 234 231
		f 4 -280 -281 -282 276
		mu 0 4 233 235 236 234
		f 4 -283 -284 -285 280
		mu 0 4 235 237 238 236
		f 4 -287 -288 -286 283
		mu 0 4 237 239 240 238
		f 4 -289 -290 -291 287
		mu 0 4 239 241 242 240
		f 4 304 -16 -348 322
		mu 0 4 230 229 243 244
		f 4 275 -323 -306 321
		mu 0 4 233 230 244 245
		f 4 279 -322 -310 323
		mu 0 4 235 233 245 246
		f 4 282 -324 -313 324
		mu 0 4 237 235 246 247
		f 4 286 -325 -317 325
		mu 0 4 239 237 247 248
		f 4 288 -326 -319 326
		mu 0 4 241 239 248 249
		f 4 303 -294 -303 -37
		mu 0 4 250 251 252 253
		f 4 277 -292 -293 293
		mu 0 4 251 254 255 252
		f 4 281 -295 -296 291
		mu 0 4 254 256 257 255
		f 4 284 -297 -298 294
		mu 0 4 256 258 259 257
		f 4 -300 -299 296 285
		mu 0 4 260 261 259 258
		f 4 290 -301 -302 299
		mu 0 4 260 262 263 261
		f 4 289 -327 -320 344
		mu 0 4 242 241 249 264
		f 4 300 -345 -337 -344
		mu 0 4 263 262 265 266
		f 4 -13 346 308 347
		mu 0 4 243 267 268 244
		f 4 -309 307 306 305
		mu 0 4 244 268 269 245
		f 4 -307 311 310 309
		mu 0 4 245 269 270 246
		f 4 -311 314 313 312
		mu 0 4 246 270 271 247
		f 4 -314 315 317 316
		mu 0 4 247 271 272 248
		f 4 -318 320 319 318
		mu 0 4 248 272 264 249
		f 4 -34 345 329 -347
		mu 0 4 273 274 275 276
		f 4 -330 328 327 -308
		mu 0 4 276 275 277 278
		f 4 -328 331 330 -312
		mu 0 4 278 277 279 280
		f 4 -331 333 332 -315
		mu 0 4 280 279 281 282
		f 4 -316 -333 334 335
		mu 0 4 283 282 281 284
		f 4 -336 337 336 -321
		mu 0 4 283 284 266 265
		f 4 339 -346 -36 302
		mu 0 4 252 275 274 253
		f 4 338 -329 -340 292
		mu 0 4 255 277 275 252
		f 4 340 -332 -339 295
		mu 0 4 257 279 277 255
		f 4 341 -334 -341 297
		mu 0 4 259 281 279 257
		f 4 342 -335 -342 298
		mu 0 4 261 284 281 259
		f 4 343 -338 -343 301
		mu 0 4 263 266 284 261
		f 4 350 -4 -352 349
		mu 0 4 4 16 14 2
		f 4 -349 351 -8 8
		mu 0 4 11 2 14 15
		f 4 352 25 37 -354
		mu 0 4 17 18 40 52
		f 4 -41 353 39 2
		mu 0 4 60 57 58 59
		f 4 -370 354 9 -369
		mu 0 4 6 5 19 18
		f 4 -363 355 356 -161
		mu 0 4 120 117 118 119
		f 4 -357 357 -135 -136
		mu 0 4 119 118 121 122
		f 4 176 -358 358 359
		mu 0 4 133 121 118 132
		f 4 -360 360 163 162
		mu 0 4 133 132 156 157
		f 4 232 -355 361 250
		mu 0 4 174 173 187 188
		f 4 362 274 236 -362
		mu 0 4 187 211 212 188
		f 4 364 -374 348 4
		mu 0 4 1 0 2 11
		f 4 -367 365 40 -351
		mu 0 4 4 3 17 16
		f 4 367 368 -353 -366
		mu 0 4 3 6 18 17
		f 3 374 369 -368
		mu 0 3 3 5 6
		f 4 -371 -66 -91 -373
		mu 0 4 61 62 63 64
		f 4 108 370 -365 -134
		mu 0 4 76 62 61 75
		f 4 -202 371 -359 -356
		mu 0 4 117 131 132 118
		f 4 -372 372 200 -361
		mu 0 4 132 131 155 156
		f 3 -364 -350 373
		mu 0 3 0 4 2
		f 4 10 -375 366 363
		mu 0 4 0 5 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 9 ".dli[1:8]"  1 5 6 2 3 4 7 11;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo11";
createNode lambert -n "Yellow";
	setAttr ".c" -type "float3" 1 0.82999998 0.13 ;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo5";
createNode lambert -n "Blue";
	setAttr ".c" -type "float3" 0.02 0 1 ;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo10";
createNode lambert -n "Green";
	setAttr ".c" -type "float3" 0.029999999 0.81 0 ;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo9";
createNode lambert -n "Red";
	setAttr ".c" -type "float3" 1 0 0 ;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo7";
createNode lambert -n "Purple";
	setAttr ".c" -type "float3" 0.47999999 0 0.60000002 ;
createNode shadingEngine -n "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:AR__materialInfo2";
createNode lambert -n "Orange";
	setAttr ".c" -type "float3" 1 0.47 0 ;
createNode shadingEngine -n "GenericMesh_V10_1:PS_1:Quadra_defaultMat";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "GenericMesh_V10_1:PS_1:Quadra_materialInfo1";
createNode lambert -n "White";
	setAttr ".c" -type "float3" 0.80000001 0.80000001 0.80000001 ;
	setAttr ".ambc" -type "float3" 0.56198001 0.56198001 0.56198001 ;
	setAttr ".ic" -type "float3" 0.20661999 0.20661999 0.20661999 ;
createNode script -n "GenericMesh_V10_1:uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n"
		+ "                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n"
		+ "                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n"
		+ "                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t\tif (`objExists nodeEditorPanel1Info`) nodeEditor -e -restoreInfo nodeEditorPanel1Info $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "GenericMesh_V10_1:sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode cameraView -n "GenericMesh_V10_1:cameraView1";
	setAttr ".e" -type "double3" 2.0417201698374572 14.554555639440888 3.2015777737762319 ;
	setAttr ".coi" -type "double3" 0.22353441822711795 13.725882874136126 0.78876378736951747 ;
	setAttr ".u" -type "double3" -0.15919129571138893 0.96438057080800976 -0.21125398461980896 ;
	setAttr ".tp" -type "double3" 0 13.468028277252673 1 ;
	setAttr ".fl" 34.999999999999979;
createNode displayLayer -n "Joints";
	setAttr ".v" no;
	setAttr ".do" 3;
createNode hyperGraphInfo -n "nodeEditorPanel1Info";
createNode hyperView -n "hyperView1";
	setAttr ".vl" -type "double2" -112.94630192022429 -401.83572099746129 ;
	setAttr ".vh" -type "double2" 1031.6965552226327 184.18489070466632 ;
	setAttr ".dag" no;
createNode dagPose -n "bindPose2";
	setAttr -s 2 ".wm";
	setAttr -s 2 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 2 ".m";
	setAttr -s 2 ".p";
	setAttr ".bp" yes;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode hyperLayout -n "hyperLayout1";
	setAttr ".ihi" 0;
	setAttr -s 118 ".hyp";
	setAttr ".hyp[0].nvs" 1920;
	setAttr ".hyp[1].nvs" 1920;
	setAttr ".hyp[2].nvs" 1920;
	setAttr ".hyp[3].nvs" 1920;
	setAttr ".hyp[4].nvs" 1920;
	setAttr ".hyp[5].nvs" 1920;
	setAttr ".hyp[6].nvs" 1920;
	setAttr ".hyp[7].nvs" 1920;
	setAttr ".hyp[8].nvs" 1920;
	setAttr ".hyp[9].nvs" 1920;
	setAttr ".hyp[10].nvs" 1920;
	setAttr ".hyp[11].nvs" 1920;
	setAttr ".hyp[12].nvs" 1920;
	setAttr ".hyp[13].nvs" 1920;
	setAttr ".hyp[14].nvs" 1920;
	setAttr ".hyp[15].nvs" 1920;
	setAttr ".hyp[16].nvs" 1920;
	setAttr ".hyp[17].nvs" 1920;
	setAttr ".hyp[18].nvs" 1920;
	setAttr ".hyp[19].nvs" 1920;
	setAttr ".hyp[20].nvs" 1920;
	setAttr ".hyp[21].nvs" 1920;
	setAttr ".hyp[22].nvs" 1920;
	setAttr ".hyp[23].nvs" 1920;
	setAttr ".hyp[24].nvs" 1920;
	setAttr ".hyp[25].nvs" 1920;
	setAttr ".hyp[26].nvs" 1920;
	setAttr ".hyp[27].nvs" 1920;
	setAttr ".hyp[28].nvs" 1920;
	setAttr ".hyp[29].nvs" 1920;
	setAttr ".hyp[30].nvs" 1920;
	setAttr ".hyp[31].nvs" 1920;
	setAttr ".hyp[32].nvs" 1920;
	setAttr ".hyp[33].nvs" 1920;
	setAttr ".hyp[34].nvs" 1920;
	setAttr ".hyp[35].nvs" 1920;
	setAttr ".hyp[36].nvs" 1920;
	setAttr ".hyp[37].nvs" 1920;
	setAttr ".hyp[38].nvs" 1920;
	setAttr ".hyp[39].nvs" 1920;
	setAttr ".hyp[40].nvs" 1920;
	setAttr ".hyp[41].nvs" 1920;
	setAttr ".hyp[42].nvs" 1920;
	setAttr ".hyp[43].nvs" 1920;
	setAttr ".hyp[44].nvs" 1920;
	setAttr ".hyp[45].nvs" 1920;
	setAttr ".hyp[46].nvs" 1920;
	setAttr ".hyp[47].nvs" 1920;
	setAttr ".hyp[48].nvs" 1920;
	setAttr ".hyp[49].nvs" 1920;
	setAttr ".hyp[50].nvs" 1920;
	setAttr ".hyp[51].nvs" 1920;
	setAttr ".hyp[52].nvs" 1920;
	setAttr ".hyp[53].nvs" 1920;
	setAttr ".hyp[54].nvs" 1920;
	setAttr ".hyp[55].nvs" 1920;
	setAttr ".hyp[56].nvs" 1920;
	setAttr ".hyp[57].nvs" 1920;
	setAttr ".hyp[58].nvs" 1920;
	setAttr ".hyp[59].nvs" 1920;
	setAttr ".hyp[60].nvs" 1920;
	setAttr ".hyp[61].nvs" 1920;
	setAttr ".hyp[62].nvs" 1920;
	setAttr ".hyp[63].nvs" 1920;
	setAttr ".hyp[64].nvs" 1920;
	setAttr ".hyp[65].nvs" 1920;
	setAttr ".hyp[66].nvs" 1920;
	setAttr ".hyp[67].nvs" 1920;
	setAttr ".hyp[68].nvs" 1920;
	setAttr ".hyp[69].nvs" 1920;
	setAttr ".hyp[70].nvs" 1920;
	setAttr ".hyp[71].x" 462.41940307617188;
	setAttr ".hyp[71].y" -111.86967468261719;
	setAttr ".hyp[71].nvs" 1920;
	setAttr ".hyp[72].x" 1250.9908447265625;
	setAttr ".hyp[72].y" -193.63853454589844;
	setAttr ".hyp[72].nvs" 1920;
	setAttr ".hyp[73].nvs" 1920;
	setAttr ".hyp[74].nvs" 1920;
	setAttr ".hyp[75].nvs" 1920;
	setAttr ".hyp[76].nvs" 1920;
	setAttr ".hyp[77].nvs" 1920;
	setAttr ".hyp[78].x" 1250.9908447265625;
	setAttr ".hyp[78].y" 163.50431823730469;
	setAttr ".hyp[78].nvs" 1920;
	setAttr ".hyp[79].nvs" 1920;
	setAttr ".hyp[80].nvs" 1920;
	setAttr ".hyp[81].nvs" 1920;
	setAttr ".hyp[82].nvs" 1920;
	setAttr ".hyp[83].nvs" 1920;
	setAttr ".hyp[84].nvs" 1920;
	setAttr ".hyp[85].nvs" 1920;
	setAttr ".hyp[86].nvs" 1920;
	setAttr ".hyp[87].nvs" 1920;
	setAttr ".hyp[88].nvs" 1920;
	setAttr ".hyp[89].nvs" 1920;
	setAttr ".hyp[90].nvs" 1920;
	setAttr ".hyp[91].nvs" 1920;
	setAttr ".hyp[92].nvs" 1920;
	setAttr ".hyp[93].nvs" 1920;
	setAttr ".hyp[94].nvs" 1920;
	setAttr ".hyp[95].nvs" 1920;
	setAttr ".hyp[96].nvs" 1920;
	setAttr ".hyp[97].x" 1448.1336669921875;
	setAttr ".hyp[97].y" 27.042034149169922;
	setAttr ".hyp[97].nvs" 1920;
	setAttr ".hyp[98].nvs" 1920;
	setAttr ".hyp[99].nvs" 1920;
	setAttr ".hyp[100].nvs" 1920;
	setAttr ".hyp[101].nvs" 1920;
	setAttr ".hyp[102].x" 1448.1336669921875;
	setAttr ".hyp[102].y" -287.24368286132812;
	setAttr ".hyp[102].nvs" 1920;
	setAttr ".hyp[103].x" 1645.2764892578125;
	setAttr ".hyp[103].y" -336.49566650390625;
	setAttr ".hyp[103].nvs" 1920;
	setAttr ".hyp[104].nvs" 1920;
	setAttr ".hyp[105].nvs" 1920;
	setAttr ".hyp[106].nvs" 1920;
	setAttr ".hyp[107].nvs" 1920;
	setAttr ".hyp[108].nvs" 1920;
	setAttr ".hyp[109].nvs" 1920;
	setAttr ".hyp[110].nvs" 1920;
	setAttr ".hyp[111].nvs" 1920;
	setAttr ".hyp[112].nvs" 1920;
	setAttr ".hyp[113].nvs" 1920;
	setAttr ".hyp[114].nvs" 1920;
	setAttr ".hyp[115].nvs" 1920;
	setAttr ".hyp[116].nvs" 1920;
	setAttr ".hyp[117].nvs" 1920;
	setAttr ".anf" yes;
createNode groupId -n "groupId98";
	setAttr ".ihi" 0;
createNode groupId -n "groupId99";
	setAttr ".ihi" 0;
createNode groupId -n "groupId113";
	setAttr ".ihi" 0;
createNode groupId -n "groupId117";
	setAttr ".ihi" 0;
createNode groupId -n "groupId136";
	setAttr ".ihi" 0;
createNode groupId -n "groupId137";
	setAttr ".ihi" 0;
createNode groupId -n "groupId138";
	setAttr ".ihi" 0;
createNode groupId -n "groupId139";
	setAttr ".ihi" 0;
createNode groupId -n "groupId140";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 6;
	setAttr ".unw" 6;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".mwc";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av ".ef";
	setAttr -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "GenericMesh_V10_1:cameraView1.msg" ":perspShape.b" -na;
connectAttr "Joints.di" "RootJ.do";
connectAttr "RootJ.s" "BellyJ.is";
connectAttr "groupId58.id" "polySurfaceShape31.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape31.iog.og[0].gco";
connectAttr "groupId113.id" "polySurfaceShape43.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape43.iog.og[0].gco";
connectAttr "groupId117.id" "polySurfaceShape46.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape46.iog.og[0].gco";
connectAttr "groupId137.id" "polySurfaceShape52.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape52.iog.og[0].gco";
connectAttr "groupId136.id" "polySurfaceShape38.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape38.iog.og[0].gco";
connectAttr "groupId138.id" "polySurfaceShape57.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape57.iog.og[0].gco";
connectAttr "groupId139.id" "polySurfaceShape61.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape61.iog.og[0].gco";
connectAttr "groupId99.id" "polySurfaceShape20.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape20.iog.og[0].gco";
connectAttr "groupId98.id" "polySurfaceShape19.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape19.iog.og[0].gco";
connectAttr "groupId140.id" "polySurfaceShape55.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape55.iog.og[0].gco";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:PS_1:Quadra_defaultMat.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:PS_1:Quadra_defaultMat.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Yellow.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.ss";
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.msg" "GenericMesh_V10_1:AR__materialInfo11.sg"
		;
connectAttr "Yellow.msg" "GenericMesh_V10_1:AR__materialInfo11.m";
connectAttr "Blue.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.ss";
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.msg" "GenericMesh_V10_1:AR__materialInfo5.sg"
		;
connectAttr "Blue.msg" "GenericMesh_V10_1:AR__materialInfo5.m";
connectAttr "Green.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.ss";
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.msg" "GenericMesh_V10_1:AR__materialInfo10.sg"
		;
connectAttr "Green.msg" "GenericMesh_V10_1:AR__materialInfo10.m";
connectAttr "Red.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.ss"
		;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.msg" "GenericMesh_V10_1:AR__materialInfo9.sg"
		;
connectAttr "Red.msg" "GenericMesh_V10_1:AR__materialInfo9.m";
connectAttr "Purple.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.ss";
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.msg" "GenericMesh_V10_1:AR__materialInfo7.sg"
		;
connectAttr "Purple.msg" "GenericMesh_V10_1:AR__materialInfo7.m";
connectAttr "Orange.oc" "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.ss"
		;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.msg" "GenericMesh_V10_1:AR__materialInfo2.sg"
		;
connectAttr "Orange.msg" "GenericMesh_V10_1:AR__materialInfo2.m";
connectAttr "White.oc" "GenericMesh_V10_1:PS_1:Quadra_defaultMat.ss";
connectAttr "GenericMesh_V10_1:PS_1:Quadra_defaultMat.msg" "GenericMesh_V10_1:PS_1:Quadra_materialInfo1.sg"
		;
connectAttr "White.msg" "GenericMesh_V10_1:PS_1:Quadra_materialInfo1.m";
connectAttr "layerManager.dli[6]" "Joints.id";
connectAttr "hyperView1.msg" "nodeEditorPanel1Info.b[0]";
connectAttr "hyperLayout1.msg" "hyperView1.hl";
connectAttr "RootJ.msg" "bindPose2.m[0]";
connectAttr "BellyJ.msg" "bindPose2.m[1]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "RootJ.bps" "bindPose2.wm[0]";
connectAttr "BellyJ.bps" "bindPose2.wm[1]";
connectAttr "polySurface36.msg" "hyperLayout1.hyp[71].dn";
connectAttr "polySurfaceShape38.msg" "hyperLayout1.hyp[72].dn";
connectAttr "polySurface37.msg" "hyperLayout1.hyp[78].dn";
connectAttr "polySurface39.msg" "hyperLayout1.hyp[97].dn";
connectAttr "polySurface40.msg" "hyperLayout1.hyp[102].dn";
connectAttr "polySurfaceShape43.msg" "hyperLayout1.hyp[103].dn";
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh2_lambert5SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert8SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert6SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_GenaricMesh_lambert2SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_lambert3SG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:AR__GenericMeshv3a_yellowDKSG.pa" ":renderPartition.st"
		 -na;
connectAttr "GenericMesh_V10_1:PS_1:Quadra_defaultMat.pa" ":renderPartition.st" 
		-na;
connectAttr "polySurfaceShape31.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape19.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape20.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape43.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape46.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape38.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape52.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape57.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape61.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape55.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId98.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId99.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId113.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId117.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId136.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId137.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId138.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId139.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId140.msg" ":initialShadingGroup.gn" -na;
connectAttr "Orange.msg" ":defaultShaderList1.s" -na;
connectAttr "Blue.msg" ":defaultShaderList1.s" -na;
connectAttr "Purple.msg" ":defaultShaderList1.s" -na;
connectAttr "Red.msg" ":defaultShaderList1.s" -na;
connectAttr "Green.msg" ":defaultShaderList1.s" -na;
connectAttr "Yellow.msg" ":defaultShaderList1.s" -na;
connectAttr "White.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of MasterCheif.ma
