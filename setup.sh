#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�kQ= ���o�������������@D@ `-���}u����������w٧�y���:���;�;�u�ڍ+m�w{fY=��l�
;{�
�V�g�#]]����ƴ5����4���lM'�4�6��@����2=F������ P�F�I�F�*?$�'�驤h��  SC5=@ 4К�&�ިz�zM6�=@��4��    	5!�h�&	�OS�mOS@���F�2=@�  4h@�@MS�MO�m�L�4�Q���&�S#�2� ����"h� ����*����J��0�<�����@�A\  � �����e��۾ֳ�c6%=\O���+�#�z:QT��J�K%*��5��B`_D�	'�VH��^�R���Xq1R�c��H���@��/)2{\D��G��d����~��'�,�C#�J��I�TUl��F(m�ڧ�z�h`/����Φ����9WE�Ŗ�厼�r,�2+ �����W��"P����J�2�����;��WQ��J;�e����Mؠ`��7UEy" ~}2�,
�邛K����Ur��6*;5z۝e��Nˡ�LT��;a��غ\��d׎��ZJ��N��[����^�f�WiA�h���n�_o�6��<�㙅�d�\�b���N]߻��-�S\<XV��q�c�Z�Q�TQg��q�Fߐ��"v�ݽ��i0ES��ER�%�	��J�8d�O�o.���������RH*�	{���^V#���ݢ5��Vr:�F+K���3<o�S\U=n�ya�X*�&@�A��k���:���)F[̝`N'4���}T�mY�W1�^?}��`��HZ
�,s�������-Vr��x���$�V�d��(��6�����۸�]u S����k���U=�.i~1cC��H-���x�{��V�D�\P;]r���'F59�P���F��Sݛ��b�Ә���������I��i�w)e*��0f{��دo�r��ΫP�*FD�i���Uc:ͥB��65X�
�'Ye��UUUbީV�UUUYUUj�� ����.dd}^���ei�O��-R֏�d�}Q��,aMf����e�!���u*J�R��T
��R��{Q������^��c_w 䊲/����i����f]��<���s���s{�T��Aag����6���m}���^o��:�mĸ!�ڕ֑��է��z�)��]�vs
}�F�1�]^�O*JZ��9�!��{�z��u��[q�e5�LZJmG����R��.�CGEK�[ʑ
�'�d�GP�����d�˼AJl�_��|��K9��`n��^�E;bũ�s��d�)���}۬���돗�;��г�m;��g�#�6^����l��V�ki)����31��$�d�fw-C.�֌�=�ãj�
	lLӍQQ}�Z�8����G�
��P�s⑝S�zE7��[!��w=�y�S9߸�п�o��[
2F�Q�o����U����N]oΘEQ3&�7�� |�5�"����8�7a,)U��fy�=�������:����p|�UTUYv���|>�{0J��Ǧ[hBTS�Ku�ǐ�F�iYR��N����6F��x@f"ZP�飲خ�a5.<�$�@Hh��	 �y��1tOc����w&���i%8���C�;���Eճ���.Nl���1����GcԵA������5��1}>!��`ʄQ��t�YY�L� �,��"3���(z�@� IL(�K��qC!5U
�p�;�L]S(�,U��xx�q\*F\�mF��sO�D�V֭H<�,t�S�8�8\����k�p$�Tr�2��ˀ���s]^��n*���"�S�1v1�<>�(uku�0�����/ �u�־��h�������p{#�G� O�f� ����Npn?A
�S����O�<��fʄD~L��~��O�~eE0g/-�1D������-(��\QJ�U�S:�RBBڶ`d P���%��G\���!jx�̱����\�"���k�\�i�鉡S3O����A�Y][vډD�ȄƑR��4�"��a���T;�mg:�2�:�s7> ��n��&�����Q^��_��G�L
8��獓ؒ���dÊs@t`�9��k-��bi;#)�V��h�h�{בN&E��6�N�\/���dw��N
�H�}Ko,�@$.U��M����]P�_��i`�u��.�.$8�<�Q���V&���%掭't�Է � }c�������
Ư����;S��uT�p8#ո��{s�z��:t��������W [c+����d;(��(�2�um�O	9���ª��	'obte+� č�cEZ	t([�r]<6g�je�gFIϹ�(@�[��*�1�4�D`�pnD㈅�u�e�V��T�ʔ��0f�`�w��_�H�/�w����ߊ_ԄO����#Wԭ�D��r��4{���;��%�)�G��3��><�LU-r�^���ucG��p�.�*��/��F����2E��J ��X�X�mp�,�����r~ϡ��L���(ЖYU}��r����;���($�u_�뫜쩜���xY=��)Y4,XZ9D�:�!l��~�R��;8K������Y����l�yA�ȿ�Dĕ
n�y�� ��)��^�b�������C��H'שH}�{���: ^���hMS��{wV���J�G5��09�"G_O�!P��=c�dU1�����]  #N�'Xr-�0_����!A�?O�K1�z��u~#�i�����=���|��!&���͎MN�� %œ�J=���L4s�N��&3�@?��q6��^��;�bY"0��^�(*�h{:�Se��@;���AŸ~U0�U��Q/L�ܥs:O�B��W�;#{j�W�$��v�/�C5�%<SR��||".� ���(�ε��,;:F2(�����k8���a�ʱ�j��/ ��g��^v����=�u�6�a�ȯ�~��6|R����O��*�l��.e�ޅy�3!mF�Z�є7����=;�c��D�	:@��N��kh)�d5�����z��#��<����	�_�55X�dA�b��d+ �$��H=�E$��
�y�����ߣ6����6�7����&]��Эv����o��?0����G0�4]�,G��SXį���SL]�.�,q�q�c�����ժ�����GY�5r�����Oa���8����6���A�ѿTb�� *ɸ)_�ߨv.�C��Ձ�Yxuq�C�+3�B�ŉ잛XI��((x��?���}���.���IJ���KS��Ĉ(����Cƨ��Jn�d~��O,�-�6���G?Q��8�χL ����VQ�:�MI`����H�ʝ��m������{�?�!��O���c�� �U���=�D�t}A�%b���孥&�q�¥���5��b��3���O$O��jp!�._ޓ}�u��67� �^�a�� d����	,p�$�7��n+F��r�]��[7�L�Q5b����q��<+��&���Ē�ő� 	c1�5�A=W�K�	}����:hIj�le�J��I��I�+���-X���w �/O��@/9|�HʃM� 5���ֳ&RgϥP�nH�@Z	(��G�]�[����H"XK�ֹA���
�(B/
��F&�$��&��A�6N��{J��n3�$�+���_( !��c�8�b"��H���'*��Oe��,�
ji�X���RӋ�5D���BϞg`^v7�͆��u6;�W\^%ؗ��v�K��*]��9ͯ�=�TʼAC�kA�ΙZ�PӖ�u�oO�5�]�5��Q셖�O��Ua�I\�z���$��ab}��,$�38��� d��XӬ;UA:�[�ʮL:I�Y	$�*�m���>�&q4/�X6@b���ShR��e���A�^�[a|��d�G{�-�=��B7A�'MP�_�HR,)F؁t
#����a��{�8�-��:�]��H�� $ o7���4��\�;	CF� 1%�˲�/�;�5#��%�a.#�����$<]l@xd {�"�9?�v��cw"sq�@*�px��E&��a��q��9�E�)�����%P�@�OEQל��ŷKG�K-ʤAUUUX�F1[�|��&m���,�z� ���8��hf�tF��:C��C�$I$i�u�6��ʱ/ۊ�US}yu��q$%%�2lL�@�b�n����MFq�[���sRC���~�+��%�0��rr�p�vq �+.�f���$��q���fAar�T^Ѕ�
����	 LM��T ��MI�L�E�H��:$.��+@̦fZw��8����p9D�`��H"H+$3��㬂�Ş��n���&�\���aȼ$�%�{�Ł� �b�J�($��䌠�P�	�gH�����g����6�<�ؚC�ԅ	��x�d)�QE$A��,�,"R0"�D�I�ӈ�m�|t��1��3�騂��,�r��mgQ3��i��0A�=z�\'ysp�m�*��iz���@K�׳\�au���<���1���9��ђ �O��b�D�DmRII�l�R\A��������&��G4u-�S3J�� >�F��H�=)$2����S�"��9 4��@����	D�B$D�Z�ج2� `�Fd���)�Y���	�c{�u�w�&1�\�Heî�҃�)���Ww�J��LʘX�GE�B�5�vM��D��@��@�!N$�=|w���f (�O9h�vi����F�	�4��Ŏrw'-4�i�]�c�{�܌!Oa�Î1��Aw�z�  {��}�4�pBI����F��ِA�IK�(V�&<<Ry� מx2�
hB��I�}����xwZ%XRx���ۀ�Q��QJ�?̹r��D+�{�*�bRE
�HT)�]_��L`A�_̴0z���X�i
B���%$�P�. �M�mL����G����a�-4b"qZ$��@��,4�!
7����1�I�g_�g������z(�,�V$s��NK�a�3@�HC���D�T�P
e�� /��S���a5o���!(`���{�ݮjqN(�]#�E���q�	�U�'8W���TG�0Ho'�hE&tf�G��j�dw�c�ȱdc#B(cx̻�K�CQ)&m��8��C���R1�l�z�= �ӑo|�)��\����	p��v0\	�=U.��E ��#Qc=��h���*>�/���x��9��z}L��MC�r-���u-�8��;��1Ȓ����c1X��ҭ�$22q�3��v��}��Q�V��ظU
�1.����\-Z� ���Evm9��B�#��0\����9��'s�����20��P�����ܝ,L��/G����C�@]�w��R�p,��O�t�1��gh���A��K*@��f�m��"�(��"d>��܊שɖ5���b����ٶS�ڗ��XH�c{�c�.=��AI�_o�ߕI��⵹�j���2DH�	��P�i@36H��+�@{���m��k��nA�.�*��FRdg�M�
D� �(Zj�ڣh!rW#�����^�V4��i5���3�������Ra���V��X�7	D8ɣ���Fg����#��P�3���D٦����7�g�pg\ԔI��d+g@�Wq�ΝdŁ�Կzs%m��S�:|%�D��h� @�!D�
�y+���L�	�^��q~��f=�⍦�j�4�q9$ )1��md� �e��̷s��Z�� 2*k#oK�A�:�O�������6{H[Gzx�p�YbK�l���XV�DH�M�1�H���Bs ���"L+�e!�t!�C-U��1X���Ť�^\���eAV*�3���tڴ�-�j<d*��ի�=�����o�t�E&��c
�j	)�ݦ��Qs#`QRc=L�E��S������h2���u����F���\�.,H64|��2Z�-X�x,��)-%p�(N@&lGA��2�i@�| OH�˴f|ǀ57$��1DP�P�hO�d�� ��:�oH�i�!rչ�����42'-]e�8� +�KzĲ�(��	�&�.���4�=�$���B\.ei���R�r
��o�_ւ`�P��kW����m��� Q��h0�s���\O~��JW�C�T.Z�=0FK�I�cH����KW��=�7�J<ݡ"���Uf@� ���=X�U���sM���/�P7N�%Z�3��")���F{�		�^�vPZJ�^�����d�1�=Y%t�)���Z8��K�-�����%�Ԡ��D���#���q��bC�z��4@��I�=s�<s��V�<�� �h��+�������G��݆@��εN{X��s�;M�� D��Q X@��0A?���)��Z��