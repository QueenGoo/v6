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
BZh91AY&SY�3�+ H��7�����������pD@ `y���n�g6=w,�gZ�4V�
I!L�4��=5=4��j?J�S��چ��z�4  	SRM��&�mF� � �  h   �54�F���z��hh��ڃ@ 4dd4P���!= )�S�@ڀ =@4   @ 8    242    �� @�B�1&�4�F���������6���S&�j�jjg�OPG���A�IT0�̃^�e�B>��'��DJ��Rt~��F��3��J�e���6̯7r�Yꩩ��K�lR��W�]3PPB4���{�D�U�!�Z.R9/q�Z�˱B�v�WU���o�G�E�W���DDfL �N�XU\��^�$��岜����3���!��(oV��r;���W�i3X)�ᐝͱH�kL '%B�v�9{��x�v5%�(�	�6��o���,Z$��_��Fm3�G��1x�����+rX��2����"��T�mr�,%k�`����J�����ؼH�)k��	P;��s|9&�@֫�Lû��;;��>����ҿ��,�%��E����T�Z�Hc |�QA���F�P-���ɹ��a��3�U�MX�q����":���WJ���l��$K��,���2����6X�ǭB������h��G��H��C�>oA��!���#'�OA�H�n �1n�^�f������hC���&(��@�ͼÅ�L���ӧJ� � �f�NP;��A�G����ts]�Xl��\T)r)�0�"�9B���A��.��yZH2�M��|;�Q2�)�^��:�m����
�mD��w��JJ��xDN�����-�*e�:�*Ř"�f���=��]�I�B�43fU�ɴ��ʈ��
���J���Y�$W��A?I��W�U;��*�z�q��8�8��=-=�/=��y�g8�1���I$�fjK�"ś42�K�9u�\�6s!�r8����4 �@s�}j�->#��&)Ɏg���4���l��x�!����"fͨ֋�5Gk��L�6U48Ǯ��Еg��*;��,"Tq��Ӹ��:-�lM�w�9��<Ǟ�j�UW�qz����'��.<�R&�n�`��/2juș"&cb���(u?b��`����+3�؛+(;l%��H�7�U98���z%\�E�d$Cx���J�	P��帊	���@gY[�/D�&�"t��0��\l�:�G�������) �%�>JL�&K���m�B��쁞�r%�~.K�
��a�t�b����a��3d�0r�-� Ĕ:0�WU���Oh��p��V��I��sJ$}o�H�hޞxYO�Z�ǧt�F�Apd5�<Bj�[R�?e)Ɂ��ц�z�Ò�Nqߩ�"L�Z"v$L��>(���(��@��hp��ԕy֋ �W9O���쵐2)��Fci�����! �*�T�C�a���+�"/3���`��<�0T%��oE�y�Q��F���r�r�W.�	�\��i��6V�4ŀ_mK�+e�;A�x�Ҕ�����.�:���E����K�.���	�r�xv@�1����F��uX�a+ڒ�j��5:(
2���*C�s6N`��I����ⱗC1DZ"e�]���8��q�;���B֞b1����aX�&�7{لL�>��m���ei!&6p�V�f��(aI���#�[+2�IT�ޣ��*���	�`pE]pT��/x�3�����9�MQJ���f!18�$�}C�nH��Ћ�y�9�+ѣK%�6[ �4#�Q9$pR���C_�1��&�S&��+`,CS�h�����n�ǰ�ƌ��urr�LcȔ֤��0�)n ��'���TB�8�RT�yJ��W|�ĄzH��0��Y��b"u˄�	R�ss��-&H�hJ
���P;�X(�!�RF��5�)z�Q��hR���$�Y�v��n
��Q�$���8R��W�;]�/�-ȿy3Cb�A�&^Hx���d��#��@�@;NBk�ɪڛ`SPJ6�@�@�0w���dJ���84\����5����{p��A5���5�	��E�F���Y@�adL� 1�B5�V��2���"�(H���