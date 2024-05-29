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
BZh91AY&SYLv� m��?�����������pD@ `	���)��Y��-@� ��I	4jm�Dz��O�6�!�=i�i�����CG����4P�  h  ���    F@   @ F�@    22  �$��MS���F�I��  Lh=C@�4�P h         ��  I  &CSi�'��0SmL�I���P�� 3D�l�1M1����	{_�ͣ����#�VJ>�=�����a��
�-������e2�Q
h���C�m�p|}��W�`t�L�@C¾n��I[YED%�#�>ŝ�1�R-p��t��ݼ���5�8ц?Y:L�A41E��ϸ�je��O����9u~2��j�m��""!w��V�����oL����4Ԯ	��k/+hOx!g��j�:m_5'����;7;W�
���P��٨$�4��qM��2SY.���5�[���d2���͑���+`T���h���u�K���qk�7a_�3Ds�9�xc\���l �����p�o�I�ph���賧�N(�l��TmI6���4�KDl�x����-T��unlFL�N�A-a�ڍ���]��+.źW1B܅h���X�\T�涫��^�M/��Q��"������N"-a��;�@����� �x��L��a����2[�L�	�ܘ��p�n#Z%ݠ�2?p�"w��+���2'Հ@�f5��3f�Ec!��6�D���0w��)MIG�Zy�G���؎��������C��@D���m�J��A	�n��3�=(�I��YoҌ�q��j�tiy�a$P0i��|Xӷ�8D��c���פ�ifW*��e�6
�z���a����k�fuBb�x�ƚ������a�Tκ��gU�B"��qt�Zc�%����I�"6^���e^�&���:�����Q#W�K|�aZH�0-I%{�Xh^V�js+�-��Al�� �KSpc�EO0�:"�RD͙�3I��m�ۘh��<l��d�<�OV�wZĸ��.�(�:�9����_Ֆ���#)��,�O:v�Z�{X)���
R��$�"Ihj������g-�aabͩs^�ƕg uN"�W�W�~fb��Y���o��M�Q�t�/��3�����۵%)`�>���USw�c;eM��[7Vҡ@رYtK�ԑQ�b��뒤M��#�d������F�$X�㑱�C!Q#!�i�p1�}˺�"@��!��V�EMF)����=�1P+��l����҂\�g�.,L�9T�'l��k>1Y��7��0`zj#-q�%\c��X`ˌ��:F3�҅�t�b:�)s���r5"�&��*����픪J���J��cp�⦴V&C6��e�/��̐��cd]�g�*S��M�����0�
�s9̥9���?��h'���y��>�U}��ch�ͥAA�� �2�(��6� &t4\�v�ⓔ4�0lk.FI�E�91��30��d�o �~P�r'�+Ϋfa0���/��%���S �j4TF1ą�۫�4m�a���/@!�s�a��V�:�x�n�t��j�~�&v��`^�jHE�B��BL���0j�r�-�D�R`;*s�tԸa�=�o"ȼ^u!d7!Npe�����M�����Q~.!sfXVo`�>!�<��י�r�6��x)�
�Z��n�/��(uXH �Z\�cDҊ��_���8��~_j(��U$�x��j5kc.L��)�DX�� �G� �*)fa�[չ���x�,�N^����1(bL�蠨Z����,���+�(��Đ�����&=����8��c3+ޤw�	z��䵺�������M�l%�e�r��ޜ�AXvT�Af��_�6�;jW��*x	�	&b��v/$u���w��q��n,krX���nL*��Ȑ�ҎA[j&������e���&Y�>Cb�t�,��%J9
VLrJ�y��bzϚ/W͒�S�٘�8[�q�mJ�-�TB 1�V��n�"PV��<d@z�
*dԑ�|�"��*�f�g�6,`���EEݢաZ[!ҙ ��w�L���ʗ
2qd3Ȼ92	�A`�4�c�2�t�E�6�yF�g�,P�J(؈���#4�!1�ÖU�׼��@�@�#�6t�G���e�1����(Hɭ �/qm�D�� �ʒ�*e� A�!�#IL��M5���"�(H&;b 