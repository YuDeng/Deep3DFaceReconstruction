
<
shapePlaceholder*
dtype0*
shape:��
=
normalPlaceholder*
dtype0*
shape:��
<
colorPlaceholder*
dtype0*
shape:��
6
triPlaceholder*
shape:
��*
dtype0
F
Reshape/shapeConst*!
valueB"   }�     *
dtype0
?
ReshapeReshapeshapeReshape/shape*
T0*
Tshape0
H
Reshape_1/shapeConst*!
valueB"   }�     *
dtype0
D
	Reshape_1ReshapenormalReshape_1/shape*
T0*
Tshape0
H
Reshape_2/shapeConst*!
valueB"   }�     *
dtype0
C
	Reshape_2ReshapecolorReshape_2/shape*
T0*
Tshape0
>
ConstConst*!
valueB"           A*
dtype0
@
Const_1Const*!
valueB"            *
dtype0
@
Const_2Const*
dtype0*!
valueB"      �?    
@
Const_3Const*!
valueB"         P�G*
dtype0
H
Reshape_3/shapeConst*!
valueB"         *
dtype0
E
	Reshape_3ReshapeConst_3Reshape_3/shape*
Tshape0*
T0
G
Tile/multiplesConst*!
valueB"         *
dtype0
B
TileTile	Reshape_3Tile/multiples*

Tmultiples0*
T0
@
Const_4Const*!
valueB"            *
dtype0
H
Reshape_4/shapeConst*!
valueB"         *
dtype0
E
	Reshape_4ReshapeConst_4Reshape_4/shape*
T0*
Tshape0
I
Tile_1/multiplesConst*!
valueB"         *
dtype0
F
Tile_1Tile	Reshape_4Tile_1/multiples*

Tmultiples0*
T0
@
Const_5Const*!
valueB"  �?  �?  �?*
dtype0
D
Reshape_5/shapeConst*
valueB"      *
dtype0
E
	Reshape_5ReshapeConst_5Reshape_5/shape*
T0*
Tshape0
E
Tile_2/multiplesConst*
valueB"      *
dtype0
F
Tile_2Tile	Reshape_5Tile_2/multiples*

Tmultiples0*
T0
2
sub/yConst*
valueB
 *  �?*
dtype0

subSubtrisub/y*
T0
)
CastCastsub*

SrcT0*

DstT0
8
ExpandDims/dimConst*
value	B : *
dtype0
D

ExpandDims
ExpandDimsConstExpandDims/dim*
T0*

Tdim0
E
Tile_3/multiplesConst*
valueB"      *
dtype0
G
Tile_3Tile
ExpandDimsTile_3/multiples*

Tmultiples0*
T0
:
ExpandDims_1/dimConst*
value	B : *
dtype0
J
ExpandDims_1
ExpandDimsConst_1ExpandDims_1/dim*

Tdim0*
T0
E
Tile_4/multiplesConst*
valueB"      *
dtype0
I
Tile_4TileExpandDims_1Tile_4/multiples*

Tmultiples0*
T0
:
ExpandDims_2/dimConst*
value	B : *
dtype0
J
ExpandDims_2
ExpandDimsConst_2ExpandDims_2/dim*

Tdim0*
T0
E
Tile_5/multiplesConst*
valueB"      *
dtype0
I
Tile_5TileExpandDims_2Tile_5/multiples*

Tmultiples0*
T0
8
Const_6Const*
valueB*cIA*
dtype0
8
Const_7Const*
valueB*
�#<*
dtype0
8
Const_8Const*
valueB*  pA*
dtype0
5
concat/axisConst*
value	B :*
dtype0
\
concatConcatV2	Reshape_1Reshape	Reshape_2concat/axis*

Tidx0*
T0*
N
%
sub_1SubTile_4Tile_3*
T0
&
norm/mulMulsub_1sub_1*
T0
H
norm/Sum/reduction_indicesConst*
valueB:*
dtype0
[
norm/SumSumnorm/mulnorm/Sum/reduction_indices*
T0*
	keep_dims(*

Tidx0
$
	norm/SqrtSqrtnorm/Sum*
T0
-
truedivRealDivsub_1	norm/Sqrt*
T0
(
CrossCrosstruedivTile_5*
T0
(

norm_1/mulMulCrossCross*
T0
J
norm_1/Sum/reduction_indicesConst*
valueB:*
dtype0
a

norm_1/SumSum
norm_1/mulnorm_1/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0
(
norm_1/SqrtSqrt
norm_1/Sum*
T0
1
	truediv_1RealDivCrossnorm_1/Sqrt*
T0
-
Cross_1Cross	truediv_1truediv*
T0
H
Const_9Const*)
value B"              �?*
dtype0
H
Reshape_6/shapeConst*!
valueB"         *
dtype0
E
	Reshape_6ReshapeConst_9Reshape_6/shape*
T0*
Tshape0

NegNegtruediv*
T0
?

zeros_likeConst*
valueB*    *
dtype0
P
stackPack	truediv_1Cross_1Neg
zeros_like*
T0*

axis*
N
7
concat_1/axisConst*
value	B :*
dtype0
S
concat_1ConcatV2stack	Reshape_6concat_1/axis*
T0*
N*

Tidx0
9
eye/onesConst*
valueB*  �?*
dtype0
/
eye/MatrixDiag
MatrixDiageye/ones*
T0
:
ExpandDims_3/dimConst*
value	B : *
dtype0
Q
ExpandDims_3
ExpandDimseye/MatrixDiagExpandDims_3/dim*

Tdim0*
T0
I
Tile_6/multiplesConst*!
valueB"         *
dtype0
I
Tile_6TileExpandDims_3Tile_6/multiples*

Tmultiples0*
T0

Neg_1NegTile_3*
T0
:
ExpandDims_4/dimConst*
value	B :*
dtype0
H
ExpandDims_4
ExpandDimsNeg_1ExpandDims_4/dim*

Tdim0*
T0
7
concat_2/axisConst*
value	B :*
dtype0
W
concat_2ConcatV2Tile_6ExpandDims_4concat_2/axis*
T0*
N*

Tidx0
H
Reshape_7/shapeConst*!
valueB"         *
dtype0
G
	Reshape_7Reshape	Reshape_6Reshape_7/shape*
Tshape0*
T0
7
concat_3/axisConst*
value	B :*
dtype0
V
concat_3ConcatV2concat_2	Reshape_7concat_3/axis*

Tidx0*
T0*
N
L
MatMulBatchMatMulconcat_1concat_3*
T0*
adj_x( *
adj_y( 
2
mul/yConst*
valueB
 *5�<*
dtype0
#
mulMulConst_6mul/y*
T0

TanTanmul*
T0
8
truediv_2/xConst*
valueB
 *  �?*
dtype0
/
	truediv_2RealDivtruediv_2/xTan*
T0
'
sub_2SubConst_8Const_7*
T0
%
addAddConst_8Const_7*
T0

Neg_2Negadd*
T0
+
	truediv_3RealDivNeg_2sub_2*
T0
'
mul_1MulConst_8Const_7*
T0
+
	truediv_4RealDivmul_1sub_2*
T0
4
mul_2/xConst*
dtype0*
valueB
 *   �
)
mul_2Mulmul_2/x	truediv_4*
T0
=
zeros_like_1Const*
valueB*    *
dtype0
8
truediv_5/yConst*
dtype0*
valueB
 *  �?
5
	truediv_5RealDiv	truediv_2truediv_5/y*
T0
=
ones_like/ShapeConst*
valueB:*
dtype0
<
ones_like/ConstConst*
dtype0*
valueB
 *  �?
<
	ones_likeFillones_like/Shapeones_like/Const*
T0
 
Neg_3Neg	ones_like*
T0
7
concat_4/axisConst*
value	B : *
dtype0
�
concat_4ConcatV2	truediv_5zeros_like_1zeros_like_1zeros_like_1zeros_like_1	truediv_2zeros_like_1zeros_like_1zeros_like_1zeros_like_1	truediv_3mul_2zeros_like_1zeros_like_1Neg_3zeros_like_1concat_4/axis*
T0*
N*

Tidx0
H
Reshape_8/shapeConst*!
valueB"      ����*
dtype0
F
	Reshape_8Reshapeconcat_4Reshape_8/shape*
T0*
Tshape0
G
transpose/permConst*!
valueB"          *
dtype0
G
	transpose	Transpose	Reshape_8transpose/perm*
Tperm0*
T0
M
MatMul_1BatchMatMul	transposeMatMul*
adj_x( *
adj_y( *
T0
?
onesConst*#
valueB��*  �?*
dtype0
7
concat_5/axisConst*
value	B :*
dtype0
P
concat_5ConcatV2Reshapeonesconcat_5/axis*
T0*
N*

Tidx0
N
MatMul_2BatchMatMulconcat_5MatMul_1*
adj_y(*
T0*
adj_x( 
L
strided_slice/stackConst*!
valueB"           *
dtype0
N
strided_slice/stack_1Const*!
valueB"           *
dtype0
N
strided_slice/stack_2Const*!
valueB"         *
dtype0
�
strided_sliceStridedSliceMatMul_2strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
"
AbsAbsstrided_slice*
T0
6
	Maximum/yConst*
valueB
 *�7�5*
dtype0
+
MaximumMaximumAbs	Maximum/y*
T0
N
strided_slice_1/stackConst*!
valueB"           *
dtype0
P
strided_slice_1/stack_1Const*!
valueB"           *
dtype0
P
strided_slice_1/stack_2Const*!
valueB"         *
dtype0
�
strided_slice_1StridedSliceMatMul_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
&
SignSignstrided_slice_1*
T0
$
mul_3MulMaximumSign*
T0
N
strided_slice_2/stackConst*!
valueB"            *
dtype0
P
strided_slice_2/stack_1Const*!
valueB"           *
dtype0
P
strided_slice_2/stack_2Const*!
valueB"         *
dtype0
�
strided_slice_2StridedSliceMatMul_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
5
	truediv_6RealDivstrided_slice_2mul_3*
T0
N
strided_slice_3/stackConst*!
valueB"            *
dtype0
P
strided_slice_3/stack_1Const*!
valueB"           *
dtype0
P
strided_slice_3/stack_2Const*!
valueB"         *
dtype0
�
strided_slice_3StridedSlice	truediv_6strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
h
RasterizeTrianglesRasterizeTrianglesstrided_slice_3Cast*
image_width�*
image_height�
D
Reshape_9/shapeConst*
valueB"����   *
dtype0
P
	Reshape_9ReshapeRasterizeTrianglesReshape_9/shape*
Tshape0*
T0
G
Reshape_10/shapeConst*
valueB:
���������*
dtype0
T

Reshape_10ReshapeRasterizeTriangles:1Reshape_10/shape*
T0*
Tshape0
Y
GatherGatherCast
Reshape_10*
Tindices0*
validate_indices(*
Tparams0
/
Add/yConst*
value	B : *
dtype0
"
AddAddGatherAdd/y*
T0
(
concat_6Identity	Reshape_9*
T0
"
concat_7IdentityAdd*
T0
E
Reshape_11/shapeConst*
valueB"}�  ����*
dtype0
F

Reshape_11ReshapeconcatReshape_11/shape*
T0*
Tshape0
_
Gather_1Gather
Reshape_11concat_7*
Tindices0*
validate_indices(*
Tparams0
G
Reshape_12/shapeConst*
valueB:
���������*
dtype0
E

Reshape_12Reshapemul_3Reshape_12/shape*
Tshape0*
T0
-

Reciprocal
Reciprocal
Reshape_12*
T0
_
Gather_2Gather
Reciprocalconcat_7*
Tindices0*
validate_indices(*
Tparams0
'
MulMulconcat_6Gather_2*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSumMulSum/reduction_indices*
	keep_dims( *

Tidx0*
T0
8
Maximum_1/yConst*
valueB
 *�7�5*
dtype0
/
	Maximum_1MaximumSumMaximum_1/y*
T0
:
ExpandDims_5/dimConst*
value	B :*
dtype0
L
ExpandDims_5
ExpandDims	Maximum_1ExpandDims_5/dim*

Tdim0*
T0
0
	truediv_7RealDivMulExpandDims_5*
T0
:
ExpandDims_6/dimConst*
value	B :*
dtype0
L
ExpandDims_6
ExpandDims	truediv_7ExpandDims_6/dim*

Tdim0*
T0
-
Mul_1MulGather_1ExpandDims_6*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1SumMul_1Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0
M
Reshape_13/shapeConst*%
valueB"   �   �   ����*
dtype0
E

Reshape_13ReshapeSum_1Reshape_13/shape*
T0*
Tshape0
4
mul_4/xConst*
valueB
 *   @*
dtype0
)
mul_4Mulmul_4/x	truediv_7*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2Summul_4Sum_2/reduction_indices*
T0*
	keep_dims( *

Tidx0
D
clip_by_value/Minimum/yConst*
dtype0*
valueB
 *  �?
I
clip_by_value/MinimumMinimumSum_2clip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
dtype0*
valueB
 *    
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
M
Reshape_14/shapeConst*%
valueB"   �   �      *
dtype0
M

Reshape_14Reshapeclip_by_valueReshape_14/shape*
Tshape0*
T0
-
mul_5Mul
Reshape_14
Reshape_13*
T0
4
sub_3/xConst*
valueB
 *  �?*
dtype0
*
sub_3Subsub_3/x
Reshape_14*
T0
X
mul_6/yConst*9
value0B.	"$  ��  ��  ��  ��  ��  ��  ��  ��  ��*
dtype0
%
mul_6Mulsub_3mul_6/y*
T0
#
add_1Addmul_5mul_6*
T0
R
strided_slice_4/stackConst*%
valueB"                *
dtype0
T
strided_slice_4/stack_1Const*%
valueB"               *
dtype0
T
strided_slice_4/stack_2Const*%
valueB"            *
dtype0
�
strided_slice_4StridedSliceadd_1strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
7
l2_normalize/SquareSquarestrided_slice_4*
T0
L
"l2_normalize/Sum/reduction_indicesConst*
dtype0*
value	B :
v
l2_normalize/SumSuml2_normalize/Square"l2_normalize/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0
C
l2_normalize/Maximum/yConst*
dtype0*
valueB
 *̼�+
R
l2_normalize/MaximumMaximuml2_normalize/Suml2_normalize/Maximum/y*
T0
:
l2_normalize/RsqrtRsqrtl2_normalize/Maximum*
T0
A
l2_normalizeMulstrided_slice_4l2_normalize/Rsqrt*
T0
R
strided_slice_5/stackConst*%
valueB"               *
dtype0
T
strided_slice_5/stack_1Const*%
valueB"               *
dtype0
T
strided_slice_5/stack_2Const*%
valueB"            *
dtype0
�
strided_slice_5StridedSliceadd_1strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
R
strided_slice_6/stackConst*%
valueB"               *
dtype0
T
strided_slice_6/stack_1Const*%
valueB"            	   *
dtype0
T
strided_slice_6/stack_2Const*
dtype0*%
valueB"            
�
strided_slice_6StridedSliceadd_1strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0
I
Reshape_15/shapeConst*!
valueB"   ����   *
dtype0
L

Reshape_15Reshapel2_normalizeReshape_15/shape*
T0*
Tshape0
I
Reshape_16/shapeConst*!
valueB"   ����   *
dtype0
J

Reshape_16Reshape
Reshape_14Reshape_16/shape*
T0*
Tshape0
I
Reshape_17/shapeConst*!
valueB"   ����   *
dtype0
O

Reshape_17Reshapestrided_slice_6Reshape_17/shape*
T0*
Tshape0
@
zerosConst*#
valueB��*    *
dtype0
:
ExpandDims_7/dimConst*
value	B :*
dtype0
I
ExpandDims_7
ExpandDimsTile_2ExpandDims_7/dim*

Tdim0*
T0
/
mul_7MulExpandDims_7
Reshape_17*
T0
#
Add_1Addzerosmul_7*
T0
I
Reshape_18/shapeConst*
dtype0*!
valueB"   ����   
O

Reshape_18Reshapestrided_slice_5Reshape_18/shape*
Tshape0*
T0
9
stack_1Pack
Reshape_18*
T0*

axis*
N
:
ExpandDims_8/dimConst*
value	B :*
dtype0
G
ExpandDims_8
ExpandDimsTileExpandDims_8/dim*
T0*

Tdim0
,
sub_4SubExpandDims_8stack_1*
T0
/
l2_normalize_1/SquareSquaresub_4*
T0
N
$l2_normalize_1/Sum/reduction_indicesConst*
value	B :*
dtype0
|
l2_normalize_1/SumSuml2_normalize_1/Square$l2_normalize_1/Sum/reduction_indices*
T0*
	keep_dims(*

Tidx0
E
l2_normalize_1/Maximum/yConst*
valueB
 *̼�+*
dtype0
X
l2_normalize_1/MaximumMaximuml2_normalize_1/Suml2_normalize_1/Maximum/y*
T0
>
l2_normalize_1/RsqrtRsqrtl2_normalize_1/Maximum*
T0
;
l2_normalize_1Mulsub_4l2_normalize_1/Rsqrt*
T0
:
ExpandDims_9/dimConst*
value	B :*
dtype0
M
ExpandDims_9
ExpandDims
Reshape_15ExpandDims_9/dim*

Tdim0*
T0
3
mul_8MulExpandDims_9l2_normalize_1*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
R
Sum_3Summul_8Sum_3/reduction_indices*
	keep_dims( *

Tidx0*
T0
F
clip_by_value_1/Minimum/yConst*
valueB
 *  �?*
dtype0
M
clip_by_value_1/MinimumMinimumSum_3clip_by_value_1/Minimum/y*
T0
>
clip_by_value_1/yConst*
valueB
 *    *
dtype0
O
clip_by_value_1Maximumclip_by_value_1/Minimumclip_by_value_1/y*
T0
;
ExpandDims_10/dimConst*
value	B :*
dtype0
O
ExpandDims_10
ExpandDims
Reshape_17ExpandDims_10/dim*

Tdim0*
T0
;
ExpandDims_11/dimConst*
value	B :*
dtype0
T
ExpandDims_11
ExpandDimsclip_by_value_1ExpandDims_11/dim*
T0*

Tdim0
3
mul_9MulExpandDims_10ExpandDims_11*
T0
;
ExpandDims_12/dimConst*
value	B :*
dtype0
K
ExpandDims_12
ExpandDimsTile_1ExpandDims_12/dim*

Tdim0*
T0
,
mul_10Mulmul_9ExpandDims_12*
T0
A
Sum_4/reduction_indicesConst*
value	B :*
dtype0
S
Sum_4Summul_10Sum_4/reduction_indices*
	keep_dims( *

Tidx0*
T0
#
Add_2AddAdd_1Sum_4*
T0
M
Reshape_19/shapeConst*%
valueB"   �   �      *
dtype0
E

Reshape_19ReshapeAdd_2Reshape_19/shape*
Tshape0*
T0
M
Reshape_20/shapeConst*%
valueB"   �   �      *
dtype0
J

Reshape_20Reshape
Reshape_16Reshape_20/shape*
T0*
Tshape0
6
	Greater/yConst*
valueB
 *   ?*
dtype0
2
GreaterGreater
Reshape_20	Greater/y*
T0
7
concat_8/axisConst*
value	B :*
dtype0
\
concat_8ConcatV2GreaterGreaterGreaterconcat_8/axis*

Tidx0*
T0
*
N
K
zeros_like_2Const*'
valueB��*    *
dtype0
=
SelectSelectconcat_8
Reshape_19zeros_like_2*
T0
7
concat_9/axisConst*
value	B :*
dtype0
U
concat_9ConcatV2Select
Reshape_20concat_9/axis*
N*

Tidx0*
T0
<
ReverseV2/axisConst*
valueB:*
dtype0
E
	ReverseV2	ReverseV2concat_9ReverseV2/axis*

Tidx0*
T0
*

render_imgIdentity	ReverseV2*
T0 