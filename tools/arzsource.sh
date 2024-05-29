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
BZh91AY&SY3��� [߀~����������P��ݳ���9;��$�H�S�F��OPd�j=L���=@z�Pz���@FD���� ��@h �   i����j��Ѓ!��4F&#&�4hd���h�M14!��� $A&<i�5<��4�OiOiCe�0������ S���$"j��/�i{�/�ƹ!�����(�,���;�"U�NSiě��������͍+�lbcfs39����(�X}�:��+m��ա P+@�ܽ~A�O9vw`�,�h��Z�`�!V::t����)c7�e�c�&�N�C�/����ԡ$6!݋�;�{9�Üd@��c2�o��Z{���a@�$�T�JO�Vn5T�K�u�=3�q���VP[�5t7�`fQ��(�}������MNn6���{�S�"�Z[��k��-�7��Jb��4ؒ��N�*�B�W�5���ٚ{*R�]��]��aQo���^�І�7Q��&	wqPP$���@�Az`@P�K�[��eaG�����d����L�m��l�e!P�V��Y��j��'-!���>[[ҲX�L�+c=����`�҂Jj�3��:���ȫ�ݞ���m���z:H���{&Y���w�	H�B�M(I�4��<�j	H�!�(�vJC0�T�0z�ʺYb0ueUUUmǺ�oo��1�����I֙"��;?�NÛ�Ebܕ�wv��0.���;��B c2�3��7Q�w��{��>�,*?�t���$��{Y��w��L����4�n���I�=��-���օ�FH��*V�P�݄��]�PdUȔ7��L̉�D"���-Zp�X����J�C��#�	lqn�`�9d��XC2��Ú�@^4��D�W� k��)1�`婤t��1�!��	�b:�����P��;�`^1J;ī�OV��J#�F\��)]Y�����_-�IW@��*H�E7&�xW�2��U��
1#�����h�3:֋��d�_���S6�֒��B�!��l��<�U��F�
�9nJG@Mc�G.�ͦ���aq���3;S(<��&­���|��0�"�*�	��C,C��d�a���9exV2��Њ�#"�����Zq�K7�����2$]�0�SFS-|ېV�'�Y���o���7L��?�R��B2�G�d�E�8��Q�kG�0�h��� |�ř��ih�]�vMy�J�Pô�I�*J%�u�	��b�ԈX*b.�@��lV.x��Ţ�>�qց�C3�B���ٺ*�f�yTT���1i��u+/��L�Đu���D��[����v���0<z��4r���.�؅&ȴkD�ܔS@��i��^ڜ�!)�*IR�X))�.�!,.��;Ո8����_Ft_�M�B�\����AT��	bB~f�o�Db��e�L���[��M���ˣ�73m�����H�
w84`