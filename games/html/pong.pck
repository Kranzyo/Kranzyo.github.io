GDPC                �                                                                         P   res://.godot/exported/133200997/export-309a66733c1516fae9d59008cfb75318-ball.scn�            _����/;6:��_���-    T   res://.godot/exported/133200997/export-4c1947824a07a821e67d44117e926455-paddle.scn  �            e0q�y��,����    X   res://.godot/exported/133200997/export-9863f609bb1a5505d1388b18c7eacd3d-enemy_paddle.scn�
      �      � ��UpXZ�D���    T   res://.godot/exported/133200997/export-a0631f9feb269b9ee464fe0e4794e617-level.scn          �      	�p���h7R?Y�Ql    ,   res://.godot/global_script_class_cache.cfg  �4             ��Р�8���8~$}P�    D   res://.godot/imported/ball.png-7feb407e6aaca008dfa0a4e9547013e6.ctex               �VP�X}�xc�C[�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�$            ：Qt�E�cO���       res://.godot/uid_cache.bin  `8            %���P��\�V?�3J��        res://graphics/ball.png.import         �       �S������;M��RK�       res://icon.svg  �4      �      k����X3Y���f       res://icon.svg.import   �1      �       �)�,�l\G���|kZ�       res://project.binaryp:            0bl�[�d�k�-2'�C       res://scenes/ball/ball.gd   �      �      �"�jwQ����X    $   res://scenes/ball/ball.tscn.remap   �2      a       �\ݩ���,�A    ,   res://scenes/enemies/enemy_paddle.tscn.remap03      i       �-1^j�I=�J�e�i�       res://scenes/level.gd   �      e      F/`�٤�t)0�`$��        res://scenes/level.tscn.remap   4      b       �E�C�5�X�X>�#��        res://scenes/player/paddle.gd   �      �       �Lj�q�s�߮��猾    (   res://scenes/player/paddle.tscn.remap   �3      c       �@W����Jϊ|�=��                GST2          ����                      �  RIFF�  WEBPVP8L�  /G0��?��p���Ȋ�Аc�n�X�%��� `��K�d�2��������Cp�F�����+�W��jmo�(IA|�C�; �� d�7�7;?"��F��lg8U��#Ir�A�p��	�Ƴ3�&;b���/��j۶aR �H�����銩��͜��4X�y��|6Y�M<���ݴ#��Aڗ�(���"�͸Ql�Ul�vO軧��
��hV��N�M�,@��;�V��Triԃ4j��S��dn&!/ �pU��v;�4H̾MC��C��蛴��Y��Y�Z�k�=�*��T�i��R=�Z�J6��V�M�]�M�]�Mm]4m=���+�jy���¥V�%�T�e�V���N
�ʓ�A�׏� u�0�$%������	PB� M��*I
����
Vp��H�ƕ�I<r&y��e���a���a����De�a}���%{[�^R�aЋ��!�%�������ߋ��+�!ҙz�d�?�г�Y���1r��yt\pp���^���1���+�Fg	?�X�������������]0�llX~���2N/c/���rQx����_7>(XqQ/r��x<���F�#���W��%��.�a˔Vl|�3:�� ��Hx�� �9�;�`��!̈bH@?"8�gBJ?[B>�E�b�k�-�r��%/�<�eJw-B/��K�JR�B��Chǡ�k�rD;^*A"��K��j5K2��z��J� �D��c�ܢ��`%MAP�d�^�e�$��1I�I�`�4i[ Ʊ- �	֣c6��zt��6X���.��8$��^����^��)�m��RF�'C�WFj���^��r��Q���z��ݭ��^ ;�@pg(��q�[ǡ֍ �q�&��#����۫9�P�ֈ�z%����+�G�RW(j�$UN�mu�̯��s"k�BN��m�W��D?K�No��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cxw2ilrj6ym1h"
path="res://.godot/imported/ball.png-7feb407e6aaca008dfa0a4e9547013e6.ctex"
metadata={
"vram_texture": false
}
                extends CharacterBody2D


var vel = Vector2(1,1)

var x = -1

const SPEED = 700
		
func _ready():
	if randf() < 0.5:
		x = 1
		
	vel = Vector2(x, randf_range(-1, 1) ) * SPEED
	
func _physics_process(delta):

	var collision_info = move_and_collide(vel * delta)
	if collision_info:
		vel = vel.bounce(collision_info.get_normal())
		vel *= 1.01
	
func get_base_vel():
	if randf() < 0.5:
		x = 1
	else:
		x = -1
	return Vector2(x, randf_range(-1, 1) ) * SPEED 


	
   RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    script 	   _bundled       Script    res://scenes/ball/ball.gd ��������
   Texture2D    res://graphics/ball.png ;��6"KY      local://CircleShape2D_ujt2t �         local://PackedScene_28vfs �         CircleShape2D            C         PackedScene          	         names "   	      Ball    script    CharacterBody2D    CollisionShape2D    scale    shape 	   Sprite2D 	   position    texture    	   variants                 
   ��L>��L>          
   ��������               node_count             nodes     !   ��������       ����                            ����                                 ����                               conn_count              conns               node_paths              editable_instances              version             RSRC               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled           local://RectangleShape2D_ep6hu +         local://PackedScene_jhmja \         RectangleShape2D       
     @C  HC         PackedScene          	         names "   	      EnemyPaddle    disable_mode    CharacterBody2D    Polygon2D2    polygon 
   Polygon2D    CollisionShape2D    scale    shape    	   variants             %        ��   �  �B   �  �B   A  ��   A
     �?%ף=                node_count             nodes        ��������       ����                            ����                           ����                         conn_count              conns               node_paths              editable_instances              version             RSRC              extends CharacterBody2D

const SPEED = 400

func _physics_process(_delta):
	var direction = Vector2(0, int(Input.is_action_pressed("down")) - int(Input.is_action_pressed("up")))
	velocity = direction * SPEED
	
	move_and_slide()
            RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://scenes/player/paddle.gd ��������      local://RectangleShape2D_ep6hu `         local://PackedScene_prsar �         RectangleShape2D       
     @C  HC         PackedScene          	         names "   
      Paddle    disable_mode    script    CharacterBody2D    Polygon2D2    polygon 
   Polygon2D    CollisionShape2D    scale    shape    	   variants                       %        ��   �  �B   �  �B   A  ��   A
     �?%ף=                node_count             nodes        ��������       ����                                  ����                           ����         	                conn_count              conns               node_paths              editable_instances              version             RSRC               extends Node2D

var left_side_points = 0
var right_side_points = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#Engine.time_scale = 4
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	# simple "ai"
	if $Ball.position.y > $EnemyPaddle.position.y:
		$EnemyPaddle.velocity = Vector2(0, 1) * 500
		$EnemyPaddle.move_and_slide()
	else:
		$EnemyPaddle.velocity = Vector2(0, -1) * 500
		$EnemyPaddle.move_and_slide()
		
	#if $Ball.position.y > $Paddle.position.y:
		#$Paddle.velocity = Vector2(0, 1) * 500
		#$Paddle.move_and_slide()
	#else:
		#$Paddle.velocity = Vector2(0, -1) * 500
		#$Paddle.move_and_slide()
	
	# update scores
	var format_string = "%s | %s"
	$Control/Label.text = format_string % [str(left_side_points), str(right_side_points)]
	

func reload_scene():
	$Ball.position = $Center.position
	$Ball.vel = $Ball.get_base_vel()


func _on_game_window_side_left_body_entered(_body):
	left_side_points += 1
	
	
	reload_scene()


func _on_game_window_side_right_body_entered(_body):
	right_side_points += 1
	reload_scene()
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   friction    rough    bounce 
   absorbent    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset 	   _bundled       Script    res://scenes/level.gd ��������   PackedScene     res://scenes/player/paddle.tscn XkAS+
   PackedScene '   res://scenes/enemies/enemy_paddle.tscn ,=��    PackedScene    res://scenes/ball/ball.tscn �w�0�k%i      local://RectangleShape2D_25kdd �         local://PhysicsMaterial_p8fbf �         local://RectangleShape2D_6o7lb �         local://PhysicsMaterial_0x3yc ,         local://RectangleShape2D_v2cyg X         local://LabelSettings_s2cl4 �         local://PackedScene_1i5y5 �         RectangleShape2D       
   ���@P'D         PhysicsMaterial            �?         RectangleShape2D       
    @�D  �B         PhysicsMaterial            �?         RectangleShape2D       
    @�D  �B         LabelSettings          d                              ���>         PackedScene          	         names "   #      Level    script    Node2D    Paddle 	   position 	   rotation    EnemyPaddle    Ball    Center 	   Marker2D 
   GameEdges    GameWindowSideLeft    scale    Area2D    CollisionShape2D    shape    GameWindowSideRight    GameWindowUp    disable_mode    physics_material_override    StaticBody2D    GameWindowsDown    Control    layout_mode    anchors_preset    offset_left    offset_top    offset_right    offset_bottom    Label    text    label_settings '   _on_game_window_side_left_body_entered    body_entered (   _on_game_window_side_right_body_entered    	   variants    "                      
     �B  �C   ��?         
    ��D  �C         
      D  �C
     ��  �C
   �@���?
   K�Q�GU�@          
   5�CGU�@
    �D  ��               
     @�   �         
     D @6D         
     �A  4B                          ��C     B    �	D     �B     �A     ��     uC     C      0 | 0                node_count             nodes     �   ��������       ����                      ���                                 ���                                 ���                           	      ����                        
   ����                     ����            	                    ����      
                          ����            	                    ����                                ����                         
             ����                                ����                                      ����                                 ����                                                        ����                                           !             conn_count             conns               !                         !   "                    node_paths              editable_instances              version             RSRC         GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�m�m۬�}�p,��5xi�d�M���)3��$�V������3���$G�$2#�Z��v{Z�lێ=W�~� �����d�vF���h���ڋ��F����1��ڶ�i�엵���bVff3/���Vff���Ҿ%���qd���m�J�}����t�"<�,���`B �m���]ILb�����Cp�F�D�=���c*��XA6���$
2#�E.@$���A.T�p )��#L��;Ev9	Б )��D)�f(qA�r�3A�,#ѐA6��npy:<ƨ�Ӱ����dK���|��m�v�N�>��n�e�(�	>����ٍ!x��y�:��9��4�C���#�Ka���9�i]9m��h�{Bb�k@�t��:s����¼@>&�r� ��w�GA����ը>�l�;��:�
�wT���]�i]zݥ~@o��>l�|�2�Ż}�:�S�;5�-�¸ߥW�vi�OA�x��Wwk�f��{�+�h�i�
4�˰^91��z�8�(��yޔ7֛�;0����^en2�2i�s�)3�E�f��Lt�YZ���f-�[u2}��^q����P��r��v��
�Dd��ݷ@��&���F2�%�XZ!�5�.s�:�!�Њ�Ǝ��(��e!m��E$IQ�=VX'�E1oܪì�v��47�Fы�K챂D�Z�#[1-�7�Js��!�W.3׹p���R�R�Ctb������y��lT ��Z�4�729f�Ј)w��T0Ĕ�ix�\�b�9�<%�#Ɩs�Z�O�mjX �qZ0W����E�Y�ڨD!�$G�v����BJ�f|pq8��5�g�o��9�l�?���Q˝+U�	>�7�K��z�t����n�H�+��FbQ9���3g-UCv���-�n�*���E��A�҂
�Dʶ� ��WA�d�j��+�5�Ȓ���"���n�U��^�����$G��WX+\^�"�h.���M�3�e.
����MX�K,�Jfѕ*N�^�o2��:ՙ�#o�e.
��p�"<W22ENd�4B�V4x0=حZ�y����\^�J��dg��_4�oW�d�ĭ:Q��7c�ڡ��
A>��E�q�e-��2�=Ϲkh���*���jh�?4�QK��y@'�����zu;<-��|�����Y٠m|�+ۡII+^���L5j+�QK]����I �y��[�����(}�*>+���$��A3�EPg�K{��_;�v�K@���U��� gO��g��F� ���gW� �#J$��U~��-��u���������N�@���2@1��Vs���Ŷ`����Dd$R�":$ x��@�t���+D�}� \F�|��h��>�B�����B#�*6��  ��:���< ���=�P!���G@0��a��N�D�'hX�׀ "5#�l"j߸��n������w@ K�@A3�c s`\���J2�@#�_ 8�����I1�&��EN � 3T�����MEp9N�@�B���?ϓb�C��� � ��+�����N-s�M�  ��k���yA 7 �%@��&��c��� �4�{� � �����"(�ԗ�� �t�!"��TJN�2�O~� fB�R3?�������`��@�f!zD��%|��Z��ʈX��Ǐ�^�b��#5� }ى`�u�S6�F�"'U�JB/!5�>ԫ�������/��;	��O�!z����@�/�'�F�D"#��h�a �׆\-������ Xf  @ �q�`��鎊��M��T�� ���0���}�x^�����.�s�l�>�.�O��J�d/F�ě|+^�3�BS����>2S����L�2ޣm�=�Έ���[��6>���TъÞ.<m�3^iжC���D5�抺�����wO"F�Qv�ږ�Po͕ʾ��"��B��כS�p�
��E1e�������*c�������v���%'ž��&=�Y�ް>1�/E������}�_��#��|������ФT7׉����u������>����0����緗?47�j�b^�7�ě�5�7�����|t�H�Ե�1#�~��>�̮�|/y�,ol�|o.��QJ rmϘO���:��n�ϯ�1�Z��ը�u9�A������Yg��a�\���x���l���(����L��a��q��%`�O6~1�9���d�O{�Vd��	��r\�՜Yd$�,�P'�~�|Z!�v{�N�`���T����3?DwD��X3l �����*����7l�h����	;�ߚ�;h���i�0�6	>��-�/�&}% %��8���=+��N�1�Ye��宠p�kb_����$P�i�5�]��:��Wb�����������ě|��[3l����`��# -���KQ�W�O��eǛ�"�7�Ƭ�љ�WZ�:|���є9�Y5�m7�����o������F^ߋ������������������Р��Ze�>�������������?H^����&=����~�?ڭ�>���Np�3��~���J�5jk�5!ˀ�"�aM��Z%�-,�QU⃳����m����:�#��������<�o�����ۇ���ˇ/�u�S9��������ٲG}��?~<�]��?>��u��9��_7=}�����~����jN���2�%>�K�C�T���"������Ģ~$�Cc�J�I�s�? wڻU���ə��KJ7����+U%��$x�6
�$0�T����E45������G���U7�3��Z��󴘶�L�������^	dW{q����d�lQ-��u.�:{�������Q��_'�X*�e�:�7��.1�#���(� �k����E�Q��=�	�:e[����u��	�*�PF%*"+B��QKc˪�:Y��ـĘ��ʴ�b�1�������\w����n���l镲��l��i#����!WĶ��L}rեm|�{�\�<mۇ�B�HQ���m�����x�a�j9.�cRD�@��fi9O�.e�@�+�4�<�������v4�[���#bD�j��W����֢4�[>.�c�1-�R�����N�v��[�O�>��v�e�66$����P
�HQ��9���r�	5FO� �<���1f����kH���e�;����ˆB�1C���j@��qdK|
����4ŧ�f�Q��+�     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://br5ijouc0h2go"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-309a66733c1516fae9d59008cfb75318-ball.scn"
               [remap]

path="res://.godot/exported/133200997/export-9863f609bb1a5505d1388b18c7eacd3d-enemy_paddle.scn"
       [remap]

path="res://.godot/exported/133200997/export-4c1947824a07a821e67d44117e926455-paddle.scn"
             [remap]

path="res://.godot/exported/133200997/export-a0631f9feb269b9ee464fe0e4794e617-level.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 814 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H446l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z" fill="#478cbf"/><path d="M483 600c0 34 58 34 58 0v-86c0-34-58-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
              ,=�� &   res://scenes/enemies/enemy_paddle.tscnXkAS+
   res://scenes/player/paddle.tscnR�ͤ��P   res://scenes/level.tscnN,O|�6�2   res://icon.svg;��6"KY   res://graphics/ball.png�w�0�k%i   res://scenes/ball.tscn�w�0�k%i   res://scenes/ball/ball.tscneDsr((   res://export/pong.icon.png@Qr�'j&   res://export/pong.apple-touch-icon.png�_�]��(   res://export/pong.png&���E4n   res://export/html/pong.icon.png��u�Sah+   res://export/html/pong.apple-touch-icon.png��Jo� \,   res://export/html/pong.png     ECFG	      application/config/name         Pong   application/run/main_scene          res://scenes/level.tscn    application/config/features   "         4.2    Mobile     application/config/icon         res://icon.svg  "   display/window/size/viewport_width         #   display/window/size/viewport_height      �     input/up0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode    w      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/down0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script      #   rendering/renderer/rendering_method         mobile     