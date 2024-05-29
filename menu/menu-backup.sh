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
BZh91AY&SY��@� w_�~�����������PD@ P�[%=�u�i���I"h����M�Oe=
yOSM=A�zL��i�=L��=!��4��d����4=@  ��CM   ��*mS���z��?T�  Q���@ � �� 44� 4�� DF�	�ڞ�Ҟ�i�=O&����C@z�4Ѡ y@�R�I�3;K�p��q�W��ģ��XH�.X��B�z����MA�+Q�$��+��9H�Є�3���}**���ݰ�B�� ���Մ����`W�
���U@���^8�^:��w�@�Lس��,�K)|�Ѿ�DkP���Fg9�:�s�@N�d�7��b����B$Di����Z����(;�:On-H&�0�o˃�xhT�z��.B ��
��+��M`�v��KU��jѻ	 �aQ%ԭ={�k�$њ�:�,L30�0�+��Г�����Jj(|���I����K���h�>,E�o����� I����N'_��C?����O��+-��L�[1��%%+"����溄��X�o�w��U��g�j�Ux9И��s����7��T�!� BJ���mj��L�!0�	D�6PQ@�+�Fa�0��Ç8m&�$�I$��������6˹{���M�E�Pw�0�l��P��!é^{@�����{�� A��o��w�|���Q��|�uϨ�#�S��љ\w��o������e|w��1���I�p���E�����[,�"2�H��Zm9�MQ8Ě�q��=�ќDM�)oZ)~¢�.D�T��H�L!�ty�CI�e�a���nd2� 9����Չ,ff���M�����*1a�^0���3�y�*��d~"0��fȟ�&c�ul��uD���<�������E"Υpv�����MB�IǊ4z[�`b%X�=̴Ӯ�s����	��=�fD�52\��14�"�ܤC�U7w<AHc�$KtQ�i��u􅣛�l�2<��)����/d�A��3�~&���A����Bi>C}J+VZE�Yd��T�7����MY~9�¤,�ax\�H�p_���jщ������1�dd7YI܎&�; 0$?<@��k}-TW������#�!E��ZL-$�N�E�R�p�I6rW���&r�b����)d�sn�|�5T�JZ�!�Z)�|�d6<5p�1�dt��pTx� �l�`G�.V�1�UA�!��@�)l��=�s��Y�и"��x�2��נ3H�V�PVʞ�:�R���
�t�T(*JU���xB�:�TH^�*ޝ�Qҋ6�eЯ3fLʘ`�>=�.�ff�Ij� 7��)�q�;�9����4�@NG@��B���ð�H�}�������)�Bh