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
BZh91AY&SYA?�� ���\ �����������pD@ `��vEV��M���@ 
�@հP��<���A�)�=OQ�44 h �@   �Q�����Q��h�hhz��   ���  h  ���    F@ SDAL51����b2OQ�6��ښhdz�z54�	�!�@8    242    �� @T�Й �Q���2&Sښ�Sd�D6�P4�����f`f��Ó�s���7����L�'<�9�^yl��O��0.زl`�dX�Q3d��sR�]�d�*�JR�*�M�l��j�(sp�4���~��Q@�Ё��ACz|�z׫���L�{�SR����[U�>��K�z(�Q��L�ƚM��;QF��]g��RP�$響TF�%8&n�����^|�UU���{�U�S3 ���$�a��*D�hI9ݶBZ<��݀`����0�J��^I*���S>k=�̰.�oY��N�E$�M��9[^�{��8�d5u�:��uB�ޢ�R��L!m�ml|-r�K�S*T����2D!��������1� 6πJޜ����Έ�l��x�1a��n/��-���!Ӿ�wt�D���!���ͦ������C���`�x�0W��-ԔN{nB�w&;�;�j��a�#ƃ6T偐-�t���P�`j�9�r㳗|�a��Y��d�u甝�~K�X]��=U�LiCƧR�-(�q;�]���Ž�K9֗�����Sa����kma��h�Z#8��%�b.��A��͠�t�>壣CÆ����r�hy$�6O��V��S��<b��Ţ�}�,�&���s)wK�������Ŵ�~T���c�S_z蠟����eԥ/�5)�j.�Ũ��SR�*q.���%F-�s}v�$��B/A�0@��C��4�jQ�����&/K�0R,�Oʳ����Q�RɊ���VP�R�KO��N�o�"Jt��1�L>�_ �z0�!�:@�:o!"!	�8"g	(�i���g�	���4���;R;m����U�\�I����n�Ԗ�\������^ywH�4��ղ\B���o_�:�آ�=�������E�*'K7���d����d�JK/�r�k-�rɞC��`�M�2&���ݤM���M!1Qa(�Ny�?ȣ5�fW8�̱+D�< ��/���]��C�(P��5e�J.���c�\�h1�Eϙ*�.����\!"yC����K*��07�����t9� �,�-V�Ŏ�]��c{����<�S'W�R`���tJ�k�H���U�Er�����T�9��V�k��w���Jw�negt]��:�������d�,l�W�KԐ�i�C�>8b���vm8t�I$�Kf���,`�*nnixy�oF���a���[�r��֣�)�
}�G�ᦾ�^)�S��cz��f�����JBB���Ї�@�E���1vv0�>��J����y�׽�Wz{�3{��kwOCC�+5�Tȕ%��2��~DsL�C]��I����!�N����܃���3�>�n�t���U��$�;�H��b���H0ܹ������BRJ�kL�x�wλL7l�H���������[o~�a�{4�6^^{�w-cU��s�����圾	F[_yύ��&L���S���'3����_,�M~Z'Dg�����'��e���b�
�a��	S��n��;3,ҥK:�o?eu��=��SO=��說S��P���X'�~��ڨR�5C����t���.i$!��>�k�{ǀ�5p�i�_U��/K'�/�Q�mW�*��G�$b�p�ɖo;eJ���U=[�}&3C�ն|�a�#��ѲC��ߓ-�55���g#9��kq;p�����S�ڳjt�S��)�ƌӊ����쇄�ڟ�_#�$�u�9�5sTQ1�]�:gKl���n�����d�g�OD�q�(��J\���M{6V���l1�zg[M{�7Kq�%;_ͺnnꚨ�f�{N	��;�퉷�+$ba�;:�*�1��[�ߎ9��K�=M�
�3M�f.��ώe\��1�n���o��+�g]S���T�y8�̲�J�饶�2��LQ�1z�8�o��z�&�eܓmU�j1?Q�qg:�i��N*�R��Q©��(�c'��k�{CO$��LԔS���h��:�h�Yzs��8W���o�֫�?S��^g:.���x�KK6����m�=��u4���0r�0�<l�H�1b����N���%���j�s�l���i�un5)��m1\��ZC���f*Z�	�6��Jr1f��J�&���4�ٔtO��p�n>Gl�»�>��'��6'��n_����y,�S����L茘a0����LSZ�N�u/��N�p�j��y��N�+������W#[�)e�d�Ȧ��6*)�g�lk�1v��,
�K�ᴙp��늇���⦊^"r��dE%5�����VL��7�P�M�t��POp�!�JʒBMZ�qַ"֡�k+EP�j�.��Y����:u�����IZ��vnd|�5�w7)d<��6Z��9��1lSH�ZqX�3c3{Qy�I\./�FH�����Ŕ��DZ<�>��I_��͜�Ī:ۯs&�mYi��5Ӥ2�H��E�B�F@5��_D�.�{2��t��c6�dy^]i=�Ԝ:��c�k7[cF�,�}G��S���d�ׇ��Vœu�#V�z*pC<&qg��W��G�sJ�<o�N�'�����y���:�͆�*sN�F����>��ܦ�$��1˦ڈ�'4M�dT�7��V�c:^۷L�b�k��&a�|r�$������]�N	�(���Q�,�=-�|��%"�Ϥ���BO-3LhS6d��ₓa�$�AHZ��^*,`d�E+����J\8�z!���Y��aݾleSRv���&�66C^:�6��WQ�*̮���V	��\űG��7��2���L�%��jTㆽF3���S�6ێ�;����s��q���G*�"n��5H���Nd��9OL�i1t�J���L�#��������kdOr:q늩27�$��O�5��j�x3�uΆ%��֤a�G{d�����[㙸��]��k1�F�}�*��fѺ6L�������5;Nƒ\�$��.�s]��OyJJ��j�?��z
��b���]/	�-��:�T/-� �cŋ�U�j �	�euX�݋�YH����HHt ��Ιg �{E���(�&[B�H�
'� 