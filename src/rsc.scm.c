/*
 * The Ribbit VM implementation in C
 */
#ifdef DEBUG_I_CALL
#define DEBUG
#endif

#ifdef DEBUG

#include <stdio.h>

#define PRINTLN()                                                              \
  do {                                                                         \
    printf("\n");                                                              \
  } while (0)

#endif

#ifndef NO_STD

#include <stdio.h>
#include <stdlib.h>

#endif

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma ide diagnostic ignored "ConstantFunctionResult"

#ifdef DEFAULT_REPL_MIN

char *input =
    "Detouq,htgnel-gnirts,fer-gnirts,fi,!rdc-tes,tsil>-rotcev,!tes-gnirts,"
    "enifed,!tes-rotcev,?rotcev,=,cc/"
    "llac,!tes,adbmal,rddc,gnirts-ekam,fer-rotcev,htgnel-rotcev,rotcev-ekam,"
    "lobmys>-gnirts,gnirts>-lobmys,?erudecorp,!rac-tes,tneitouq,enilwen,ton,"
    "lave,fer-tsil,rdddac,*,?tcejbo-foe,?lobmys,lper,?gnirts,rotcev>-tsil,+,"
    "etirw,rahc-keep,yalpsid,tsil>-gnirts,daer,gnirts>-tsil,?lauqe,,,,?llun,"
    "htgnel,,,,,rddac,rdac,,-,,<,,rac,?riap,,rahc-daer,rdc,,snoc,,?vqe,,,,,;8K!"
    "K8K@Z%@YGZ#^'i$~YM^YC@PvCvR3y]#7#YS*^z!S*9Bi&:EiS/ai&kkz!S/"
    ":kw'k]@'_*Z@aC_G^~F^{!>'^8>YHlbC`^'`~?_G_~F_|]D9C`^Uka_CaG`.ZDdCbAai$G`^~"
    "F_|!S+#`kn5^~i$#`kn5^~i$#`kn5^~i$#`kn5^~RL^~?w)B^~?kH^~R^z]K#YS+a_l{]C#a_"
    "k#k_k~?iS/_{!.#b`n9DAd`Ca_#ZCex>#d~TbZBi&:EiS/"
    "NeZ@AAfi$i$akS_nM`~?x0^.:EgYOecEfNdboMa_~?x:^.ZKdUlbMbNa_~O?x6_9DAd`Ca_#"
    "ZCex>#d~TbZBi&:EiS/"
    "NeZ@AAfi$i$akS_nM`~?x0^.:EgYOecEfNdboMa_~?x:^.ZKdUlbMbNa_~O^~^?x1^#cMan~?"
    "x=^G_~F_#bUk``m~YL_|!93_@J^{]%3uy]?'i$9?C_@J^G^~F^z]I'i$'i$9IC^@YGG^~F^@"
    "JvC~F^z!E8EYS(^89vS7vF~Z(^9?YD^~YJ^8EZ)^~YL^3vL@ZIC^@YGG^@JvK~F^89vLvK~T^"
    "89vS;vF~?i%^89vS-vF~Z$^z!G8E^3vE@Z?i%YD^@JvE~YJ^z]O9O8@~?u^'^~Ik^Dy!@8@@D'"
    "^9O~?vR0^~I_vC'iS0~YM^YFy!?*V^@D'i&~OOIvD`*V^@D'i&~OO^~^?vL_*V^@D'i&~O^~^?"
    "vK^YFy]M*ZM^YC'i&@D~?vL^Wy!C9*`'^~^^YS%^YBAV^@D*Ai&YCx=@D~?vJ^8IYC'i%@D~?"
    "vS;^'i$@D~?vS-^YF@D~?vF^9M@D~?vK^'^~Ik^Wy!F'^!S-^Dy]H'^!S-iS.'^~?iS0^!S-^"
    "z!-9H^9HYS#~?iS.^'^~?iS0^iS-y!S-iS.!M(iS0^z]27%Z>'_@YS&Lc^@YS'Hc^BBZ>i$"
    "zBBZ>i$z]B#l`^{](Ql]+8IZLk^z]59Nb`H^|]-8P`H^{],i+]8i1!I#oS_^z]4Qo].8BZLvC^"
    "z]79Nb`H^|];8P`H^{]<i+!Di1!B#nS_^z!JQn]F'_'i$'i$9FKKvR%`YNbuC_~IvR/"
    "^~I_vR$G^~F^{]G9Fk^'i$~T^z!S%'i$4_k~^ZG^9GC^~?vPG^'i$~T^YD^z]E'^9E_`~"
    "IakAb^YHKYNu``vR%Z&u^{!S(8BZEi&^8BAZEi&K`kvP~Ik^z]3i(@YS)ki#!S,Bi#]P'^!S,"
    "AiS,^YS$^9PBa_'^~YA`B^H_~F_{]*9PiS,^z])i+!S$#m_i$z!LQm]J'`9JAca`Kl^~I_k|]"
    "L9Ji&`^{]A'^9AKl`C^~I`k{]N9'aZA`^|!P0ZA`^{!<'k8HSC_l~F^z!=(i&^z!O87B^z!"
    "76B^z]/+B^z!61B^z]9iS)]'iS'!,i+!0i1!*#k`^{!/"
    "Qk!A'i$'i$'i$'i$8ALaL_~YABaB_~YAHaH_~R`~R_'^~^?`^{]$(i$^z!:9>'i$(bL^~R^zz!"
    "S.Kmk!S0Klk!':lkl!):lkm!8:lkn]>:lko!;:lkp!1:lkq!+:lkr!5:lks!S':lkt!S):lku!"
    "S&:lkv.!(:lkv/!2:lkv0!H:lkv1!4:lkv2!N:lkv3]&:lkv4!S#:lkv5!3:lkv6y";

#else

char *input = "R4llac/pmuj,htgnel-rotcev,?=<gnirts,trats-tni-llac,raaaac,?=>rahc,raaadc,_,dna,?naeloob,$,!llif-rotcev,trats-tni-tsnoc,rdaadc,tes,trats-tni-teg,mcl,etouq,dnapxe-dnoc,xam,oludom,esle,trats-corp-tsnoc,radddc,dnoc,rts-ot-tuptuo-htiw,cc/llac,adbmal,rdaddc,rdadac,raadac,!tes-rotcev,trats-llac,tel,stropxe-xtc,?>rahc,rotaremun,?tsil,rddddc,roolf,trats-teg,yllamron-margorp-tixe,margorp-daer,ypoc-gnirts,enifed,yllamronba-margorp-tixe,gnirts-ekam,?evitagen,2/be,liat,gniliec,?=<rahc,trats-mys-teg,dnuor,elif-led,trats-mys-llac,trats-tni-tes,nim,rotanimoned,tropxe,trats-tes,trats-mys-pmuj,etacnurt,radaac,slobmys-denretninu,raddac,rdaaac,trats-mys-tsnoc,ro,trohs-mys-llac,reffub,rotcev-ekam,!tes-gnirts,qmem,fer-rav-labolg,raaddc,trats-tsnoc,rddadc,teg,*tel,tsnoc,nigeb,trats-mys-tes,!tes,edoc-tegrat-etirw,vne-erudecorp,trats-tni-pmuj,?=>gnirts,certel,trats-fi,radadc,!llif-gnirts,tibbir,dmc-llehs,lbtmys,!tes-rav-labolg,?<rahc,pool,rahc-etirw,?evitisop,?orez,rddaac,fer-rotcev,fi,sedoc>-gnirts,sfed-teser,tsil>-elbat,tros-tsil,enil-dmc,edoc-etareneg,?ddo,rahcteg,tpxe,noisnetxe-htap,?regetni,yrarbil-daer,dcg,elif-tupni-htiw-llac,lper,relipmoc-enilepip,htap-elbatucexe,elif-tpircs,ssenevil,sisylana-ssenevil,?=rahc,htgnel-elbat,gnirts-ot-tuptuo-htiw,dnibnu-neg,enil-daer,!tros-tsil,elif-morf-tupni-htiw,>,lobmys-denretninu>-gnirts,?qe,rebmun>-gnirts,margorp-elipmoc,vssa,?neve,?erudecorp,elipmoc,=<,lave,?>gnirts,redniamer,elif-ot-tuptuo-htiw,?<gnirts,!tes-evil-xtc,edocne,stropxe-tcartxe,xua-lobmys>-gnirts,tsil-dnapxe,xua-rebmun>-gnirts,xua-sisylana-ssenevil,stropxe-htiw-srpxe-pmoc,yrotcerid-htap,raadc,repo,rebmem,rahc>-regetni,xua-gnirtsbus,2xua-rebmun>-gnirts,xua-pmc-gnirts,radac,elbat-ekam,xua-rahc-daer,llac-neg,edoc-erudecorp,?=gnirts,xtc-ekam,*dnib-pmoc,?tnatsnoc,!tes-elbat,radc,gnirts>-lobmys,raaac,ngissa-neg,tnemmoc-piks,tsil-etirw,tsil-daer,?ni,tsila>-stropxe,llac-pmoc,rdaac,raac,xua-tsil-ekam,dnib-pmoc,rdadc,xua-esrever,raddc,xua-?tsil,evil>-stropxe,elif-morf-gnirts,liat-tsil,tixe,xua-dcg,evil-xtc,fer-tsil,lobmys>-gnirts,?2erudecorp,tnatsnoc-dnapxe,hcae-rof,lla-daer,poon-neg,ydob-dnapxe,lave-dnapxe-dnoc,pmc-gnirts,dnetxe,erudecorp-ekam,elif-morf-daer,!rac-tes,1tsil,xua-gnirts>-rebmun,lobmys-esu,3tsil,nigeb-dnapxe,rotcev>-tsil,2tsil,?rotcev,rdddc,tsil-ekam,sba,ecapsetihw-non-rahc-keep,!tes-tsil,regetni>-rahc,lobmys-daer,?gnirts,lobmys-denretninu>-rts,tsil>-rotcev,fer-elbat,gnirtsbus,tes-etc-xtc,cossa,!tes-2dleif,gnirts>-rebmun,enod-ydob-dnapxe,2rahctup,rdddac,?tcejbo-foe,?ecnatsni,daer,fer-gnirts,srahc-daer,etanetacnoc-gnirts,rts>-lobmys,rahc-keep,enilwen,pp,fi-dliub,?evil,sesualc-dnapxe-dnoc-dnapxe,*nigeb-dnapxe,!tes-1dleif,?llun,etirw,dnpo,etc-xtc,gnirts>-maerts,pukool,txen,qssa,!rdc-tes,tneitouq,evil-dda,srahc-etirw,?bir,nigeb-pmoc,=>,esrever,htgnel-gnirts,rorre,vmem,dneppa,=,gnirts>-tsil,rddac,xeh-daer,2dleif,?lobmys,tsil>-gnirts,!tes-0dleif,rahctup,*,htgnel,rpxe-dnapxe,hguorht-epip,yalpsid,ecalper-gnirts,setyb-ot-edoc-mvr,rid-toor,?lauqe,dnapxe-htap,rahc-daer,pam,1dleif,0dleif,rddc,pmoc,ton,<,+,-,rdac,dneppa-gnirts,?riap,esolc,rac,2gra,1gra,?vqe,rdc,snoc,di,lin,eurt,eslaf,bir;8U/!U/8AYU9YTMYS9ki$i$kiX8y!V$8TDE8Aby^8A_~TiXA^{!@7&i&kkC^[$E9>iXIZ%?aZKZ$h-_f7$IlfC^[$E7/fJldb7\'Il^~YU*Z@`h1Z@J`dh/70??h.ZKh.gh3h4_^Jh/c~Kk^zi$~YTHZ$gJf_|i$Z$aZ$_|!?9>`QYH_E9GYS#^z{!U9\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBi$\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBYAiX@BYAZ$^BYAiXH~Z&ldGiY#\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBi$\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBYAiX@BYAZ$^BYAiXH~Z&ldGYSCe~e_YSCSUGGGdiXBbiX9\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBi$\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBYAiX@BYAZ$^BYAiXH~Z&ldGiY#\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBi$\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^LgCWiXJiWOWViY*aViX5_WViX+aViXG_Wa_`iX?\'^YB_SUGGiX\'eiXO\'^^~CTiWKe\'^YB_SUGGiX\'eiXO\'^^~C^~^Lg^~TiY&cBYAiX@BYAZ$^BYAiXH~Z&ldGYSCe~e_iX-~TiX6aYTA__@cDb}(!SC8U1E8U&i$^z^z!VN8OYS2`8OYS9~TiY+`YU3^{!U38S2^8S2SSUiX#GiX%^~TiY-YU5^z!S28U$iS9^z!S9(YS9^\'i&~ZC^ZAy!>8T:CYU.8T:C^~^YU-y!U>8:YH_iS#z]08MQ_E8T6^8T6vD~YNvS#^JvF^zz!TA7&i&`kC^[$E7&ca_C^[$E7&cg_C^[$E7$aC^[$E0GGZ0aiY%Z>iXMQaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~i$0GGZ0aiY%Z>iXMQaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~YT-iXEZ=D^~F^zi$70?h-a@eJlcBYGd^@aZNiX=7.e@ca~^Z-hR%^D^D_~F_|i$7.e@ca70?h-a@eJlcBYGd^@a@^~^Z-hM^D^D_~F_|i$70?h-`@eJlcBYGd`ZNiX<70?h-`@eJlcBYGd`@^~^Z-hH_@_D^D_~i$7&ca_C^[$E7&cg_C^[$E7$aC^[$E0GGZ0aiY%Z>iXMQaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~i$0GGZ0aiY%Z>iXMQaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~YT-iXEZ=D^~F^zi$70?h-a@eJlcBYGd^@aZNiX=7.e@ca~^Z-hR%^D^D_~F_|i$7.e@ca70?h-a@eJlcBYGd^@a@^~^Z-hM^D^D_~F_|i$70?h-`@eJlcBYGd`ZNiX<70?h-`@eJlcBYGd`@^~^Z-hH_@_D^D_~KiV3^~F_|i$YU;YU<h<E4X)_X(_{BX5h<BX1h<BYS:iX3E74n^z[$E88^@`3YD_vS[rz0~^YT7iX3^D^z[%E9#i&iX)9#_iWM7+X,?ciUMZ2`Z._~AwU?^7+CZ#_iX&7+CX/c^~YS<^7+CX3dX4_iV5~YI^7+CX4d_iW>7+C?cJ_iV,~Kv.^~X-^Z2`Z._~AwV(^7+CZ#_iX/7+CX3dX4_iVD~YI^7+CX4d_iW;7+C?cJ_iVP~Ku^~X-^Z2`Z._~AwV*^7+CZ#_iX47+CX3dX4_iV&~YI^7+CX4d_iV@~X-^Z2`Z._~AwW<^7+CZ#_iX>7+CCX4e_iVA7+CC?dJ_iW*~KiV3^X3^~YI^7+CX4d_iWG~X-^Z2`Z._9#_iXF73d_iV;(cJ_k~Kv7^X2^~YI^73c_iUP~X,^Z2_~AZ.`k~AwWJ^YT8^~Z(^{[&E8U4^z[\'E7,X4d`JoiW47,?cJ`iW4~Ko_Z._O^YT.^{[(E72e_`\'^~YNk`?bJiVH^72e_`\'^~YNk`?b^~AcaIYEiVH__Z+iVH^|[)E7.a`^{[*E(``(@`Jl`~YNJliVH^D^X/a_|[+E(X0b`^|[,E88^ZLi$_h>z[-E\'i$76n^~AwW<_77l^BZ5_aBYGwV*aX8^76m^~CCi$77l^BZ5_aBYGwV*aX8^76m^~CCZ&k`~X-`77l^BZ5_aBYGwV*aX8^76m^~CC^~^YS<_77l^BZ5_aBYGwV*aX8^76m^~C^~^YI^~AwV(_76l^~AwV*_76k^~AwWJ_73^~AwU?_Z2_YT8^z[.E\'i$71Z.^BX0^~Z(^z[/E\'i$75^~YS<^\'i$9HJYJ`l^~YNm`95JP`l^~YNl`8GJO`l^~YNk`CC^BYT)`ahA:kkk\'i$9HJYJ`l^~YNm`95JP`l^~YNl`8GJO`l^~YNk`C^~^ZLi$_h?~YI^{[0E\'^BX4`^{[1E71Z.YT.^z[2E\'^BX4k^z[3E\'^BX6n^BX?_`[9Jlh8YS=GZGh8iXN1^~^Z-h>^\'w&~Ai&^\'w%~Ai%^\'w$~Ai$^z[4k[5E9HX=X;YJ_^O^z[6E7%`h>C^[$E\'_7-XE:gbwW<_@bN`H_D^D^~F^{i$z[7E#X>bYJ`P_O^\'_~Ak^{[8E7%a@iY(C^[$E\'_7)CCb7)CCX-c_~i$7)CCb7)CCX-c_~CCKYJak7)CCb7)CCX-c_~CC^~^KP`k7)CCb7)CCX-c_~C^~^KO_k~^ZLi$_hFDD_@^~F^{i$[$E#::::h.XBngwW<X@kw#wWJlwV(kwV(HZ-iY(_wV({i$z[9E\'`[@?h@??`a_X?k^{[:E9#_iY)7@XA::fX;kw#wWJowV(YD_^ZM^~YS)^7@XA::fX;kw#wWJnwV(YD_^QYH_iS#~ZO^7?X@::eX:kw#wWJkwV(@_D^~F^#a_wV(#::eX:kw2wWJIbkwV(kwV(~Kk^~X*^#aX6m_wV(~YI^#bX7l_wV*X7^~CZ-h@_9#_iY)7@XA::fX;kw#wWJowV(YD_^ZM^~YS)^7@XA::fX;kw#wWJnwV(YD_^QYH_iS#~ZO^7?X@::eX:kw#wWJkwV(@_D^~F^#a_wV(#::eX:kw2wWJIbkwV(kwV(~Kk^~X*^#aX6m_wV(~YI^#bX7l_wV*X7^~C^~^YPiWN^{[;i&[<YT1i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i${!UMJJloiW4!W4JmiV5!V5JliW>!W>Jv.iV,!V,JmiVD!VDJliW;!W;JuiVP!VPJmiV&!V&JliV@!V@JkiV<!V<JmiVA!VAJliWG!WGJiV3iW*!W*JmiV;!V;JliUP!UPJv7k!V3IJJJJv4v7uov.vS#!VHZ+mvS#!U,\'cBX\'i%i&b[$E\'i$7)`@^BX+i$`D^~F^{[%E\'i$7+a_7.i$YS4c_YL`H_~AwW/^7+a@_~AwV\'^7.i$YOcQ`i-YL`BX,bQ_i1H_~AwW)^7-i$aZD_BX-i$aYL_BX-i$aH_~AwU?^\'i$70i$d_BZ,?@``^~^Z8h1_Bi$\'i$70i$d_BZ,?@``^~^Z8h1_BX/_~h17/i$c^~YSOc_YL`H_~AwV%^7-^H_~AwW9^D^~F^7,^\'i$~YSO`^~YI^|[&E\'i$8S:ZM_c~YS)^7)@^BX)D^~F^7*^~YI^z[\'E\'k[,Z*g^zi$i$i$i$|!SO5AZ/ka_^{!T*\'i$\'i$\'i$*DH_wW9~FH^~Z4N^~F@^z]8\'i$98@a_\'^~AD__D_~F_{]*(a^?i&^\'_~Z8`^{!U=7$_C^[$E\'i$7\'@^BZ,i&D^~F^zi$z!SD\'i&(YSD@_?i&DD^~F^z!T<7$Z*Z*Z*Z*YSDCi&7$Z*Z*Z*Z*YSDC^~^dw\'w.w,w+C^[$E7(^\'_~A`^YU,Le_bBYU=^zi${!U+\'^8T<a_~ZI_wUHYT<i&^{!T>\'i&(YT>@_YCD^~F^z]7\'_97a@_96a@^~CYS6D_97a@_96a@^~C^~^AD_wW5D^~F^{!S6*wUJ^5LYPQ@`iS6i%~i$*wUJ^5LYPQ@`iS6i%~AwV4D^~F^5YPQ@`iS6i$~i$*wUJ^5LYPQ@`iS6i%~i$*wUJ^5LYPQ@`iS6i%~AwV4D^~F^5YPQ@`iS6i$~AwWBD^~F^5YS6H^~i$*wUJ^5LYPQ@`iS6i%~i$*wUJ^5LYPQ@`iS6i%~AwV4D^~F^5YPQ@`iS6i$~i$*wUJ^5LYPQ@`iS6i%~i$*wUJ^5LYPQ@`iS6i%~AwV4D^~F^5YPQ@`iS6i$~AwWBD^~F^5YS6H^~Aw5D^~F^z]6\'_(_YC_97_@_~i$(_YC_97_@_~AwW8D_~F_96_@_~i$(_YC_97_@_~i$(_YC_97_@_~AwW8D_~F_96_@_~AwV\'D_~F_Z6a@_D^~F^{!S,8S;k-^(_wV\'~F@^~F^Z6i&^z]F8S,_8C??aZ%_wUN~F^{!S77%i&_C^[$E9FiX*_9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~i$9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~i$9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~F@^~AD_wVL~F^D^~F^{i$z!S;(?i&_wW9z!C8S;^8T>_8Ci$8C????i&?NcwW2?@HbwV\'DH`wU?8C?@H`wV\'~ADH`wW5~F@_~AwW2^8Ci$8CH_8C???i&????i&?NewV4wWCwWCwU??i&??i&HawWCwW)~FN_~F@_~AwV4^8Ci%8CH_8C????i&i$?NbwWBH`wU?~FN_~F@_~AwWB^(??i&YCYLb_wV%(??i&YC??Nd@awW/D_wV%~F^H_~AwVL^8S,@_~AwV\'^8C??YONcQaE(??i&H`D_wV%zQ`E(?i&i$D^zwW)H_~AwUN^8C?@a8C???i&??Nd@awV)?i&D_~i$8C?@a8C???i&??Nd@awV)?i&D_~F@_~F_wW)H_~AwV)^8S7Na(??i&YS7NcQ`E(?i&YCH_D^zwW)~F^^8CC?Q`i1???i&a?i&??i&??YS(eQbi-wW/`wUNYL`~YI^H_~AwW)^(??i&YS7Nb_wW/H_~AwW/^(???i&i$(???i&YCZDb~FYS(bYCYLaYCH`wU?~AwU?^(??i&YCYLb_wV%H_~AwV%^8S;H_~AwW9^D^~F^\'^~YI^z!TM\'^Bi$\'^BZ:@^BYAiX,~Z&nbBi$\'^Bi$\'^BZ:@^BYAiX,~Z&nbBZ:D^BYAiWP~Z&mbYT;YSN_?i&i$\'^Bi$\'^BZ:@^BYAiX,~Z&nbBi$\'^Bi$\'^BZ:@^BYAiX,~Z&nbBZ:D^BYAiWP~Z&mbYT;YSN__~F_@_D^YT@_{!T;(CQaE(_^D^z(C^~^bYS3i&:MiVGbYT,Ci&(CQaE(_^D^z(C^~^bYS3i&:MiVGbYT,C^~^eai&kkYU+a^YS,^{!SN\'^8:_E(H_D^(_^~YI^z~F^z!T@7&i$i&_C^[$E(aZ%_7,c?b_@_7,YOCi&7,YOC^~^d@`a@_~i$7,c?b_@_7,YOCi&7,YOC^~^d@`a@_~AwV=D^~F^D^~F^|i$z!VG:kw\'wWJ!S4\'_(YS4a@_D^~F^{]/\'^9/Jlb@`^\'`~A_D_~F_|!SM7&^6YSMd@bZJ?Z1bi$`D`^~F_|]\'6b6:Z\'f@dbYS.w+awWJ~F@aD`^|!S.\'_BYTBZ*YS?``^{!U\'#aYS.w,_wWJ\'_~AiVG_{!T+9\'eca6YT+YU\'h2gh/ZJ?Z1h/eh-@f@dZJ?Z1di$b_`DaD_~F_})!SI8T+geab`^}(!S8#`kwV(8J^~i$#`kwV(8J^~i$#`kwV(8J^~i$#`kwV(8J^~Z(YJ^~Aw+P^~AwWJO^~Z(^z!T%#YS8a_wW<{!T/#a_wWJ#k_wWJ~AiVG_{!6#b`wV(8SIf?i&?bwWC?i&aiX:`8SME8T/h.^Z/kZ1_dz_`~YI_@`8SIgaQbi1Qai-aNaH`~AwW)^9\'c@a_~AwV\'^#YT/eYS.w.b#d~Z4Z1bYS3i&:Z\'iVGNeZJYS4??Z1gi$i$bckYD_wV(H`~AwW/^6`Hdb:a_wU?MdYLb`McZDa_~AwU?^6YT%g``b8S8e6YT%h-aac8S8e~YT*^~^Z8YS?c`~Aa^Z/lZ1b_YLaH`~AwV%^#cHawV(~AwW9^D_~F_#d`wV*#dHH_wV(~i$#d`wV*#dHH_wV(~YT*^~^Z8YS?``Z/kZ1__~YI_|!TB8S1`P^{]J#YJ`P__{!W(8J^z!S?-P^z]188^z!T,#b?i&`^|].8J^z]289^z!T888^z!S<iTJ]#\'iX0BZ;BZ3_BZ;BYA^{]>\'iXK7%YHDa@`C^[$E8M_7)YOYObeYHD_@^~F^{i$YH`Z%^~F^{!U.\'iXCy!U--YU:y!U;8U%YOi&`^{!U%7(_c\'i&~YN_kYDb[$E\'^BZ,b_\'^BZ,a_7/f@dc`BZ,ca7/@fdd`BZ,da~X0`^DbD`~Fa~F`}\'[%E\'_\'^7-d@ba`7-@dbba~X.`^D`D^~F_~F^{[&E7%a_C^[$E71_X2eeX1Ief_7)@`Il^~YU#k^{i$Z+m_\'^BZ,i&^~YNl_{i$i$i${]:9;BZ3^z!U&7$i&C^[$E7(?`^8MZ%_~CAf_7(?`^8MZ%_~C^~^ZC^Rbzi${!<0G`iY\'_0__~YNvR$YS#Z@IlZ$`_\'^~YNkZ$_{!T:7$IlZ$_C^[$E7\'Il^9KJl`kb~YNvR$YS#Z@_b\'iXP~Kk^zi$z!U57$IlZ$_C^[$E7\'Il^9KZ$d_b~YNvR#YS#Z@_b\'iX(~Kk^zi$z]=9LYT\'`_iV8z]N\'^BYT)b_iV8YS=^GZGYU)iV8iWLz!V8YT1!U<-^z!U)8DD^z!T)8S1?Da?ca_9,b^~^ZID__|]L\'a)^~^ZID__|!T1(i&i&y!W18U(^z!VK8SAly!VO8SAky!U:(i&iX.y!B\'_BYAiX7BYA^BYAiY,BYAiX$BYAiXL{!VB\'i$z!UI\'i$z]#8SAlBZ;BZ3_BYAiY$BYA^{!U08U0BZ;BZ3YTG^9;~ZC^ZABZEvCvR3y!TG7#YTI^z!TI.7&i&yM_i&z]/\'^9/Jlb@`^\'`~A_D_~F_|]\'\'^.7\'^BX(^zZ\'@a_~F@`MD`^{!S0(i&^z!S*(YS0`^{!S-(YS*b`^|]9(YS-ca_wU?|!6.\'bz9#diX;.7&X*aX*`X*_X,^zYLaH`D_~A_n.7%X)`X)_X+^zH`D_~A_m.7$X(_X*^zD_~A_l.7#X)^z~A_kYD^Q@bE6_czM__6i$6Z9?NdwW2?@HcwV\'DHa6?@HbwV\'~ADHbwW5~F@a_~AwW2^6i$6C^6CYS-Z9?NgwV4wW@wW@YS0YS*`wW@wW)~FNbHa~F@a_~AwV4^6i%6C^6CZ9i$?NdwWB^~FNbHa~F@a_~AwWB^.7\'?_X)^zZ\'Nd^?bD_MH_`DH`~AwW)^9\'@a_~AwV\'^9#eiXD..7-???fb`^|z~A_n..7,??d`^{z~A_m..7+?b^zz~A_l..7*`yz~A_kYD`Z\'Nc^YOa^H`~AwW/^.7\'^7(^~X)^zMZDcaMYLb`MHa_~AwU?^.8S$X)`c^z.8GX(_bz~Z(_MYLb`Z/k`H`~CAwVL_9#diX;.7&X*aX*`X*_X,^zYLaH`D_~A_n.7%X)`X)_X+^zH`D_~A_m.7$X(_X*^zD_~A_l.7#X)^z~A_kYD^Q@bE6_czM__6i$6Z9?NdwW2?@HcwV\'DHa6?@HbwV\'~ADHbwW5~F@a_~AwW2^6i$6C^6CYS-Z9?NgwV4wW@wW@YS0YS*`wW@wW)~FNbHa~F@a_~AwV4^6i%6C^6CZ9i$?NdwWB^~FNbHa~F@a_~AwWB^.7\'?_X)^zZ\'Nd^?bD_MH_`DH`~AwW)^9\'@a_~AwV\'^9#eiXD..7-???fb`^|z~A_n..7,??d`^{z~A_m..7+?b^zz~A_l..7*`yz~A_kYD`Z\'Nc^YOa^H`~AwW/^.7\'^7(^~X)^zMZDcaMYLb`MHa_~AwU?^.8S$X)`c^z.8GX(_bz~Z(_MYLb`Z/k`H`~C^~^AwV%^.\'azH`~AwW9^D_~F_.8S>b^z\'jD~An^\'iL~Am^\'i1~Al^\'i-~Ak^.88az~Z(^Z/k__~YI_{]E8F_BYF^{];8Fuy!UDiF])\'i$9)a@_BYF^9)a@_BYF^BYFvS#~CAvS#_9)a@_BYF^9)a@_BYF^BYFvS#~C^~^AvE^9)a@_BYFvS;BYFvS#~At^9)a@_BYFvS9BYFvS#~Av0^9)a@_BYFvS5BYFvS#~Au^9)a@_BYF^~L`D^~F^{!T#\'i$\'i$8T#@^BZ3D^~F^BYFvC~F^z!A8AZG^9EvS7vF~YTJ^93ZM^BYFvF~YS)^9)i$YH^~ZO^8AYT\'^~YI^8FvLBYT#@^BZ3D^BYFvK~F^9EvLvK~Z4^9EvS;vF~Ai%^9EvS-vF~L^z]38A^8FvEBZ)i%YH^BYFvE~ZO^z!T$8T$8S%~Au^\'^~Kk^Ry!S%8S%BR\'^8T$~AvR0^~K_vC\'iX2~ZC^Z<y]?9??`^9??a^9??at~AvS;^9??av0~AvS9^9??au~AvS5^R~AvS#^9%_~AvE^\'i&~ZC^Rz]P(ZP^BR\'i&~CCKvD`(ZP^BR\'i&~CC^~^AvL_(ZP^BR\'i&~C^~^AvK^Z<y!SP(YSP^ZA\'i&BR~AvL^YS%y!K\'_8KIIvRL_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~KvS.^~K_vS\'8KIIvR,_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~KvS.^~K_vS\'8KIIvR,_YE`v3BR~KvR<^~K_vR58KIIvR%_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~KvS.^~K_vS\'8KIIvR,_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~i$\'_8KIIvRL_YE`v3BR~KvS.^~K_vS\'8KIIvR,_YE`v3BR~KvR<^~K_vR58KIIvR%_YE`v3BR~KvR/^~K_vR$Z<z]A8S=`\'^~^^YTN^YM?ZP^BR8MZ?i&BR~AvE^(?i&ZAwW9BR~AvJ^8S+ZA2YKkk8KkBR~AvP^Z<BR~CAvRM_8S+ZA2YKkk8KkBR~AvP^Z<BR~C^~^AvS?^\'i%BR~AvS;^\'i$BR~AvS-^Z<BR~AvF^8SPBR~AvK^\'^~Kk^YS%y]<\'^!V2^Ry!T0\'^!V2iX1\'^~AiX2^!V2^z!;8T0^8T0YU7~AiX1^\'^~AiX2^iV2y!V2iX1]C*iX2^z!W07%E\'_BZHYJc^BYGOc^PPEi$zPPEi$z!S:\'i$8S:@`^BX$D_~F_{!:\'i&(Q@a_X$D_~F_{!V#i9!T.i8!S3#l`^{!TJZBl!W?8GYS\'aP_^{!V18S+YS\'k^z!W+8S$b`O^|!U@8S>`O^{!WIi9]Mi8!S+#oYD_^z!S)ZBo!UK8GYS\'aP_^{!VM8MYOi&YH^z!08MYOYH`YH^{!T58Ma8T5?fZ@bb`a_Il`~Ka_}\']K8T5i&b`^|!T3\'k\'iX2~F_\'l8T3@b@`\'l~K`^\'iX2~K__D`D^~F_~F^{!S58T3YH`YH^{!UO5YTC`^{!WH5YTF`^{!TF4YS5a_k{!TC4kYS5`^{!T-*kYS5`^{!VJ8MYS\'vC^z!V08S$b`O^|]@8S>`O^{]$i9!Hi8!M#nYD_^z]OZBn!T6i\'!S#i\'!WEj&!VEiTH!W\'iU#!UFi4!U*i*!T4\'_\'i$\'i$8T4IIvR%`YEbu@_~KvR/^~K_vR$D^~F^{!T=8T4k^\'i$~Z4^z!TN\'i$2_k~^YT=^8T=@^~AvPD^\'i$~Z4^YH^z!S/\'^8S/_`~Kak?b^JIYEu``vR%Z+u^{]G8MYS/i&^8M?YS/i&I`kvP~Kk^z!U6\'^8E__~YU8`YU6Z+m`YE_^\'l~Ak_{!VCi\'!V:i\'!VFi\'!W#i\'!V>\'lz!W&i\'!W:8E_Z+YU2``_YS&`YS&^\'k~Ak_{!S@8S@_YTE__\'_~Ak^{!U28S@`^8S@__~K__YS&`YS&^{!W63b^\'^~AKkbKk`\'k~Ak^IYE`a_Z+`^{!TE2YEZ+b``^{!S&\'^2_k~Kk^z!V?\'_\'^~K`^{!W7\'^\'_~K`^{!U85YTK^z!TK*YEZ+m`m^z!VI4k^z!UC4_kz!UB*k^z]&5K`^{!TH5K__{!U#4__{!Ni*!U45Z(^zBZ5ki#!UHPi#!T?\'^!UH?iUH^YTP^8T?Pa_\'^~T`P^O_~F_{!S=8T?iUH^z!UGiG!V.i8!T\'i9!TP#m_i$z!IZBm!SJ\'`8SJ?ca`Il^~K_k|!S\'8SJi&`^{]I\'i$9I@a_\'^~TD__D_~F_{]-iTL!TL\'i$8TL@a_\'^~AD__D_~F_{!T7\'i$8T7@`^\'_~TD`^~F_{!V/iP!P\'i$8P@`^\'_~AD`^~F_{!SB\'^8SBIl`@^~K`k{!S$8S1aYSB`^|!S>-YSB`^{!SG\'_8SG?aD_@^~F^{]%8SGi&^z!O\'_(YOa@_D^~F^{!D\'k3YD@_l~F^z!SE94^94^8SE@a@^~F^\'i$~YTOa^@^~F^{!W%8SE_^z]4*i&^z!W$8S(P^z!W38S(O^z!W.8SFP^z!V-8SFO^z!V+8SHP^z!UL8SHO^z!W=8T9P^z!WD8T9O^z!V78LO^z!W-8T2P^z!W,8T2O^z!UA8SLP^z!V98SLO^z!V68T&P^z!WF8T&O^z!S(87P^z!SF87O^z!SH8T(P^z!T98T(O^z!T21O^z!SL8SKP^z!T&8SKO^z!T(89O^z!SK88O^z]D8LP^z!L1P^z!789P^z!188P^z],j5!S1iG!)i9!-i8!(#k`^{!/ZBk!=\'i$\'i$\'i$\'i$8=OaO_~TPaP_~TYJaYJ_~Z(`\'i$~ApYJ_~Z(_\'^~^A`^{!TOi*!WA5_\'^~^Ai%^z!5*i$^z]B.\'i$*bYJ^~Z(^zz!X8:nn:k:k:ki&vS4vS=vS9!XA:nl:ki&vP!XI:nki&!XB:np:k:k:k:k:ki&vR#vS4vS=vS9vR$!X9:np:k:k:k:k:ki&vR$vS;vS:vS6vS/!Y#:nki&!XJ:nv::k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS4vS(vS9vS.vS6vS9vS7vCvS,vS/vS;vCvS-vS6vCvS,vS+vS6vS*vCvRBvRKvRG!WO:nv>:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vDvRDvRAvRAvR:vR=vCvS:vS;vS5vS0vS9vS7vCvS;vS(vS/vS;vCvS,vS+vS6vS*vCvRBvRKvRG!Y*:nl:ki&vO!X5:nl:ki&vO!X+:nl:ki&vC!XG:nl:ki&vC!X?:nvR$:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS@vR+vS=vS2vS3vR/vJvDvS4vS2vS3vR/vKvDvR2vRGvS=vR3vR4vR/vRGvS=vR3vR4vR6vRGvS=vR3vR4vR6vRGvS=vR3vR4vR9vRGvS=vR3vR4vR9vS=vR3vR4vS<vJvR0vL!WK:nn:k:k:ki&vS4vS=vS9!X\':nr:k:k:k:k:k:k:ki&vS@vS-vS0vS5vS0vS4vR$!XO:np:k:k:k:k:ki&vR$vS;vS:vS6vS/!Y&:nn:k:k:ki&vS4vS=vS9!X@:nr:k:k:k:k:k:k:ki&uvS:vS,vS;vS@vS)vC!XH:nv8:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vCvR/vS/vS;vS.vS5vS,vS3vCvS,vS+vS6vS*vCvRBvRKvRGvCvMvMvM!X-:nki&!X6:nn:k:k:ki&vS4vS=vS9!Y+:nl:ki&vP!X#:nn:k:k:ki&vS)vS0vS3!X%:no:k:k:k:ki&vS4vS*vS:vR#!Y-:nki&!Y%:nl:ki&vR0!XM:nl:ki&vO!XE:nki&!X=:nki&!X<:nki&!X3:k:k:k:ki&w&w%w$w#!X):nv/:k:k:k:k:k:k:k:k:k:k:k:ki&vS+vS,vS;vS*vS,vS7vS?vS,vCvS)vS0vS9!WM:nu:k:k:k:k:k:k:k:k:k:ki&vS7vS6vCvS5vS>vS6vS5vS2vS5vS<!X&:nv5:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS:vS5vS6vS*vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X/:nv3:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS,vS.vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X4:nv3:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS,vS:vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X>:nv4:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS3vS3vS(vS*vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!XF:nv4:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS7vS4vS<vS1vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!XN:nl:ki&vS&!Y(:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&:k:ki&v7wSA:k:ki&v6wF:k:ki&v5wU7:k:ki&v4x+:k:ki&v3wE:k:ki&v2w2:k:ki&v1w3:k:ki&v0w4:k:ki&v/w*:k:ki&v.xH:k:ki&ux5:k:ki&twG:k:ki&swJ:k:ki&rw9:k:ki&qw8:k:ki&px(:k:ki&ow.:k:ki&nw,:k:ki&mw+:k:ki&lw\':k:ki&kw#!Y):nv7:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS5vS(vS;vS:vS5vS6vS*vCvS+vS3vS0vS<vS)vCvS;vJvS5vS(vS*!WN:k:k:ki&i&i%i$!X*:ki&k!X,:nv0:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR/vS:vS;vS9vS6vS7vS?vS,vCvMvMvM!WP:nv1:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR/vS,vS+vS6vS*vCvRBvRKvRGvCvMvMvM!X::ki&wWC!X0:k:k:k:ki&:ki&wUEi&wUEwW)!XK:nki&!XC:nki&!Y\':nl:ki&vR$!XP:nm:k:ki&vR$vR#!X(:nki&!WL:nn:k:k:ki&vR5vR5vR5!X.:nki&!X7:nv.:k:k:k:k:k:k:k:k:k:k:ki&uvR#vS@vS3vS3vS(vS<vS5vS(vS4vC!Y,:nvE:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vCvS.vS5vS0vS5vS5vS<vS9vCvS@vS9vS;vCvS6vS;vCvS;vS5vS(vS>vCvS;vS/vS.vS0vS4vCvS<vS6vRNvCvMvMvM!X$:nvO:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR#vS+vS,vS0vS-vS0vS5vS0vS4vCvS;vS6vS5vCvS:vS(vS>vCvS,vS+vS6vS*vCvS+vS,vS;vS(vS9vS,vS5vS,vS.vCvS,vS/vS;vCvS6vS:vCvMvMvM!XL:nvR/:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvS4vS,vS;vS:vS@vS:vCvS,vS4vS,vS/vS*vRHvCvS:vS0vS/vS;vCvS/vS;vS0vS>vCvS+vS,vS;vS9vS6vS7vS7vS<vS:vCvS;vS6vS5vCvS:vS0vCvS5vS6vS0vS;vS(vS*vS0vS-vS0vS5vS0vRBvCvMvMvM!Y$:nl:ki&vC!X;:nv5:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS;vS5vS,vS4vS<vS.vS9vS(vCvS@vS5vS(vS4vCvS6vS6vS;!XD:nv6:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS9vS,vS;vS,vS4vS(vS9vS(vS7vCvS@vS5vS(vS4vCvS6vS6vS;!X1Imk!X2Ilk!\':lkl!+:lkm!,:lkn!.:lko](:lkp!8:lkq!9:lkr!J:lks!G:lkt]5:lku]H:lkv.!*:lkv/!4:lkv0!3:lkv1!2:lkv2!E:lkv3]+:lkv4!U7:lkv5!F:lkv6!SA:lkv7y"; // RVM code that prints HELLO!

#endif

#ifndef NULL

#define NULL 0
typedef unsigned long size_t;

#endif

// basic def. of a boolean
typedef unsigned char bool;

#define true (1)

// an unsigned byte value for the REPL's code
typedef unsigned char byte;

// a tagged value
typedef unsigned long obj;

// a number
typedef long num;

// a rib obj
#define RIB_NB_FIELDS 3
typedef struct {
  obj fields[RIB_NB_FIELDS];
} rib;

#define EXIT_ILLEGAL_INSTR 6
#define EXIT_NO_MEMORY 7

#define UNTAG(x) ((x) >> 1)
#define RIB(x) ((rib *)(x))
#define NUM(x) ((num)(UNTAG((num)(x))))
#define IS_NUM(x) ((x)&1)
#define IS_RIB(x) (!IS_NUM(x))
#define TAG_RIB(c_ptr) (((obj)(c_ptr)))
#define TAG_NUM(num) ((((obj)(num)) << 1) | 1)

#define PRIM1() obj x = pop()
#define PRIM2()                                                                \
  obj y = pop();                                                               \
  PRIM1()
#define PRIM3()                                                                \
  obj z = pop();                                                               \
  PRIM2()

#define CAR(x) RIB(x)->fields[0]
#define CDR(x) RIB(x)->fields[1]
#define TAG(x) RIB(x)->fields[2]
#define TOS CAR(stack)

#define NUM_0 (TAG_NUM(0))

#define INSTR_AP 0
#define INSTR_SET 1
#define INSTR_GET 2
#define INSTR_CONST 3
#define INSTR_IF 4
#define INSTR_HALT 5

#define PAIR_TAG TAG_NUM(0)
#define CLOSURE_TAG TAG_NUM(1)
#define SYMBOL_TAG TAG_NUM(2)
#define STRING_TAG TAG_NUM(3)
#define SINGLETON_TAG TAG_NUM(5)

// the only three roots allowed
obj stack = NUM_0;
obj pc = NUM_0;
obj FALSE = NUM_0;

// global, but not a root, referenced
obj symbol_table = NUM_0;

size_t pos = 0;

rib *heap_start;

// GC
#define MAX_NB_OBJS 2000000 // 48000 is minimum for bootstrap
#define SPACE_SZ (MAX_NB_OBJS * RIB_NB_FIELDS)
#define heap_bot ((obj *)(heap_start))
#define heap_mid (heap_bot + (SPACE_SZ))
#define heap_top (heap_bot + (SPACE_SZ << 1))

#ifdef NO_STD
#define vm_exit(code)                                                          \
  do {                                                                         \
    asm volatile("mov $0x01, %%eax\nmov %0, %%ebx\nint $0x80" : : "i"(code));  \
  } while (0)
#else
#define vm_exit(code)                                                          \
  do {                                                                         \
    exit((code));                                                              \
  } while (0)
#endif

#if defined(NO_STD) && !defined(NO_REG)
register obj *alloc asm("edi");
#else
obj *alloc;
#endif
obj *alloc_limit;
obj *scan;

#ifdef NO_STD

void *sys_brk(void *addr) {
  long ptr;

  asm volatile("mov %0, %%ebx\n"
               "mov $0x2d, %%eax\n"
               "int $0x80\n"
               : "=a"(ptr)
               : "g"((long)addr)
               : "ebx");

  return (void *)ptr;
}

#endif

void init_heap() {
#ifdef NO_STD
  heap_start = sys_brk((void *)NULL);
  void *new_brk = sys_brk((void *)heap_top);

  if (new_brk == heap_start) {
    vm_exit(EXIT_NO_MEMORY);
  }

#else
  heap_start = malloc(sizeof(obj) * (SPACE_SZ << 1));

  if (!heap_start) {
    vm_exit(EXIT_NO_MEMORY);
  }
#endif

  alloc = heap_bot;
  alloc_limit = heap_mid;
  stack = NUM_0;
}

// NULL is a pointer (0) but would represent NULL
// so it is never present in an obj field, and
// cannot be a number because it is even. This
// saves a couple of bytes v.s having STACK
// as the broken heart value
#define GC_COPIED_OBJ ((obj)NULL)

void copy() {
  obj o = *scan;
  // we sometime reference rib that are allocated in BSS,
  // we do not want to copy those
  if (IS_RIB(o)) {
    obj *ptr = RIB(o)->fields;
    obj field0 = ptr[0];
    obj copy;

    if (field0 == GC_COPIED_OBJ) {
      copy = ptr[1]; // copied, get new address
    } else {
      copy = TAG_RIB(alloc);
      *ptr++ = GC_COPIED_OBJ; // ptr points to CDR
      *alloc++ = field0;
      *alloc++ = *ptr++; // ptr points to TAG
      *alloc++ = *ptr;
      ptr[-1] = copy; // set forward ptr. Since it points to TAG, ptr[-1]
                      // rewrites the CDR
    }
    *scan = copy; // overwrite to new address.
  }
  scan++;
}

void gc() {
#ifdef DEBUG
  obj *from_space = (alloc_limit == heap_mid) ? heap_bot : heap_mid;

  size_t objc = alloc - from_space;
  printf("\t--GC %d -> ", objc);
#endif

  // swap
  obj *to_space = (alloc_limit == heap_mid) ? heap_mid : heap_bot;
  alloc_limit = to_space + SPACE_SZ;

  alloc = to_space;

  // root: stack
  scan = &stack;
  copy();

  // root: pc
  scan = &pc;
  copy();

  // root: false
  scan = &FALSE;
  copy();

  // scan the to_space to pull all live references
  scan = to_space;
  while (scan != alloc) {
    copy();
  }

#ifdef DEBUG

  objc = alloc - to_space;
  printf("%d\n", objc);

#endif
}

obj pop() {
  obj x = CAR(stack);
  stack = CDR(stack);
  return x;
}

void push2(obj car, obj tag) {
  // default stack frame is (value, ->, NUM_0)
  *alloc++ = car;
  *alloc++ = stack;
  *alloc++ = tag;

  stack = TAG_RIB((rib *)(alloc - RIB_NB_FIELDS));

  if (alloc == alloc_limit) {
    gc();
  }
}

/**
 * Allocate a rib that is not kept on the stack (can be linked
 * from anywhere). The car and cdr can be live references to other
 * ribs.
 * @param car
 * @param cdr
 * @param tag
 * @return
 */
rib *alloc_rib(obj car, obj cdr, obj tag) {
  push2(car, cdr); // tag is set
  obj old_stack = CDR(stack);
  obj allocated = stack;

  CDR(allocated) = TAG(allocated);
  TAG(allocated) = tag;

  stack = old_stack;

  return RIB(allocated);
}

rib *alloc_rib2(obj car, obj cdr, obj tag) {
  push2(car, tag); // tag is set
  obj old_stack = CDR(stack);
  obj allocated = stack;

  CDR(allocated) = cdr;

  stack = old_stack;

  return RIB(allocated);
}

char get_byte() { return input[pos++]; }

num get_code() {
  num x = get_byte() - 35;
  return x < 0 ? 57 : x;
}

num get_int(num n) {
  num x = get_code();
  n *= 46;
  return x < 46 ? n + x : get_int(n + x - 46);
}

rib *list_tail(rib *lst, num i) {
  return (i == 0) ? lst : list_tail(RIB(lst->fields[1]), i - 1);
}

obj list_ref(rib *lst, num i) { return list_tail(lst, i)->fields[0]; }

obj get_opnd(obj o) {
  return (IS_NUM(o) ? list_tail(RIB(stack), NUM(o)) : RIB(o))->fields[0];
}

obj get_cont() {
  obj s = stack;

  while (!NUM(TAG(s))) {
    s = CDR(s);
  }

  return s;
}

#define TRUE (CAR(FALSE))
#define NIL (CDR(FALSE))

#ifdef DEBUG

void chars2str(obj o) {
  if (o != NIL) {
    printf("%c", (char)(NUM(RIB(o)->fields[0]) % 256));
    chars2str(RIB(o)->fields[1]);
  }
}

void sym2str(rib *c) { chars2str(RIB(c->fields[1])->fields[0]); }

void show_operand(obj o) {
  if (IS_NUM(o)) {
    printf("int %ld", NUM(o));
  } else if (TAG(o) == SYMBOL_TAG) {
    printf("sym ");
    sym2str(RIB(o));
  }
}

#endif

obj boolean(bool x) { return x ? CAR(FALSE) : FALSE; }

void prim(int no) {
  switch (no) {
  case 0: { // rib
    obj new_rib = TAG_RIB(alloc_rib(NUM_0, NUM_0, NUM_0));
    PRIM3();
    CAR(new_rib) = x;
    CDR(new_rib) = y;
    TAG(new_rib) = z;
    push2(new_rib, PAIR_TAG);
    break;
  }
  case 1: { // id
    PRIM1();
    push2(x, PAIR_TAG);
    break;
  }
  case 2: { // arg1
    pop();
    break;
  }
  case 3: { // arg2
    obj x = pop();
    pop();
    push2(x, PAIR_TAG);
    break;
  }
  case 4: { // close
    obj x = CAR(TOS);
    obj y = CDR(stack);
    TOS = TAG_RIB(alloc_rib(x, y, CLOSURE_TAG));
    break;
  }
  case 5: { // is rib?
    PRIM1();
    push2(boolean(IS_RIB(x)), PAIR_TAG);
    break;
  }
  case 6: { // field0
    PRIM1();
    push2(CAR(x), PAIR_TAG);
    break;
  }
  case 7: { // field1
    PRIM1();
    push2(CDR(x), PAIR_TAG);
    break;
  }
  case 8: { // field2
    PRIM1();
    push2(TAG(x), PAIR_TAG);
    break;
  }
  case 9: { // set field0
    PRIM2();
    push2(CAR(x) = y, PAIR_TAG);
    break;
  }
  case 10: { // set field1
    PRIM2();
    push2(CDR(x) = y, PAIR_TAG);
    break;
  }
  case 11: { // set field2
    PRIM2();
    push2(TAG(x) = y, PAIR_TAG);
    break;
  }
  case 12: { // eqv?
    PRIM2();
    push2(boolean(x == y), PAIR_TAG);
    break;
  }
  case 13: { // lt
    PRIM2();
    push2(boolean(NUM(x) < NUM(y)), PAIR_TAG);
    break;
  }
  case 14: { // add
    PRIM2();
    push2(x + y - 1, PAIR_TAG);
    break;
  }
  case 15: { // sub
    PRIM2();
    push2(x - y + 1, PAIR_TAG);
    break;
  }
  case 16: { // mul
    PRIM2();
    push2(TAG_NUM((NUM(x) * NUM(y))), PAIR_TAG);
    break;
  }
  case 17: { // div
    PRIM2();
    push2(TAG_NUM((NUM(x) / NUM(y))), PAIR_TAG);
    break;
  }
  case 18: { // getc
    int read;
#ifdef NO_STD
    asm volatile("push %%eax\n"
                 "mov $0x03, %%eax\n"    // sys_call
                 "mov $0, %%ebx\n"       // fd
                 "lea 0(%%esp), %%ecx\n" // ptr
                 "mov $1, %%edx\n"       // count
                 "int $0x80\n"
                 "pop %%eax\n"
                 : "=a"(read)
                 :
                 : "ebx", "ecx", "edx", "esi", "edi");
    read &= 0xFF;
#else
    read = getchar();
    if (EOF == read) read = -1;
#endif
    push2(TAG_NUM(read), PAIR_TAG);
    break;
  }
  case 19: { // putc
    PRIM1();
#ifdef NO_STD
    {
      asm volatile("mov %0, %%eax\n"
                   "push %%eax\n"
                   "mov $1, %%ebx\n"       // fd
                   "lea 0(%%esp), %%ecx\n" // ptr
                   "mov $1, %%edx\n"       // count
                   "mov $0x04, %%eax\n"    // sys_call
                   "int $0x80\n"
                   "pop %%eax\n"
                   :
                   : "g"((int)(NUM(x) & 0xFF))
                   : "eax", "ebx", "ecx", "edx", "esi", "edi");
    }
#else
    putchar((char)NUM(x));
    fflush(stdout);
#endif
    push2(x, PAIR_TAG);
    break;
  }
  case 20: { // exit
    PRIM1();
    vm_exit(NUM(x));
    break;
  }
  default: {
    vm_exit(EXIT_ILLEGAL_INSTR);
  }
  }
}

void run() {
#define ADVANCE_PC()                                                           \
  do {                                                                         \
    pc = TAG(pc);                                                              \
  } while (0)
  while (1) {
    num instr = NUM(CAR(pc));
    switch (instr) {
    default: { // error
      vm_exit(EXIT_ILLEGAL_INSTR);
    }
    case INSTR_HALT: { // halt
      vm_exit(0);
    }
    case INSTR_AP: // call or jump
    {
      bool jump = TAG(pc) == NUM_0;
#ifdef DEBUG_I_CALL
      printf(jump ? "--- jump " : "--- call ");
      show_operand(CDR(pc));
      PRINTLN();
#endif
#define proc (get_opnd(CDR(pc)))
#define code CAR(proc)
      if (IS_NUM(code)) {
        prim(NUM(code));

        if (jump) {
          // jump
          pc = get_cont();
          CDR(stack) = CAR(pc);
        }
        pc = TAG(pc);
      } else {
        num argc = NUM(CAR(code));
        // Use the car of the PC to save the new PC
        CAR(pc) = CAR(get_opnd(CDR(pc)));

        //        pop();

        obj s2 = TAG_RIB(alloc_rib(NUM_0, proc, PAIR_TAG));

        for (int i = 0; i < argc; ++i) {
          s2 = TAG_RIB(alloc_rib(pop(), s2, PAIR_TAG));
        }

        obj c2 = TAG_RIB(list_tail(RIB(s2), argc));

        if (jump) {
          obj k = get_cont();
          CAR(c2) = CAR(k);
          TAG(c2) = TAG(k);
        } else {
          CAR(c2) = stack;
          TAG(c2) = TAG(pc);
        }

        stack = s2;

        obj new_pc = CAR(pc);
        CAR(pc) = TAG_NUM(instr);
        pc = TAG(new_pc);
      }
      break;
    }
#undef code
#undef proc
    case INSTR_SET: { // set
#ifdef DEBUG_I_CALL
      printf("--- set ");
      show_operand(CDR(pc));
      PRINTLN();
#endif
      obj x = CAR(stack);
      ((IS_NUM(CDR(pc))) ? list_tail(RIB(stack), NUM(CDR(pc))) : RIB(CDR(pc)))
          ->fields[0] = x;
      stack = CDR(stack);
      ADVANCE_PC();
      break;
    }
    case INSTR_GET: { // get
#ifdef DEBUG_I_CALL
      printf("--- get ");
      show_operand(CDR(pc));
      PRINTLN();
#endif
      push2(get_opnd(CDR(pc)), PAIR_TAG);
      ADVANCE_PC();
      break;
    }
    case INSTR_CONST: { // const
#ifdef DEBUG_I_CALL
      printf("--- const ");
      show_operand(CDR(pc));
      PRINTLN();
#endif
      push2(CDR(pc), PAIR_TAG);
      ADVANCE_PC();
      break;
    }
    case INSTR_IF: { // if
#ifdef DEBUG_I_CALL
      printf("--- if");
      PRINTLN();
#endif

      obj p = pop();
      if (p != FALSE) {
        pc = CDR(pc);
      } else {
        pc = TAG(pc);
      }
      break;
    }
    }
  }
#undef ADVANCE_PC
}

rib *symbol_ref(num n) { return RIB(list_ref(RIB(symbol_table), n)); }

obj lst_length(obj list) {
  size_t l = 0;

  while (IS_RIB(list) && NUM(TAG(list)) == 0) {
    ++l;
    list = CDR(list);
  }

  return TAG_NUM(l);
}

rib *create_sym(obj name) {
  rib *list = alloc_rib(name, lst_length(name), STRING_TAG);
  rib *sym = alloc_rib(FALSE, TAG_RIB(list), SYMBOL_TAG);
  rib *root = alloc_rib(TAG_RIB(sym), symbol_table, PAIR_TAG);
  return root;
}

void build_sym_table() {
  num n = get_int(0);

  while (n > 0) {
    n--;
    symbol_table = TAG_RIB(create_sym(NIL));
  }

  obj accum = NIL;

  while (1) {
    byte c = get_byte();

    if (c == 44) {
      symbol_table = TAG_RIB(create_sym(accum));
      accum = NIL;
      continue;
    }

    if (c == 59)
      break;

    accum = TAG_RIB(alloc_rib(TAG_NUM(c), TAG_RIB(accum), PAIR_TAG));
  }

  symbol_table = TAG_RIB(create_sym(accum));
}

void set_global(obj c) {
  CAR(CAR(symbol_table)) = c;
  symbol_table = CDR(symbol_table);
}

void decode() {
  int weights[6] = {20, 30, 0, 10, 11, 4};

  obj n;
  int d;
  int op;

  while (1) {
    num x = get_code();
    n = x;
    op = -1;

    while (n > 2 + (d = weights[++op])) {
      n -= d + 3;
    }

    if (x > 90) {
      op = INSTR_IF;
      n = pop();
    } else {
      if (!op) {
        push2(NUM_0, NUM_0);
      }

      if (n >= d) {
        n = (n == d) ? TAG_NUM(get_int(0))
                     : TAG_RIB(symbol_ref(get_int(n - d - 1)));
      } else {
        n = (op < 3) ? TAG_RIB(symbol_ref(n)) : TAG_NUM(n);
      }

      if (op > 4) {
        n = TAG_RIB(
            alloc_rib(TAG_RIB(alloc_rib2(n, NUM_0, pop())), NIL, CLOSURE_TAG));
        if (stack == NUM_0) {
          break;
        }
        op = INSTR_CONST;
      } else if (op > 0) {
        op--;
      } else {
        op = 0;
      }
    }

    rib *c = alloc_rib(TAG_NUM(op), n, 0);
    c->fields[2] = TOS;
    TOS = TAG_RIB(c);
  }

  pc = TAG(CAR(n));
}

void setup_stack() {
  push2(NUM_0, PAIR_TAG);
  push2(NUM_0, PAIR_TAG);

  obj first = CDR(stack);
  CDR(stack) = NUM_0;
  TAG(stack) = first;

  CAR(first) = TAG_NUM(INSTR_HALT);
  CDR(first) = NUM_0;
  TAG(first) = PAIR_TAG;
}

#ifdef NOSTART
void _start() {
#else

void init() {
#endif
  init_heap();

  FALSE = TAG_RIB(alloc_rib(TAG_RIB(alloc_rib(NUM_0, NUM_0, SINGLETON_TAG)),
                            TAG_RIB(alloc_rib(NUM_0, NUM_0, SINGLETON_TAG)),
                            SINGLETON_TAG));

  build_sym_table();
  decode();

  set_global(
      TAG_RIB(alloc_rib(NUM_0, symbol_table, CLOSURE_TAG))); /* primitive 0 */
  set_global(FALSE);
  set_global(TRUE);
  set_global(NIL);

  setup_stack();

  run();
}

#ifndef NOSTART

int main() { init(); }

#endif

#pragma clang diagnostic pop
