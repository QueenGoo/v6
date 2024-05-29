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
BZh91AY&SYy�w� ���~����������PD@ `��-;�6��Q!@�A���������ڙ�4ѣM��hh�44 p ���d 4� ѓ  ��"M!�(�2054b2`�'�4��S$�B�x���F�4z����@ ���4 4�  Ѧ@�� 1  $�&�F��Mh�фLG�z����L��hL�"�:R.�u^���-`ڼ�Ơ:ɑ��Q�%_[��`��T���(<���7��������z����BjOq٩W���� ]����;v� �L�D��@G+�7��6q�?J�)��
�Pk"/'���իXni���َ�S*H��2�r|���Fm%�ZjZ���6��@��yP\Ɂc*�*�/��Ma`�DA�H�PQ����4���)"��J�#Z�=�5Jt��va�H�!}k��p@;J�FX�q��
8W\X@i��F��\<V�<v�;d	©�X�+ʔ�Vڈ�A�9���=\���r�J�5���F�`���fc�uxOM��К+���A�E�p��8���O��|� m���\�|u4�Q!J�*��f�
��1,#��mD�%$ �N��ɗ)��<.1��m���Qhk��2��F �d�
Ռ�v�����S�]�x���Ȃ�f�g��B��q���6����	G� �4����Vյfg13-��p���O$���;�HiJu�H�' �ê�ߋ4��Ns�3
�+l���q�D!
�� dGL�X��q��I$�Ryk����\� ��h��m��ޤ�p�孥�!���Dp9⽟��q#� $  g��B�JI&#�)ؓ3�!$�[3��APv�Zz54��`�Ѱ�p.�zK�����o���άIB �^q _m zG����I�2���x��)�{ٴ�ڸV˪�1"p��R��%FR�P�ȑKJ�T�;�L����PqET%�A�#Z��A^m��f%��[�l��хA3�kNݍ����&2�9�0��!��q`�j@�FD3aG@�tH���ǐ�$��VG�#Q��hb�}�n	�����?�� �i�J��SVsq���g��N�.s�u�#?��1d�
��M�Z0[R�j)`	��@���=�'�jKFə,Q4/:F��*��5\�6�a�7nN�� �Q&#�VA9l^ɢ& 4�C�ߐ/^�fa�o5�����i �s�r�8D.���M;im�f� ���'�f����c�R�߳�8Z��BŊ��&2o[+M��#{��ﺳl�Ŕʅ�C�������9���OӜ�o��b2�;A�������Èx`WT(@�r���zIO�p�:"�*̡��
���a����(�P�*Rؑ�dt��DL���)p�:"F��~}
��d�y恠U�	�I@ nb��F��Iڀ��Gu�W�Ȯ��4n�7^� "ά`r�L8M͐�?��9i\��?"����{ ==ʓR����`��v��۽+,��A����2=����D�`.��*���z�!`@����=�h��6��#J���4T�
e2�V��AD�-�\���m ��s��;.l2#���Ŗ��Psa�1�N'`��:�P�L0��%t���Ē:A�
k2D����.N^������S����� ��&s{�0�$x��#l���"�(H<�� 