Љб
ш
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758еЌ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
|
SGD/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameSGD/m/dense_2/bias
u
&SGD/m/dense_2/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_2/bias*
_output_shapes
:*
dtype0

SGD/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameSGD/m/dense_2/kernel
}
(SGD/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_2/kernel*
_output_shapes

:
*
dtype0
|
SGD/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameSGD/m/dense_1/bias
u
&SGD/m/dense_1/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/bias*
_output_shapes
:
*
dtype0

SGD/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameSGD/m/dense_1/kernel
}
(SGD/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense_1/kernel*
_output_shapes

:
*
dtype0
x
SGD/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameSGD/m/dense/bias
q
$SGD/m/dense/bias/Read/ReadVariableOpReadVariableOpSGD/m/dense/bias*
_output_shapes
:*
dtype0

SGD/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*#
shared_nameSGD/m/dense/kernel
y
&SGD/m/dense/kernel/Read/ReadVariableOpReadVariableOpSGD/m/dense/kernel*
_output_shapes

:@*
dtype0
И
.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*?
shared_name0.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernel
Б
BSGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernel*
_output_shapes

:@@*
dtype0
Є
$SGD/m/rnn_1/custom_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*5
shared_name&$SGD/m/rnn_1/custom_rnn_cell_1/kernel

8SGD/m/rnn_1/custom_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOp$SGD/m/rnn_1/custom_rnn_cell_1/kernel*
_output_shapes

:@@*
dtype0
А
*SGD/m/rnn/custom_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*;
shared_name,*SGD/m/rnn/custom_rnn_cell/recurrent_kernel
Љ
>SGD/m/rnn/custom_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp*SGD/m/rnn/custom_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0

 SGD/m/rnn/custom_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*1
shared_name" SGD/m/rnn/custom_rnn_cell/kernel

4SGD/m/rnn/custom_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp SGD/m/rnn/custom_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
z
SGD/m/conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameSGD/m/conv1d/bias
s
%SGD/m/conv1d/bias/Read/ReadVariableOpReadVariableOpSGD/m/conv1d/bias*
_output_shapes
:@*
dtype0

SGD/m/conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameSGD/m/conv1d/kernel

'SGD/m/conv1d/kernel/Read/ReadVariableOpReadVariableOpSGD/m/conv1d/kernel*"
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ќ
(rnn_1/custom_rnn_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*9
shared_name*(rnn_1/custom_rnn_cell_1/recurrent_kernel
Ѕ
<rnn_1/custom_rnn_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp(rnn_1/custom_rnn_cell_1/recurrent_kernel*
_output_shapes

:@@*
dtype0

rnn_1/custom_rnn_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*/
shared_name rnn_1/custom_rnn_cell_1/kernel

2rnn_1/custom_rnn_cell_1/kernel/Read/ReadVariableOpReadVariableOprnn_1/custom_rnn_cell_1/kernel*
_output_shapes

:@@*
dtype0
Є
$rnn/custom_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*5
shared_name&$rnn/custom_rnn_cell/recurrent_kernel

8rnn/custom_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp$rnn/custom_rnn_cell/recurrent_kernel*
_output_shapes

:@@*
dtype0

rnn/custom_rnn_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*+
shared_namernn/custom_rnn_cell/kernel

.rnn/custom_rnn_cell/kernel/Read/ReadVariableOpReadVariableOprnn/custom_rnn_cell/kernel*
_output_shapes

:@@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:
*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:
*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@*
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
:@*
dtype0
z
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d/kernel
s
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*"
_output_shapes
:@*
dtype0

serving_default_conv1d_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
Э
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_inputconv1d/kernelconv1d/biasrnn/custom_rnn_cell/kernel$rnn/custom_rnn_cell/recurrent_kernelrnn_1/custom_rnn_cell_1/kernel(rnn_1/custom_rnn_cell_1/recurrent_kerneldense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_178000

NoOpNoOp
КJ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ѕI
valueыIBшI BсI
Ж
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
Њ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell
 
state_spec*
Њ
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'cell
(
state_spec*
І
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
І
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias*
І
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias*
Z
0
1
A2
B3
C4
D5
/6
07
78
89
?10
@11*
Z
0
1
A2
B3
C4
D5
/6
07
78
89
?10
@11*
* 
А
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
* 
o
R
_variables
S_iterations
T_learning_rate
U_index_dict
V	momentums
W_update_step_xla*

Xserving_default* 

0
1*

0
1*
* 

Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

^trace_0* 

_trace_0* 
]W
VARIABLE_VALUEconv1d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv1d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

A0
B1*

A0
B1*
* 


`states
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ftrace_0
gtrace_1
htrace_2
itrace_3* 
6
jtrace_0
ktrace_1
ltrace_2
mtrace_3* 
В
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

Akernel
Brecurrent_kernel*
* 

C0
D1*

C0
D1*
* 


tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
trace_2
trace_3* 
И
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Ckernel
Drecurrent_kernel*
* 

/0
01*

/0
01*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

trace_0* 

trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
@1*

?0
@1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUErnn/custom_rnn_cell/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$rnn/custom_rnn_cell/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUErnn_1/custom_rnn_cell_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE(rnn_1/custom_rnn_cell_1/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
n
S0
1
 2
Ё3
Ђ4
Ѓ5
Є6
Ѕ7
І8
Ї9
Ј10
Љ11
Њ12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
0
 1
Ё2
Ђ3
Ѓ4
Є5
Ѕ6
І7
Ї8
Ј9
Љ10
Њ11*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

A0
B1*

A0
B1*
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
* 
* 

'0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1*

C0
D1*
* 

Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Й	variables
К	keras_api

Лtotal

Мcount*
<
Н	variables
О	keras_api

Пtotal

Рcount*
^X
VARIABLE_VALUESGD/m/conv1d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUESGD/m/conv1d/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE SGD/m/rnn/custom_rnn_cell/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*SGD/m/rnn/custom_rnn_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$SGD/m/rnn_1/custom_rnn_cell_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/m/dense/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUESGD/m/dense/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUESGD/m/dense_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense_1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUESGD/m/dense_2/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUESGD/m/dense_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Л0
М1*

Й	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

П0
Р1*

Н	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
З
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasrnn/custom_rnn_cell/kernel$rnn/custom_rnn_cell/recurrent_kernelrnn_1/custom_rnn_cell_1/kernel(rnn_1/custom_rnn_cell_1/recurrent_kernel	iterationlearning_rateSGD/m/conv1d/kernelSGD/m/conv1d/bias SGD/m/rnn/custom_rnn_cell/kernel*SGD/m/rnn/custom_rnn_cell/recurrent_kernel$SGD/m/rnn_1/custom_rnn_cell_1/kernel.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernelSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biasSGD/m/dense_2/kernelSGD/m/dense_2/biastotal_1count_1totalcountConst*+
Tin$
"2 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_179717
В
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasrnn/custom_rnn_cell/kernel$rnn/custom_rnn_cell/recurrent_kernelrnn_1/custom_rnn_cell_1/kernel(rnn_1/custom_rnn_cell_1/recurrent_kernel	iterationlearning_rateSGD/m/conv1d/kernelSGD/m/conv1d/bias SGD/m/rnn/custom_rnn_cell/kernel*SGD/m/rnn/custom_rnn_cell/recurrent_kernel$SGD/m/rnn_1/custom_rnn_cell_1/kernel.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernelSGD/m/dense/kernelSGD/m/dense/biasSGD/m/dense_1/kernelSGD/m/dense_1/biasSGD/m/dense_2/kernelSGD/m/dense_2/biastotal_1count_1totalcount**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_179817Ѓ
Ѓ%
ћ
while_body_177252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_179143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_179143___redundant_placeholder04
0while_while_cond_179143___redundant_placeholder14
0while_while_cond_179143___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ќ!
ѓ
while_body_177095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_custom_rnn_cell_1_177117_0:@@2
 while_custom_rnn_cell_1_177119_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_custom_rnn_cell_1_177117:@@0
while_custom_rnn_cell_1_177119:@@Ђ/while/custom_rnn_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0ў
/while/custom_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_custom_rnn_cell_1_177117_0 while_custom_rnn_cell_1_177119_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:08while/custom_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/custom_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/custom_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "B
while_custom_rnn_cell_1_177117 while_custom_rnn_cell_1_177117_0"B
while_custom_rnn_cell_1_177119 while_custom_rnn_cell_1_177119_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2b
/while/custom_rnn_cell_1/StatefulPartitionedCall/while/custom_rnn_cell_1/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
М

&__inference_dense_layer_call_fn_179414

inputs
unknown:@
	unknown_0:
identityЂStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_177434o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ї4
ь
A__inference_rnn_1_layer_call_and_return_conditional_losses_177155

inputs*
custom_rnn_cell_1_177084:@@*
custom_rnn_cell_1_177086:@@
identityЂ)custom_rnn_cell_1/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskЫ
)custom_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0custom_rnn_cell_1_177084custom_rnn_cell_1_177086*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0custom_rnn_cell_1_177084custom_rnn_cell_1_177086*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_177095*
condR
while_cond_177094*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^custom_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2V
)custom_rnn_cell_1/StatefulPartitionedCall)custom_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
љ&

while_body_179144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Њ7
О
?__inference_rnn_layer_call_and_return_conditional_losses_177312

inputs@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_177252*
condR
while_cond_177251*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Њ7
О
?__inference_rnn_layer_call_and_return_conditional_losses_178969

inputs@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_178909*
condR
while_cond_178908*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

Й

F__inference_sequential_layer_call_and_return_conditional_losses_178286

inputsH
2conv1d_conv1d_expanddims_1_readvariableop_resource:@4
&conv1d_biasadd_readvariableop_resource:@D
2rnn_custom_rnn_cell_matmul_readvariableop_resource:@@F
4rnn_custom_rnn_cell_matmul_1_readvariableop_resource:@@H
6rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:
5
'dense_1_biasadd_readvariableop_resource:
8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identityЂconv1d/BiasAdd/ReadVariableOpЂ)conv1d/Conv1D/ExpandDims_1/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ)rnn/custom_rnn_cell/MatMul/ReadVariableOpЂ+rnn/custom_rnn_cell/MatMul_1/ReadVariableOpЂ	rnn/whileЂ-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpЂrnn_1/while|
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       m

conv1d/PadPadinputsconv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
conv1d/Conv1D/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Е
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@Т
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`
	rnn/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
::эЯa
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn/transpose	Transposeconv1d/Relu:activations:0rnn/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@Z
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
::эЯc
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџР
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ь
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:§
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
)rnn/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp2rnn_custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Ї
rnn/custom_rnn_cell/MatMulMatMulrnn/strided_slice_2:output:01rnn/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
+rnn/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp4rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ё
rnn/custom_rnn_cell/MatMul_1MatMulrnn/zeros:output:03rnn/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
rnn/custom_rnn_cell/addAddV2$rnn/custom_rnn_cell/MatMul:product:0&rnn/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ф
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвJ
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџX
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:02rnn_custom_rnn_cell_matmul_readvariableop_resource4rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *!
bodyR
rnn_while_body_178110*!
condR
rnn_while_cond_178109*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ю
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџe
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@\
rnn_1/ShapeShapernn/transpose_1:y:0*
T0*
_output_shapes
::эЯc
rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn_1/strided_sliceStridedSlicernn_1/Shape:output:0"rnn_1/strided_slice/stack:output:0$rnn_1/strided_slice/stack_1:output:0$rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
rnn_1/zeros/packedPackrnn_1/strided_slice:output:0rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_1/zerosFillrnn_1/zeros/packed:output:0rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn_1/transpose	Transposernn/transpose_1:y:0rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@^
rnn_1/Shape_1Shapernn_1/transpose:y:0*
T0*
_output_shapes
::эЯe
rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
rnn_1/strided_slice_1StridedSlicernn_1/Shape_1:output:0$rnn_1/strided_slice_1/stack:output:0&rnn_1/strided_slice_1/stack_1:output:0&rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
rnn_1/TensorArrayV2TensorListReserve*rnn_1/TensorArrayV2/element_shape:output:0rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ђ
-rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_1/transpose:y:0Drnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвe
rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_1/strided_slice_2StridedSlicernn_1/transpose:y:0$rnn_1/strided_slice_2/stack:output:0&rnn_1/strided_slice_2/stack_1:output:0&rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskЄ
-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp6rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Б
rnn_1/custom_rnn_cell_1/MatMulMatMulrnn_1/strided_slice_2:output:05rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
 rnn_1/custom_rnn_cell_1/MatMul_1MatMulrnn_1/zeros:output:07rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
rnn_1/custom_rnn_cell_1/addAddV2(rnn_1/custom_rnn_cell_1/MatMul:product:0*rnn_1/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
#rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   d
"rnn_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :з
rnn_1/TensorArrayV2_1TensorListReserve,rnn_1/TensorArrayV2_1/element_shape:output:0+rnn_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвL

rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџZ
rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
rnn_1/whileWhile!rnn_1/while/loop_counter:output:0'rnn_1/while/maximum_iterations:output:0rnn_1/time:output:0rnn_1/TensorArrayV2_1:handle:0rnn_1/zeros:output:0rnn_1/strided_slice_1:output:0=rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:06rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *#
bodyR
rnn_1_while_body_178205*#
condR
rnn_1_while_cond_178204*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
6rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ш
(rnn_1/TensorArrayV2Stack/TensorListStackTensorListStackrnn_1/while:output:3?rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsn
rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџg
rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
rnn_1/strided_slice_3StridedSlice1rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_1/strided_slice_3/stack:output:0&rnn_1/strided_slice_3/stack_1:output:0&rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskk
rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
rnn_1/transpose_1	Transpose1rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMulrnn_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*^rnn/custom_rnn_cell/MatMul/ReadVariableOp,^rnn/custom_rnn_cell/MatMul_1/ReadVariableOp
^rnn/while.^rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp0^rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp^rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2V
)rnn/custom_rnn_cell/MatMul/ReadVariableOp)rnn/custom_rnn_cell/MatMul/ReadVariableOp2Z
+rnn/custom_rnn_cell/MatMul_1/ReadVariableOp+rnn/custom_rnn_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while2^
-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp2
rnn_1/whilernn_1/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р8
Ш
A__inference_rnn_1_layer_call_and_return_conditional_losses_179305

inputsB
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_179244*
condR
while_cond_179243*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Р

(__inference_dense_2_layer_call_fn_179454

inputs
unknown:

	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177467o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

є
while_cond_177355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177355___redundant_placeholder04
0while_while_cond_177355___redundant_placeholder14
0while_while_cond_177355___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_178712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178712___redundant_placeholder04
0while_while_cond_178712___redundant_placeholder14
0while_while_cond_178712___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
с1


 sequential_rnn_while_body_176529:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_29
5sequential_rnn_while_sequential_rnn_strided_slice_1_0u
qsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0W
Esequential_rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0:@@Y
Gsequential_rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@!
sequential_rnn_while_identity#
sequential_rnn_while_identity_1#
sequential_rnn_while_identity_2#
sequential_rnn_while_identity_3#
sequential_rnn_while_identity_47
3sequential_rnn_while_sequential_rnn_strided_slice_1s
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorU
Csequential_rnn_while_custom_rnn_cell_matmul_readvariableop_resource:@@W
Esequential_rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ:sequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpЂ<sequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp
Fsequential/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ё
8sequential/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0 sequential_rnn_while_placeholderOsequential/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Р
:sequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOpEsequential_rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0ь
+sequential/rnn/while/custom_rnn_cell/MatMulMatMul?sequential/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Bsequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ф
<sequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOpGsequential_rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0г
-sequential/rnn/while/custom_rnn_cell/MatMul_1MatMul"sequential_rnn_while_placeholder_2Dsequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@г
(sequential/rnn/while/custom_rnn_cell/addAddV25sequential/rnn/while/custom_rnn_cell/MatMul:product:07sequential/rnn/while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
9sequential/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"sequential_rnn_while_placeholder_1 sequential_rnn_while_placeholder,sequential/rnn/while/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшв\
sequential/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/rnn/while/addAddV2 sequential_rnn_while_placeholder#sequential/rnn/while/add/y:output:0*
T0*
_output_shapes
: ^
sequential/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
sequential/rnn/while/add_1AddV26sequential_rnn_while_sequential_rnn_while_loop_counter%sequential/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/rnn/while/IdentityIdentitysequential/rnn/while/add_1:z:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: І
sequential/rnn/while/Identity_1Identity<sequential_rnn_while_sequential_rnn_while_maximum_iterations^sequential/rnn/while/NoOp*
T0*
_output_shapes
: 
sequential/rnn/while/Identity_2Identitysequential/rnn/while/add:z:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: Г
sequential/rnn/while/Identity_3IdentityIsequential/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/rnn/while/NoOp*
T0*
_output_shapes
: Ї
sequential/rnn/while/Identity_4Identity,sequential/rnn/while/custom_rnn_cell/add:z:0^sequential/rnn/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@з
sequential/rnn/while/NoOpNoOp;^sequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp=^sequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Esequential_rnn_while_custom_rnn_cell_matmul_1_readvariableop_resourceGsequential_rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0"
Csequential_rnn_while_custom_rnn_cell_matmul_readvariableop_resourceEsequential_rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0"K
sequential_rnn_while_identity_1(sequential/rnn/while/Identity_1:output:0"K
sequential_rnn_while_identity_2(sequential/rnn/while/Identity_2:output:0"K
sequential_rnn_while_identity_3(sequential/rnn/while/Identity_3:output:0"K
sequential_rnn_while_identity_4(sequential/rnn/while/Identity_4:output:0"G
sequential_rnn_while_identity&sequential/rnn/while/Identity:output:0"l
3sequential_rnn_while_sequential_rnn_strided_slice_15sequential_rnn_while_sequential_rnn_strided_slice_1_0"ф
osequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensorqsequential_rnn_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2x
:sequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp:sequential/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp2|
<sequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp<sequential/rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :_[

_output_shapes
: 
A
_user_specified_name)'sequential/rnn/while/maximum_iterations:Y U

_output_shapes
: 
;
_user_specified_name#!sequential/rnn/while/loop_counter
р8
Ш
A__inference_rnn_1_layer_call_and_return_conditional_losses_177684

inputsB
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_177623*
condR
while_cond_177622*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
љ&

while_body_177623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_178908
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178908___redundant_placeholder04
0while_while_cond_178908___redundant_placeholder14
0while_while_cond_178908___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_176996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176996___redundant_placeholder04
0while_while_cond_176996___redundant_placeholder14
0while_while_cond_176996___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Є	
к
rnn_1_while_cond_178432(
$rnn_1_while_rnn_1_while_loop_counter.
*rnn_1_while_rnn_1_while_maximum_iterations
rnn_1_while_placeholder
rnn_1_while_placeholder_1
rnn_1_while_placeholder_2*
&rnn_1_while_less_rnn_1_strided_slice_1@
<rnn_1_while_rnn_1_while_cond_178432___redundant_placeholder0@
<rnn_1_while_rnn_1_while_cond_178432___redundant_placeholder1@
<rnn_1_while_rnn_1_while_cond_178432___redundant_placeholder2
rnn_1_while_identity
z
rnn_1/while/LessLessrnn_1_while_placeholder&rnn_1_while_less_rnn_1_strided_slice_1*
T0*
_output_shapes
: W
rnn_1/while/IdentityIdentityrnn_1/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_1_while_identityrnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :VR

_output_shapes
: 
8
_user_specified_name rnn_1/while/maximum_iterations:P L

_output_shapes
: 
2
_user_specified_namernn_1/while/loop_counter
ь
щ
while_body_176853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_custom_rnn_cell_176875_0:@@0
while_custom_rnn_cell_176877_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_custom_rnn_cell_176875:@@.
while_custom_rnn_cell_176877:@@Ђ-while/custom_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0і
-while/custom_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_custom_rnn_cell_176875_0while_custom_rnn_cell_176877_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/custom_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/custom_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@|

while/NoOpNoOp.^while/custom_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ">
while_custom_rnn_cell_176875while_custom_rnn_cell_176875_0">
while_custom_rnn_cell_176877while_custom_rnn_cell_176877_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell/StatefulPartitionedCall-while/custom_rnn_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Є

B__inference_conv1d_layer_call_and_return_conditional_losses_177209

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Є

B__inference_conv1d_layer_call_and_return_conditional_losses_178541

inputsA
+conv1d_expanddims_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:џџџџџџџџџ`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@­
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ю
И
rnn_while_cond_178337$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_178337___redundant_placeholder0<
8rnn_while_rnn_while_cond_178337___redundant_placeholder1<
8rnn_while_rnn_while_cond_178337___redundant_placeholder2
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter

є
while_cond_176756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176756___redundant_placeholder04
0while_while_cond_176756___redundant_placeholder14
0while_while_cond_176756___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
А
 
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985

inputs

states0
matmul_readvariableop_resource:@@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@X

Identity_1Identityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@x
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
р

&__inference_rnn_1_layer_call_fn_178978
inputs_0
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177057o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0

ѓ
 sequential_rnn_while_cond_176528:
6sequential_rnn_while_sequential_rnn_while_loop_counter@
<sequential_rnn_while_sequential_rnn_while_maximum_iterations$
 sequential_rnn_while_placeholder&
"sequential_rnn_while_placeholder_1&
"sequential_rnn_while_placeholder_2<
8sequential_rnn_while_less_sequential_rnn_strided_slice_1R
Nsequential_rnn_while_sequential_rnn_while_cond_176528___redundant_placeholder0R
Nsequential_rnn_while_sequential_rnn_while_cond_176528___redundant_placeholder1R
Nsequential_rnn_while_sequential_rnn_while_cond_176528___redundant_placeholder2!
sequential_rnn_while_identity

sequential/rnn/while/LessLess sequential_rnn_while_placeholder8sequential_rnn_while_less_sequential_rnn_strided_slice_1*
T0*
_output_shapes
: i
sequential/rnn/while/IdentityIdentitysequential/rnn/while/Less:z:0*
T0
*
_output_shapes
: "G
sequential_rnn_while_identity&sequential/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :_[

_output_shapes
: 
A
_user_specified_name)'sequential/rnn/while/maximum_iterations:Y U

_output_shapes
: 
;
_user_specified_name#!sequential/rnn/while/loop_counter
Њ7
О
?__inference_rnn_layer_call_and_return_conditional_losses_177579

inputs@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_177519*
condR
while_cond_177518*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ь

$__inference_rnn_layer_call_fn_178577

inputs
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177579s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

є
while_cond_177251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177251___redundant_placeholder04
0while_while_cond_177251___redundant_placeholder14
0while_while_cond_177251___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ѓ%
ћ
while_body_178615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ь
щ
while_body_176757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_custom_rnn_cell_176779_0:@@0
while_custom_rnn_cell_176781_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_custom_rnn_cell_176779:@@.
while_custom_rnn_cell_176781:@@Ђ-while/custom_rnn_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0і
-while/custom_rnn_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_custom_rnn_cell_176779_0while_custom_rnn_cell_176781_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746п
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder6while/custom_rnn_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity6while/custom_rnn_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@|

while/NoOpNoOp.^while/custom_rnn_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ">
while_custom_rnn_cell_176779while_custom_rnn_cell_176779_0">
while_custom_rnn_cell_176781while_custom_rnn_cell_176781_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell/StatefulPartitionedCall-while/custom_rnn_cell/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ь(
ч
rnn_while_body_178338$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0L
:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0:@@N
<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorJ
8rnn_while_custom_rnn_cell_matmul_readvariableop_resource:@@L
:rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpЂ1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   К
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Њ
/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ы
 rnn/while/custom_rnn_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:07rnn/while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ў
1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0В
"rnn/while/custom_rnn_cell/MatMul_1MatMulrnn_while_placeholder_29rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@В
rnn/while/custom_rnn_cell/addAddV2*rnn/while/custom_rnn_cell/MatMul:product:0,rnn/while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholder!rnn/while/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвQ
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_4Identity!rnn/while/custom_rnn_cell/add:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
rnn/while/NoOpNoOp0^rnn/while/custom_rnn_cell/MatMul/ReadVariableOp2^rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "z
:rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0"v
8rnn_while_custom_rnn_cell_matmul_readvariableop_resource:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"1
rnn_while_identityrnn/while/Identity:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"И
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2b
/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp2f
1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter

є
while_cond_178614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178614___redundant_placeholder04
0while_while_cond_178614___redundant_placeholder14
0while_while_cond_178614___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ѓ%
ћ
while_body_178713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter


ђ
A__inference_dense_layer_call_and_return_conditional_losses_177434

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
љ&

while_body_179344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ў
я
"__inference__traced_restore_179817
file_prefix4
assignvariableop_conv1d_kernel:@,
assignvariableop_1_conv1d_bias:@1
assignvariableop_2_dense_kernel:@+
assignvariableop_3_dense_bias:3
!assignvariableop_4_dense_1_kernel:
-
assignvariableop_5_dense_1_bias:
3
!assignvariableop_6_dense_2_kernel:
-
assignvariableop_7_dense_2_bias:?
-assignvariableop_8_rnn_custom_rnn_cell_kernel:@@I
7assignvariableop_9_rnn_custom_rnn_cell_recurrent_kernel:@@D
2assignvariableop_10_rnn_1_custom_rnn_cell_1_kernel:@@N
<assignvariableop_11_rnn_1_custom_rnn_cell_1_recurrent_kernel:@@'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: =
'assignvariableop_14_sgd_m_conv1d_kernel:@3
%assignvariableop_15_sgd_m_conv1d_bias:@F
4assignvariableop_16_sgd_m_rnn_custom_rnn_cell_kernel:@@P
>assignvariableop_17_sgd_m_rnn_custom_rnn_cell_recurrent_kernel:@@J
8assignvariableop_18_sgd_m_rnn_1_custom_rnn_cell_1_kernel:@@T
Bassignvariableop_19_sgd_m_rnn_1_custom_rnn_cell_1_recurrent_kernel:@@8
&assignvariableop_20_sgd_m_dense_kernel:@2
$assignvariableop_21_sgd_m_dense_bias::
(assignvariableop_22_sgd_m_dense_1_kernel:
4
&assignvariableop_23_sgd_m_dense_1_bias:
:
(assignvariableop_24_sgd_m_dense_2_kernel:
4
&assignvariableop_25_sgd_m_dense_2_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 
identity_31ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЇBЄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЎ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B К
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOpAssignVariableOpassignvariableop_conv1d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_8AssignVariableOp-assignvariableop_8_rnn_custom_rnn_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp7assignvariableop_9_rnn_custom_rnn_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_10AssignVariableOp2assignvariableop_10_rnn_1_custom_rnn_cell_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_11AssignVariableOp<assignvariableop_11_rnn_1_custom_rnn_cell_1_recurrent_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:Ж
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_14AssignVariableOp'assignvariableop_14_sgd_m_conv1d_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:О
AssignVariableOp_15AssignVariableOp%assignvariableop_15_sgd_m_conv1d_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_16AssignVariableOp4assignvariableop_16_sgd_m_rnn_custom_rnn_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_17AssignVariableOp>assignvariableop_17_sgd_m_rnn_custom_rnn_cell_recurrent_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_18AssignVariableOp8assignvariableop_18_sgd_m_rnn_1_custom_rnn_cell_1_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:л
AssignVariableOp_19AssignVariableOpBassignvariableop_19_sgd_m_rnn_1_custom_rnn_cell_1_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_20AssignVariableOp&assignvariableop_20_sgd_m_dense_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_21AssignVariableOp$assignvariableop_21_sgd_m_dense_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_22AssignVariableOp(assignvariableop_22_sgd_m_dense_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_23AssignVariableOp&assignvariableop_23_sgd_m_dense_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_24AssignVariableOp(assignvariableop_24_sgd_m_dense_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_25AssignVariableOp&assignvariableop_25_sgd_m_dense_2_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: а
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
5
в

"sequential_rnn_1_while_body_176624>
:sequential_rnn_1_while_sequential_rnn_1_while_loop_counterD
@sequential_rnn_1_while_sequential_rnn_1_while_maximum_iterations&
"sequential_rnn_1_while_placeholder(
$sequential_rnn_1_while_placeholder_1(
$sequential_rnn_1_while_placeholder_2=
9sequential_rnn_1_while_sequential_rnn_1_strided_slice_1_0y
usequential_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_1_tensorarrayunstack_tensorlistfromtensor_0[
Isequential_rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@]
Ksequential_rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@#
sequential_rnn_1_while_identity%
!sequential_rnn_1_while_identity_1%
!sequential_rnn_1_while_identity_2%
!sequential_rnn_1_while_identity_3%
!sequential_rnn_1_while_identity_4;
7sequential_rnn_1_while_sequential_rnn_1_strided_slice_1w
ssequential_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_1_tensorarrayunstack_tensorlistfromtensorY
Gsequential_rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource:@@[
Isequential_rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ>sequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ@sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
Hsequential/rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ћ
:sequential/rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemusequential_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_1_tensorarrayunstack_tensorlistfromtensor_0"sequential_rnn_1_while_placeholderQsequential/rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ш
>sequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpIsequential_rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0і
/sequential/rnn_1/while/custom_rnn_cell_1/MatMulMatMulAsequential/rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ь
@sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpKsequential_rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0н
1sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1MatMul$sequential_rnn_1_while_placeholder_2Hsequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@п
,sequential/rnn_1/while/custom_rnn_cell_1/addAddV29sequential/rnn_1/while/custom_rnn_cell_1/MatMul:product:0;sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
Asequential/rnn_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
;sequential/rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$sequential_rnn_1_while_placeholder_1Jsequential/rnn_1/while/TensorArrayV2Write/TensorListSetItem/index:output:00sequential/rnn_1/while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшв^
sequential/rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/rnn_1/while/addAddV2"sequential_rnn_1_while_placeholder%sequential/rnn_1/while/add/y:output:0*
T0*
_output_shapes
: `
sequential/rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ћ
sequential/rnn_1/while/add_1AddV2:sequential_rnn_1_while_sequential_rnn_1_while_loop_counter'sequential/rnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/rnn_1/while/IdentityIdentity sequential/rnn_1/while/add_1:z:0^sequential/rnn_1/while/NoOp*
T0*
_output_shapes
: Ў
!sequential/rnn_1/while/Identity_1Identity@sequential_rnn_1_while_sequential_rnn_1_while_maximum_iterations^sequential/rnn_1/while/NoOp*
T0*
_output_shapes
: 
!sequential/rnn_1/while/Identity_2Identitysequential/rnn_1/while/add:z:0^sequential/rnn_1/while/NoOp*
T0*
_output_shapes
: Й
!sequential/rnn_1/while/Identity_3IdentityKsequential/rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/rnn_1/while/NoOp*
T0*
_output_shapes
: Џ
!sequential/rnn_1/while/Identity_4Identity0sequential/rnn_1/while/custom_rnn_cell_1/add:z:0^sequential/rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@с
sequential/rnn_1/while/NoOpNoOp?^sequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpA^sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
Isequential_rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resourceKsequential_rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"
Gsequential_rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resourceIsequential_rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0"O
!sequential_rnn_1_while_identity_1*sequential/rnn_1/while/Identity_1:output:0"O
!sequential_rnn_1_while_identity_2*sequential/rnn_1/while/Identity_2:output:0"O
!sequential_rnn_1_while_identity_3*sequential/rnn_1/while/Identity_3:output:0"O
!sequential_rnn_1_while_identity_4*sequential/rnn_1/while/Identity_4:output:0"K
sequential_rnn_1_while_identity(sequential/rnn_1/while/Identity:output:0"t
7sequential_rnn_1_while_sequential_rnn_1_strided_slice_19sequential_rnn_1_while_sequential_rnn_1_strided_slice_1_0"ь
ssequential_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_1_tensorarrayunstack_tensorlistfromtensorusequential_rnn_1_while_tensorarrayv2read_tensorlistgetitem_sequential_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2
>sequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp>sequential/rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp2
@sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp@sequential/rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :a]

_output_shapes
: 
C
_user_specified_name+)sequential/rnn_1/while/maximum_iterations:[ W

_output_shapes
: 
=
_user_specified_name%#sequential/rnn_1/while/loop_counter

є
while_cond_176852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_176852___redundant_placeholder04
0while_while_cond_176852___redundant_placeholder14
0while_while_cond_176852___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
У
Ј
F__inference_sequential_layer_call_and_return_conditional_losses_177706
conv1d_input#
conv1d_177477:@
conv1d_177479:@

rnn_177580:@@

rnn_177582:@@
rnn_1_177685:@@
rnn_1_177687:@@
dense_177690:@
dense_177692: 
dense_1_177695:

dense_1_177697:
 
dense_2_177700:

dense_2_177702:
identityЂconv1d/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂrnn/StatefulPartitionedCallЂrnn_1/StatefulPartitionedCallђ
conv1d/StatefulPartitionedCallStatefulPartitionedCallconv1d_inputconv1d_177477conv1d_177479*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_177209
rnn/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0
rnn_177580
rnn_177582*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177579
rnn_1/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0rnn_1_177685rnn_1_177687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177684
dense/StatefulPartitionedCallStatefulPartitionedCall&rnn_1/StatefulPartitionedCall:output:0dense_177690dense_177692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_177434
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_177695dense_1_177697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177451
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_177700dense_2_177702*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177467w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^rnn/StatefulPartitionedCall^rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2>
rnn_1/StatefulPartitionedCallrnn_1/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input

Г
+__inference_sequential_layer_call_fn_178029

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@@
	unknown_5:@
	unknown_6:
	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_177743o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

"sequential_rnn_1_while_cond_176623>
:sequential_rnn_1_while_sequential_rnn_1_while_loop_counterD
@sequential_rnn_1_while_sequential_rnn_1_while_maximum_iterations&
"sequential_rnn_1_while_placeholder(
$sequential_rnn_1_while_placeholder_1(
$sequential_rnn_1_while_placeholder_2@
<sequential_rnn_1_while_less_sequential_rnn_1_strided_slice_1V
Rsequential_rnn_1_while_sequential_rnn_1_while_cond_176623___redundant_placeholder0V
Rsequential_rnn_1_while_sequential_rnn_1_while_cond_176623___redundant_placeholder1V
Rsequential_rnn_1_while_sequential_rnn_1_while_cond_176623___redundant_placeholder2#
sequential_rnn_1_while_identity
І
sequential/rnn_1/while/LessLess"sequential_rnn_1_while_placeholder<sequential_rnn_1_while_less_sequential_rnn_1_strided_slice_1*
T0*
_output_shapes
: m
sequential/rnn_1/while/IdentityIdentitysequential/rnn_1/while/Less:z:0*
T0
*
_output_shapes
: "K
sequential_rnn_1_while_identity(sequential/rnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :a]

_output_shapes
: 
C
_user_specified_name+)sequential/rnn_1/while/maximum_iterations:[ W

_output_shapes
: 
=
_user_specified_name%#sequential/rnn_1/while/loop_counter


ђ
A__inference_dense_layer_call_and_return_conditional_losses_179425

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ым
н
__inference__traced_save_179717
file_prefix:
$read_disablecopyonread_conv1d_kernel:@2
$read_1_disablecopyonread_conv1d_bias:@7
%read_2_disablecopyonread_dense_kernel:@1
#read_3_disablecopyonread_dense_bias:9
'read_4_disablecopyonread_dense_1_kernel:
3
%read_5_disablecopyonread_dense_1_bias:
9
'read_6_disablecopyonread_dense_2_kernel:
3
%read_7_disablecopyonread_dense_2_bias:E
3read_8_disablecopyonread_rnn_custom_rnn_cell_kernel:@@O
=read_9_disablecopyonread_rnn_custom_rnn_cell_recurrent_kernel:@@J
8read_10_disablecopyonread_rnn_1_custom_rnn_cell_1_kernel:@@T
Bread_11_disablecopyonread_rnn_1_custom_rnn_cell_1_recurrent_kernel:@@-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: C
-read_14_disablecopyonread_sgd_m_conv1d_kernel:@9
+read_15_disablecopyonread_sgd_m_conv1d_bias:@L
:read_16_disablecopyonread_sgd_m_rnn_custom_rnn_cell_kernel:@@V
Dread_17_disablecopyonread_sgd_m_rnn_custom_rnn_cell_recurrent_kernel:@@P
>read_18_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_kernel:@@Z
Hread_19_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_recurrent_kernel:@@>
,read_20_disablecopyonread_sgd_m_dense_kernel:@8
*read_21_disablecopyonread_sgd_m_dense_bias:@
.read_22_disablecopyonread_sgd_m_dense_1_kernel:
:
,read_23_disablecopyonread_sgd_m_dense_1_bias:
@
.read_24_disablecopyonread_sgd_m_dense_2_kernel:
:
,read_25_disablecopyonread_sgd_m_dense_2_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: 
savev2_const
identity_61ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_28/DisableCopyOnReadЂRead_28/ReadVariableOpЂRead_29/DisableCopyOnReadЂRead_29/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: v
Read/DisableCopyOnReadDisableCopyOnRead$read_disablecopyonread_conv1d_kernel"/device:CPU:0*
_output_shapes
 Є
Read/ReadVariableOpReadVariableOp$read_disablecopyonread_conv1d_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:@x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_conv1d_bias"/device:CPU:0*
_output_shapes
  
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_conv1d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:@w
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_dense_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:{
Read_4/DisableCopyOnReadDisableCopyOnRead'read_4_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_4/ReadVariableOpReadVariableOp'read_4_disablecopyonread_dense_1_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:
y
Read_5/DisableCopyOnReadDisableCopyOnRead%read_5_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ё
Read_5/ReadVariableOpReadVariableOp%read_5_disablecopyonread_dense_1_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:
{
Read_6/DisableCopyOnReadDisableCopyOnRead'read_6_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_6/ReadVariableOpReadVariableOp'read_6_disablecopyonread_dense_2_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:
y
Read_7/DisableCopyOnReadDisableCopyOnRead%read_7_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 Ё
Read_7/ReadVariableOpReadVariableOp%read_7_disablecopyonread_dense_2_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_8/DisableCopyOnReadDisableCopyOnRead3read_8_disablecopyonread_rnn_custom_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 Г
Read_8/ReadVariableOpReadVariableOp3read_8_disablecopyonread_rnn_custom_rnn_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_9/DisableCopyOnReadDisableCopyOnRead=read_9_disablecopyonread_rnn_custom_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Н
Read_9/ReadVariableOpReadVariableOp=read_9_disablecopyonread_rnn_custom_rnn_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_10/DisableCopyOnReadDisableCopyOnRead8read_10_disablecopyonread_rnn_1_custom_rnn_cell_1_kernel"/device:CPU:0*
_output_shapes
 К
Read_10/ReadVariableOpReadVariableOp8read_10_disablecopyonread_rnn_1_custom_rnn_cell_1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_11/DisableCopyOnReadDisableCopyOnReadBread_11_disablecopyonread_rnn_1_custom_rnn_cell_1_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ф
Read_11/ReadVariableOpReadVariableOpBread_11_disablecopyonread_rnn_1_custom_rnn_cell_1_recurrent_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@@x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ё
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_14/DisableCopyOnReadDisableCopyOnRead-read_14_disablecopyonread_sgd_m_conv1d_kernel"/device:CPU:0*
_output_shapes
 Г
Read_14/ReadVariableOpReadVariableOp-read_14_disablecopyonread_sgd_m_conv1d_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@*
dtype0s
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@i
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*"
_output_shapes
:@
Read_15/DisableCopyOnReadDisableCopyOnRead+read_15_disablecopyonread_sgd_m_conv1d_bias"/device:CPU:0*
_output_shapes
 Љ
Read_15/ReadVariableOpReadVariableOp+read_15_disablecopyonread_sgd_m_conv1d_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_16/DisableCopyOnReadDisableCopyOnRead:read_16_disablecopyonread_sgd_m_rnn_custom_rnn_cell_kernel"/device:CPU:0*
_output_shapes
 М
Read_16/ReadVariableOpReadVariableOp:read_16_disablecopyonread_sgd_m_rnn_custom_rnn_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_17/DisableCopyOnReadDisableCopyOnReadDread_17_disablecopyonread_sgd_m_rnn_custom_rnn_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_17/ReadVariableOpReadVariableOpDread_17_disablecopyonread_sgd_m_rnn_custom_rnn_cell_recurrent_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_18/DisableCopyOnReadDisableCopyOnRead>read_18_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_kernel"/device:CPU:0*
_output_shapes
 Р
Read_18/ReadVariableOpReadVariableOp>read_18_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_19/DisableCopyOnReadDisableCopyOnReadHread_19_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ъ
Read_19/ReadVariableOpReadVariableOpHread_19_disablecopyonread_sgd_m_rnn_1_custom_rnn_cell_1_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:@@
Read_20/DisableCopyOnReadDisableCopyOnRead,read_20_disablecopyonread_sgd_m_dense_kernel"/device:CPU:0*
_output_shapes
 Ў
Read_20/ReadVariableOpReadVariableOp,read_20_disablecopyonread_sgd_m_dense_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@
Read_21/DisableCopyOnReadDisableCopyOnRead*read_21_disablecopyonread_sgd_m_dense_bias"/device:CPU:0*
_output_shapes
 Ј
Read_21/ReadVariableOpReadVariableOp*read_21_disablecopyonread_sgd_m_dense_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_22/DisableCopyOnReadDisableCopyOnRead.read_22_disablecopyonread_sgd_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 А
Read_22/ReadVariableOpReadVariableOp.read_22_disablecopyonread_sgd_m_dense_1_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:

Read_23/DisableCopyOnReadDisableCopyOnRead,read_23_disablecopyonread_sgd_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Њ
Read_23/ReadVariableOpReadVariableOp,read_23_disablecopyonread_sgd_m_dense_1_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:

Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_sgd_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 А
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_sgd_m_dense_2_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:
*
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:
e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

:

Read_25/DisableCopyOnReadDisableCopyOnRead,read_25_disablecopyonread_sgd_m_dense_2_bias"/device:CPU:0*
_output_shapes
 Њ
Read_25/ReadVariableOpReadVariableOp,read_25_disablecopyonread_sgd_m_dense_2_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЇBЄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЋ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_60Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_61IdentityIdentity_60:output:0^NoOp*
T0*
_output_shapes
: љ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

є
while_cond_179043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_179043___redundant_placeholder04
0while_while_cond_179043___redundant_placeholder14
0while_while_cond_179043___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_179343
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_179343___redundant_placeholder04
0while_while_cond_179343___redundant_placeholder14
0while_while_cond_179343___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

Й

F__inference_sequential_layer_call_and_return_conditional_losses_178514

inputsH
2conv1d_conv1d_expanddims_1_readvariableop_resource:@4
&conv1d_biasadd_readvariableop_resource:@D
2rnn_custom_rnn_cell_matmul_readvariableop_resource:@@F
4rnn_custom_rnn_cell_matmul_1_readvariableop_resource:@@H
6rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@6
$dense_matmul_readvariableop_resource:@3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:
5
'dense_1_biasadd_readvariableop_resource:
8
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:
identityЂconv1d/BiasAdd/ReadVariableOpЂ)conv1d/Conv1D/ExpandDims_1/ReadVariableOpЂdense/BiasAdd/ReadVariableOpЂdense/MatMul/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂ)rnn/custom_rnn_cell/MatMul/ReadVariableOpЂ+rnn/custom_rnn_cell/MatMul_1/ReadVariableOpЂ	rnn/whileЂ-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpЂrnn_1/while|
conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       m

conv1d/PadPadinputsconv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:џџџџџџџџџg
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
conv1d/Conv1D/ExpandDims
ExpandDimsconv1d/Pad:output:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ 
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Е
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@Т
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides

conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@`
	rnn/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
::эЯa
rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
rnn/strided_sliceStridedSlicernn/Shape:output:0 rnn/strided_slice/stack:output:0"rnn/strided_slice/stack_1:output:0"rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskT
rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
rnn/zeros/packedPackrnn/strided_slice:output:0rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:T
rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    x
	rnn/zerosFillrnn/zeros/packed:output:0rnn/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@g
rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn/transpose	Transposeconv1d/Relu:activations:0rnn/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@Z
rnn/Shape_1Shapernn/transpose:y:0*
T0*
_output_shapes
::эЯc
rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn/strided_slice_1StridedSlicernn/Shape_1:output:0"rnn/strided_slice_1/stack:output:0$rnn/strided_slice_1/stack_1:output:0$rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџР
rnn/TensorArrayV2TensorListReserve(rnn/TensorArrayV2/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
9rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ь
+rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn/transpose:y:0Brnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвc
rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:§
rnn/strided_slice_2StridedSlicernn/transpose:y:0"rnn/strided_slice_2/stack:output:0$rnn/strided_slice_2/stack_1:output:0$rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
)rnn/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp2rnn_custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Ї
rnn/custom_rnn_cell/MatMulMatMulrnn/strided_slice_2:output:01rnn/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
+rnn/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp4rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ё
rnn/custom_rnn_cell/MatMul_1MatMulrnn/zeros:output:03rnn/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@ 
rnn/custom_rnn_cell/addAddV2$rnn/custom_rnn_cell/MatMul:product:0&rnn/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
!rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ф
rnn/TensorArrayV2_1TensorListReserve*rnn/TensorArrayV2_1/element_shape:output:0rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвJ
rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : g
rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџX
rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ы
	rnn/whileWhilernn/while/loop_counter:output:0%rnn/while/maximum_iterations:output:0rnn/time:output:0rnn/TensorArrayV2_1:handle:0rnn/zeros:output:0rnn/strided_slice_1:output:0;rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:02rnn_custom_rnn_cell_matmul_readvariableop_resource4rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *!
bodyR
rnn_while_body_178338*!
condR
rnn_while_cond_178337*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
4rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ю
&rnn/TensorArrayV2Stack/TensorListStackTensorListStackrnn/while:output:3=rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0l
rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџe
rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: e
rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn/strided_slice_3StridedSlice/rnn/TensorArrayV2Stack/TensorListStack:tensor:0"rnn/strided_slice_3/stack:output:0$rnn/strided_slice_3/stack_1:output:0$rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maski
rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ђ
rnn/transpose_1	Transpose/rnn/TensorArrayV2Stack/TensorListStack:tensor:0rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@\
rnn_1/ShapeShapernn/transpose_1:y:0*
T0*
_output_shapes
::эЯc
rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
rnn_1/strided_sliceStridedSlicernn_1/Shape:output:0"rnn_1/strided_slice/stack:output:0$rnn_1/strided_slice/stack_1:output:0$rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
rnn_1/zeros/packedPackrnn_1/strided_slice:output:0rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
rnn_1/zerosFillrnn_1/zeros/packed:output:0rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@i
rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
rnn_1/transpose	Transposernn/transpose_1:y:0rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@^
rnn_1/Shape_1Shapernn_1/transpose:y:0*
T0*
_output_shapes
::эЯe
rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
rnn_1/strided_slice_1StridedSlicernn_1/Shape_1:output:0$rnn_1/strided_slice_1/stack:output:0&rnn_1/strided_slice_1/stack_1:output:0&rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
!rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџЦ
rnn_1/TensorArrayV2TensorListReserve*rnn_1/TensorArrayV2/element_shape:output:0rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ђ
-rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorrnn_1/transpose:y:0Drnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвe
rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
rnn_1/strided_slice_2StridedSlicernn_1/transpose:y:0$rnn_1/strided_slice_2/stack:output:0&rnn_1/strided_slice_2/stack_1:output:0&rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskЄ
-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp6rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Б
rnn_1/custom_rnn_cell_1/MatMulMatMulrnn_1/strided_slice_2:output:05rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ј
/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ћ
 rnn_1/custom_rnn_cell_1/MatMul_1MatMulrnn_1/zeros:output:07rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
rnn_1/custom_rnn_cell_1/addAddV2(rnn_1/custom_rnn_cell_1/MatMul:product:0*rnn_1/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
#rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   d
"rnn_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :з
rnn_1/TensorArrayV2_1TensorListReserve,rnn_1/TensorArrayV2_1/element_shape:output:0+rnn_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвL

rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : i
rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџZ
rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ч
rnn_1/whileWhile!rnn_1/while/loop_counter:output:0'rnn_1/while/maximum_iterations:output:0rnn_1/time:output:0rnn_1/TensorArrayV2_1:handle:0rnn_1/zeros:output:0rnn_1/strided_slice_1:output:0=rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:06rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource8rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *#
bodyR
rnn_1_while_body_178433*#
condR
rnn_1_while_cond_178432*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
6rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ш
(rnn_1/TensorArrayV2Stack/TensorListStackTensorListStackrnn_1/while:output:3?rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsn
rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџg
rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: g
rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ѕ
rnn_1/strided_slice_3StridedSlice1rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0$rnn_1/strided_slice_3/stack:output:0&rnn_1/strided_slice_3/stack_1:output:0&rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskk
rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ј
rnn_1/transpose_1	Transpose1rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense/MatMulMatMulrnn_1/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
`
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџg
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*^rnn/custom_rnn_cell/MatMul/ReadVariableOp,^rnn/custom_rnn_cell/MatMul_1/ReadVariableOp
^rnn/while.^rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp0^rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp^rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2V
)rnn/custom_rnn_cell/MatMul/ReadVariableOp)rnn/custom_rnn_cell/MatMul/ReadVariableOp2Z
+rnn/custom_rnn_cell/MatMul_1/ReadVariableOp+rnn/custom_rnn_cell/MatMul_1/ReadVariableOp2
	rnn/while	rnn/while2^
-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp-rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp2
rnn_1/whilernn_1/while:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ш7
Р
?__inference_rnn_layer_call_and_return_conditional_losses_178675
inputs_0@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_178615*
condR
while_cond_178614*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0
ю
И
rnn_while_cond_178109$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2&
"rnn_while_less_rnn_strided_slice_1<
8rnn_while_rnn_while_cond_178109___redundant_placeholder0<
8rnn_while_rnn_while_cond_178109___redundant_placeholder1<
8rnn_while_rnn_while_cond_178109___redundant_placeholder2
rnn_while_identity
r
rnn/while/LessLessrnn_while_placeholder"rnn_while_less_rnn_strided_slice_1*
T0*
_output_shapes
: S
rnn/while/IdentityIdentityrnn/while/Less:z:0*
T0
*
_output_shapes
: "1
rnn_while_identityrnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
Б
Ђ
F__inference_sequential_layer_call_and_return_conditional_losses_177806

inputs#
conv1d_177775:@
conv1d_177777:@

rnn_177780:@@

rnn_177782:@@
rnn_1_177785:@@
rnn_1_177787:@@
dense_177790:@
dense_177792: 
dense_1_177795:

dense_1_177797:
 
dense_2_177800:

dense_2_177802:
identityЂconv1d/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂrnn/StatefulPartitionedCallЂrnn_1/StatefulPartitionedCallь
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_177775conv1d_177777*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_177209
rnn/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0
rnn_177780
rnn_177782*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177579
rnn_1/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0rnn_1_177785rnn_1_177787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177684
dense/StatefulPartitionedCallStatefulPartitionedCall&rnn_1/StatefulPartitionedCall:output:0dense_177790dense_177792*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_177434
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_177795dense_1_177797*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177451
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_177800dense_2_177802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177467w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^rnn/StatefulPartitionedCall^rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2>
rnn_1/StatefulPartitionedCallrnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ђ3
ф
?__inference_rnn_layer_call_and_return_conditional_losses_176912

inputs(
custom_rnn_cell_176843:@@(
custom_rnn_cell_176845:@@
identityЂ'custom_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskУ
'custom_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0custom_rnn_cell_176843custom_rnn_cell_176845*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : щ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0custom_rnn_cell_176843custom_rnn_cell_176845*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_176853*
condR
while_cond_176852*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@x
NoOpNoOp(^custom_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2R
'custom_rnn_cell/StatefulPartitionedCall'custom_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

є
while_cond_179243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_179243___redundant_placeholder04
0while_while_cond_179243___redundant_placeholder14
0while_while_cond_179243___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
У
Ј
F__inference_sequential_layer_call_and_return_conditional_losses_177474
conv1d_input#
conv1d_177210:@
conv1d_177212:@

rnn_177313:@@

rnn_177315:@@
rnn_1_177418:@@
rnn_1_177420:@@
dense_177435:@
dense_177437: 
dense_1_177452:

dense_1_177454:
 
dense_2_177468:

dense_2_177470:
identityЂconv1d/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂrnn/StatefulPartitionedCallЂrnn_1/StatefulPartitionedCallђ
conv1d/StatefulPartitionedCallStatefulPartitionedCallconv1d_inputconv1d_177210conv1d_177212*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_177209
rnn/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0
rnn_177313
rnn_177315*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177312
rnn_1/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0rnn_1_177418rnn_1_177420*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177417
dense/StatefulPartitionedCallStatefulPartitionedCall&rnn_1/StatefulPartitionedCall:output:0dense_177435dense_177437*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_177434
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_177452dense_1_177454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177451
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_177468dense_2_177470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177467w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^rnn/StatefulPartitionedCall^rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2>
rnn_1/StatefulPartitionedCallrnn_1/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input
9
Ъ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179105
inputs_0B
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_179044*
condR
while_cond_179043*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0
9
Ъ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179205
inputs_0B
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_179144*
condR
while_cond_179143*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0

є
while_cond_177094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177094___redundant_placeholder04
0while_while_cond_177094___redundant_placeholder14
0while_while_cond_177094___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
љ&

while_body_179244
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Р

(__inference_dense_1_layer_call_fn_179434

inputs
unknown:

	unknown_0:

identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ%
ћ
while_body_178909
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ПИ
И
!__inference__wrapped_model_176705
conv1d_inputS
=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource:@?
1sequential_conv1d_biasadd_readvariableop_resource:@O
=sequential_rnn_custom_rnn_cell_matmul_readvariableop_resource:@@Q
?sequential_rnn_custom_rnn_cell_matmul_1_readvariableop_resource:@@S
Asequential_rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource:@@U
Csequential_rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@A
/sequential_dense_matmul_readvariableop_resource:@>
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:
@
2sequential_dense_1_biasadd_readvariableop_resource:
C
1sequential_dense_2_matmul_readvariableop_resource:
@
2sequential_dense_2_biasadd_readvariableop_resource:
identityЂ(sequential/conv1d/BiasAdd/ReadVariableOpЂ4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOpЂ'sequential/dense/BiasAdd/ReadVariableOpЂ&sequential/dense/MatMul/ReadVariableOpЂ)sequential/dense_1/BiasAdd/ReadVariableOpЂ(sequential/dense_1/MatMul/ReadVariableOpЂ)sequential/dense_2/BiasAdd/ReadVariableOpЂ(sequential/dense_2/MatMul/ReadVariableOpЂ4sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOpЂ6sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOpЂsequential/rnn/whileЂ8sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpЂ:sequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpЂsequential/rnn_1/while
sequential/conv1d/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       
sequential/conv1d/PadPadconv1d_input'sequential/conv1d/Pad/paddings:output:0*
T0*+
_output_shapes
:џџџџџџџџџr
'sequential/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџН
#sequential/conv1d/Conv1D/ExpandDims
ExpandDimssequential/conv1d/Pad:output:00sequential/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџЖ
4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp=sequential_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@*
dtype0k
)sequential/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ж
%sequential/conv1d/Conv1D/ExpandDims_1
ExpandDims<sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:02sequential/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@у
sequential/conv1d/Conv1DConv2D,sequential/conv1d/Conv1D/ExpandDims:output:0.sequential/conv1d/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingVALID*
strides
Є
 sequential/conv1d/Conv1D/SqueezeSqueeze!sequential/conv1d/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@*
squeeze_dims

§џџџџџџџџ
(sequential/conv1d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv1d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0З
sequential/conv1d/BiasAddBiasAdd)sequential/conv1d/Conv1D/Squeeze:output:00sequential/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ@x
sequential/conv1d/ReluRelu"sequential/conv1d/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@v
sequential/rnn/ShapeShape$sequential/conv1d/Relu:activations:0*
T0*
_output_shapes
::эЯl
"sequential/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$sequential/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$sequential/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
sequential/rnn/strided_sliceStridedSlicesequential/rnn/Shape:output:0+sequential/rnn/strided_slice/stack:output:0-sequential/rnn/strided_slice/stack_1:output:0-sequential/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
sequential/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@ 
sequential/rnn/zeros/packedPack%sequential/rnn/strided_slice:output:0&sequential/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
sequential/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/rnn/zerosFill$sequential/rnn/zeros/packed:output:0#sequential/rnn/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
sequential/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
sequential/rnn/transpose	Transpose$sequential/conv1d/Relu:activations:0&sequential/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@p
sequential/rnn/Shape_1Shapesequential/rnn/transpose:y:0*
T0*
_output_shapes
::эЯn
$sequential/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
sequential/rnn/strided_slice_1StridedSlicesequential/rnn/Shape_1:output:0-sequential/rnn/strided_slice_1/stack:output:0/sequential/rnn/strided_slice_1/stack_1:output:0/sequential/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*sequential/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџс
sequential/rnn/TensorArrayV2TensorListReserve3sequential/rnn/TensorArrayV2/element_shape:output:0'sequential/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Dsequential/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
6sequential/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rnn/transpose:y:0Msequential/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$sequential/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
sequential/rnn/strided_slice_2StridedSlicesequential/rnn/transpose:y:0-sequential/rnn/strided_slice_2/stack:output:0/sequential/rnn/strided_slice_2/stack_1:output:0/sequential/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskВ
4sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp=sequential_rnn_custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0Ш
%sequential/rnn/custom_rnn_cell/MatMulMatMul'sequential/rnn/strided_slice_2:output:0<sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
6sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp?sequential_rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Т
'sequential/rnn/custom_rnn_cell/MatMul_1MatMulsequential/rnn/zeros:output:0>sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@С
"sequential/rnn/custom_rnn_cell/addAddV2/sequential/rnn/custom_rnn_cell/MatMul:product:01sequential/rnn/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@}
,sequential/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   х
sequential/rnn/TensorArrayV2_1TensorListReserve5sequential/rnn/TensorArrayV2_1/element_shape:output:0'sequential/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвU
sequential/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'sequential/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџc
!sequential/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Я
sequential/rnn/whileWhile*sequential/rnn/while/loop_counter:output:00sequential/rnn/while/maximum_iterations:output:0sequential/rnn/time:output:0'sequential/rnn/TensorArrayV2_1:handle:0sequential/rnn/zeros:output:0'sequential/rnn/strided_slice_1:output:0Fsequential/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_rnn_custom_rnn_cell_matmul_readvariableop_resource?sequential_rnn_custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *,
body$R"
 sequential_rnn_while_body_176529*,
cond$R"
 sequential_rnn_while_cond_176528*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
?sequential/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   я
1sequential/rnn/TensorArrayV2Stack/TensorListStackTensorListStacksequential/rnn/while:output:3Hsequential/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0w
$sequential/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџp
&sequential/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
sequential/rnn/strided_slice_3StridedSlice:sequential/rnn/TensorArrayV2Stack/TensorListStack:tensor:0-sequential/rnn/strided_slice_3/stack:output:0/sequential/rnn/strided_slice_3/stack_1:output:0/sequential/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskt
sequential/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
sequential/rnn/transpose_1	Transpose:sequential/rnn/TensorArrayV2Stack/TensorListStack:tensor:0(sequential/rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@r
sequential/rnn_1/ShapeShapesequential/rnn/transpose_1:y:0*
T0*
_output_shapes
::эЯn
$sequential/rnn_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&sequential/rnn_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&sequential/rnn_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
sequential/rnn_1/strided_sliceStridedSlicesequential/rnn_1/Shape:output:0-sequential/rnn_1/strided_slice/stack:output:0/sequential/rnn_1/strided_slice/stack_1:output:0/sequential/rnn_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
sequential/rnn_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@І
sequential/rnn_1/zeros/packedPack'sequential/rnn_1/strided_slice:output:0(sequential/rnn_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
sequential/rnn_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/rnn_1/zerosFill&sequential/rnn_1/zeros/packed:output:0%sequential/rnn_1/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@t
sequential/rnn_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
sequential/rnn_1/transpose	Transposesequential/rnn/transpose_1:y:0(sequential/rnn_1/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@t
sequential/rnn_1/Shape_1Shapesequential/rnn_1/transpose:y:0*
T0*
_output_shapes
::эЯp
&sequential/rnn_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/rnn_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/rnn_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:А
 sequential/rnn_1/strided_slice_1StridedSlice!sequential/rnn_1/Shape_1:output:0/sequential/rnn_1/strided_slice_1/stack:output:01sequential/rnn_1/strided_slice_1/stack_1:output:01sequential/rnn_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,sequential/rnn_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџч
sequential/rnn_1/TensorArrayV2TensorListReserve5sequential/rnn_1/TensorArrayV2/element_shape:output:0)sequential/rnn_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Fsequential/rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
8sequential/rnn_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/rnn_1/transpose:y:0Osequential/rnn_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвp
&sequential/rnn_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/rnn_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/rnn_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:О
 sequential/rnn_1/strided_slice_2StridedSlicesequential/rnn_1/transpose:y:0/sequential/rnn_1/strided_slice_2/stack:output:01sequential/rnn_1/strided_slice_2/stack_1:output:01sequential/rnn_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskК
8sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOpAsequential_rnn_1_custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0в
)sequential/rnn_1/custom_rnn_cell_1/MatMulMatMul)sequential/rnn_1/strided_slice_2:output:0@sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@О
:sequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOpCsequential_rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0Ь
+sequential/rnn_1/custom_rnn_cell_1/MatMul_1MatMulsequential/rnn_1/zeros:output:0Bsequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Э
&sequential/rnn_1/custom_rnn_cell_1/addAddV23sequential/rnn_1/custom_rnn_cell_1/MatMul:product:05sequential/rnn_1/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@
.sequential/rnn_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   o
-sequential/rnn_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ј
 sequential/rnn_1/TensorArrayV2_1TensorListReserve7sequential/rnn_1/TensorArrayV2_1/element_shape:output:06sequential/rnn_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвW
sequential/rnn_1/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)sequential/rnn_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџe
#sequential/rnn_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ы
sequential/rnn_1/whileWhile,sequential/rnn_1/while/loop_counter:output:02sequential/rnn_1/while/maximum_iterations:output:0sequential/rnn_1/time:output:0)sequential/rnn_1/TensorArrayV2_1:handle:0sequential/rnn_1/zeros:output:0)sequential/rnn_1/strided_slice_1:output:0Hsequential/rnn_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_rnn_1_custom_rnn_cell_1_matmul_readvariableop_resourceCsequential_rnn_1_custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *.
body&R$
"sequential_rnn_1_while_body_176624*.
cond&R$
"sequential_rnn_1_while_cond_176623*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
Asequential/rnn_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   
3sequential/rnn_1/TensorArrayV2Stack/TensorListStackTensorListStacksequential/rnn_1/while:output:3Jsequential/rnn_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsy
&sequential/rnn_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџr
(sequential/rnn_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(sequential/rnn_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
 sequential/rnn_1/strided_slice_3StridedSlice<sequential/rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0/sequential/rnn_1/strided_slice_3/stack:output:01sequential/rnn_1/strided_slice_3/stack_1:output:01sequential/rnn_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskv
!sequential/rnn_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Щ
sequential/rnn_1/transpose_1	Transpose<sequential/rnn_1/TensorArrayV2Stack/TensorListStack:tensor:0*sequential/rnn_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Ў
sequential/dense/MatMulMatMul)sequential/rnn_1/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ќ
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ

)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Џ
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ

(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Ў
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
IdentityIdentity#sequential/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџС
NoOpNoOp)^sequential/conv1d/BiasAdd/ReadVariableOp5^sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp5^sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOp7^sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOp^sequential/rnn/while9^sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp;^sequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp^sequential/rnn_1/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2T
(sequential/conv1d/BiasAdd/ReadVariableOp(sequential/conv1d/BiasAdd/ReadVariableOp2l
4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4sequential/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2l
4sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOp4sequential/rnn/custom_rnn_cell/MatMul/ReadVariableOp2p
6sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOp6sequential/rnn/custom_rnn_cell/MatMul_1/ReadVariableOp2,
sequential/rnn/whilesequential/rnn/while2t
8sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp8sequential/rnn_1/custom_rnn_cell_1/MatMul/ReadVariableOp2x
:sequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp:sequential/rnn_1/custom_rnn_cell_1/MatMul_1/ReadVariableOp20
sequential/rnn_1/whilesequential/rnn_1/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input
ў+
Љ
rnn_1_while_body_178205(
$rnn_1_while_rnn_1_while_loop_counter.
*rnn_1_while_rnn_1_while_maximum_iterations
rnn_1_while_placeholder
rnn_1_while_placeholder_1
rnn_1_while_placeholder_2'
#rnn_1_while_rnn_1_strided_slice_1_0c
_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0P
>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@R
@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
rnn_1_while_identity
rnn_1_while_identity_1
rnn_1_while_identity_2
rnn_1_while_identity_3
rnn_1_while_identity_4%
!rnn_1_while_rnn_1_strided_slice_1a
]rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorN
<rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource:@@P
>rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
=rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ф
/rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0rnn_1_while_placeholderFrnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0В
3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0е
$rnn_1/while/custom_rnn_cell_1/MatMulMatMul6rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0;rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0М
&rnn_1/while/custom_rnn_cell_1/MatMul_1MatMulrnn_1_while_placeholder_2=rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@О
!rnn_1/while/custom_rnn_cell_1/addAddV2.rnn_1/while/custom_rnn_cell_1/MatMul:product:00rnn_1/while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
6rnn_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_1_while_placeholder_1?rnn_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0%rnn_1/while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвS
rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_1/while/addAddV2rnn_1_while_placeholderrnn_1/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_1/while/add_1AddV2$rnn_1_while_rnn_1_while_loop_counterrnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_1/while/IdentityIdentityrnn_1/while/add_1:z:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_1Identity*rnn_1_while_rnn_1_while_maximum_iterations^rnn_1/while/NoOp*
T0*
_output_shapes
: k
rnn_1/while/Identity_2Identityrnn_1/while/add:z:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_3Identity@rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_4Identity%rnn_1/while/custom_rnn_cell_1/add:z:0^rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
rnn_1/while/NoOpNoOp4^rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp6^rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
>rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"~
<rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0"9
rnn_1_while_identity_1rnn_1/while/Identity_1:output:0"9
rnn_1_while_identity_2rnn_1/while/Identity_2:output:0"9
rnn_1_while_identity_3rnn_1/while/Identity_3:output:0"9
rnn_1_while_identity_4rnn_1/while/Identity_4:output:0"5
rnn_1_while_identityrnn_1/while/Identity:output:0"H
!rnn_1_while_rnn_1_strided_slice_1#rnn_1_while_rnn_1_strided_slice_1_0"Р
]rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2j
3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp2n
5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :VR

_output_shapes
: 
8
_user_specified_name rnn_1/while/maximum_iterations:P L

_output_shapes
: 
2
_user_specified_namernn_1/while/loop_counter

Й
+__inference_sequential_layer_call_fn_177770
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@@
	unknown_5:@
	unknown_6:
	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_177743o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input
Ц	
є
C__inference_dense_2_layer_call_and_return_conditional_losses_177467

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs


С
2__inference_custom_rnn_cell_1_layer_call_fn_179501

inputs
states_0
unknown:@@
	unknown_0:@@
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
р8
Ш
A__inference_rnn_1_layer_call_and_return_conditional_losses_179405

inputsB
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_179344*
condR
while_cond_179343*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Д
 
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_179489

inputs
states_00
matmul_readvariableop_resource:@@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@X

Identity_1Identityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@x
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ж
Ђ
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_179514

inputs
states_00
matmul_readvariableop_resource:@@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@X

Identity_1Identityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@x
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
в

'__inference_conv1d_layer_call_fn_178523

inputs
unknown:@
	unknown_0:@
identityЂStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_177209s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ў+
Љ
rnn_1_while_body_178433(
$rnn_1_while_rnn_1_while_loop_counter.
*rnn_1_while_rnn_1_while_maximum_iterations
rnn_1_while_placeholder
rnn_1_while_placeholder_1
rnn_1_while_placeholder_2'
#rnn_1_while_rnn_1_strided_slice_1_0c
_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0P
>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@R
@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
rnn_1_while_identity
rnn_1_while_identity_1
rnn_1_while_identity_2
rnn_1_while_identity_3
rnn_1_while_identity_4%
!rnn_1_while_rnn_1_strided_slice_1a
]rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensorN
<rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource:@@P
>rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
=rnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ф
/rnn_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0rnn_1_while_placeholderFrnn_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0В
3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0е
$rnn_1/while/custom_rnn_cell_1/MatMulMatMul6rnn_1/while/TensorArrayV2Read/TensorListGetItem:item:0;rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0М
&rnn_1/while/custom_rnn_cell_1/MatMul_1MatMulrnn_1_while_placeholder_2=rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@О
!rnn_1/while/custom_rnn_cell_1/addAddV2.rnn_1/while/custom_rnn_cell_1/MatMul:product:00rnn_1/while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
6rnn_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
0rnn_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_1_while_placeholder_1?rnn_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0%rnn_1/while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвS
rnn_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :n
rnn_1/while/addAddV2rnn_1_while_placeholderrnn_1/while/add/y:output:0*
T0*
_output_shapes
: U
rnn_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
rnn_1/while/add_1AddV2$rnn_1_while_rnn_1_while_loop_counterrnn_1/while/add_1/y:output:0*
T0*
_output_shapes
: k
rnn_1/while/IdentityIdentityrnn_1/while/add_1:z:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_1Identity*rnn_1_while_rnn_1_while_maximum_iterations^rnn_1/while/NoOp*
T0*
_output_shapes
: k
rnn_1/while/Identity_2Identityrnn_1/while/add:z:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_3Identity@rnn_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn_1/while/NoOp*
T0*
_output_shapes
: 
rnn_1/while/Identity_4Identity%rnn_1/while/custom_rnn_cell_1/add:z:0^rnn_1/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Р
rnn_1/while/NoOpNoOp4^rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp6^rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
>rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource@rnn_1_while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"~
<rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource>rnn_1_while_custom_rnn_cell_1_matmul_readvariableop_resource_0"9
rnn_1_while_identity_1rnn_1/while/Identity_1:output:0"9
rnn_1_while_identity_2rnn_1/while/Identity_2:output:0"9
rnn_1_while_identity_3rnn_1/while/Identity_3:output:0"9
rnn_1_while_identity_4rnn_1/while/Identity_4:output:0"5
rnn_1_while_identityrnn_1/while/Identity:output:0"H
!rnn_1_while_rnn_1_strided_slice_1#rnn_1_while_rnn_1_strided_slice_1_0"Р
]rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_rnn_1_while_tensorarrayv2read_tensorlistgetitem_rnn_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2j
3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp3rnn_1/while/custom_rnn_cell_1/MatMul/ReadVariableOp2n
5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp5rnn_1/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :VR

_output_shapes
: 
8
_user_specified_name rnn_1/while/maximum_iterations:P L

_output_shapes
: 
2
_user_specified_namernn_1/while/loop_counter
Ц	
є
C__inference_dense_2_layer_call_and_return_conditional_losses_179464

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ

 
_user_specified_nameinputs

Й
+__inference_sequential_layer_call_fn_177833
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@@
	unknown_5:@
	unknown_6:
	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:
identityЂStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_177806o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input
Є	
к
rnn_1_while_cond_178204(
$rnn_1_while_rnn_1_while_loop_counter.
*rnn_1_while_rnn_1_while_maximum_iterations
rnn_1_while_placeholder
rnn_1_while_placeholder_1
rnn_1_while_placeholder_2*
&rnn_1_while_less_rnn_1_strided_slice_1@
<rnn_1_while_rnn_1_while_cond_178204___redundant_placeholder0@
<rnn_1_while_rnn_1_while_cond_178204___redundant_placeholder1@
<rnn_1_while_rnn_1_while_cond_178204___redundant_placeholder2
rnn_1_while_identity
z
rnn_1/while/LessLessrnn_1_while_placeholder&rnn_1_while_less_rnn_1_strided_slice_1*
T0*
_output_shapes
: W
rnn_1/while/IdentityIdentityrnn_1/while/Less:z:0*
T0
*
_output_shapes
: "5
rnn_1_while_identityrnn_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :VR

_output_shapes
: 
8
_user_specified_name rnn_1/while/maximum_iterations:P L

_output_shapes
: 
2
_user_specified_namernn_1/while/loop_counter
р

&__inference_rnn_1_layer_call_fn_178987
inputs_0
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0
і

$__inference_rnn_layer_call_fn_178559
inputs_0
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_176912|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0
Ь(
ч
rnn_while_body_178110$
 rnn_while_rnn_while_loop_counter*
&rnn_while_rnn_while_maximum_iterations
rnn_while_placeholder
rnn_while_placeholder_1
rnn_while_placeholder_2#
rnn_while_rnn_strided_slice_1_0_
[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0L
:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0:@@N
<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
rnn_while_identity
rnn_while_identity_1
rnn_while_identity_2
rnn_while_identity_3
rnn_while_identity_4!
rnn_while_rnn_strided_slice_1]
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensorJ
8rnn_while_custom_rnn_cell_matmul_readvariableop_resource:@@L
:rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpЂ1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp
;rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   К
-rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0rnn_while_placeholderDrnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Њ
/rnn/while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Ы
 rnn/while/custom_rnn_cell/MatMulMatMul4rnn/while/TensorArrayV2Read/TensorListGetItem:item:07rnn/while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ў
1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0В
"rnn/while/custom_rnn_cell/MatMul_1MatMulrnn_while_placeholder_29rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@В
rnn/while/custom_rnn_cell/addAddV2*rnn/while/custom_rnn_cell/MatMul:product:0,rnn/while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@ж
.rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemrnn_while_placeholder_1rnn_while_placeholder!rnn/while/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвQ
rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
rnn/while/addAddV2rnn_while_placeholderrnn/while/add/y:output:0*
T0*
_output_shapes
: S
rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
rnn/while/add_1AddV2 rnn_while_rnn_while_loop_counterrnn/while/add_1/y:output:0*
T0*
_output_shapes
: e
rnn/while/IdentityIdentityrnn/while/add_1:z:0^rnn/while/NoOp*
T0*
_output_shapes
: z
rnn/while/Identity_1Identity&rnn_while_rnn_while_maximum_iterations^rnn/while/NoOp*
T0*
_output_shapes
: e
rnn/while/Identity_2Identityrnn/while/add:z:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_3Identity>rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^rnn/while/NoOp*
T0*
_output_shapes
: 
rnn/while/Identity_4Identity!rnn/while/custom_rnn_cell/add:z:0^rnn/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ж
rnn/while/NoOpNoOp0^rnn/while/custom_rnn_cell/MatMul/ReadVariableOp2^rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "z
:rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource<rnn_while_custom_rnn_cell_matmul_1_readvariableop_resource_0"v
8rnn_while_custom_rnn_cell_matmul_readvariableop_resource:rnn_while_custom_rnn_cell_matmul_readvariableop_resource_0"5
rnn_while_identity_1rnn/while/Identity_1:output:0"5
rnn_while_identity_2rnn/while/Identity_2:output:0"5
rnn_while_identity_3rnn/while/Identity_3:output:0"5
rnn_while_identity_4rnn/while/Identity_4:output:0"1
rnn_while_identityrnn/while/Identity:output:0"@
rnn_while_rnn_strided_slice_1rnn_while_rnn_strided_slice_1_0"И
Yrnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor[rnn_while_tensorarrayv2read_tensorlistgetitem_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2b
/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp/rnn/while/custom_rnn_cell/MatMul/ReadVariableOp2f
1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp1rnn/while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :TP

_output_shapes
: 
6
_user_specified_namernn/while/maximum_iterations:N J

_output_shapes
: 
0
_user_specified_namernn/while/loop_counter
Б
Ђ
F__inference_sequential_layer_call_and_return_conditional_losses_177743

inputs#
conv1d_177712:@
conv1d_177714:@

rnn_177717:@@

rnn_177719:@@
rnn_1_177722:@@
rnn_1_177724:@@
dense_177727:@
dense_177729: 
dense_1_177732:

dense_1_177734:
 
dense_2_177737:

dense_2_177739:
identityЂconv1d/StatefulPartitionedCallЂdense/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂrnn/StatefulPartitionedCallЂrnn_1/StatefulPartitionedCallь
conv1d/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_177712conv1d_177714*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_layer_call_and_return_conditional_losses_177209
rnn/StatefulPartitionedCallStatefulPartitionedCall'conv1d/StatefulPartitionedCall:output:0
rnn_177717
rnn_177719*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177312
rnn_1/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0rnn_1_177722rnn_1_177724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177417
dense/StatefulPartitionedCallStatefulPartitionedCall&rnn_1/StatefulPartitionedCall:output:0dense_177727dense_177729*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_177434
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_177732dense_1_177734*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177451
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_177737dense_2_177739*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177467w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^conv1d/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^rnn/StatefulPartitionedCall^rnn_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall2>
rnn_1/StatefulPartitionedCallrnn_1/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ%
ћ
while_body_178811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
і

$__inference_rnn_layer_call_fn_178550
inputs_0
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_176816|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0
ш7
Р
?__inference_rnn_layer_call_and_return_conditional_losses_178773
inputs_0@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_178713*
condR
while_cond_178712*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
"
_user_specified_name
inputs_0

є
while_cond_177518
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177518___redundant_placeholder04
0while_while_cond_177518___redundant_placeholder14
0while_while_cond_177518___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter


П
0__inference_custom_rnn_cell_layer_call_fn_179476

inputs
states_0
unknown:@@
	unknown_0:@@
identity

identity_1ЂStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:џџџџџџџџџ@
"
_user_specified_name
states_0:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs

Г
+__inference_sequential_layer_call_fn_178058

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@@
	unknown_5:@
	unknown_6:
	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_177806o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ц

В
$__inference_signature_wrapper_178000
conv1d_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@@
	unknown_3:@@
	unknown_4:@@
	unknown_5:@
	unknown_6:
	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:
identityЂStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallconv1d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_176705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_nameconv1d_input
р8
Ш
A__inference_rnn_1_layer_call_and_return_conditional_losses_177417

inputsB
0custom_rnn_cell_1_matmul_readvariableop_resource:@@D
2custom_rnn_cell_1_matmul_1_readvariableop_resource:@@
identityЂ'custom_rnn_cell_1/MatMul/ReadVariableOpЂ)custom_rnn_cell_1/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
'custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp0custom_rnn_cell_1_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMulMatMulstrided_slice_2:output:0/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
)custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp2custom_rnn_cell_1_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell_1/MatMul_1MatMulzeros:output:01custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell_1/addAddV2"custom_rnn_cell_1/MatMul:product:0$custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00custom_rnn_cell_1_matmul_readvariableop_resource2custom_rnn_cell_1_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_177356*
condR
while_cond_177355*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Є
NoOpNoOp(^custom_rnn_cell_1/MatMul/ReadVariableOp*^custom_rnn_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2R
'custom_rnn_cell_1/MatMul/ReadVariableOp'custom_rnn_cell_1/MatMul/ReadVariableOp2V
)custom_rnn_cell_1/MatMul_1/ReadVariableOp)custom_rnn_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Њ7
О
?__inference_rnn_layer_call_and_return_conditional_losses_178871

inputs@
.custom_rnn_cell_matmul_readvariableop_resource:@@B
0custom_rnn_cell_matmul_1_readvariableop_resource:@@
identityЂ%custom_rnn_cell/MatMul/ReadVariableOpЂ'custom_rnn_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_mask
%custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp.custom_rnn_cell_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMulMatMulstrided_slice_2:output:0-custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
'custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp0custom_rnn_cell_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0
custom_rnn_cell/MatMul_1MatMulzeros:output:0/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@
custom_rnn_cell/addAddV2 custom_rnn_cell/MatMul:product:0"custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0.custom_rnn_cell_matmul_readvariableop_resource0custom_rnn_cell_matmul_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_178811*
condR
while_cond_178810*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@ 
NoOpNoOp&^custom_rnn_cell/MatMul/ReadVariableOp(^custom_rnn_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 2N
%custom_rnn_cell/MatMul/ReadVariableOp%custom_rnn_cell/MatMul/ReadVariableOp2R
'custom_rnn_cell/MatMul_1/ReadVariableOp'custom_rnn_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs


є
C__inference_dense_1_layer_call_and_return_conditional_losses_177451

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш

&__inference_rnn_1_layer_call_fn_179005

inputs
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177684o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
љ&

while_body_179044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter

є
while_cond_177622
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_177622___redundant_placeholder04
0while_while_cond_177622___redundant_placeholder14
0while_while_cond_177622___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ї4
ь
A__inference_rnn_1_layer_call_and_return_conditional_losses_177057

inputs*
custom_rnn_cell_1_176986:@@*
custom_rnn_cell_1_176988:@@
identityЂ)custom_rnn_cell_1/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskЫ
)custom_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0custom_rnn_cell_1_176986custom_rnn_cell_1_176988*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : э
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0custom_rnn_cell_1_176986custom_rnn_cell_1_176988*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_176997*
condR
while_cond_176996*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   ж
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:џџџџџџџџџ@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@z
NoOpNoOp*^custom_rnn_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2V
)custom_rnn_cell_1/StatefulPartitionedCall)custom_rnn_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Ђ3
ф
?__inference_rnn_layer_call_and_return_conditional_losses_176816

inputs(
custom_rnn_cell_176747:@@(
custom_rnn_cell_176749:@@
identityЂ'custom_rnn_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maskУ
'custom_rnn_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0custom_rnn_cell_176747custom_rnn_cell_176749*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : щ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0custom_rnn_cell_176747custom_rnn_cell_176749*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :џџџџџџџџџ@: : : : *$
_read_only_resource_inputs
*
_stateful_parallelism( *
bodyR
while_body_176757*
condR
while_cond_176756*6
output_shapes%
#: : : : :џџџџџџџџџ@: : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@x
NoOpNoOp(^custom_rnn_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:џџџџџџџџџџџџџџџџџџ@: : 2R
'custom_rnn_cell/StatefulPartitionedCall'custom_rnn_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

є
while_cond_178810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_178810___redundant_placeholder04
0while_while_cond_178810___redundant_placeholder14
0while_while_cond_178810___redundant_placeholder2
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
): : : : :џџџџџџџџџ@: ::::

_output_shapes
::

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ь

$__inference_rnn_layer_call_fn_178568

inputs
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_177312s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ў

K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_176746

inputs

states0
matmul_readvariableop_resource:@@2
 matmul_1_readvariableop_resource:@@
identity

identity_1ЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@V
IdentityIdentityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@X

Identity_1Identityadd:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@x
NoOpNoOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:џџџџџџџџџ@:џџџџџџџџџ@: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:OK
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_namestates:O K
'
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
љ&

while_body_177356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0J
8while_custom_rnn_cell_1_matmul_readvariableop_resource_0:@@L
:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorH
6while_custom_rnn_cell_1_matmul_readvariableop_resource:@@J
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:@@Ђ-while/custom_rnn_cell_1/MatMul/ReadVariableOpЂ/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0І
-while/custom_rnn_cell_1/MatMul/ReadVariableOpReadVariableOp8while_custom_rnn_cell_1_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0У
while/custom_rnn_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:05while/custom_rnn_cell_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Њ
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOpReadVariableOp:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0Њ
 while/custom_rnn_cell_1/MatMul_1MatMulwhile_placeholder_27while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ќ
while/custom_rnn_cell_1/addAddV2(while/custom_rnn_cell_1/MatMul:product:0*while/custom_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : №
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/custom_rnn_cell_1/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: |
while/Identity_4Identitywhile/custom_rnn_cell_1/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Ў

while/NoOpNoOp.^while/custom_rnn_cell_1/MatMul/ReadVariableOp0^while/custom_rnn_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "v
8while_custom_rnn_cell_1_matmul_1_readvariableop_resource:while_custom_rnn_cell_1_matmul_1_readvariableop_resource_0"r
6while_custom_rnn_cell_1_matmul_readvariableop_resource8while_custom_rnn_cell_1_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2^
-while/custom_rnn_cell_1/MatMul/ReadVariableOp-while/custom_rnn_cell_1/MatMul/ReadVariableOp2b
/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp/while/custom_rnn_cell_1/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ш

&__inference_rnn_1_layer_call_fn_178996

inputs
unknown:@@
	unknown_0:@@
identityЂStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_rnn_1_layer_call_and_return_conditional_losses_177417o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ќ!
ѓ
while_body_176997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_02
 while_custom_rnn_cell_1_177019_0:@@2
 while_custom_rnn_cell_1_177021_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor0
while_custom_rnn_cell_1_177019:@@0
while_custom_rnn_cell_1_177021:@@Ђ/while/custom_rnn_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0ў
/while/custom_rnn_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_custom_rnn_cell_1_177019_0 while_custom_rnn_cell_1_177021_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ@:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_176985r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:08while/custom_rnn_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity8while/custom_rnn_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@~

while/NoOpNoOp0^while/custom_rnn_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "B
while_custom_rnn_cell_1_177019 while_custom_rnn_cell_1_177019_0"B
while_custom_rnn_cell_1_177021 while_custom_rnn_cell_1_177021_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2b
/while/custom_rnn_cell_1/StatefulPartitionedCall/while/custom_rnn_cell_1/StatefulPartitionedCall:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter


є
C__inference_dense_1_layer_call_and_return_conditional_losses_179445

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ%
ћ
while_body_177519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0H
6while_custom_rnn_cell_matmul_readvariableop_resource_0:@@J
8while_custom_rnn_cell_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorF
4while_custom_rnn_cell_matmul_readvariableop_resource:@@H
6while_custom_rnn_cell_matmul_1_readvariableop_resource:@@Ђ+while/custom_rnn_cell/MatMul/ReadVariableOpЂ-while/custom_rnn_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ@   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ@*
element_dtype0Ђ
+while/custom_rnn_cell/MatMul/ReadVariableOpReadVariableOp6while_custom_rnn_cell_matmul_readvariableop_resource_0*
_output_shapes

:@@*
dtype0П
while/custom_rnn_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:03while/custom_rnn_cell/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
-while/custom_rnn_cell/MatMul_1/ReadVariableOpReadVariableOp8while_custom_rnn_cell_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0І
while/custom_rnn_cell/MatMul_1MatMulwhile_placeholder_25while/custom_rnn_cell/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ@І
while/custom_rnn_cell/addAddV2&while/custom_rnn_cell/MatMul:product:0(while/custom_rnn_cell/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ@Ц
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/custom_rnn_cell/add:z:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/custom_rnn_cell/add:z:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ@Њ

while/NoOpNoOp,^while/custom_rnn_cell/MatMul/ReadVariableOp.^while/custom_rnn_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "r
6while_custom_rnn_cell_matmul_1_readvariableop_resource8while_custom_rnn_cell_matmul_1_readvariableop_resource_0"n
4while_custom_rnn_cell_matmul_readvariableop_resource6while_custom_rnn_cell_matmul_readvariableop_resource_0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0")
while_identitywhile/Identity:output:0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :џџџџџџџџџ@: : : : 2Z
+while/custom_rnn_cell/MatMul/ReadVariableOp+while/custom_rnn_cell/MatMul/ReadVariableOp2^
-while/custom_rnn_cell/MatMul_1/ReadVariableOp-while/custom_rnn_cell/MatMul_1/ReadVariableOp:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ@:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter"ѓ
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultЄ
I
conv1d_input9
serving_default_conv1d_input:0џџџџџџџџџ;
dense_20
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Ц
а
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
н
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell
 
state_spec"
_tf_keras_rnn_layer
У
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses
'cell
(
state_spec"
_tf_keras_rnn_layer
Л
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
Л
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
Л
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses

?kernel
@bias"
_tf_keras_layer
v
0
1
A2
B3
C4
D5
/6
07
78
89
?10
@11"
trackable_list_wrapper
v
0
1
A2
B3
C4
D5
/6
07
78
89
?10
@11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
з
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32ь
+__inference_sequential_layer_call_fn_177770
+__inference_sequential_layer_call_fn_177833
+__inference_sequential_layer_call_fn_178029
+__inference_sequential_layer_call_fn_178058Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3
У
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32и
F__inference_sequential_layer_call_and_return_conditional_losses_177474
F__inference_sequential_layer_call_and_return_conditional_losses_177706
F__inference_sequential_layer_call_and_return_conditional_losses_178286
F__inference_sequential_layer_call_and_return_conditional_losses_178514Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
бBЮ
!__inference__wrapped_model_176705conv1d_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

R
_variables
S_iterations
T_learning_rate
U_index_dict
V	momentums
W_update_step_xla"
experimentalOptimizer
,
Xserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
^trace_02Ф
'__inference_conv1d_layer_call_fn_178523
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z^trace_0
ќ
_trace_02п
B__inference_conv1d_layer_call_and_return_conditional_losses_178541
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z_trace_0
#:!@2conv1d/kernel
:@2conv1d/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

`states
anon_trainable_variables

blayers
cmetrics
dlayer_regularization_losses
elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
ftrace_0
gtrace_1
htrace_2
itrace_32і
$__inference_rnn_layer_call_fn_178550
$__inference_rnn_layer_call_fn_178559
$__inference_rnn_layer_call_fn_178568
$__inference_rnn_layer_call_fn_178577л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zftrace_0zgtrace_1zhtrace_2zitrace_3
Э
jtrace_0
ktrace_1
ltrace_2
mtrace_32т
?__inference_rnn_layer_call_and_return_conditional_losses_178675
?__inference_rnn_layer_call_and_return_conditional_losses_178773
?__inference_rnn_layer_call_and_return_conditional_losses_178871
?__inference_rnn_layer_call_and_return_conditional_losses_178969л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zjtrace_0zktrace_1zltrace_2zmtrace_3
Ч
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses

Akernel
Brecurrent_kernel"
_tf_keras_layer
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
щ
ztrace_0
{trace_1
|trace_2
}trace_32ў
&__inference_rnn_1_layer_call_fn_178978
&__inference_rnn_1_layer_call_fn_178987
&__inference_rnn_1_layer_call_fn_178996
&__inference_rnn_1_layer_call_fn_179005л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zztrace_0z{trace_1z|trace_2z}trace_3
й
~trace_0
trace_1
trace_2
trace_32ъ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179105
A__inference_rnn_1_layer_call_and_return_conditional_losses_179205
A__inference_rnn_1_layer_call_and_return_conditional_losses_179305
A__inference_rnn_1_layer_call_and_return_conditional_losses_179405л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z~trace_0ztrace_1ztrace_2ztrace_3
Э
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses

Ckernel
Drecurrent_kernel"
_tf_keras_layer
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
т
trace_02У
&__inference_dense_layer_call_fn_179414
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
§
trace_02о
A__inference_dense_layer_call_and_return_conditional_losses_179425
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
:@2dense/kernel
:2
dense/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_dense_1_layer_call_fn_179434
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_dense_1_layer_call_and_return_conditional_losses_179445
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 :
2dense_1/kernel
:
2dense_1/bias
.
?0
@1"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ф
trace_02Х
(__inference_dense_2_layer_call_fn_179454
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
џ
trace_02р
C__inference_dense_2_layer_call_and_return_conditional_losses_179464
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
 :
2dense_2/kernel
:2dense_2/bias
,:*@@2rnn/custom_rnn_cell/kernel
6:4@@2$rnn/custom_rnn_cell/recurrent_kernel
0:.@@2rnn_1/custom_rnn_cell_1/kernel
::8@@2(rnn_1/custom_rnn_cell_1/recurrent_kernel
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
јBѕ
+__inference_sequential_layer_call_fn_177770conv1d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
+__inference_sequential_layer_call_fn_177833conv1d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
+__inference_sequential_layer_call_fn_178029inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ђBя
+__inference_sequential_layer_call_fn_178058inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_177474conv1d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_177706conv1d_input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_178286inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
F__inference_sequential_layer_call_and_return_conditional_losses_178514inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

S0
1
 2
Ё3
Ђ4
Ѓ5
Є6
Ѕ7
І8
Ї9
Ј10
Љ11
Њ12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper

0
 1
Ё2
Ђ3
Ѓ4
Є5
Ѕ6
І7
Ї8
Ј9
Љ10
Њ11"
trackable_list_wrapper
Е2ВЏ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
аBЭ
$__inference_signature_wrapper_178000conv1d_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
бBЮ
'__inference_conv1d_layer_call_fn_178523inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ьBщ
B__inference_conv1d_layer_call_and_return_conditional_losses_178541inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
$__inference_rnn_layer_call_fn_178550inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
$__inference_rnn_layer_call_fn_178559inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
$__inference_rnn_layer_call_fn_178568inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
$__inference_rnn_layer_call_fn_178577inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЎBЋ
?__inference_rnn_layer_call_and_return_conditional_losses_178675inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЎBЋ
?__inference_rnn_layer_call_and_return_conditional_losses_178773inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
?__inference_rnn_layer_call_and_return_conditional_losses_178871inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЌBЉ
?__inference_rnn_layer_call_and_return_conditional_losses_178969inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
і
Аtrace_02з
0__inference_custom_rnn_cell_layer_call_fn_179476Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zАtrace_0

Бtrace_02ђ
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_179489Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zБtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
&__inference_rnn_1_layer_call_fn_178978inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_rnn_1_layer_call_fn_178987inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_rnn_1_layer_call_fn_178996inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
&__inference_rnn_1_layer_call_fn_179005inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
АB­
A__inference_rnn_1_layer_call_and_return_conditional_losses_179105inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
АB­
A__inference_rnn_1_layer_call_and_return_conditional_losses_179205inputs_0"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЎBЋ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179305inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЎBЋ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179405inputs"л
дВа
FullArgSpecG
args?<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsЂ

 
p 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ј
Зtrace_02й
2__inference_custom_rnn_cell_1_layer_call_fn_179501Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЗtrace_0

Иtrace_02є
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_179514Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zИtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
аBЭ
&__inference_dense_layer_call_fn_179414inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ыBш
A__inference_dense_layer_call_and_return_conditional_losses_179425inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBЯ
(__inference_dense_1_layer_call_fn_179434inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_dense_1_layer_call_and_return_conditional_losses_179445inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
вBЯ
(__inference_dense_2_layer_call_fn_179454inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_dense_2_layer_call_and_return_conditional_losses_179464inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
Й	variables
К	keras_api

Лtotal

Мcount"
_tf_keras_metric
R
Н	variables
О	keras_api

Пtotal

Рcount"
_tf_keras_metric
':%@2SGD/m/conv1d/kernel
:@2SGD/m/conv1d/bias
0:.@@2 SGD/m/rnn/custom_rnn_cell/kernel
::8@@2*SGD/m/rnn/custom_rnn_cell/recurrent_kernel
4:2@@2$SGD/m/rnn_1/custom_rnn_cell_1/kernel
>:<@@2.SGD/m/rnn_1/custom_rnn_cell_1/recurrent_kernel
": @2SGD/m/dense/kernel
:2SGD/m/dense/bias
$:"
2SGD/m/dense_1/kernel
:
2SGD/m/dense_1/bias
$:"
2SGD/m/dense_2/kernel
:2SGD/m/dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
юBы
0__inference_custom_rnn_cell_layer_call_fn_179476inputsstates_0"Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_179489inputsstates_0"Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№Bэ
2__inference_custom_rnn_cell_1_layer_call_fn_179501inputsstates_0"Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_179514inputsstates_0"Ђ
В
FullArgSpec
args
jinputs
jstates
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
Л0
М1"
trackable_list_wrapper
.
Й	variables"
_generic_user_object
:  (2total
:  (2count
0
П0
Р1"
trackable_list_wrapper
.
Н	variables"
_generic_user_object
:  (2total
:  (2countЁ
!__inference__wrapped_model_176705|ABCD/078?@9Ђ6
/Ђ,
*'
conv1d_inputџџџџџџџџџ
Њ "1Њ.
,
dense_2!
dense_2џџџџџџџџџБ
B__inference_conv1d_layer_call_and_return_conditional_losses_178541k3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@
 
'__inference_conv1d_layer_call_fn_178523`3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџ@
M__inference_custom_rnn_cell_1_layer_call_and_return_conditional_losses_179514РCDXЂU
NЂK
 
inputsџџџџџџџџџ@
'Ђ$
"
states_0џџџџџџџџџ@
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ@
+(
&#
tensor_0_1_0џџџџџџџџџ@
 щ
2__inference_custom_rnn_cell_1_layer_call_fn_179501ВCDXЂU
NЂK
 
inputsџџџџџџџџџ@
'Ђ$
"
states_0џџџџџџџџџ@
Њ "RЂO
"
tensor_0џџџџџџџџџ@
)&
$!

tensor_1_0џџџџџџџџџ@
K__inference_custom_rnn_cell_layer_call_and_return_conditional_losses_179489РABXЂU
NЂK
 
inputsџџџџџџџџџ@
'Ђ$
"
states_0џџџџџџџџџ@
Њ "`Ђ]
VЂS
$!

tensor_0_0џџџџџџџџџ@
+(
&#
tensor_0_1_0џџџџџџџџџ@
 ч
0__inference_custom_rnn_cell_layer_call_fn_179476ВABXЂU
NЂK
 
inputsџџџџџџџџџ@
'Ђ$
"
states_0џџџџџџџџџ@
Њ "RЂO
"
tensor_0џџџџџџџџџ@
)&
$!

tensor_1_0џџџџџџџџџ@Њ
C__inference_dense_1_layer_call_and_return_conditional_losses_179445c78/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ

 
(__inference_dense_1_layer_call_fn_179434X78/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџ
Њ
C__inference_dense_2_layer_call_and_return_conditional_losses_179464c?@/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
(__inference_dense_2_layer_call_fn_179454X?@/Ђ,
%Ђ"
 
inputsџџџџџџџџџ

Њ "!
unknownџџџџџџџџџЈ
A__inference_dense_layer_call_and_return_conditional_losses_179425c/0/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
&__inference_dense_layer_call_fn_179414X/0/Ђ,
%Ђ"
 
inputsџџџџџџџџџ@
Њ "!
unknownџџџџџџџџџЭ
A__inference_rnn_1_layer_call_and_return_conditional_losses_179105CDSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p

 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 Э
A__inference_rnn_1_layer_call_and_return_conditional_losses_179205CDSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p 

 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 М
A__inference_rnn_1_layer_call_and_return_conditional_losses_179305wCDCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p

 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 М
A__inference_rnn_1_layer_call_and_return_conditional_losses_179405wCDCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p 

 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ@
 І
&__inference_rnn_1_layer_call_fn_178978|CDSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p

 

 
Њ "!
unknownџџџџџџџџџ@І
&__inference_rnn_1_layer_call_fn_178987|CDSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p 

 

 
Њ "!
unknownџџџџџџџџџ@
&__inference_rnn_1_layer_call_fn_178996lCDCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p

 

 
Њ "!
unknownџџџџџџџџџ@
&__inference_rnn_1_layer_call_fn_179005lCDCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p 

 

 
Њ "!
unknownџџџџџџџџџ@и
?__inference_rnn_layer_call_and_return_conditional_losses_178675ABSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p

 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ@
 и
?__inference_rnn_layer_call_and_return_conditional_losses_178773ABSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p 

 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ@
 О
?__inference_rnn_layer_call_and_return_conditional_losses_178871{ABCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p

 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@
 О
?__inference_rnn_layer_call_and_return_conditional_losses_178969{ABCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p 

 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ@
 В
$__inference_rnn_layer_call_fn_178550ABSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p

 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ@В
$__inference_rnn_layer_call_fn_178559ABSЂP
IЂF
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ@

 
p 

 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџ@
$__inference_rnn_layer_call_fn_178568pABCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p

 

 
Њ "%"
unknownџџџџџџџџџ@
$__inference_rnn_layer_call_fn_178577pABCЂ@
9Ђ6
$!
inputsџџџџџџџџџ@

 
p 

 

 
Њ "%"
unknownџџџџџџџџџ@Щ
F__inference_sequential_layer_call_and_return_conditional_losses_177474ABCD/078?@AЂ>
7Ђ4
*'
conv1d_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Щ
F__inference_sequential_layer_call_and_return_conditional_losses_177706ABCD/078?@AЂ>
7Ђ4
*'
conv1d_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 У
F__inference_sequential_layer_call_and_return_conditional_losses_178286yABCD/078?@;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 У
F__inference_sequential_layer_call_and_return_conditional_losses_178514yABCD/078?@;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Ѓ
+__inference_sequential_layer_call_fn_177770tABCD/078?@AЂ>
7Ђ4
*'
conv1d_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџЃ
+__inference_sequential_layer_call_fn_177833tABCD/078?@AЂ>
7Ђ4
*'
conv1d_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџ
+__inference_sequential_layer_call_fn_178029nABCD/078?@;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџ
+__inference_sequential_layer_call_fn_178058nABCD/078?@;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџЕ
$__inference_signature_wrapper_178000ABCD/078?@IЂF
Ђ 
?Њ<
:
conv1d_input*'
conv1d_inputџџџџџџџџџ"1Њ.
,
dense_2!
dense_2џџџџџџџџџ