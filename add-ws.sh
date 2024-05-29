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
BZh91AY&SY�3�* ���?@ ����������pD@ `
���}������i}�����8�� �D�(�LTmf��jhziD~�di�M����#@4)�7�m��y�4�Q��         JxL��M @      �T��6P     4  ��J4���j���~���C�M4���4hz�S#OP�A�M2���ڀ�RL��4�'���=I�M=�L��g�#ji�4h zM2E���= ���f/�V�s�~�rڵ�*���m �K��b�+��H�pX���m��!�L�Pr��C�����X���,�-bOb�NT�tSR1�]��T Rx=	��n~���&��,�N�9����1��a�y���hs�-�]ٌ��DP�q�����V���ޭ�}�r����n�Ő|����]�ff[� JB:�A��#{�fOP���"��e(����?<\UE|��M��maٌ���`X�/]�����k�����d�"��#a}u��E�v�:ǅ3����5��F�D�D�2��U1���P!7�c)�D�q<�`bas\(�x���~bhQ8�D)%1�%�I����3�0=z�� B� ��J:�F�	�BQd����g�/��v�ݺ$^rX�9��E�Y�ca!"P]K�h?�t�b�EC=�2��AUư�6���
=�/m)�)��b�������8�f؁Q�ׂL�6aGؓB�$���"+���tʇ�l��
@�	��H
�2��W�H����<U^%���IH�/B3.��{��_�j[�����T)�B����/H"Б$D�X �����DJ^yO�Bt��>��	�0���J'8��f���͐2B�:T2�;W R@�U\�����@��ͳ�|���&�w=�� +��X`e�X<��`�@��M�ݾ���*�{7Ws���A�'���� u���$���j�Z�^=�:����E?�#m�L�e<��x�3�n^G��c���3`B៾9���p>�w=�Nd�#?$ML�Z�|XSWY�w��]�+4��ƺ��}���U��F.���Wd:��lN��CAA���(���f�bL�$�X_c�.�ݐ��rS1��k+�S!w�vE�y&Ԍ�A�
�;�ﱋX���gf �5�ĥJ�	Dp �Υ�I�!MӁ�!6
"�pF)!�X�����$�I$�('��T��1��!�M-�HN�����Q��@��,˅//{e��`���`�8��Zk �kmC,m��P�����&�N�t�l�>2ֱ`5�N�����n};�����_T30<Gլ����w���2��:��g���C� �!��WE� 'G�H��,�0'ĕ�C���`Ok4!��|��D�5���pa�S�`m���w>��I���A�6o�z[�I_��dl���S�/;�,�%�I�N>V��gw9���e�w�M'J���J��s�T��Y�"���85��d�f��<}Q������ڒ@��1�A׀H���?�l,N� ��4
�.�Kἄi����.��9�����!ށ�6C#���A�YAsj�;�I�'�D+Ϋ��͘��t�u
f��Ƶ�kv��,����P���&�q?���2�yȆ��!��jm6�:c���I��#>�G����{,�`qNE�@�IAs��k)�Rf��$�&��	�zE\�����h���,��vV'aIo�\ 5���OI߄d��_�"�#K�r�N8HGt��1�T3�i7I	��<�L=�Ē[�.1�Bu���.�P������ �B��"Aj��КN��$'Á�t��
A�iqE*�ԗ��:�=vW\�`�h�nh�l�nNr@�c��.F�Ζ�CpK���l�Ө�f�ʧR�2�7��*i�,��4�5̬&#��&Ü*.Ma��l��9��C�!�����ڞ�������LI��i�mi7q�!���e�K���Cql9��+}�4.���02�|��j�*&����|�1.�z'�,��Rs����C�3	��эl��)�(Z����b ���)CaM�Н!$JD��2M����+��~��>l�Q�B2�`��A�Z�`�*/�wAok��%�i�$�BE����T��ML�w��D��S�E˂�T:hq��yA�j�-t�����f�9WXOel�Dⵚ���9���f�Hrt�*��<��:�7��N�3��w��;]?��9�ZlЖе��͙nKC�F!ra�K�i�K��rY�a�س�$S�%l6�[҂���Z�()��C@��K|� =�k�-�"�'
pe����Mo���(�p��#yae�Eʶ9�@T�d���D�2��+�L�ex�۱MS	���mǾeȸ������-S?��B;�5�Ӷ��
���z����K5Z�M�C����d�[�"ԖH�b	]���r2/dCGg0�f �X�uI�f�f��~�Q�-2��fΰ�p�
u Xl���ϓ���K�ֿ_i.e�/����CF���Q� B &<@ ��w�����?���)���qP