??	
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
v
	C1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	C1/kernel
o
C1/kernel/Read/ReadVariableOpReadVariableOp	C1/kernel*&
_output_shapes
:*
dtype0
f
C1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	C1/bias
_
C1/bias/Read/ReadVariableOpReadVariableOpC1/bias*
_output_shapes
:*
dtype0
v
	C3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	C3/kernel
o
C3/kernel/Read/ReadVariableOpReadVariableOp	C3/kernel*&
_output_shapes
:*
dtype0
f
C3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	C3/bias
_
C3/bias/Read/ReadVariableOpReadVariableOpC3/bias*
_output_shapes
:*
dtype0
p
	C5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_name	C5/kernel
i
C5/kernel/Read/ReadVariableOpReadVariableOp	C5/kernel* 
_output_shapes
:
??*
dtype0
g
C5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	C5/bias
`
C5/bias/Read/ReadVariableOpReadVariableOpC5/bias*
_output_shapes	
:?*
dtype0
o
	F6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*
shared_name	F6/kernel
h
F6/kernel/Read/ReadVariableOpReadVariableOp	F6/kernel*
_output_shapes
:	?T*
dtype0
f
F6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_name	F6/bias
_
F6/bias/Read/ReadVariableOpReadVariableOpF6/bias*
_output_shapes
:T*
dtype0
v
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
*
shared_nameOutput/kernel
o
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes

:T
*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/C1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/C1/kernel/m
}
$Adam/C1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/m*&
_output_shapes
:*
dtype0
t
Adam/C1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/C1/bias/m
m
"Adam/C1/bias/m/Read/ReadVariableOpReadVariableOpAdam/C1/bias/m*
_output_shapes
:*
dtype0
?
Adam/C3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/C3/kernel/m
}
$Adam/C3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C3/kernel/m*&
_output_shapes
:*
dtype0
t
Adam/C3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/C3/bias/m
m
"Adam/C3/bias/m/Read/ReadVariableOpReadVariableOpAdam/C3/bias/m*
_output_shapes
:*
dtype0
~
Adam/C5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_nameAdam/C5/kernel/m
w
$Adam/C5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/C5/kernel/m* 
_output_shapes
:
??*
dtype0
u
Adam/C5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameAdam/C5/bias/m
n
"Adam/C5/bias/m/Read/ReadVariableOpReadVariableOpAdam/C5/bias/m*
_output_shapes	
:?*
dtype0
}
Adam/F6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*!
shared_nameAdam/F6/kernel/m
v
$Adam/F6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/F6/kernel/m*
_output_shapes
:	?T*
dtype0
t
Adam/F6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_nameAdam/F6/bias/m
m
"Adam/F6/bias/m/Read/ReadVariableOpReadVariableOpAdam/F6/bias/m*
_output_shapes
:T*
dtype0
?
Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
*%
shared_nameAdam/Output/kernel/m
}
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes

:T
*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:
*
dtype0
?
Adam/C1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/C1/kernel/v
}
$Adam/C1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C1/kernel/v*&
_output_shapes
:*
dtype0
t
Adam/C1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/C1/bias/v
m
"Adam/C1/bias/v/Read/ReadVariableOpReadVariableOpAdam/C1/bias/v*
_output_shapes
:*
dtype0
?
Adam/C3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/C3/kernel/v
}
$Adam/C3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C3/kernel/v*&
_output_shapes
:*
dtype0
t
Adam/C3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/C3/bias/v
m
"Adam/C3/bias/v/Read/ReadVariableOpReadVariableOpAdam/C3/bias/v*
_output_shapes
:*
dtype0
~
Adam/C5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_nameAdam/C5/kernel/v
w
$Adam/C5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/C5/kernel/v* 
_output_shapes
:
??*
dtype0
u
Adam/C5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameAdam/C5/bias/v
n
"Adam/C5/bias/v/Read/ReadVariableOpReadVariableOpAdam/C5/bias/v*
_output_shapes	
:?*
dtype0
}
Adam/F6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?T*!
shared_nameAdam/F6/kernel/v
v
$Adam/F6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/F6/kernel/v*
_output_shapes
:	?T*
dtype0
t
Adam/F6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_nameAdam/F6/bias/v
m
"Adam/F6/bias/v/Read/ReadVariableOpReadVariableOpAdam/F6/bias/v*
_output_shapes
:T*
dtype0
?
Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:T
*%
shared_nameAdam/Output/kernel/v
}
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes

:T
*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?<
value?;B?; B?;
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

	variables
regularization_losses
trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
 regularization_losses
!trainable_variables
"	keras_api
R
#	variables
$regularization_losses
%trainable_variables
&	keras_api
h

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
h

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
h

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
?
9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy'mz(m{-m|.m}3m~4mv?v?v?v?'v?(v?-v?.v?3v?4v?
F
0
1
2
3
'4
(5
-6
.7
38
49
 
F
0
1
2
3
'4
(5
-6
.7
38
49
?
>metrics
?non_trainable_variables

@layers

	variables
regularization_losses
Alayer_regularization_losses
Blayer_metrics
trainable_variables
 
US
VARIABLE_VALUE	C1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Cmetrics
Dnon_trainable_variables

Elayers
	variables
regularization_losses
Flayer_regularization_losses
Glayer_metrics
trainable_variables
 
 
 
?
Hmetrics
Inon_trainable_variables

Jlayers
	variables
regularization_losses
Klayer_regularization_losses
Llayer_metrics
trainable_variables
US
VARIABLE_VALUE	C3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
Mmetrics
Nnon_trainable_variables

Olayers
	variables
regularization_losses
Player_regularization_losses
Qlayer_metrics
trainable_variables
 
 
 
?
Rmetrics
Snon_trainable_variables

Tlayers
	variables
 regularization_losses
Ulayer_regularization_losses
Vlayer_metrics
!trainable_variables
 
 
 
?
Wmetrics
Xnon_trainable_variables

Ylayers
#	variables
$regularization_losses
Zlayer_regularization_losses
[layer_metrics
%trainable_variables
US
VARIABLE_VALUE	C5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEC5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

'0
(1
 

'0
(1
?
\metrics
]non_trainable_variables

^layers
)	variables
*regularization_losses
_layer_regularization_losses
`layer_metrics
+trainable_variables
US
VARIABLE_VALUE	F6/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEF6/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
?
ametrics
bnon_trainable_variables

clayers
/	variables
0regularization_losses
dlayer_regularization_losses
elayer_metrics
1trainable_variables
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
?
fmetrics
gnon_trainable_variables

hlayers
5	variables
6regularization_losses
ilayer_regularization_losses
jlayer_metrics
7trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

k0
l1
 
8
0
1
2
3
4
5
6
7
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	mtotal
	ncount
o	variables
p	keras_api
D
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

m0
n1

o	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

q0
r1

t	variables
xv
VARIABLE_VALUEAdam/C1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/F6/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/F6/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/C5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/C5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/F6/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/F6/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1	C1/kernelC1/bias	C3/kernelC3/bias	C5/kernelC5/bias	F6/kernelF6/biasOutput/kernelOutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_36460
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameC1/kernel/Read/ReadVariableOpC1/bias/Read/ReadVariableOpC3/kernel/Read/ReadVariableOpC3/bias/Read/ReadVariableOpC5/kernel/Read/ReadVariableOpC5/bias/Read/ReadVariableOpF6/kernel/Read/ReadVariableOpF6/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp$Adam/C1/kernel/m/Read/ReadVariableOp"Adam/C1/bias/m/Read/ReadVariableOp$Adam/C3/kernel/m/Read/ReadVariableOp"Adam/C3/bias/m/Read/ReadVariableOp$Adam/C5/kernel/m/Read/ReadVariableOp"Adam/C5/bias/m/Read/ReadVariableOp$Adam/F6/kernel/m/Read/ReadVariableOp"Adam/F6/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp$Adam/C1/kernel/v/Read/ReadVariableOp"Adam/C1/bias/v/Read/ReadVariableOp$Adam/C3/kernel/v/Read/ReadVariableOp"Adam/C3/bias/v/Read/ReadVariableOp$Adam/C5/kernel/v/Read/ReadVariableOp"Adam/C5/bias/v/Read/ReadVariableOp$Adam/F6/kernel/v/Read/ReadVariableOp"Adam/F6/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_36887
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	C1/kernelC1/bias	C3/kernelC3/bias	C5/kernelC5/bias	F6/kernelF6/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/C1/kernel/mAdam/C1/bias/mAdam/C3/kernel/mAdam/C3/bias/mAdam/C5/kernel/mAdam/C5/bias/mAdam/F6/kernel/mAdam/F6/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/C1/kernel/vAdam/C1/bias/vAdam/C3/kernel/vAdam/C3/bias/vAdam/C5/kernel/vAdam/C5/bias/vAdam/F6/kernel/vAdam/F6/bias/vAdam/Output/kernel/vAdam/Output/bias/v*3
Tin,
*2(*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_37014??
?
Y
=__inference_S2_layer_call_and_return_conditional_losses_36019

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Y
=__inference_S2_layer_call_and_return_conditional_losses_36621

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Y
=__inference_S2_layer_call_and_return_conditional_losses_36082

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_36682

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
>
"__inference_S4_layer_call_fn_36671

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_360412
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?2
?
@__inference_lenet_layer_call_and_return_conditional_losses_36546

inputs;
!c1_conv2d_readvariableop_resource:0
"c1_biasadd_readvariableop_resource:;
!c3_conv2d_readvariableop_resource:0
"c3_biasadd_readvariableop_resource:5
!c5_matmul_readvariableop_resource:
??1
"c5_biasadd_readvariableop_resource:	?4
!f6_matmul_readvariableop_resource:	?T0
"f6_biasadd_readvariableop_resource:T7
%output_matmul_readvariableop_resource:T
4
&output_biasadd_readvariableop_resource:

identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C3/BiasAdd/ReadVariableOp?C3/Conv2D/ReadVariableOp?C5/BiasAdd/ReadVariableOp?C5/MatMul/ReadVariableOp?F6/BiasAdd/ReadVariableOp?F6/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
C1/Conv2D/ReadVariableOp?
	C1/Conv2DConv2Dinputs C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
	C1/Conv2D?
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
C1/BiasAdd/ReadVariableOp?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2

C1/BiasAddi
C1/ReluReluC1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
C1/Relu?

S2/MaxPoolMaxPoolC1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2

S2/MaxPool?
C3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
C3/Conv2D/ReadVariableOp?
	C3/Conv2DConv2DS2/MaxPool:output:0 C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
	C3/Conv2D?
C3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
C3/BiasAdd/ReadVariableOp?

C3/BiasAddBiasAddC3/Conv2D:output:0!C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2

C3/BiasAddi
C3/ReluReluC3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2	
C3/Relu?

S4/MaxPoolMaxPoolC3/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2

S4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeS4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
C5/MatMul/ReadVariableOpReadVariableOp!c5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
C5/MatMul/ReadVariableOp?
	C5/MatMulMatMulflatten/Reshape:output:0 C5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	C5/MatMul?
C5/BiasAdd/ReadVariableOpReadVariableOp"c5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
C5/BiasAdd/ReadVariableOp?

C5/BiasAddBiasAddC5/MatMul:product:0!C5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

C5/BiasAddb
C5/ReluReluC5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
C5/Relu?
F6/MatMul/ReadVariableOpReadVariableOp!f6_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
F6/MatMul/ReadVariableOp?
	F6/MatMulMatMulC5/Relu:activations:0 F6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
	F6/MatMul?
F6/BiasAdd/ReadVariableOpReadVariableOp"f6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
F6/BiasAdd/ReadVariableOp?

F6/BiasAddBiasAddF6/MatMul:product:0!F6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2

F6/BiasAdda
F6/ReluReluF6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2	
F6/Relu?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
Output/MatMul/ReadVariableOp?
Output/MatMulMatMulF6/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output/MatMul?
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
Output/BiasAdd/ReadVariableOp?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Output/Softmaxs
IdentityIdentityOutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C3/BiasAdd/ReadVariableOp^C3/Conv2D/ReadVariableOp^C5/BiasAdd/ReadVariableOp^C5/MatMul/ReadVariableOp^F6/BiasAdd/ReadVariableOp^F6/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C3/BiasAdd/ReadVariableOpC3/BiasAdd/ReadVariableOp24
C3/Conv2D/ReadVariableOpC3/Conv2D/ReadVariableOp26
C5/BiasAdd/ReadVariableOpC5/BiasAdd/ReadVariableOp24
C5/MatMul/ReadVariableOpC5/MatMul/ReadVariableOp26
F6/BiasAdd/ReadVariableOpF6/BiasAdd/ReadVariableOp24
F6/MatMul/ReadVariableOpF6/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_36887
file_prefix(
$savev2_c1_kernel_read_readvariableop&
"savev2_c1_bias_read_readvariableop(
$savev2_c3_kernel_read_readvariableop&
"savev2_c3_bias_read_readvariableop(
$savev2_c5_kernel_read_readvariableop&
"savev2_c5_bias_read_readvariableop(
$savev2_f6_kernel_read_readvariableop&
"savev2_f6_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop/
+savev2_adam_c1_kernel_m_read_readvariableop-
)savev2_adam_c1_bias_m_read_readvariableop/
+savev2_adam_c3_kernel_m_read_readvariableop-
)savev2_adam_c3_bias_m_read_readvariableop/
+savev2_adam_c5_kernel_m_read_readvariableop-
)savev2_adam_c5_bias_m_read_readvariableop/
+savev2_adam_f6_kernel_m_read_readvariableop-
)savev2_adam_f6_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop/
+savev2_adam_c1_kernel_v_read_readvariableop-
)savev2_adam_c1_bias_v_read_readvariableop/
+savev2_adam_c3_kernel_v_read_readvariableop-
)savev2_adam_c3_bias_v_read_readvariableop/
+savev2_adam_c5_kernel_v_read_readvariableop-
)savev2_adam_c5_bias_v_read_readvariableop/
+savev2_adam_f6_kernel_v_read_readvariableop-
)savev2_adam_f6_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_c1_kernel_read_readvariableop"savev2_c1_bias_read_readvariableop$savev2_c3_kernel_read_readvariableop"savev2_c3_bias_read_readvariableop$savev2_c5_kernel_read_readvariableop"savev2_c5_bias_read_readvariableop$savev2_f6_kernel_read_readvariableop"savev2_f6_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop+savev2_adam_c1_kernel_m_read_readvariableop)savev2_adam_c1_bias_m_read_readvariableop+savev2_adam_c3_kernel_m_read_readvariableop)savev2_adam_c3_bias_m_read_readvariableop+savev2_adam_c5_kernel_m_read_readvariableop)savev2_adam_c5_bias_m_read_readvariableop+savev2_adam_f6_kernel_m_read_readvariableop)savev2_adam_f6_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop+savev2_adam_c1_kernel_v_read_readvariableop)savev2_adam_c1_bias_v_read_readvariableop+savev2_adam_c3_kernel_v_read_readvariableop)savev2_adam_c3_bias_v_read_readvariableop+savev2_adam_c5_kernel_v_read_readvariableop)savev2_adam_c5_bias_v_read_readvariableop+savev2_adam_f6_kernel_v_read_readvariableop)savev2_adam_f6_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::
??:?:	?T:T:T
:
: : : : : : : : : :::::
??:?:	?T:T:T
:
:::::
??:?:	?T:T:T
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?T: 

_output_shapes
:T:$	 

_output_shapes

:T
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?T: 

_output_shapes
:T:$ 

_output_shapes

:T
: 

_output_shapes
:
:,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::&""
 
_output_shapes
:
??:!#

_output_shapes	
:?:%$!

_output_shapes
:	?T: %

_output_shapes
:T:$& 

_output_shapes

:T
: '

_output_shapes
:
:(

_output_shapes
: 
?
?
"__inference_C5_layer_call_fn_36707

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C5_layer_call_and_return_conditional_losses_361262
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
=__inference_C5_layer_call_and_return_conditional_losses_36126

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?9
?
 __inference__wrapped_model_36010
input_1A
'lenet_c1_conv2d_readvariableop_resource:6
(lenet_c1_biasadd_readvariableop_resource:A
'lenet_c3_conv2d_readvariableop_resource:6
(lenet_c3_biasadd_readvariableop_resource:;
'lenet_c5_matmul_readvariableop_resource:
??7
(lenet_c5_biasadd_readvariableop_resource:	?:
'lenet_f6_matmul_readvariableop_resource:	?T6
(lenet_f6_biasadd_readvariableop_resource:T=
+lenet_output_matmul_readvariableop_resource:T
:
,lenet_output_biasadd_readvariableop_resource:

identity??lenet/C1/BiasAdd/ReadVariableOp?lenet/C1/Conv2D/ReadVariableOp?lenet/C3/BiasAdd/ReadVariableOp?lenet/C3/Conv2D/ReadVariableOp?lenet/C5/BiasAdd/ReadVariableOp?lenet/C5/MatMul/ReadVariableOp?lenet/F6/BiasAdd/ReadVariableOp?lenet/F6/MatMul/ReadVariableOp?#lenet/Output/BiasAdd/ReadVariableOp?"lenet/Output/MatMul/ReadVariableOp?
lenet/C1/Conv2D/ReadVariableOpReadVariableOp'lenet_c1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
lenet/C1/Conv2D/ReadVariableOp?
lenet/C1/Conv2DConv2Dinput_1&lenet/C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
lenet/C1/Conv2D?
lenet/C1/BiasAdd/ReadVariableOpReadVariableOp(lenet_c1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
lenet/C1/BiasAdd/ReadVariableOp?
lenet/C1/BiasAddBiasAddlenet/C1/Conv2D:output:0'lenet/C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
lenet/C1/BiasAdd{
lenet/C1/ReluRelulenet/C1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
lenet/C1/Relu?
lenet/S2/MaxPoolMaxPoollenet/C1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
lenet/S2/MaxPool?
lenet/C3/Conv2D/ReadVariableOpReadVariableOp'lenet_c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
lenet/C3/Conv2D/ReadVariableOp?
lenet/C3/Conv2DConv2Dlenet/S2/MaxPool:output:0&lenet/C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
lenet/C3/Conv2D?
lenet/C3/BiasAdd/ReadVariableOpReadVariableOp(lenet_c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
lenet/C3/BiasAdd/ReadVariableOp?
lenet/C3/BiasAddBiasAddlenet/C3/Conv2D:output:0'lenet/C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2
lenet/C3/BiasAdd{
lenet/C3/ReluRelulenet/C3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2
lenet/C3/Relu?
lenet/S4/MaxPoolMaxPoollenet/C3/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
lenet/S4/MaxPool{
lenet/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
lenet/flatten/Const?
lenet/flatten/ReshapeReshapelenet/S4/MaxPool:output:0lenet/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
lenet/flatten/Reshape?
lenet/C5/MatMul/ReadVariableOpReadVariableOp'lenet_c5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
lenet/C5/MatMul/ReadVariableOp?
lenet/C5/MatMulMatMullenet/flatten/Reshape:output:0&lenet/C5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lenet/C5/MatMul?
lenet/C5/BiasAdd/ReadVariableOpReadVariableOp(lenet_c5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
lenet/C5/BiasAdd/ReadVariableOp?
lenet/C5/BiasAddBiasAddlenet/C5/MatMul:product:0'lenet/C5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lenet/C5/BiasAddt
lenet/C5/ReluRelulenet/C5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
lenet/C5/Relu?
lenet/F6/MatMul/ReadVariableOpReadVariableOp'lenet_f6_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02 
lenet/F6/MatMul/ReadVariableOp?
lenet/F6/MatMulMatMullenet/C5/Relu:activations:0&lenet/F6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
lenet/F6/MatMul?
lenet/F6/BiasAdd/ReadVariableOpReadVariableOp(lenet_f6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02!
lenet/F6/BiasAdd/ReadVariableOp?
lenet/F6/BiasAddBiasAddlenet/F6/MatMul:product:0'lenet/F6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
lenet/F6/BiasAdds
lenet/F6/ReluRelulenet/F6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
lenet/F6/Relu?
"lenet/Output/MatMul/ReadVariableOpReadVariableOp+lenet_output_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02$
"lenet/Output/MatMul/ReadVariableOp?
lenet/Output/MatMulMatMullenet/F6/Relu:activations:0*lenet/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
lenet/Output/MatMul?
#lenet/Output/BiasAdd/ReadVariableOpReadVariableOp,lenet_output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#lenet/Output/BiasAdd/ReadVariableOp?
lenet/Output/BiasAddBiasAddlenet/Output/MatMul:product:0+lenet/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
lenet/Output/BiasAdd?
lenet/Output/SoftmaxSoftmaxlenet/Output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
lenet/Output/Softmaxy
IdentityIdentitylenet/Output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp ^lenet/C1/BiasAdd/ReadVariableOp^lenet/C1/Conv2D/ReadVariableOp ^lenet/C3/BiasAdd/ReadVariableOp^lenet/C3/Conv2D/ReadVariableOp ^lenet/C5/BiasAdd/ReadVariableOp^lenet/C5/MatMul/ReadVariableOp ^lenet/F6/BiasAdd/ReadVariableOp^lenet/F6/MatMul/ReadVariableOp$^lenet/Output/BiasAdd/ReadVariableOp#^lenet/Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 2B
lenet/C1/BiasAdd/ReadVariableOplenet/C1/BiasAdd/ReadVariableOp2@
lenet/C1/Conv2D/ReadVariableOplenet/C1/Conv2D/ReadVariableOp2B
lenet/C3/BiasAdd/ReadVariableOplenet/C3/BiasAdd/ReadVariableOp2@
lenet/C3/Conv2D/ReadVariableOplenet/C3/Conv2D/ReadVariableOp2B
lenet/C5/BiasAdd/ReadVariableOplenet/C5/BiasAdd/ReadVariableOp2@
lenet/C5/MatMul/ReadVariableOplenet/C5/MatMul/ReadVariableOp2B
lenet/F6/BiasAdd/ReadVariableOplenet/F6/BiasAdd/ReadVariableOp2@
lenet/F6/MatMul/ReadVariableOplenet/F6/MatMul/ReadVariableOp2J
#lenet/Output/BiasAdd/ReadVariableOp#lenet/Output/BiasAdd/ReadVariableOp2H
"lenet/Output/MatMul/ReadVariableOp"lenet/Output/MatMul/ReadVariableOp:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
C
'__inference_flatten_layer_call_fn_36687

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_361132
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
@__inference_lenet_layer_call_and_return_conditional_losses_36315

inputs"
c1_36286:
c1_36288:"
c3_36292:
c3_36294:
c5_36299:
??
c5_36301:	?
f6_36304:	?T
f6_36306:T
output_36309:T

output_36311:

identity??C1/StatefulPartitionedCall?C3/StatefulPartitionedCall?C5/StatefulPartitionedCall?F6/StatefulPartitionedCall?Output/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputsc1_36286c1_36288*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_360722
C1/StatefulPartitionedCall?
S2/PartitionedCallPartitionedCall#C1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360822
S2/PartitionedCall?
C3/StatefulPartitionedCallStatefulPartitionedCallS2/PartitionedCall:output:0c3_36292c3_36294*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C3_layer_call_and_return_conditional_losses_360952
C3/StatefulPartitionedCall?
S4/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_361052
S4/PartitionedCall?
flatten/PartitionedCallPartitionedCallS4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_361132
flatten/PartitionedCall?
C5/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0c5_36299c5_36301*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C5_layer_call_and_return_conditional_losses_361262
C5/StatefulPartitionedCall?
F6/StatefulPartitionedCallStatefulPartitionedCall#C5/StatefulPartitionedCall:output:0f6_36304f6_36306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_F6_layer_call_and_return_conditional_losses_361432
F6/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall#F6/StatefulPartitionedCall:output:0output_36309output_36311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_361602 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C3/StatefulPartitionedCall^C5/StatefulPartitionedCall^F6/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
C5/StatefulPartitionedCallC5/StatefulPartitionedCall28
F6/StatefulPartitionedCallF6/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
>
"__inference_S2_layer_call_fn_36636

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360822
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
Y
=__inference_S2_layer_call_and_return_conditional_losses_36626

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
"__inference_C3_layer_call_fn_36656

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C3_layer_call_and_return_conditional_losses_360952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????

2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
=__inference_F6_layer_call_and_return_conditional_losses_36718

inputs1
matmul_readvariableop_resource:	?T-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
@__inference_lenet_layer_call_and_return_conditional_losses_36167

inputs"
c1_36073:
c1_36075:"
c3_36096:
c3_36098:
c5_36127:
??
c5_36129:	?
f6_36144:	?T
f6_36146:T
output_36161:T

output_36163:

identity??C1/StatefulPartitionedCall?C3/StatefulPartitionedCall?C5/StatefulPartitionedCall?F6/StatefulPartitionedCall?Output/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinputsc1_36073c1_36075*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_360722
C1/StatefulPartitionedCall?
S2/PartitionedCallPartitionedCall#C1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360822
S2/PartitionedCall?
C3/StatefulPartitionedCallStatefulPartitionedCallS2/PartitionedCall:output:0c3_36096c3_36098*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C3_layer_call_and_return_conditional_losses_360952
C3/StatefulPartitionedCall?
S4/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_361052
S4/PartitionedCall?
flatten/PartitionedCallPartitionedCallS4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_361132
flatten/PartitionedCall?
C5/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0c5_36127c5_36129*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C5_layer_call_and_return_conditional_losses_361262
C5/StatefulPartitionedCall?
F6/StatefulPartitionedCallStatefulPartitionedCall#C5/StatefulPartitionedCall:output:0f6_36144f6_36146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_F6_layer_call_and_return_conditional_losses_361432
F6/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall#F6/StatefulPartitionedCall:output:0output_36161output_36163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_361602 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C3/StatefulPartitionedCall^C5/StatefulPartitionedCall^F6/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
C5/StatefulPartitionedCallC5/StatefulPartitionedCall28
F6/StatefulPartitionedCallF6/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
Y
=__inference_S4_layer_call_and_return_conditional_losses_36661

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_Output_layer_call_and_return_conditional_losses_36738

inputs0
matmul_readvariableop_resource:T
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
>
"__inference_S4_layer_call_fn_36676

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_361052
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????

:W S
/
_output_shapes
:?????????


 
_user_specified_nameinputs
?
?
"__inference_C1_layer_call_fn_36616

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_360722
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
=__inference_C3_layer_call_and_return_conditional_losses_36647

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????

2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????

2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_Output_layer_call_and_return_conditional_losses_36160

inputs0
matmul_readvariableop_resource:T
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?
>
"__inference_S2_layer_call_fn_36631

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360192
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
=__inference_F6_layer_call_and_return_conditional_losses_36143

inputs1
matmul_readvariableop_resource:	?T-
biasadd_readvariableop_resource:T
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????T2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Y
=__inference_S4_layer_call_and_return_conditional_losses_36105

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????

:W S
/
_output_shapes
:?????????


 
_user_specified_nameinputs
?
?
=__inference_C3_layer_call_and_return_conditional_losses_36095

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????

2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????

2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
^
B__inference_flatten_layer_call_and_return_conditional_losses_36113

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
=__inference_C1_layer_call_and_return_conditional_losses_36072

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
%__inference_lenet_layer_call_fn_36596

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?T
	unknown_6:T
	unknown_7:T

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lenet_layer_call_and_return_conditional_losses_363152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
@__inference_lenet_layer_call_and_return_conditional_losses_36395
input_1"
c1_36366:
c1_36368:"
c3_36372:
c3_36374:
c5_36379:
??
c5_36381:	?
f6_36384:	?T
f6_36386:T
output_36389:T

output_36391:

identity??C1/StatefulPartitionedCall?C3/StatefulPartitionedCall?C5/StatefulPartitionedCall?F6/StatefulPartitionedCall?Output/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1c1_36366c1_36368*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_360722
C1/StatefulPartitionedCall?
S2/PartitionedCallPartitionedCall#C1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360822
S2/PartitionedCall?
C3/StatefulPartitionedCallStatefulPartitionedCallS2/PartitionedCall:output:0c3_36372c3_36374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C3_layer_call_and_return_conditional_losses_360952
C3/StatefulPartitionedCall?
S4/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_361052
S4/PartitionedCall?
flatten/PartitionedCallPartitionedCallS4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_361132
flatten/PartitionedCall?
C5/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0c5_36379c5_36381*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C5_layer_call_and_return_conditional_losses_361262
C5/StatefulPartitionedCall?
F6/StatefulPartitionedCallStatefulPartitionedCall#C5/StatefulPartitionedCall:output:0f6_36384f6_36386*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_F6_layer_call_and_return_conditional_losses_361432
F6/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall#F6/StatefulPartitionedCall:output:0output_36389output_36391*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_361602 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C3/StatefulPartitionedCall^C5/StatefulPartitionedCall^F6/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
C5/StatefulPartitionedCallC5/StatefulPartitionedCall28
F6/StatefulPartitionedCallF6/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
=__inference_C1_layer_call_and_return_conditional_losses_36607

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?2
?
@__inference_lenet_layer_call_and_return_conditional_losses_36503

inputs;
!c1_conv2d_readvariableop_resource:0
"c1_biasadd_readvariableop_resource:;
!c3_conv2d_readvariableop_resource:0
"c3_biasadd_readvariableop_resource:5
!c5_matmul_readvariableop_resource:
??1
"c5_biasadd_readvariableop_resource:	?4
!f6_matmul_readvariableop_resource:	?T0
"f6_biasadd_readvariableop_resource:T7
%output_matmul_readvariableop_resource:T
4
&output_biasadd_readvariableop_resource:

identity??C1/BiasAdd/ReadVariableOp?C1/Conv2D/ReadVariableOp?C3/BiasAdd/ReadVariableOp?C3/Conv2D/ReadVariableOp?C5/BiasAdd/ReadVariableOp?C5/MatMul/ReadVariableOp?F6/BiasAdd/ReadVariableOp?F6/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
C1/Conv2D/ReadVariableOpReadVariableOp!c1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
C1/Conv2D/ReadVariableOp?
	C1/Conv2DConv2Dinputs C1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
	C1/Conv2D?
C1/BiasAdd/ReadVariableOpReadVariableOp"c1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
C1/BiasAdd/ReadVariableOp?

C1/BiasAddBiasAddC1/Conv2D:output:0!C1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2

C1/BiasAddi
C1/ReluReluC1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
C1/Relu?

S2/MaxPoolMaxPoolC1/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2

S2/MaxPool?
C3/Conv2D/ReadVariableOpReadVariableOp!c3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
C3/Conv2D/ReadVariableOp?
	C3/Conv2DConv2DS2/MaxPool:output:0 C3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

*
paddingVALID*
strides
2
	C3/Conv2D?
C3/BiasAdd/ReadVariableOpReadVariableOp"c3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
C3/BiasAdd/ReadVariableOp?

C3/BiasAddBiasAddC3/Conv2D:output:0!C3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????

2

C3/BiasAddi
C3/ReluReluC3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????

2	
C3/Relu?

S4/MaxPoolMaxPoolC3/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2

S4/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapeS4/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
C5/MatMul/ReadVariableOpReadVariableOp!c5_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
C5/MatMul/ReadVariableOp?
	C5/MatMulMatMulflatten/Reshape:output:0 C5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
	C5/MatMul?
C5/BiasAdd/ReadVariableOpReadVariableOp"c5_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
C5/BiasAdd/ReadVariableOp?

C5/BiasAddBiasAddC5/MatMul:product:0!C5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

C5/BiasAddb
C5/ReluReluC5/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
C5/Relu?
F6/MatMul/ReadVariableOpReadVariableOp!f6_matmul_readvariableop_resource*
_output_shapes
:	?T*
dtype02
F6/MatMul/ReadVariableOp?
	F6/MatMulMatMulC5/Relu:activations:0 F6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2
	F6/MatMul?
F6/BiasAdd/ReadVariableOpReadVariableOp"f6_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype02
F6/BiasAdd/ReadVariableOp?

F6/BiasAddBiasAddF6/MatMul:product:0!F6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????T2

F6/BiasAdda
F6/ReluReluF6/BiasAdd:output:0*
T0*'
_output_shapes
:?????????T2	
F6/Relu?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:T
*
dtype02
Output/MatMul/ReadVariableOp?
Output/MatMulMatMulF6/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output/MatMul?
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
Output/BiasAdd/ReadVariableOp?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Output/Softmaxs
IdentityIdentityOutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/BiasAdd/ReadVariableOp^C1/Conv2D/ReadVariableOp^C3/BiasAdd/ReadVariableOp^C3/Conv2D/ReadVariableOp^C5/BiasAdd/ReadVariableOp^C5/MatMul/ReadVariableOp^F6/BiasAdd/ReadVariableOp^F6/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 26
C1/BiasAdd/ReadVariableOpC1/BiasAdd/ReadVariableOp24
C1/Conv2D/ReadVariableOpC1/Conv2D/ReadVariableOp26
C3/BiasAdd/ReadVariableOpC3/BiasAdd/ReadVariableOp24
C3/Conv2D/ReadVariableOpC3/Conv2D/ReadVariableOp26
C5/BiasAdd/ReadVariableOpC5/BiasAdd/ReadVariableOp24
C5/MatMul/ReadVariableOpC5/MatMul/ReadVariableOp26
F6/BiasAdd/ReadVariableOpF6/BiasAdd/ReadVariableOp24
F6/MatMul/ReadVariableOpF6/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_Output_layer_call_fn_36747

inputs
unknown:T

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_361602
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????T: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????T
 
_user_specified_nameinputs
?

?
#__inference_signature_wrapper_36460
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?T
	unknown_6:T
	unknown_7:T

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_360102
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
%__inference_lenet_layer_call_fn_36571

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?T
	unknown_6:T
	unknown_7:T

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lenet_layer_call_and_return_conditional_losses_361672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__traced_restore_37014
file_prefix4
assignvariableop_c1_kernel:(
assignvariableop_1_c1_bias:6
assignvariableop_2_c3_kernel:(
assignvariableop_3_c3_bias:0
assignvariableop_4_c5_kernel:
??)
assignvariableop_5_c5_bias:	?/
assignvariableop_6_f6_kernel:	?T(
assignvariableop_7_f6_bias:T2
 assignvariableop_8_output_kernel:T
,
assignvariableop_9_output_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: >
$assignvariableop_19_adam_c1_kernel_m:0
"assignvariableop_20_adam_c1_bias_m:>
$assignvariableop_21_adam_c3_kernel_m:0
"assignvariableop_22_adam_c3_bias_m:8
$assignvariableop_23_adam_c5_kernel_m:
??1
"assignvariableop_24_adam_c5_bias_m:	?7
$assignvariableop_25_adam_f6_kernel_m:	?T0
"assignvariableop_26_adam_f6_bias_m:T:
(assignvariableop_27_adam_output_kernel_m:T
4
&assignvariableop_28_adam_output_bias_m:
>
$assignvariableop_29_adam_c1_kernel_v:0
"assignvariableop_30_adam_c1_bias_v:>
$assignvariableop_31_adam_c3_kernel_v:0
"assignvariableop_32_adam_c3_bias_v:8
$assignvariableop_33_adam_c5_kernel_v:
??1
"assignvariableop_34_adam_c5_bias_v:	?7
$assignvariableop_35_adam_f6_kernel_v:	?T0
"assignvariableop_36_adam_f6_bias_v:T:
(assignvariableop_37_adam_output_kernel_v:T
4
&assignvariableop_38_adam_output_bias_v:

identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_c1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_c1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_c3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_c3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_c5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_c5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_f6_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_f6_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_adam_c1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_adam_c1_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_c3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_adam_c3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_adam_c5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_adam_c5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp$assignvariableop_25_adam_f6_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_adam_f6_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_output_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_output_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp$assignvariableop_29_adam_c1_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp"assignvariableop_30_adam_c1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp$assignvariableop_31_adam_c3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp"assignvariableop_32_adam_c3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp$assignvariableop_33_adam_c5_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp"assignvariableop_34_adam_c5_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp$assignvariableop_35_adam_f6_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp"assignvariableop_36_adam_f6_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_output_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_output_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39f
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_40?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?#
?
@__inference_lenet_layer_call_and_return_conditional_losses_36427
input_1"
c1_36398:
c1_36400:"
c3_36404:
c3_36406:
c5_36411:
??
c5_36413:	?
f6_36416:	?T
f6_36418:T
output_36421:T

output_36423:

identity??C1/StatefulPartitionedCall?C3/StatefulPartitionedCall?C5/StatefulPartitionedCall?F6/StatefulPartitionedCall?Output/StatefulPartitionedCall?
C1/StatefulPartitionedCallStatefulPartitionedCallinput_1c1_36398c1_36400*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C1_layer_call_and_return_conditional_losses_360722
C1/StatefulPartitionedCall?
S2/PartitionedCallPartitionedCall#C1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S2_layer_call_and_return_conditional_losses_360822
S2/PartitionedCall?
C3/StatefulPartitionedCallStatefulPartitionedCallS2/PartitionedCall:output:0c3_36404c3_36406*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????

*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C3_layer_call_and_return_conditional_losses_360952
C3/StatefulPartitionedCall?
S4/PartitionedCallPartitionedCall#C3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_S4_layer_call_and_return_conditional_losses_361052
S4/PartitionedCall?
flatten/PartitionedCallPartitionedCallS4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_361132
flatten/PartitionedCall?
C5/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0c5_36411c5_36413*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_C5_layer_call_and_return_conditional_losses_361262
C5/StatefulPartitionedCall?
F6/StatefulPartitionedCallStatefulPartitionedCall#C5/StatefulPartitionedCall:output:0f6_36416f6_36418*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_F6_layer_call_and_return_conditional_losses_361432
F6/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall#F6/StatefulPartitionedCall:output:0output_36421output_36423*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_361602 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity?
NoOpNoOp^C1/StatefulPartitionedCall^C3/StatefulPartitionedCall^C5/StatefulPartitionedCall^F6/StatefulPartitionedCall^Output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 28
C1/StatefulPartitionedCallC1/StatefulPartitionedCall28
C3/StatefulPartitionedCallC3/StatefulPartitionedCall28
C5/StatefulPartitionedCallC5/StatefulPartitionedCall28
F6/StatefulPartitionedCallF6/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
%__inference_lenet_layer_call_fn_36190
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?T
	unknown_6:T
	unknown_7:T

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lenet_layer_call_and_return_conditional_losses_361672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?

?
%__inference_lenet_layer_call_fn_36363
input_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?T
	unknown_6:T
	unknown_7:T

	unknown_8:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_lenet_layer_call_and_return_conditional_losses_363152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
=__inference_C5_layer_call_and_return_conditional_losses_36698

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Y
=__inference_S4_layer_call_and_return_conditional_losses_36041

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
"__inference_F6_layer_call_fn_36727

inputs
unknown:	?T
	unknown_0:T
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????T*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_F6_layer_call_and_return_conditional_losses_361432
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????T2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Y
=__inference_S4_layer_call_and_return_conditional_losses_36666

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????

:W S
/
_output_shapes
:?????????


 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_18
serving_default_input_1:0?????????:
Output0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:ǖ
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

	variables
regularization_losses
trainable_variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_sequential
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
	variables
 regularization_losses
!trainable_variables
"	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

'kernel
(bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

-kernel
.bias
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

3kernel
4bias
5	variables
6regularization_losses
7trainable_variables
8	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
9iter

:beta_1

;beta_2
	<decay
=learning_ratemvmwmxmy'mz(m{-m|.m}3m~4mv?v?v?v?'v?(v?-v?.v?3v?4v?"
	optimizer
f
0
1
2
3
'4
(5
-6
.7
38
49"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
'4
(5
-6
.7
38
49"
trackable_list_wrapper
?
>metrics
?non_trainable_variables

@layers

	variables
regularization_losses
Alayer_regularization_losses
Blayer_metrics
trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
#:!2	C1/kernel
:2C1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Cmetrics
Dnon_trainable_variables

Elayers
	variables
regularization_losses
Flayer_regularization_losses
Glayer_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Hmetrics
Inon_trainable_variables

Jlayers
	variables
regularization_losses
Klayer_regularization_losses
Llayer_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!2	C3/kernel
:2C3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Mmetrics
Nnon_trainable_variables

Olayers
	variables
regularization_losses
Player_regularization_losses
Qlayer_metrics
trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Rmetrics
Snon_trainable_variables

Tlayers
	variables
 regularization_losses
Ulayer_regularization_losses
Vlayer_metrics
!trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Wmetrics
Xnon_trainable_variables

Ylayers
#	variables
$regularization_losses
Zlayer_regularization_losses
[layer_metrics
%trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:
??2	C5/kernel
:?2C5/bias
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
\metrics
]non_trainable_variables

^layers
)	variables
*regularization_losses
_layer_regularization_losses
`layer_metrics
+trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?T2	F6/kernel
:T2F6/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
ametrics
bnon_trainable_variables

clayers
/	variables
0regularization_losses
dlayer_regularization_losses
elayer_metrics
1trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:T
2Output/kernel
:
2Output/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
fmetrics
gnon_trainable_variables

hlayers
5	variables
6regularization_losses
ilayer_regularization_losses
jlayer_metrics
7trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	mtotal
	ncount
o	variables
p	keras_api"
_tf_keras_metric
^
	qtotal
	rcount
s
_fn_kwargs
t	variables
u	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
m0
n1"
trackable_list_wrapper
-
o	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
q0
r1"
trackable_list_wrapper
-
t	variables"
_generic_user_object
(:&2Adam/C1/kernel/m
:2Adam/C1/bias/m
(:&2Adam/C3/kernel/m
:2Adam/C3/bias/m
": 
??2Adam/C5/kernel/m
:?2Adam/C5/bias/m
!:	?T2Adam/F6/kernel/m
:T2Adam/F6/bias/m
$:"T
2Adam/Output/kernel/m
:
2Adam/Output/bias/m
(:&2Adam/C1/kernel/v
:2Adam/C1/bias/v
(:&2Adam/C3/kernel/v
:2Adam/C3/bias/v
": 
??2Adam/C5/kernel/v
:?2Adam/C5/bias/v
!:	?T2Adam/F6/kernel/v
:T2Adam/F6/bias/v
$:"T
2Adam/Output/kernel/v
:
2Adam/Output/bias/v
?B?
 __inference__wrapped_model_36010input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_lenet_layer_call_and_return_conditional_losses_36503
@__inference_lenet_layer_call_and_return_conditional_losses_36546
@__inference_lenet_layer_call_and_return_conditional_losses_36395
@__inference_lenet_layer_call_and_return_conditional_losses_36427?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_lenet_layer_call_fn_36190
%__inference_lenet_layer_call_fn_36571
%__inference_lenet_layer_call_fn_36596
%__inference_lenet_layer_call_fn_36363?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
=__inference_C1_layer_call_and_return_conditional_losses_36607?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_C1_layer_call_fn_36616?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_S2_layer_call_and_return_conditional_losses_36621
=__inference_S2_layer_call_and_return_conditional_losses_36626?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_S2_layer_call_fn_36631
"__inference_S2_layer_call_fn_36636?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_C3_layer_call_and_return_conditional_losses_36647?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_C3_layer_call_fn_36656?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_S4_layer_call_and_return_conditional_losses_36661
=__inference_S4_layer_call_and_return_conditional_losses_36666?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_S4_layer_call_fn_36671
"__inference_S4_layer_call_fn_36676?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_flatten_layer_call_and_return_conditional_losses_36682?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_flatten_layer_call_fn_36687?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_C5_layer_call_and_return_conditional_losses_36698?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_C5_layer_call_fn_36707?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
=__inference_F6_layer_call_and_return_conditional_losses_36718?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
"__inference_F6_layer_call_fn_36727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_Output_layer_call_and_return_conditional_losses_36738?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_Output_layer_call_fn_36747?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_36460input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
=__inference_C1_layer_call_and_return_conditional_losses_36607l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
"__inference_C1_layer_call_fn_36616_7?4
-?*
(?%
inputs?????????
? " ???????????
=__inference_C3_layer_call_and_return_conditional_losses_36647l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????


? ?
"__inference_C3_layer_call_fn_36656_7?4
-?*
(?%
inputs?????????
? " ??????????

?
=__inference_C5_layer_call_and_return_conditional_losses_36698^'(0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? w
"__inference_C5_layer_call_fn_36707Q'(0?-
&?#
!?
inputs??????????
? "????????????
=__inference_F6_layer_call_and_return_conditional_losses_36718]-.0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????T
? v
"__inference_F6_layer_call_fn_36727P-.0?-
&?#
!?
inputs??????????
? "??????????T?
A__inference_Output_layer_call_and_return_conditional_losses_36738\34/?,
%?"
 ?
inputs?????????T
? "%?"
?
0?????????

? y
&__inference_Output_layer_call_fn_36747O34/?,
%?"
 ?
inputs?????????T
? "??????????
?
=__inference_S2_layer_call_and_return_conditional_losses_36621?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
=__inference_S2_layer_call_and_return_conditional_losses_36626h7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
"__inference_S2_layer_call_fn_36631?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
"__inference_S2_layer_call_fn_36636[7?4
-?*
(?%
inputs?????????
? " ???????????
=__inference_S4_layer_call_and_return_conditional_losses_36661?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
=__inference_S4_layer_call_and_return_conditional_losses_36666h7?4
-?*
(?%
inputs?????????


? "-?*
#? 
0?????????
? ?
"__inference_S4_layer_call_fn_36671?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
"__inference_S4_layer_call_fn_36676[7?4
-?*
(?%
inputs?????????


? " ???????????
 __inference__wrapped_model_36010w
'(-.348?5
.?+
)?&
input_1?????????
? "/?,
*
Output ?
Output?????????
?
B__inference_flatten_layer_call_and_return_conditional_losses_36682a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? 
'__inference_flatten_layer_call_fn_36687T7?4
-?*
(?%
inputs?????????
? "????????????
@__inference_lenet_layer_call_and_return_conditional_losses_36395u
'(-.34@?=
6?3
)?&
input_1?????????
p 

 
? "%?"
?
0?????????

? ?
@__inference_lenet_layer_call_and_return_conditional_losses_36427u
'(-.34@?=
6?3
)?&
input_1?????????
p

 
? "%?"
?
0?????????

? ?
@__inference_lenet_layer_call_and_return_conditional_losses_36503t
'(-.34??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
@__inference_lenet_layer_call_and_return_conditional_losses_36546t
'(-.34??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
%__inference_lenet_layer_call_fn_36190h
'(-.34@?=
6?3
)?&
input_1?????????
p 

 
? "??????????
?
%__inference_lenet_layer_call_fn_36363h
'(-.34@?=
6?3
)?&
input_1?????????
p

 
? "??????????
?
%__inference_lenet_layer_call_fn_36571g
'(-.34??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
%__inference_lenet_layer_call_fn_36596g
'(-.34??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
#__inference_signature_wrapper_36460?
'(-.34C?@
? 
9?6
4
input_1)?&
input_1?????????"/?,
*
Output ?
Output?????????
