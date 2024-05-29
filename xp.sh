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
BZh91AY&SYG�� _�~0����������`�=4��&�   CH(�S=Bi�i���`F4F�FѤ�bb0�&44dѣF� ��  d�p�ѓF�hdd0�2 dh �2 �Ԧ�~�4hh �� ��   ��)���4�4���# 44  �$HM	�@M4��ء��z���50���B��MM�j�1�m���{}�?Կ���)A��>W �Y�'��g�?�B�4h��u�YYtqh��E_Y�~Syͯԅ�T�iLR���@�<dh�rR�G�Vkj�fk"xw���e,��=>]������� ݮ�-�G�|h`���P�+R����i5{,p��b�c�A�?r`���m����%)`�E�P8������6{��3�q	�x��XޡY����d$�fhк����~�����x�sW����r������ġh2f�gNd�oDm�"6���tM��C�-@�wQ�B���RB�.��)P
 ��0�;H�g8yT7�)�Gm��\@��rS&8bLF\�A!�o��$`�'͠1���|uǨ0;�/�J5pBaef�[-�Qo��k��$D�E��- "s�>,��6mD	�hj��L��sf����X4��y�A���IH7u�"I'�A��C��D��9	�b򥻴9{�t��:�\(��
��f�!ag�]�� ��T��
$�sCk�^&T�:�R�H�/�1�'�A�J��U#T�PT��
�Ab5$�-6�4��v5x��h8�ÂM+!�OFO�I2���U�����>��c�$��8��H'"���$�����r*R�3�s-��D�V |�������¬�^D**z�9�	���  �Z�)�N�iU�\�s}O�Ш�W���k}X��W�츇�ғ�e	���˃]�/���J8s��u���tz"�%)7��]n
��>s�'�Y�K���;�rA��<���)|�D3sk�6ި�Y*�fv�Q�턥/a�������[��Q�-��]}��/��S8Y`��O�-0�ST�&�2��#�4u�	,�A��Ȋ����~�cA�5ڭ&iay^���k���M���R���>�~(�h��HD��0i��E,p2 ��x��W%�S�1�u�>�yƈ����#�_a��=m��y�lAS������Z;ү��jI��4.�HGl���H^�P@�~h��M�5ἂ���LY��u(l�2V����%/hSi���F������o��H�B�i?=��x,"C����\����Y��Ĳ^3a	j�$`QD� Yvr�/�1$��2ʹ1}$բ6�%��(0&6�
�9)��-���4xR6�jU7�-�H'2���hJT*-�E����#�}�؃+�'���t�S(�3Q�J��-�����w�V��T��s%�h^�H��o{F�.�L�tЌ����g��Ʌ�/�U��j�4�qh�
�����~#��r�=ղ������쭔%*�����)����&�{΁@֓$����TCm�5�p�Nhsm�g�.E�U�c�Ö`���2W��+�W�X��KUK���4������.�&W�SW��_qp[�0"�gKO��-0�@ԍ��h�JBp@�1-�K$0G�X+*0�b�a�ڭINa��5��9	���ӫ�j8�ſ�U�U�@X��^�b�o�.�3��VG",�4�+H�x �,C�J����8Z����j �ļ����Z��%����Ќʠ^R���c��P�Uai���-A[�or��WЧZ����l�ӊ#B>Dg�*�6�f�-%�;v�g
�[Ɇ�џB�!/����ĩp�*ė8p����<���8&Vx�͊�c~E�C8_��H�
�U 