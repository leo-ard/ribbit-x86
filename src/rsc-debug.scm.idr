import Data.IORef
import Control.Monad.State
import Data.String

import System

input : String
input = "R8llac/pmuj,htgnel-rotcev,?=<gnirts,trats-tni-llac,raaaac,?=>rahc,raaadc,_,dna,?naeloob,$,!llif-rotcev,trats-tni-tsnoc,rdaadc,tes,trats-tni-teg,mcl,etouq,dnapxe-dnoc,xam,oludom,esle,trats-corp-tsnoc,radddc,dnoc,rts-ot-tuptuo-htiw,cc/llac,adbmal,rdaddc,rdadac,raadac,!tes-rotcev,trats-llac,tel,stropxe-xtc,?>rahc,rotaremun,?tsil,rddddc,roolf,trats-teg,yllamron-margorp-tixe,margorp-daer,ypoc-gnirts,enifed,yllamronba-margorp-tixe,gnirts-ekam,?evitagen,2/be,liat,gniliec,?=<rahc,trats-mys-teg,dnuor,elif-led,trats-mys-llac,trats-tni-tes,nim,rotanimoned,tropxe,trats-tes,trats-mys-pmuj,etacnurt,radaac,slobmys-denretninu,raddac,rdaaac,trats-mys-tsnoc,ro,trohs-mys-llac,reffub,rotcev-ekam,!tes-gnirts,qmem,fer-rav-labolg,raaddc,trats-tsnoc,rddadc,teg,*tel,tsnoc,nigeb,trats-mys-tes,!tes,edoc-tegrat-etirw,vne-erudecorp,trats-tni-pmuj,?=>gnirts,certel,trats-fi,radadc,!llif-gnirts,tibbir,dmc-llehs,lbtmys,!tes-rav-labolg,?<rahc,pool,rahc-etirw,?evitisop,?orez,rddaac,fer-rotcev,fi,sedoc>-gnirts,sfed-teser,tsil>-elbat,tros-tsil,enil-dmc,edoc-etareneg,?ddo,rahcteg,tpxe,noisnetxe-htap,?regetni,yrarbil-daer,dcg,elif-tupni-htiw-llac,lper,relipmoc-enilepip,htap-elbatucexe,elif-tpircs,ssenevil,sisylana-ssenevil,?=rahc,htgnel-elbat,gnirts-ot-tuptuo-htiw,dnibnu-neg,enil-daer,!tros-tsil,elif-morf-tupni-htiw,>,lobmys-denretninu>-gnirts,?qe,rebmun>-gnirts,margorp-elipmoc,vssa,?neve,?erudecorp,elipmoc,=<,lave,elif-ot-tuptuo-htiw,?>gnirts,redniamer,?<gnirts,!tes-evil-xtc,edocne,stropxe-tcartxe,xua-lobmys>-gnirts,tsil-dnapxe,xua-rebmun>-gnirts,xua-sisylana-ssenevil,stropxe-htiw-srpxe-pmoc,yrotcerid-htap,raadc,repo,rebmem,rahc>-regetni,xua-gnirtsbus,2xua-rebmun>-gnirts,xua-pmc-gnirts,radac,elbat-ekam,xua-rahc-daer,llac-neg,edoc-erudecorp,?=gnirts,xtc-ekam,*dnib-pmoc,?tnatsnoc,!tes-elbat,radc,gnirts>-lobmys,raaac,ngissa-neg,tnemmoc-piks,tsil-etirw,tsil-daer,?ni,tsila>-stropxe,llac-pmoc,rdaac,raac,xua-tsil-ekam,dnib-pmoc,rdadc,xua-esrever,raddc,xua-?tsil,evil>-stropxe,elif-morf-gnirts,liat-tsil,tixe,xua-dcg,evil-xtc,fer-tsil,lobmys>-gnirts,?2erudecorp,tnatsnoc-dnapxe,hcae-rof,lla-daer,poon-neg,ydob-dnapxe,lave-dnapxe-dnoc,pmc-gnirts,dnetxe,erudecorp-ekam,elif-morf-daer,!rac-tes,1tsil,xua-gnirts>-rebmun,lobmys-esu,3tsil,nigeb-dnapxe,rotcev>-tsil,2tsil,?rotcev,rdddc,tsil-ekam,sba,ecapsetihw-non-rahc-keep,!tes-tsil,regetni>-rahc,lobmys-daer,?gnirts,lobmys-denretninu>-rts,tsil>-rotcev,fer-elbat,gnirtsbus,tes-etc-xtc,cossa,!tes-2dleif,gnirts>-rebmun,enod-ydob-dnapxe,2rahctup,rdddac,?tcejbo-foe,?ecnatsni,daer,fer-gnirts,srahc-daer,etanetacnoc-gnirts,rts>-lobmys,rahc-keep,enilwen,pp,fi-dliub,?evil,sesualc-dnapxe-dnoc-dnapxe,*nigeb-dnapxe,!tes-1dleif,?llun,etirw,dnpo,etc-xtc,gnirts>-maerts,pukool,txen,qssa,!rdc-tes,tneitouq,evil-dda,srahc-etirw,?bir,nigeb-pmoc,=>,esrever,htgnel-gnirts,rorre,vmem,dneppa,=,gnirts>-tsil,rddac,xeh-daer,2dleif,?lobmys,tsil>-gnirts,!tes-0dleif,rahctup,*,htgnel,rpxe-dnapxe,hguorht-epip,ecalper-gnirts,setyb-ot-edoc-mvr,rid-toor,?lauqe,dnapxe-htap,rahc-daer,pam,1dleif,0dleif,yalpsid,rddc,pmoc,ton,<,+,-,rdac,dneppa-gnirts,?riap,esolc,rac,2gra,1gra,?vqe,rdc,snoc,di,lin,eurt,eslaf,bir;8U/!U/88YU9YTMYS9ki$i$kiY\'y!V$8TFE88by^88_~UiY0^{!A7&i&kkC^[$E9>iX%Z%?aZKZ$h-_f7$IlfC^[$E7/fJldb7\'Il^~YU*Z@`h1Z@J`dh/70??h.ZKh.gh3h4_^Jh/c~Kk^zi$~YTHZ$gJf_|i$Z$aZ$_|!@9>`RYH_E9GYS#^z{!U9\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBi$\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBOiWKBOZ$^BOiX(~Z&ldGiXC\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBi$\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBOiWKBOZ$^BOiX(~Z&ldGYSCe~e_YSCTVGGGdiX0biX:\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBi$\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBOiWKBOZ$^BOiX(~Z&ldGiXC\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBi$\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^LgCYAiXKiXDYAWiX;aWiY%_YAWiXLaWiWO_YAa_`iY-\'^YB_TVGGiX,eiXI\'^^~CUiX7e\'^YB_TVGGiX,eiXI\'^^~C^~^Lg^~UiXAcBOiWKBOZ$^BOiX(~Z&ldGYSCe~e_iY#~UiY)aYTA__@cDb}(!SC8U1E8U&i$^z^z!VN8OYS2`8OYS9~UiXB`YU3^{!U38S2^8S2TTViXJGiX.^~UiX8YU5^z!S28U$iS9^z!S9(YS9^\'i&~ZC^ZAy!?8T:CYU.8T:C^~^YU-y!U>8;YH_iS#z]08MR_E8T6^8T6vD~YNvS#^JvF^zz!TA7&i&`kC^[$E7&ca_C^[$E7&cg_C^[$E7$aC^[$E0GGZ0aiY.Z>iX#RaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~i$0GGZ0aiY.Z>iX#RaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~YT-iX&Z=D^~F^zi$70?h-a@eJlcBYGd^@aZNiY17.e@ca~^Z-hR%^D^D_~F_|i$7.e@ca70?h-a@eJlcBYGd^@a@^~^Z-hM^D^D_~F_|i$70?h-`@eJlcBYGd`ZNiY(70?h-`@eJlcBYGd`@^~^Z-hH_@_D^D_~i$7&ca_C^[$E7&cg_C^[$E7$aC^[$E0GGZ0aiY.Z>iX#RaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~i$0GGZ0aiY.Z>iX#RaE8MZ%YH^Z=^zZ0XBi&IYD`YDeX?i&hR%7\'@^~YT-iX&Z=D^~F^zi$70?h-a@eJlcBYGd^@aZNiY17.e@ca~^Z-hR%^D^D_~F_|i$7.e@ca70?h-a@eJlcBYGd^@a@^~^Z-hM^D^D_~F_|i$70?h-`@eJlcBYGd`ZNiY(70?h-`@eJlcBYGd`@^~^Z-hH_@_D^D_~KiV3^~F_|i$YU;YU<h<E4X)_X(_{BX5h<BX1h<BYS:iXOE74n^z[$E89^@`3YD_vS[rz0~^YT7iXO^D^z[%E9#i&iXG9#_iX?7+X,?ciUMZ2`Z._~AwU?^7+CZ#_iX>7+CX/c^~YS<^7+CX3dX4_iV5~YI^7+CX4d_iW>7+C?cJ_iV,~Kv.^~X-^Z2`Z._~AwV(^7+CZ#_iX57+CX3dX4_iVD~YI^7+CX4d_iW;7+C?cJ_iVP~Ku^~X-^Z2`Z._~AwV*^7+CZ#_iX*7+CX3dX4_iV&~YI^7+CX4d_iV@~X-^Z2`Z._~AwW<^7+CZ#_iWM7+CCX4e_iVA7+CC?dJ_iW*~KiV3^X3^~YI^7+CX4d_iWG~X-^Z2`Z._9#_iX\'73d_iV;(cJ_k~Kv7^X2^~YI^73c_iUP~X,^Z2_~AZ.`k~AwWJ^YT8^~Z(^{[&E8U4^z[\'E7,X4d`JoiW47,?cJ`iW4~Ko_Z._P^YT.^{[(E72e_`\'^~YNk`?bJiVH^72e_`\'^~YNk`?b^~AcaIYEiVH__Z+iVH^|[)E7.a`^{[*E(``(@`Jl`~YNJliVH^D^X/a_|[+E(X0b`^|[,E89^ZLi$_h>z[-E\'i$76n^~AwW<_77l^BZ5_aBYGwV*aX8^76m^~CCi$77l^BZ5_aBYGwV*aX8^76m^~CCZ&k`~X-`77l^BZ5_aBYGwV*aX8^76m^~CC^~^YS<_77l^BZ5_aBYGwV*aX8^76m^~C^~^YI^~AwV(_76l^~AwV*_76k^~AwWJ_73^~AwU?_Z2_YT8^z[.E\'i$71Z.^BX0^~Z(^z[/E\'i$75^~YS<^\'i$9HJYJ`l^~YNm`95JQ`l^~YNl`8GJP`l^~YNk`CC^BYT)`ahA:kkk\'i$9HJYJ`l^~YNm`95JQ`l^~YNl`8GJP`l^~YNk`C^~^ZLi$_h?~YI^{[0E\'^BX4`^{[1E71Z.YT.^z[2E\'^BX4k^z[3E\'^BX6n^BX?_`[9Jlh8YS=GZGh8iX11^~^Z-h>^\'w&~Ai&^\'w%~Ai%^\'w$~Ai$^z[4k[5E9HX=X;YJ_^P^z[6E7%`h>C^[$E\'_7-XE:gbwW<_@bN`H_D^D^~F^{i$z[7E#X>bYJ`Q_P^\'_~Ak^{[8E7%a@iX6C^[$E\'_7)CCb7)CCX-c_~i$7)CCb7)CCX-c_~CCKYJak7)CCb7)CCX-c_~CC^~^KQ`k7)CCb7)CCX-c_~C^~^KP_k~^ZLi$_hFDD_@^~F^{i$[$E#::::h.XBngwW<X@kw#wWJlwV(kwV(HZ-iX6_wV({i$z[9E\'`[@?h@??`a_X?k^{[:E9#_iX@7@XA::fX;kw#wWJowV(YD_^ZM^~YS)^7@XA::fX;kw#wWJnwV(YD_^RYH_iS#~ZO^7?X@::eX:kw#wWJkwV(@_D^~F^#a_wV(#::eX:kw2wWJIbkwV(kwV(~Kk^~X*^#aX6m_wV(~YI^#bX7l_wV*X7^~CZ-h@_9#_iX@7@XA::fX;kw#wWJowV(YD_^ZM^~YS)^7@XA::fX;kw#wWJnwV(YD_^RYH_iS#~ZO^7?X@::eX:kw#wWJkwV(@_D^~F^#a_wV(#::eX:kw2wWJIbkwV(kwV(~Kk^~X*^#aX6m_wV(~YI^#bX7l_wV*X7^~C^~^YPiXH^{[;i&[<YT1i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i$i${!UMJJloiW4!W4JmiV5!V5JliW>!W>Jv.iV,!V,JmiVD!VDJliW;!W;JuiVP!VPJmiV&!V&JliV@!V@JkiV<!V<JmiVA!VAJliWG!WGJiV3iW*!W*JmiV;!V;JliUP!UPJv7k!V3IJJJJv4v7uov.vS#!VHZ+mvS#!U,\'cBX\'i%i&b[$E\'i$7)`@^BX+i$`D^~F^{[%E\'i$7+a_7.i$YS4c_YL`H_~AwW/^7+a@_~AwV\'^7.i$YOcR`i-YL`BX,bR_i1H_~AwW)^7-i$aZD_BX-i$aYL_BX-i$aH_~AwU?^\'i$70i$d_BZ,?@``^~^Z8h1_Bi$\'i$70i$d_BZ,?@``^~^Z8h1_BX/_~h17/i$c^~YSOc_YL`H_~AwV%^7-^H_~AwW9^D^~F^7,^\'i$~YSO`^~YI^|[&E\'i$8S:ZM_c~YS)^7)@^BX)D^~F^7*^~YI^z[\'E\'k[,Z*g^zi$i$i$i$|!SO5AZ/ka_^{!T*\'i$\'i$\'i$*DH_wW9~FH^~Z4N^~F@^z]8\'i$98@a_\'^~AD__D_~F_{]*(a^?i&^\'_~Z8`^{!U=7$_C^[$E\'i$7\'@^BZ,i&D^~F^zi$z!SD\'i&(YSD@_?i&DD^~F^z!T<7$Z*Z*Z*Z*YSDCi&7$Z*Z*Z*Z*YSDC^~^dw\'w.w,w+C^[$E7(^\'_~A`^YU,Le_bBYU=^zi${!U+\'^8T<a_~ZI_wUHYT<i&^{!T>\'i&(YT>@_YCD^~F^z]7\'_97a@_96a@^~CYS6D_97a@_96a@^~C^~^AD_wW5D^~F^{!S6*wUJ^5LYPR@`iS6i%~i$*wUJ^5LYPR@`iS6i%~AwV4D^~F^5YPR@`iS6i$~i$*wUJ^5LYPR@`iS6i%~i$*wUJ^5LYPR@`iS6i%~AwV4D^~F^5YPR@`iS6i$~AwWBD^~F^5YS6H^~i$*wUJ^5LYPR@`iS6i%~i$*wUJ^5LYPR@`iS6i%~AwV4D^~F^5YPR@`iS6i$~i$*wUJ^5LYPR@`iS6i%~i$*wUJ^5LYPR@`iS6i%~AwV4D^~F^5YPR@`iS6i$~AwWBD^~F^5YS6H^~Aw5D^~F^z]6\'_(_YC_97_@_~i$(_YC_97_@_~AwW8D_~F_96_@_~i$(_YC_97_@_~i$(_YC_97_@_~AwW8D_~F_96_@_~AwV\'D_~F_Z6a@_D^~F^{!S,8S;k-^(_wV\'~F@^~F^Z6i&^z]F8S,_8C??aZ%_wUN~F^{!S77%i&_C^[$E9FiXP_9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~i$9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~i$9F``7+?c?Na_@`7+?c??i&??Nc@awW/D_@`~F^H^~F@^~AD_wVL~F^D^~F^{i$z!S;(?i&_wW9z!C8S;^8T>_8Ci$8C????i&?NcwW2?@HbwV\'DH`wU?8C?@H`wV\'~ADH`wW5~F@_~AwW2^8Ci$8CH_8C???i&????i&?NewV4wWCwWCwU??i&??i&HawWCwW)~FN_~F@_~AwV4^8Ci%8CH_8C????i&i$?NbwWBH`wU?~FN_~F@_~AwWB^(??i&YCYLb_wV%(??i&YC??Nd@awW/D_wV%~F^H_~AwVL^8S,@_~AwV\'^8C??YONcRaE(??i&H`D_wV%zR`E(?i&i$D^zwW)H_~AwUN^8C?@a8C???i&??Nd@awV)?i&D_~i$8C?@a8C???i&??Nd@awV)?i&D_~F@_~F_wW)H_~AwV)^8S7Na(??i&YS7NcR`E(?i&YCH_D^zwW)~F^^8CC?R`i1???i&a?i&??i&??YS(eRbi-wW/`wUNYL`~YI^H_~AwW)^(??i&YS7Nb_wW/H_~AwW/^(???i&i$(???i&YCZDb~FYS(bYCYLaYCH`wU?~AwU?^(??i&YCYLb_wV%H_~AwV%^8S;H_~AwW9^D^~F^\'^~YI^z!TM\'^Bi$\'^BZ:@^BOiY+~Z&nbBi$\'^Bi$\'^BZ:@^BOiY+~Z&nbBZ:D^BOiY,~Z&mbYT;YSN_?i&i$\'^Bi$\'^BZ:@^BOiY+~Z&nbBi$\'^Bi$\'^BZ:@^BOiY+~Z&nbBZ:D^BOiY,~Z&mbYT;YSN__~F_@_D^YT@_BOiWN{!T;(CRaE(_^D^z(C^~^bYS3i&:MiVGbYT,Ci&(CRaE(_^D^z(C^~^bYS3i&:MiVGbYT,C^~^eai&kkBO_YU+a^YS,^BOiX+{!SN\'^8;_E(H_D^(_^~YI^z~F^z!T@7&i$i&_C^[$E(aZ%_7,c?b_@_7,YOCi&7,YOC^~^d@`a@_~i$7,c?b_@_7,YOCi&7,YOC^~^d@`a@_~AwV=D^~F^D^~F^BOiX-|i$BOiWPz!VG:kw\'wWJ!S4\'_(YS4a@_D^~F^{]/\'^9/Jlb@`^\'`~A_D_~F_|!SM7&^6YSMd@bZJ?Z1bi$`D`^~F_|]\'6b6:Z\'f@dbYS.w+awWJ~F@aD`^|!S.\'_BYTBZ*YS?``^{!U\'#aYS.w,_wWJ\'_~AiVG_{!T+9\'eca6YT+YU\'h2gh/ZJ?Z1h/eh-@f@dZJ?Z1di$b_`DaD_~F_})!SI8T+geab`^}(!S8#`kwV(8J^~i$#`kwV(8J^~i$#`kwV(8J^~i$#`kwV(8J^~Z(YJ^~Aw+Q^~AwWJP^~Z(^z!T%#YS8a_wW<{!T/#a_wWJ#k_wWJ~AiVG_{!6#b`wV(8SIf?i&?bwWC?i&aiX<`8SME8T/h.^Z/kZ1_dz_`~YI_@`8SIgaRbi1Rai-aNaH`~AwW)^9\'c@a_~AwV\'^#YT/eYS.w.b#d~Z4Z1bYS3i&:Z\'iVGNeZJYS4??Z1gi$i$bckYD_wV(H`~AwW/^6`Hdb:a_wU?MdYLb`McZDa_~AwU?^6YT%g``b8S8e6YT%h-aac8S8e~YT*^~^Z8YS?c`~Aa^Z/lZ1b_YLaH`~AwV%^#cHawV(~AwW9^D_~F_#d`wV*#dHH_wV(~i$#d`wV*#dHH_wV(~YT*^~^Z8YS?``Z/kZ1__~YI_|!TB8S1`Q^{]J#YJ`Q__{!W(8J^z!S?-Q^z]189^z!T,#b?i&`^|].8J^z]28:^z!T889^z!S<iTJ]#\'iX2BZ;BZ3_BZ;BO^{]>\'iXM7%YHDa@`C^[$E8M_7)YOYObeYHD_@^~F^{i$YH`Z%^~F^{!U.\'iXEy!U--YU:y!U;8U%YOi&`^{!U%7(_c\'i&~YN_kYDb[$E\'^BZ,b_\'^BZ,a_7/f@dc`BZ,ca7/@fdd`BZ,da~X0`^DbD`~Fa~F`}\'[%E\'_\'^7-d@ba`7-@dbba~X.`^D`D^~F_~F^{[&E7%a_C^[$E71_X2eeX1Ief_7)@`Il^~YU#k^{i$Z+m_\'^BZ,i&^~YNl_{i$i$i${]:9;BZ3^z!U&7$i&C^[$E7(?`^8MZ%_~CAf_7(?`^8MZ%_~C^~^ZC^Sbzi${!=0G`iY*_0__~YNvR$YS#Z@IlZ$`_\'^~YNkZ$_{!T:7$IlZ$_C^[$E7\'Il^9KJl`kb~YNvR$YS#Z@_b\'iY$~Kk^zi$z!U57$IlZ$_C^[$E7\'Il^9KZ$d_b~YNvR#YS#Z@_b\'iX)~Kk^zi$z]=9LYT\'`_iV8z]N\'^BYT)b_iV8YS=^GZGYU)iV8iWLz!V8YT1!U<-^z!U)8DD^z!T)8S1?Da?ca_9,b^~^ZID__|]L\'a)^~^ZID__|!T1(i&i&y!W18U(^z!VK8SAly!VO8SAky!U:(i&iX/y!B\'_BOiX9BO^BOiY/BOiX$BOiXN{!VB\'i$z!UI\'i$z]#8SAlBZ;BZ3_BOiY&BO^{!U08U0BZ;BZ3YTG^9;~ZC^ZABZEvCvR3y!TG7#YTI^z!TI.7&i&yM_i&z]/\'^9/Jlb@`^\'`~A_D_~F_|]\'\'^.7\'^BX(^zZ\'@a_~F@`MD`^{!S0(i&^z!S*(YS0`^{!S-(YS*b`^|]9(YS-ca_wU?|!6.\'bz9#diX=.7&X*aX*`X*_X,^zYLaH`D_~A_n.7%X)`X)_X+^zH`D_~A_m.7$X(_X*^zD_~A_l.7#X)^z~A_kYD^R@bE6_czM__6i$6Z9?NdwW2?@HcwV\'DHa6?@HbwV\'~ADHbwW5~F@a_~AwW2^6i$6C^6CYS-Z9?NgwV4wW@wW@YS0YS*`wW@wW)~FNbHa~F@a_~AwV4^6i%6C^6CZ9i$?NdwWB^~FNbHa~F@a_~AwWB^.7\'?_X)^zZ\'Nd^?bD_MH_`DH`~AwW)^9\'@a_~AwV\'^9#eiXF..7-???fb`^|z~A_n..7,??d`^{z~A_m..7+?b^zz~A_l..7*`yz~A_kYD`Z\'Nc^YOa^H`~AwW/^.7\'^7(^~X)^zMZDcaMYLb`MHa_~AwU?^.8S$X)`c^z.8GX(_bz~Z(_MYLb`Z/k`H`~CAwVL_9#diX=.7&X*aX*`X*_X,^zYLaH`D_~A_n.7%X)`X)_X+^zH`D_~A_m.7$X(_X*^zD_~A_l.7#X)^z~A_kYD^R@bE6_czM__6i$6Z9?NdwW2?@HcwV\'DHa6?@HbwV\'~ADHbwW5~F@a_~AwW2^6i$6C^6CYS-Z9?NgwV4wW@wW@YS0YS*`wW@wW)~FNbHa~F@a_~AwV4^6i%6C^6CZ9i$?NdwWB^~FNbHa~F@a_~AwWB^.7\'?_X)^zZ\'Nd^?bD_MH_`DH`~AwW)^9\'@a_~AwV\'^9#eiXF..7-???fb`^|z~A_n..7,??d`^{z~A_m..7+?b^zz~A_l..7*`yz~A_kYD`Z\'Nc^YOa^H`~AwW/^.7\'^7(^~X)^zMZDcaMYLb`MHa_~AwU?^.8S$X)`c^z.8GX(_bz~Z(_MYLb`Z/k`H`~C^~^AwV%^.\'azH`~AwW9^D_~F_.8S>b^z\'jD~An^\'iL~Am^\'i1~Al^\'i-~Ak^.89az~Z(^Z/k__~YI_{]E8F_BYF^{];8Fuy!UDiF])\'i$9)a@_BYF^9)a@_BYF^BYFvS#~CAvS#_9)a@_BYF^9)a@_BYF^BYFvS#~C^~^AvE^9)a@_BYFvS;BYFvS#~At^9)a@_BYFvS9BYFvS#~Av0^9)a@_BYFvS5BYFvS#~Au^9)a@_BYF^~L`D^~F^{!T#\'i$\'i$8T#@^BZ3D^~F^BYFvC~F^z!888ZG^9EvS7vF~YTJ^93ZM^BYFvF~YS)^9)i$YH^~ZO^88YT\'^~YI^8FvLBYT#@^BZ3D^BYFvK~F^9EvLvK~Z4^9EvS;vF~Ai%^9EvS-vF~L^z]388^8FvEBZ)i%YH^BYFvE~ZO^z!T$8T$8S%~Au^\'^~Kk^Sy!S%8S%BS\'^8T$~AvR0^~K_vC\'iX4~ZC^Z<y]?9??`^9??a^9??at~AvS;^9??av0~AvS9^9??au~AvS5^S~AvS#^9%_~AvE^\'i&~ZC^Sz]P(ZP^BS\'i&~CCKvD`(ZP^BS\'i&~CC^~^AvL_(ZP^BS\'i&~C^~^AvK^Z<y!SP(YSP^ZA\'i&BS~AvL^YS%y!K\'_8KIIvRL_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~KvS.^~K_vS\'8KIIvR,_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~KvS.^~K_vS\'8KIIvR,_YE`v3BS~KvR<^~K_vR58KIIvR%_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~KvS.^~K_vS\'8KIIvR,_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~i$\'_8KIIvRL_YE`v3BS~KvS.^~K_vS\'8KIIvR,_YE`v3BS~KvR<^~K_vR58KIIvR%_YE`v3BS~KvR/^~K_vR$Z<z]A8S=`\'^~^^YTN^YM?ZP^BS8MZ?i&BS~AvE^(?i&ZAwW9BS~AvJ^8S+ZA2YKkk8KkBS~AvP^Z<BS~CAvRM_8S+ZA2YKkk8KkBS~AvP^Z<BS~C^~^AvS?^\'i%BS~AvS;^\'i$BS~AvS-^Z<BS~AvF^8SPBS~AvK^\'^~Kk^YS%y]<\'^!V2^Sy!T0\'^!V2iX3\'^~AiX4^!V2^z!<8T0^8T0YU7~AiX3^\'^~AiX4^iV2y!V2iX3]C*iX4^z!W07%E\'_BZHYJc^BYGPc^QQEi$zQQEi$z!S:\'i$8S:@`^BX$D_~F_{!;\'i&(R@a_X$D_~F_{!V#i:!T.i9!S3#l`^{!TJZBl!W?8GYS\'aQ_^{!V18S+YS\'k^z!W+8S$b`P^|!U@8S>`P^{!WIi:]Mi9!S+#oYD_^z!S)ZBo!UK8GYS\'aQ_^{!VM8MYOi&YH^z!08MYOYH`YH^{!T58Ma8T5?fZ@bb`a_Il`~Ka_}\']K8T5i&b`^|!T3\'k\'iX4~F_\'l8T3@b@`\'l~K`^\'iX4~K__D`D^~F_~F^{!S58T3YH`YH^{!UO5YTC`^{!WH5YTE`^{!TE4YS5a_k{!TC4kYS5`^{!T-*kYS5`^{!VJ8MYS\'vC^z!V08S$b`P^|]@8S>`P^{]$i:!Hi9!M#nYD_^z]OZBn!T6i\'!S#i\'!WEj&!VEiTH!W\'iU#!UFi4!U*i*!T4\'_\'i$\'i$8T4IIvR%`YEbu@_~KvR/^~K_vR$D^~F^{!T=8T4k^\'i$~Z4^z!TN\'i$2_k~^YT=^8T=@^~AvPD^\'i$~Z4^YH^z!S/\'^8S/_`~Kak?b^JIYEu``vR%Z+u^{]G8MYS/i&^8M?YS/i&I`kvP~Kk^z!U6\'^8E__~YU8`YU6Z+m`YE_^\'l~Ak_{!VCi\'!V:i\'!VFi\'!W#i\'!V>\'lz!W&i\'!W:8E_Z+YU2``_YS&`YS&^\'k~Ak_{!S@8S@_YTD__\'_~Ak^{!U28S@`^8S@__~K__YS&`YS&^{!W63b^\'^~AKkbKk`\'k~Ak^IYE`a_Z+`^{!TD2YEZ+b``^{!S&\'^2_k~Kk^z!V?\'_\'^~K`^{!W7\'^\'_~K`^{!U85YTK^z!TK*YEZ+m`m^z!VI4k^z!UC4_kz!UB*k^z]&5K`^{!TH5K__{!U#4__{!Ni*!U45Z(^zBZ5ki#!UHQi#!T?\'^!UH?iUH^YTP^8T?Qa_\'^~U`Q^P_~F_{!S=8T?iUH^z!UGiG!V.i9!T\'i:!TP#m_i$z!IZBm!SJ\'`8SJ?ca`Il^~K_k|!S\'8SJi&`^{]I\'i$9I@a_\'^~UD__D_~F_{]-iTL!TL\'i$8TL@a_\'^~AD__D_~F_{!T7\'i$8T7@`^\'_~UD`^~F_{!V/iP!P\'i$8P@`^\'_~AD`^~F_{!SB\'^8SBIl`@^~K`k{!S$8S1aYSB`^|!S>-YSB`^{!SG\'_8SG?aD_@^~F^{]%8SGi&^z!O\'_(YOa@_D^~F^{!D\'k3YD@_l~F^z!SE94^94^8SE@a@^~F^\'i$~YTOa^@^~F^{!W%8SE_^z]4*i&^z!W$8S(Q^z!W38S(P^z!W.8SFQ^z!V-8SFP^z!V+8SHQ^z!UL8SHP^z!W=8T9Q^z!WD8T9P^z!V78LP^z!W-8T2Q^z!W,8T2P^z!UA8SLQ^z!V98SLP^z!V68T&Q^z!WF8T&P^z!S(87Q^z!SF87P^z!SH8T(Q^z!T98T(P^z!T21P^z!SL8SKQ^z!T&8SKP^z!T(8:P^z!SK89P^z]D8LQ^z!L1Q^z!78:Q^z!189Q^z],j5!S1iG!)i:!-i9!(#k`^{!/ZBk!>\'i$\'i$\'i$\'i$8>PaP_~UQaQ_~UYJaYJ_~Z(`\'i$~ApYJ_~Z(_\'^~^A`^{!TOi*!WA5_\'^~^Ai%^z!5*i$^z]B.\'i$*bYJ^~Z(^zz!Y\':nn:k:k:ki&vS4vS=vS9!Y0:nl:ki&vP!X%:nki&!X0:np:k:k:k:k:ki&vR#vS4vS=vS9vR$!X::np:k:k:k:k:ki&vR$vS;vS:vS6vS/!XC:nki&!XK:nv::k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS4vS(vS9vS.vS6vS9vS7vCvS,vS/vS;vCvS-vS6vCvS,vS+vS6vS*vCvRBvRKvRG!XD:nv>:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vDvRDvRAvRAvR:vR=vCvS:vS;vS5vS0vS9vS7vCvS;vS(vS/vS;vCvS,vS+vS6vS*vCvRBvRKvRG!X;:nl:ki&vO!Y%:nl:ki&vO!XL:nl:ki&vC!WO:nl:ki&vC!Y-:nvR$:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS@vR+vS=vS2vS3vR/vJvDvS4vS2vS3vR/vKvDvR2vRGvS=vR3vR4vR/vRGvS=vR3vR4vR6vRGvS=vR3vR4vR6vRGvS=vR3vR4vR9vRGvS=vR3vR4vR9vS=vR3vR4vS<vJvR0vL!X7:nn:k:k:ki&vS4vS=vS9!X,:nr:k:k:k:k:k:k:ki&vS@vS-vS0vS5vS0vS4vR$!XI:np:k:k:k:k:ki&vR$vS;vS:vS6vS/!XA:nn:k:k:ki&vS4vS=vS9!WK:nr:k:k:k:k:k:k:ki&uvS:vS,vS;vS@vS)vC!X(:nv8:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vCvR/vS/vS;vS.vS5vS,vS3vCvS,vS+vS6vS*vCvRBvRKvRGvCvMvMvM!Y#:nki&!Y):nn:k:k:ki&vS4vS=vS9!XB:nl:ki&vP!XJ:nn:k:k:ki&vS)vS0vS3!X.:no:k:k:k:ki&vS4vS*vS:vR#!X8:nki&!Y.:nl:ki&vR0!X#:nl:ki&vO!X&:nki&!Y1:nki&!Y(:nki&!XO:k:k:k:ki&w&w%w$w#!XG:nv/:k:k:k:k:k:k:k:k:k:k:k:ki&vS+vS,vS;vS*vS,vS7vS?vS,vCvS)vS0vS9!X?:nu:k:k:k:k:k:k:k:k:k:ki&vS7vS6vCvS5vS>vS6vS5vS2vS5vS<!X>:nv5:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS:vS5vS6vS*vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X5:nv3:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS,vS.vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X*:nv3:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS,vS:vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!WM:nv4:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS3vS3vS(vS*vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X\':nv4:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS7vS4vS<vS1vCvS,vS+vS6vS*vS5vS,vCvS;vJvS5vS(vS*!X1:nl:ki&vS&!X6:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&:k:ki&v7wSA:k:ki&v6wF:k:ki&v5wU7:k:ki&v4x+:k:ki&v3wE:k:ki&v2w2:k:ki&v1w3:k:ki&v0w4:k:ki&v/w*:k:ki&v.xH:k:ki&ux5:k:ki&twG:k:ki&swJ:k:ki&rw::k:ki&qw9:k:ki&px(:k:ki&ow.:k:ki&nw,:k:ki&mw+:k:ki&lw\':k:ki&kw#!X@:nv7:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS;vS5vS(vS;vS:vS5vS6vS*vCvS+vS3vS0vS<vS)vCvS;vJvS5vS(vS*!XH:k:k:ki&i&i%i$!XP:ki&k!Y+:nv0:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR/vS:vS;vS9vS6vS7vS?vS,vCvMvMvM!Y,:nv1:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR/vS,vS+vS6vS*vCvRBvRKvRGvCvMvMvM!WN:nv?:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS5vS6vS0vS;vS(vS3vS0vS7vS4vS6vS*vCvS(vS3vCvS,vS+vCvS;vS<vS)vS,vS+vCvS;vS<vS6vRI!X+:nvR#:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS;vS9vS6vS7vS?vS,vPvS/vS;vS0vS>vPvS:vS9vS7vS?vS,vPvS7vS4vS6vS*vCvS,vS+vCvS;vS<vS)vS,vS+vCvS<vS(vCvS+vS5vS,vS9vCvS,vS:vCvS5vRD!X-:nv1:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS,vS3vS*vS<vS6vS)vCvS(vS3vCvS:vS5vS(vR9!WP:nvR$:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS5vS0vS6vS4vCvS<vS(vCvS:vS;vS9vS6vS7vS?vS,vPvS;vS*vS(vS9vS;vS?vS,vCvS<vS+vCvS;vS<vS)vS,vS+vCvS<vS(vCvS+vS5vS,vS9vCvS,vS:vCvS5vRD!X<:ki&wWC!X2:k:k:k:ki&:ki&wUEi&wUEwW)!XM:nki&!XE:nki&!Y*:nl:ki&vR$!Y$:nm:k:ki&vR$vR#!X):nki&!WL:nn:k:k:ki&vR5vR5vR5!X/:nki&!X9:nv.:k:k:k:k:k:k:k:k:k:k:ki&uvR#vS@vS3vS3vS(vS<vS5vS(vS4vC!Y/:nvE:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vCvS.vS5vS0vS5vS5vS<vS9vCvS@vS9vS;vCvS6vS;vCvS;vS5vS(vS>vCvS;vS/vS.vS0vS4vCvS<vS6vRNvCvMvMvM!X$:nvO:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvR#vS+vS,vS0vS-vS0vS5vS0vS4vCvS;vS6vS5vCvS:vS(vS>vCvS,vS+vS6vS*vCvS+vS,vS;vS(vS9vS,vS5vS,vS.vCvS,vS/vS;vCvS6vS:vCvMvMvM!XN:nvR/:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&uvS4vS,vS;vS:vS@vS:vCvS,vS4vS,vS/vS*vRHvCvS:vS0vS/vS;vCvS/vS;vS0vS>vCvS+vS,vS;vS9vS6vS7vS7vS<vS:vCvS;vS6vS5vCvS:vS0vCvS5vS6vS0vS;vS(vS*vS0vS-vS0vS5vS0vRBvCvMvMvM!Y&:nl:ki&vC!X=:nv5:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS;vS5vS,vS4vS<vS.vS9vS(vCvS@vS5vS(vS4vCvS6vS6vS;!XF:nv6:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:k:ki&vS:vS9vS,vS;vS,vS4vS(vS9vS(vS7vCvS@vS5vS(vS4vCvS6vS6vS;!X3Imk!X4Ilk!\':lkl!+:lkm!,:lkn!.:lko](:lkp!9:lkq!::lkr!J:lks!G:lkt]5:lku]H:lkv.!*:lkv/!4:lkv0!3:lkv1!2:lkv2!E:lkv3]+:lkv4!U7:lkv5!F:lkv6!SA:lkv7y" -- RVM code that prints HELLO!


----------------------
-- Helper functions --
----------------------
error : String -> HasIO io => io (a)
error str = do putStrLn ("*** error : " ++ str)
               exitFailure

getAndIncrement : IORef Int -> HasIO io => io (Int)
getAndIncrement ref = do v <- readIORef ref
                         modifyIORef ref (+ 1)
                         pure v

--------------------
-- Rib Definition --
--------------------
mutual
 -- DELICIOUS RIBS
 data Rib = RInt Int | RRef (IORef RibContainer)
 record RibContainer where
     constructor MakeRibContainer
     id : Int
     -- We called the third field c(g)r because a(1) --+3--> d(4) --+3--> g(7)
     car, cdr, cgr : Rib

(==) : Rib -> Rib -> HasIO io => io Bool
(==) (RInt n) (RInt m) = do pure (n == m)
(==) (RRef ref1)  (RRef ref2) = do rib1 <- readIORef ref1
                                   rib2 <- readIORef ref2
                                   pure (rib1.id == rib2.id)
(==) _ _  = do pure False


MakeRib : IORef Int ->  Rib -> Rib -> Rib -> HasIO io => io (Rib)
MakeRib ribCounter e1 e2 e3 = do v <- getAndIncrement ribCounter
                                 ref <- newIORef (MakeRibContainer v e1 e2 e3)
                                 pure (RRef ref)

eb2 : Int
eb2 = 46

getByte : IORef Int -> HasIO io => io (Int)
getByte posRef = do pos <- getAndIncrement posRef
                    pure (cast {to=Int} (assert_total (strIndex input pos)))

getCode : Int -> Int
getCode b =
  let x = b - 35 in
  if x < 0 then 57 else x

getInt : IORef Int -> HasIO io => Int -> io (Int)
getInt posRef n = do
  x <- (getByte posRef)
  let x = getCode x
  let y = n * eb2   --  <- pure (n * eb2)
  if x < eb2 then
    pure (y + x)
   else
    getInt posRef (y + (x - eb2))




rPairType : Int
rPairType = 0

rProcedureType : Int
rProcedureType = 1

rSymbolType : Int
rSymbolType = 2

rStringType : Int
rStringType = 3

rVectorType : Int
rVectorType = 4

rSingletonType : Int
rSingletonType = 5

rToInt : Rib -> HasIO io => io (Int)
rToInt (RInt n) = do pure n
rToInt _ = do error "Cannot cast rib to int"

rIsInstance : Int -> Rib -> HasIO io => io (Bool)
rIsInstance type (RRef rib) =
  do rib <- readIORef rib
     val <- rToInt rib.cgr
     pure (val == type)
rIsInstance _ _ = do pure False

rIsPair : Rib -> HasIO io => io Bool
rIsPair = rIsInstance rPairType

rId : Rib -> HasIO io => io Int
rId (RRef rib) = do v <- readIORef rib
                    pure (RibContainer.id v)
rId _ = do error "Cannot id on number"

rCar : Rib -> HasIO io => io Rib
rCar (RRef rib) = do v <- readIORef rib
                     pure (RibContainer.car v)
rCar _ = do error "Cannot car on number"

rCdr :  Rib -> HasIO io => io (Rib)
rCdr (RRef rib) = do v <- readIORef rib
                     pure (RibContainer.cdr v)
rCdr _ = do error "Cannot cdr on number"

-- extension to acces the third field
rCgr : Rib -> HasIO io => io Rib
rCgr (RRef rib) = do v <- readIORef rib
                     pure (RibContainer.cgr v)
rCgr _ = do error "Cannot cgr on number"

rListTail : Rib -> Int -> HasIO io => io (Rib)
rListTail rib i =
  if 0 < i then -- we took 2h to find that its i < 0 instead of 0 < i...
        do
           cdr <- rCdr rib
           rListTail cdr (i - 1)
   else
     do pure rib

rLength : Rib -> HasIO io => io (Int)
rLength list = do
  isPair <- rIsPair list
  if isPair
    then do
       cdr <- rCdr list
       l <- rLength cdr
       pure (1 + l)
    else do pure 0

-----------
-- State --
-----------

record State where
  constructor MkState
  true : Rib
  false : Rib
  nil : Rib
  pos : IORef Int
  globalCounter : IORef Int
  symtbl : Rib

-- really not optimal...
toString : State -> Rib -> IORef (List Int) -> HasIO io => io (String)
toString state (RInt n) _ = do pure (cast n)
toString state rib seen = do isNil <- rib == state.nil
                             isTrue <- rib == state.true
                             isFalse <- rib == state.false

                             if isNil
                                then do pure "RNIL"
                                else if isTrue
                                  then do pure "RTRUE"
                                  else if isFalse
                                    then do pure "RFALSE"
                                    else do car <- rCar rib
                                            cdr <- rCdr rib
                                            cgr <- rCgr rib
                                            id <- rId rib
                                            seenLst <- readIORef seen
                                            if elem id seenLst
                                              then if id > 99 then do pure ("#:" ++ (cast id)) else if id > 9 then do pure ("#: " ++ (cast id)) else do pure ("#:  " ++ (cast id))
                                              else do modifyIORef seen (\x => (id :: x))
                                                      scar <- toString state car seen
                                                      scdr <- toString state cdr seen
                                                      scgr <- toString state cgr seen
                                                      pure (
                                                       --"#:" ++ (cast id) ++
                                                       "[" ++ scar ++ ", " ++ scdr ++ ", " ++ scgr ++ "]")


print : State -> Rib -> HasIO io => io ()
print state rib = do x <- newIORef ([0, 0, 0])
                     str <- toString state rib x
                     putStrLn ("" ++ str ++ "\n")



rStringToUninternedSymbol : State -> Rib -> HasIO io => io (Rib)
rStringToUninternedSymbol state string = MakeRib state.globalCounter state.false string (RInt rSymbolType)

rListToString : State -> Rib -> HasIO io => io (Rib)
rListToString state list = do l <- rLength list
                              MakeRib state.globalCounter list (RInt l) (RInt rStringType)

rCons : State -> Rib -> Rib -> HasIO io => io (Rib)
rCons state car cdr = MakeRib state.globalCounter car cdr (RInt rPairType)


rIsRib : Rib -> Bool
rIsRib (RRef _) = True
rIsRib (RInt n) = False

setCar : Rib -> Rib -> HasIO io => io ()
setCar (RRef stack) newval = do ref <- readIORef stack
                                let v = (MakeRibContainer ref.id newval ref.cdr ref.cgr )
                                writeIORef stack v
                                --modifyIORef stack (\ref => { car := newval } ref)
setCar _ _ = do error "First argument of setcar is not a rib"

setCdr : Rib -> Rib -> HasIO io => io ()
setCdr (RRef stack) newval = do ref <- readIORef stack
                                let v = (MakeRibContainer ref.id ref.car newval ref.cgr )
                                writeIORef stack v
setCdr _ _ = do error "Second argument of setcar is not a rib"

setCgr : Rib -> Rib -> HasIO io => io ()
setCgr (RRef stack) newval = do ref <- readIORef stack
                                let v = (MakeRibContainer ref.id ref.car ref.cdr newval)
                                writeIORef stack v
setCgr _ _ = do error "Third argument of setcar is not a rib"

rSetRef : Rib -> Rib -> HasIO io => io()
rSetRef (RRef elem1) (RRef elem2) = do v <- readIORef elem2
                                       writeIORef elem1 v
                                       putStrLn "Ref has been modified"
                                       --modifyIORef elem1 (\ref => v)
rSetRef _ _ = do error "Cannot setref of non ref elements"

rToRef : Rib -> HasIO io => io (IORef RibContainer)
rToRef (RRef rib) = do pure rib
rToRef _ = do error "cannot cast int to IORef"

------------------
-- Symbol table --
------------------

addSymbol : State -> Rib -> Rib -> HasIO io => io (Rib)
addSymbol state chars symtbl = do lst <- rListToString state chars
                                  sym <- rStringToUninternedSymbol state lst
                                  rCons state sym symtbl


buildChar : State -> Rib -> Rib -> HasIO io => io (Rib)
buildChar state chars symtbl = do x <- getByte state.pos
                                  if x == 44
                                    then do sym <- addSymbol state chars symtbl
                                            buildChar state state.nil sym
                                    else if x == 59
                                      then addSymbol state chars symtbl
                                      else do r <- rCons state (RInt x) chars
                                              buildChar state r symtbl

buildSymtbl : State -> Int -> Rib -> HasIO io => io (Rib)
buildSymtbl state n symtbl = if 0 < n
                                then do sym <- addSymbol state state.nil symtbl
                                        buildSymtbl state (n - 1) sym
                                else do buildChar state state.nil symtbl


---------------------------
-- Inscturction decoding --
---------------------------


sym : State -> Int -> HasIO io => io Rib
sym state n = do tail <- rListTail state.symtbl n
                 r <- rCar tail
                 --print state r
                 rCar tail

ins : List Int
ins = [20, 30, 0, 10, 11, 4]

unsafeIndex : List Int -> Int -> Int
unsafeIndex lst n = case lst of
    (head :: tail) => if n == 0 then head else unsafeIndex tail (n-1)
    _ => -1

mutual
  addInstruction : State -> Rib -> Rib -> Rib -> HasIO io => io (Rib)
  addInstruction state op opnd stack = do oscar <- rCar stack
                                          newRib <- MakeRib state.globalCounter op opnd oscar
                                          setCar stack newRib
                                          decodeStack state stack

  decodeStackAux : State -> Int -> Int -> Int -> Rib -> HasIO io => io Rib
  decodeStackAux state op n x oriStack =
    let d = (unsafeIndex ins op) in
        if d + 2 < n
             then decodeStackAux state (op+1) (n-(d+3)) x oriStack
             else
               if 90 < x then
                 do cdrStack <- rCdr oriStack
                    carStack <- rCar oriStack
                    addInstruction state (RInt 4) carStack cdrStack
               else
                 do stack <- if op == 0 then rCons state (RInt 0) oriStack else do pure oriStack
                    opnd <- if (n < d)
                               then if (op < 3)
                                    then sym state n
                                    else do pure (RInt n)
                               else if n == d
                                    then do v <- getInt state.pos 0
                                            pure (RInt v)
                                    else do v <- getInt state.pos ((n - d) - 1)
                                            sym state v
                    if 4 < op
                      then do scar <- rCar stack
                              inter <- MakeRib state.globalCounter opnd (RInt 0) scar
                              proc <- MakeRib state.globalCounter inter state.nil (RInt rProcedureType)
                              stack <- rCdr stack
                              if rIsRib stack
                                then do (addInstruction state (RInt 3) proc stack)
                                else do pure proc
                      else do addInstruction state
                                             (if (0 < op) then (RInt (op - 1)) else (RInt 0))
                                             opnd
                                             stack

  decodeStack : State -> Rib -> HasIO io => io Rib
  decodeStack state stack = do x <- (getByte state.pos)
                               let x = getCode x

                               decodeStackAux state 0 x x stack


----------------
-- Primitives --
----------------

prim3 : State -> (Rib -> Rib -> Rib -> HasIO io => io Rib) -> Rib -> HasIO io => io Rib
prim3 state foo stack = do z <- rCar stack
                           stack <- rCdr stack
                           y <- rCar stack
                           stack <- rCdr stack
                           x <- rCar stack
                           stack <- rCdr stack
                           newVal <- foo x y z
                           rCons state newVal stack

prim2 : State -> (Rib -> Rib -> HasIO io => io Rib) -> Rib -> HasIO io => io Rib
prim2 state foo stack = do y <- rCar stack
                           stack <- rCdr stack
                           x <- rCar stack
                           stack <- rCdr stack
                           newVal <- foo x y
                           rCons state newVal stack


prim1 : State -> (Rib -> HasIO io => io Rib) -> Rib -> HasIO io => io Rib
prim1 state foo stack = do x <- rCar stack
                           stack <- rCdr stack
                           newVal <- foo x
                           rCons state newVal stack

prim1Pure : State -> (Rib -> Rib) -> Rib -> HasIO io => io Rib
prim1Pure state foo stack = do x <- rCar stack
                               stack <- rCdr stack
                               let newVal = foo x
                               rCons state newVal stack

prim2Pure : State -> (Rib -> Rib ->  Rib) -> Rib -> HasIO io => io Rib
prim2Pure state foo stack = do y <- rCar stack
                               stack <- rCdr stack
                               x <- rCar stack
                               stack <- rCdr stack
                               let newVal = foo x y
                               rCons state newVal stack

prim0 : State -> Rib -> Rib -> HasIO io => io Rib
prim0 state return stack = do rCons state return stack

opRInt : (Int -> Int -> Int) -> Rib -> Rib -> Rib
opRInt op (RInt n) (RInt m) = (RInt (op n m))
opRInt _ _ _ = (RInt (0 - 999)) --lol

rEqv : State -> Rib -> Rib -> HasIO io => io Rib
rEqv state x y = do isTrue <- (x == y)
                    if isTrue then do pure state.true else do pure state.false

lessthan : State -> Rib -> Rib -> HasIO io => io Rib
lessthan state (RInt n) (RInt m) = if n < m then do pure state.true else do pure state.false
lessthan _ _ _ = do error "Less than on ribs (non-numbers)"

arg1 : Rib -> Rib -> HasIO io => io Rib
arg1 x y = do pure x

arg2 : Rib -> Rib -> HasIO io => io Rib
arg2 x y = do pure y

close : State -> Rib -> HasIO io => io Rib
close state stack = do x <- rCar stack
                       stack <- rCdr stack
                       xCar <- rCar x
                       newRib <- MakeRib state.globalCounter xCar stack (RInt rProcedureType)
                       rCons state newRib stack

setAndReturn : (Rib -> Rib -> HasIO io => io ()) -> Rib -> Rib -> HasIO io => io Rib
setAndReturn foo x y = do foo x y
                          pure y

writeAndReturn : Rib -> HasIO io => io Rib
writeAndReturn rib = case rib of
                      RInt n => do let x = (cast {to=Char} n)
                                   putChar x
                                   pure rib
                      _ => do error "this is bad :/"

primitive : State -> Int -> Rib -> HasIO io => io Rib
primitive state 0 stack = do let globalCounter = state.globalCounter
                             ribCreator <- pure (MakeRib globalCounter)
                             prim3 state ribCreator stack
primitive state 1 stack = do pure stack
primitive state 2 stack = do rCdr stack
primitive state 3 stack = do prim2 state arg2 stack
primitive state 4 stack = do close state stack

primitive state 5 stack = do prim1Pure state (\x => if rIsRib x then state.true else state.false) stack
primitive state 6 stack = do prim1 state rCar stack
primitive state 7 stack = do prim1 state rCdr stack
primitive state 8 stack = do prim1 state rCgr stack
primitive state 9 stack = do foo <- pure (setAndReturn setCar)
                             prim2 state foo stack
primitive state 10 stack = do foo <- pure (setAndReturn setCdr)
                              prim2 state foo stack
primitive state 11 stack = do foo <- pure (setAndReturn setCgr)
                              prim2 state foo stack
primitive state 12 stack = do foo <- pure (rEqv state)
                              prim2 state foo stack
primitive state 13 stack = do foo <- pure (lessthan state)
                              prim2 state foo stack
primitive state 14 stack = do prim2Pure state (opRInt (+)) stack
primitive state 15 stack = do prim2Pure state (opRInt (-)) stack
primitive state 16 stack = do prim2Pure state (opRInt (*)) stack
primitive state 17 stack = do prim2Pure state (opRInt div) stack
primitive state 18 stack = do pos <- readIORef state.pos
                              if pos < strLength input
                                then do v <- getByte state.pos
                                        if v == 255
                                          then do prim0 state (RInt (-1)) stack
                                          else do prim0 state (RInt v) stack
                                else do x <- getChar
                                        let v = (cast {to=Int} x)
                                        if v == 255
                                          then do prim0 state (RInt (-1)) stack
                                          else do prim0 state (RInt v) stack
primitive state 19 stack = do prim1 state writeAndReturn stack



primitive _ n _ = do error ("Primitive #" ++ (cast n) ++ " is not yet implemented ")

-------------------
-- Globals setup --
-------------------

setGlobal : Rib -> Rib -> HasIO io => io (Rib)
setGlobal symtbl val = do symCar <- rCar symtbl
                          setCar symCar val
                          rCdr symtbl

setupGlobal : State -> HasIO io => io (Rib)
setupGlobal state =
  do primitive0 <- MakeRib state.globalCounter (RInt 0) state.symtbl (RInt rProcedureType)
     let symtbl = state.symtbl
     symtbl <- setGlobal symtbl primitive0
     symtbl <- setGlobal symtbl state.false
     symtbl <- setGlobal symtbl state.true
     setGlobal symtbl state.nil

-----------------------
-- Runtime execution --
-----------------------

getCont : Rib -> HasIO io => io Rib
getCont stack = do stackCgr <- rCgr stack
                   stackCdr <- rCdr stack
                   if rIsRib stackCgr
                    then do pure stack
                    else do getCont stackCdr

getVar : Rib -> Rib -> HasIO io => io Rib
getVar stack (RInt n) = do stackTail <- rListTail stack n
                           stackTailCar <- rCar stackTail
                           pure stackTailCar
getVar stack opnd = do rCar opnd

setVar : Rib -> Rib -> Rib -> HasIO io => io ()
setVar stack (RInt n) val = do stackTail <- rListTail stack n
                               stackTailCar <- rCar stackTail
                               setCar stackTailCar val
setVar stack opnd val = do setCar opnd val


mutual
  lmdaCall : State -> Rib -> Rib -> Int -> Rib -> Rib -> Rib -> Int -> HasIO io => io ()
  lmdaCall state code next nargs newStack newCont stack id =
    do let isNextRib = rIsRib next
       if 0 < nargs
          then do let nextNargs = nargs - 1
                  stackCar <- rCar stack
                  stackCdr <- rCdr stack
                  superNewStack <- rCons state stackCar newStack
                  lmdaCall state code next nextNargs superNewStack newCont stackCdr id
          else if isNextRib
                  then do setCar newCont stack
                          setCgr newCont next
                          codeCgr <- rCgr code
                          run state codeCgr newStack (id + 1)

                  else do k <- getCont stack
                          k0 <- rCar k
                          k2 <- rCgr k
                          setCar newCont k0
                          setCgr newCont k2
                          codeCgr <- rCgr code
                          run state codeCgr newStack (id + 1)


  run : State -> Rib -> Rib -> Int -> HasIO io => io ()
  run state pc stack id =
    do instr <- rCar pc
       opnd <- rCdr pc
       next <- rCgr pc
       v <- (rToInt instr)

       case instr of
        RInt 0 => do proc <- getVar stack opnd --Jump/Call
                     code <- rCar proc
                     codeIsRib <- pure (rIsRib code)
                     if codeIsRib
                       then do
                               ribCreator <- pure (MakeRib state.globalCounter) --lambda
                               newCont <- ribCreator (RInt 0) proc (RInt 0)
                               codeCar <- rCar code
                               codeCarInt <- rToInt codeCar
                               lmdaCall state code next codeCarInt newCont newCont stack id
                       else do codeInt <- rToInt code
                               stack <- primitive state codeInt stack --primitive
                               nextIsRib <- pure (rIsRib next)
                               output <- if nextIsRib
                                 then do pure next
                                 else do cont <- getCont stack
                                         contCar <- rCar cont
                                         setCdr stack contCar
                                         rCgr cont
                               run state output stack (id + 1)
        RInt 1 => do stackCar <- rCar stack --Set
                     stackCdr <- rCdr stack
                     setVar stack opnd stackCar
                     run state next stackCdr (id + 1)
        RInt 2 => do opndVar <- getVar stack opnd --Get
                     newStack <- rCons state opndVar stack
                     run state next newStack (id + 1)
        RInt 3 => do newStack <- rCons state opnd stack --Const
                     run state next newStack (id + 1)
        RInt 4 => do stackCar <- rCar stack --If
                     stackCdr <- rCdr stack
                     isFalse <- stackCar == state.false
                     if isFalse
                       then do run state next stackCdr (id + 1)
                       else do run state opnd stackCdr (id + 1)
        RInt 5 => do putStr ""
        _ => do error "Unknown instruction"


--------------------------------------
-- Decode instructions and run them --
--------------------------------------

decodeAndRun : IO ()
decodeAndRun = do
  globalCounter <- newIORef 0 -- only used for the ribCreator
  ribCreator <- pure (MakeRib globalCounter)

  true <- ribCreator (RInt 0) (RInt 0) (RInt rSingletonType)
  false <- ribCreator (RInt 0) (RInt 0) (RInt rSingletonType)
  nil <- ribCreator (RInt 0) (RInt 0) (RInt rSingletonType)

  pos <- newIORef 0
  let symtbl = nil

  -- Create state
  let state = MkState true false nil pos globalCounter nil

  v <- (getInt pos 0)
  symtbl <- buildSymtbl state v state.symtbl

  state <- pure (MkState state.true state.false state.nil state.pos state.globalCounter symtbl)
  stack <- decodeStack state (RInt 0)
  symtbl <- setupGlobal state

  x <- rCar stack
  pc <- rCgr x

  y <- ribCreator (RInt 5) (RInt 0) (RInt 0)
  stack <- ribCreator (RInt 0) (RInt 0) y

  run state pc stack 0

-- :)
main : IO ()
main = do
  decodeAndRun
