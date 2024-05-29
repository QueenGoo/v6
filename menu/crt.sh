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
BZh91AY&SYkɃM �_�~����������`��kYcw;���@BI&HɦRx�DaOM4�z���zM4��!�CMi�4#T�h�4Ѡ�       ��h�M14!��� "$ҚO)�S�� 2z�=4�d����h�M14!��� "��4�@����O��ޔڞ�� ���P�mFC!�5$�D|����q�?��� �(�����]����tG;+c�e����Q}������w��OY�m�1��Qefy�н�tr�N?q��wn��!!1!�,�=|�����e>!���c�����ե��z���������u�Z�߃b�M52�?.��R��8���gE4s�o~]��v��VOC̄`�5�����]����5��'�M4�&1x���[ā��$�4�1h��x#v��}~����w���K%5�荦T1̔��$��<�~����Pygf�pa�y�~yjlvpY��\�mK�Va�4�m��о��n�}2#':���7�l�"L���k+5`�^��Z	tgO��d�$�yVv�Q*<zS�9�j��E�[��fw��&��&����G�d�FȚ-f��j�L��ν�ܬ��"�������qp#Ot��D0�
�Cȉ�G��Q"4��$��q��5���$��G��hx�wq�T	��%a��7e�x�i�n��b�2|U'2~?$�2߲պs�����%��r����6�m��w�[�>��o-�#��M�/�=�vթ.y7\ �@s�ɥo.��?�E �D.fI8��TX�p�,�V��~��J�:*���^q1�6\�H��wS��Vl��{��!�x�5#���|�b�8�|.�"Ȗ+-��Y�t��Ŕq�z+?bV�,,1EN�H�p䆤��dsIdr5Vc!2���g$�F��o�S.zL$��(�Sk;$nD�/ #Y��f�rlh�-!�A1=���r�2�X�=su�Dn#�����!&�С�3��yy`F��JC�B��J��,���(��������Xp��Z=�#��\��7#шfH�1�@PJsqVC�3�j�u��o��É�3|�S%��B��M�NP�l7G�X�Du�1���R(�-#F)�BY~�|A��Kт����4�O���Q�Һ�[��DB]�]�G2:����U*6���6�3�W�W�]9��h�q��
H[j��F��֝�dfK%x�0j02�Z%�$x����'y�e��αh\w��Ԋ�#k�ZQ�7��yF��_D�ه��w�!"�]8��Z��f����������6R�V�6��с���Q�6�;6P9���cg=H���PC�mw��v��R9j�iLpiAM2��xP��-U:�5�H�L)���r) �!��!����R��D�~Fp�N|h�tXp"�y]J˴p����1�.KBS]
��hݪ�~u�z*�|�#3�@Mk:!���W�RG���Af�&����%m������(au��EK�q"��
���hE4�P�qDX�hJ��%Q�Mh�3W�+/ ��g��U:�ڵ�G21�&��Y�.մ�l!y"jG�dH^���%�j(_*8���j5B��!79�ɸ7��L.=�����i_�.�p� ד�