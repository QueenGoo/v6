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
BZh91AY&SY0�Ġ s�~�D �����������pD@ `��Et4eKkz�(��u(F�  �I(&)锞�e�6����2'�7�6����z!��=@=@  $@���Q6�ʛқj�~���G���a�G��"=M�jdMC&L��M@4�d&�#!���i�4 f�S@�    2       8 ��4  h�      
�@��L�F��aM=L���<��3S���S�ڞ��Y;|^��{��I&�y�)%^�@�!9�x���������[7j���o�L�ޕ�U4=�be5d�6�.�oD�w���Z'�m�~:�5��Z�;T���\���%;W{GE]+Ki�+�Ԛa��؞z$!�� 1�[����T=:y0��a��sc�����&m��nz49H�)g�U�}O-�֏?6�����n@�Ȅ��kB��gU���A�i�>�q.�q}����Z-Ⱥ��eL��\ۯw�^��9�M�Vf�&^�i\��h�88B�b����1	:�s�+RzExp�\�V�g �R���l���Y�"�_In��:gU����s�Z��tk5�׷���}�I�N�����;G+���:Ĳ��/�S�vOz�4�k?ܻZ�L�c
�b�s�p��_��'J�R�fu��S)fi3��y0���6�B30�.�2|����$��8r�KfIcq����"�۱�3}�v��X�sß�u�����R	u�r���ƉL�3���'R.v6mS��c��.][d�~hD`JDEI���IC�W� ����
B�q�R:iYL�6lT�E�*R����8�d_�ғK��Hb_��}���m���J{���4 �)˸��3sn�Q�6�ak��s1霚���#��t�H��x�����h�N��w��i=�\z�z�i�ak��<�݌Dͦ�>��)}�ՙa'+�'7�x-t���x�<�5��=\��WS"s"E"?�b���q�S&��k���]^U3�io�����,dԇ&���nv�����d�����F�b�~���C
t_�/�*
����`��U�E�R�ީ�^ff���̳��غi�UUI��*F�g�w�[1P����������������>Z{�[�}��윉'��i�*��-����J���2dAcx.nn�c���� � ��u�OG�b{���b�Jt�h�R��/`y�������ﬥ;Xw�(4;�{,o0Q[.��6Z�I�\W�.iW��ub�02ffX�7Pv�|d�+�����+��9D7.jq�P�ݪ�M��Fa�sd�#�1��)ƌ�yR^�P}�H�QQ椉T�}���a�)�����o*�m�e@��<��2�!"���"NX�S�0�lg���Y�p�l�<=�����W�Ц�Z&�ۦ<����g��8�p/&jp��i�2B�=F�T-�+սĒM�B3����2ZMI!�?;�wK�(l�ENo27g���=�Dx�W�ͶeMZ�n��$��3biKM���'���ۥd0������i���V�B xj �:O*���-�^��t�^�>>wL�+�T�
'YJEnzY(�Cl���j�J   >��_��]+�s.����!|�'ڠ_]�<�G{�V���L����1\vg�m#�~횯!�4��BOTש��;N^�m3���c�*�DS������$����}��ψ*����X�]r�q�|�}i��gY��CT`�=�j���Їϟ	v,�]=�=%>�yX�����NG�tF���c7u�V�ɉ`L2Z��s�P6;H:�%�~oZYz�͡ٶ���Z�v�s���������Ժ뺝K����kos��\�j��L�2��,xZ��&���~��U�]�è/h�5*4\�A���-��Q�σ'���49uC"��05?���d`�kqEP����\�����3�4�wVi�bY����"�F��Fy�5�Y�����Y2N��e%�EC�Rt���`��u<_ǎ��eqs}��8|�[o�=$�;��Ys�UE)O �?	Ӿ­iOm�_����H����0�(
��N\ �	��&ݰ�E����A��@����U��9��T�P���C�a-x�G4a�YՁ�Z�K.���0���Z���[4�µ�k|G�>M���+�t��$�O�O�ř�D�9
I2.��8#�i��a3*�(�Ҕ]�=��:hB��`f`5J17:#��a$��Q��Z�e$�(V���SQ㍝��վ4��q�E
��	��h6I)�n�y���Wƿ=�u�i�K�����Kͩ��vg5�,�۵9����O��6����ksBH�EI��j����$��DJQ,� �tJH��a����b�|(�jl\�(�&�A�'I�7	28G��,����M�%��EJ������=M�n7�t=����&ꪒ�]����YN+N�=�g�\�i*gT�t�)j<�?9a��P�*w��xD�ɳ��{zh�UR��H|��7�Ҩ�C�dљj��Lr떊=)�ǁ`�d\���yӭK��f�?T(Lxr�3��ꪤCH>�"�Ł���*�b��IU4��'���;���oZWO<�	�uz�DaM��R��X�S'_�`8�3gي�}T�O�f�^�d������T�4���.`���y����E%,s��5�E�]:�`�a\��\ƿ��툝�-�،�^�z��ߋ�8���7��M��̡��V&+���� ���AbQ[Չ��t%e��$.b{�Q�)�NYD����ھn��O<�+�)�����7�-4��=�UI�j���)�˽EȲ�,�1SMD�k%*R��(P0�)I��T�&V�eM���U�,
ʦR\M8�ӏ�r��)Rh��	�3��T��-�?��D>>ažZ<��p��/��'���*�����U'8���s">i�9F�Zlm�<�{���'���u�V�2����IN�9�i��,�Y�KK\���E��i;_��(�\��oj�nY&�m�Q)0�	.�K��j��$��Z_�Ғ]1�����}R�?�ǳIn�u!ܱ����NK���;�˔����2��)J�s���f�]k�&�S!麳P�.w�V�(�O:�g�jo0�h��˹�B��p�s��-6�e%R�d˃U7b{�i2k&&g���p�4:96/��QƢV��5��zM:�b�J�K)Y�*���oZL�_46ЛMS�_>���2����c4E�x4�f96B�|ԓDMq�[vY�Ys}���ު����8�������T������#��Ư��i?-����w�vy"�y����u�δ�Γ��v,��1�'Wd�M[Y�e��.|8^y�7O6N�w/����yl?M$T)UT�\�NX��m�NAai��E6�KL�J��N�T�(.Id�Qk&�g�$w��FCs|ٲґ�#��aJ���7��yq�=5�>��K����$�}Đ��t܂�j!?r5�!Pr>��UjS��2B��?�]��B@��