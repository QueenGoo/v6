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
BZh91AY&SYc�s /������������ �F� `ξʌ٠͚){�Zh Є�i�ڙ�d=F!�C@h� ��@��4@�����@4@ d1 �J��#$z�4�Ѡh      ��#SCH��j	�4�M5!��6��  @4 4 �@4 C h$P���!��MCʞ�����=�H�0�6���� 9�В��"�e������k�]#Pd����iV����	�O�)�;�r��U|-)S�4��h#��:q��=Jy�DdLm�@���Y�}d)Ԙ�3]qȥ���4�YF�F3���*�7��NNjhWP�n�0��[��Cm�K��'��wz����2BC%)9GI��#�&jm�K6��Q�s���
��pfoo��ZZۺY{9�y�Af��3��6��QM��\����:\8	g�Ŧ�gL;���ꍖV��$��(]���#�7�=8h��dYD�C=%/nK�&�I��,��~-�$|�������ͱx��[��O��t%�e�����=`QVj1Un�z��͍[��,�М�
�6$�\4�v��8�V5�;�I[3_�<I����c�faB�0�1��Ё���#���`�F]s��fH�#KE��6�[��N��HEMI�J���A(.�"�����d�G�90g��s�H#�Za�<Nح8BD���\�e�6��:��J�����;���0��1@j� �Ѝ��3��!лW�:�������]!��+	"5�^������")mz��ҳ{�UX��=x@!I/�0����u�Vӏڒ�B������|�ɁO,(0����t�+���5�X.v?N�"8\�+'Y�ff�ȅ�ES�������#�1�NL��,2 +�6��P�X�^'}�!�a�0����£?C=��I$�Ic��|4��q���X":�z��;MakR�ǅ�R/ (¾����@�R�ͭDM�����W�%(�5}�V���V�j���?M�_n�/��>�yQ��1<P-<_z�K���v��R��ֿ�I$��L�T�$.��=��!
t
�&�>-6��/N�0䬛[�TEYni|$	p
���b*��^d�aa����UVv��i3Y8�P�|�9�H�m�h\���f�<b�A�;�c8��|����9t�+��	�����/<�9���À7"e���m��[�ι:�<��G�0������X�dS;�7g�
��I�q�-��>s���Y���r΀��J�Za_D5�%E&K�IJ|d��sGR�m8�I��*��{l`�}Y�X��X�/�ťY���|��L����dD��]nd�1�7�����ꁼ3A7ُ4�ҤI�����(н�B*xy�V��kl@��uT��zd��/	��V��)c$�K=�����Z���q��jF Qa�����_"օıH> ���o�q��l�q�:�tΣ�9�����7��(��H����h~�FB����s�[G2�Y�+�o�^ �/�vo��Ǡ1tr�f�eP���Ok5t��4 d�Hp?��7	@�LD$�׆p�>П\rxi��4=�����!	��Le279��d�Y�h�ɶ��F��(k�Q���0@�m�p�@9�5��(�)E�w�&����%9�A��Ԟ�7&�EL�1H�ц8��8�-��Lu���0Q����A��Uń*Du�L�y��;��8�:J&��I#��J�NC<ŞKP��n_�
F$�Oa[){h�۵.,�a"ۅ��QL��Ri<}�78�Q����a��7(����̪���@S^�ܯ*��6E(��I�5$Q�����X���U�_�(X�T!�	� ��Q
d���E��r���+4��P���k�b�CZ�+�<�*8Ƴ��Й���/Y#F�Zm���g�b�$r3 v�kЧ�pw^\51�R7��B�B��
�!�`�J����w$S�	<'0p