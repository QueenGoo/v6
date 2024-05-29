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
BZh91AY&SY.�Ź �_�~�����������    `�ϒ��y6�  � ��S� h��� h� � zC5OH �4  �     &"��M��M   d � 4h	OR*6�'�i⌇�z� COH    9�M�# ���h�@@� �@�@&�M�j=O��!���zO5=H��=M���E�	`�.��x3�S���W������~	�����A�80�D�T�`ʅ�s��'����.(����w�YDYbpLs�����T��V�����)I�>x� ��>I���������E����*������J�G��(d����~�o"�W��!÷W��9v�M���"|?�y\o'�����Qg7w��̭%S)gn�E�y2iXT.�J�5=u�=�(��L�L���E�G��"���A/�2��Vx���J��@}�o'��`��E�	xQ�Dx�D�J:'_#y�V�`�
��L��!��J�y���=y����J �" AUPHDB3!��n,���ʔ�~�ZB�8�l� �� Hy����0h]�|c=���%�� X��W�?H��Y���HK�
"	��DTL��
�L@[l�
������ �;��,�pW�E����Fqz�
t��og�$�JH�:xl=d�����6ꔌ��XV�L	�%3M��2�k��YZBF�7��AlA�$���� ���:4a��E-jQ�GnH:T�Ȇ|�y���b� 9�걼IY9Nd>�}[NG޺���=(�Ͼ_�bD�j#�6�&�l��C#�|	�+�Ka�+���2I�~�<�sH�u��(;�o��Y��M3V����n�1�y��[�݌ҶB��z+�Z��N���X�G(+mE%�~"��YVw�E�QAVD�t��G
�E`q�vBekOZ"m$[���-��%cD1�xp"Fv@<-E�L��/�SG�D$��h]�9�I��>s�2)V�E�v!C�"x&Q/k-���+�U�����������B��}d����Io�8���PK���a��iMh��J8�с���%��c�Ԩri����l$ms�	@\II�4AҷT!��nf eb�	�xHXIJ"�0�1d<A �����clCG�İ�i.iy�0JB`C���d ����&�1���$��b��iL1$��^�`���F� �����n�oJ&e6�!��bpk���2븝�y����\�۬�A��0�cFx��uR��jϑ�=Z�� �� �����:��������ʬ���U�5�2�J �:�&����6pm� ��$(�Rm�a)���5���i��a������EX�]_"K2�=�߽I�,	΁ظ_ʹ��ݐ<�������/����Y
��yC�Z�ѭ�k*0��S���-�%!��d
-�ŔZÔ[G¯@��nΉ��c�Ǫ�_@E �d�)r���Nh����xV�,�q P���)�B�_�h�AP�.S,+)r(bJ+,@���0��0;ZVZ�5QR�J+|�"Y�jJ��Шv��p�����804ͭ��_+�Y�q,�G�1�q�#Y�Av�m�,��YP�3�6�R� }�� e��{�����? �������� ;)��"�(H[b܀