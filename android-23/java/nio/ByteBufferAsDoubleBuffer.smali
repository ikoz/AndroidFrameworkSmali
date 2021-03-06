.class final Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x8

    #@6
    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    #@8
    invoke-direct {p0, v0, v2, v3}, Ljava/nio/DoubleBuffer;-><init>(IJ)V

    #@b
    .line 46
    iput-object p1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@d
    .line 47
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 44
    return-void
.end method

.method static asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 40
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    .line 41
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@d
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@10
    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 3

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@b
    .line 53
    .local v0, "buf":Ljava/nio/ByteBufferAsDoubleBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@d
    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@f
    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@11
    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@13
    .line 55
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    #@15
    iput v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    #@17
    .line 56
    iget-object v1, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1b
    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1d
    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1f
    .line 57
    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 63
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@a
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@d
    throw v0

    #@e
    .line 65
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@10
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@12
    mul-int/lit8 v1, v1, 0x8

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@1b
    mul-int/lit8 v1, v1, 0x8

    #@1d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@20
    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    #@25
    .line 68
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2a
    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@2c
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@2e
    sub-int/2addr v0, v1

    #@2f
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@31
    .line 70
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity:I

    #@33
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@35
    .line 71
    const/4 v0, -0x1

    #@36
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    #@38
    .line 72
    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 4

    #@0
    .prologue
    .line 77
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 78
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@12
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@15
    .line 79
    .local v1, "buf":Ljava/nio/ByteBufferAsDoubleBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@17
    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@19
    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@1b
    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@1d
    .line 81
    iget v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    #@1f
    iput v2, v1, Ljava/nio/ByteBufferAsDoubleBuffer;->mark:I

    #@21
    .line 82
    return-object v1
.end method

.method public get()D
    .locals 3

    #@0
    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 88
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 90
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x8

    #@16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    #@19
    move-result-wide v0

    #@1a
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)V

    #@3
    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x8

    #@7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x8

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x8

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 104
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([DII)V

    #@1f
    .line 108
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@24
    .line 109
    return-object p0

    #@25
    .line 106
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([DII)V

    #@2c
    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protectedArray()[D
    .locals 1

    #@0
    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "c"    # D

    #@0
    .prologue
    .line 141
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 142
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 144
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x8

    #@16
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    #@19
    .line 145
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # D

    #@0
    .prologue
    .line 150
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)V

    #@3
    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x8

    #@7
    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    #@a
    .line 152
    return-object p0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x8

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x8

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 160
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([DII)V

    #@1f
    .line 164
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@24
    .line 165
    return-object p0

    #@25
    .line 162
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([DII)V

    #@2c
    goto :goto_0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 4

    #@0
    .prologue
    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->limit:I

    #@4
    mul-int/lit8 v3, v3, 0x8

    #@6
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    #@d
    mul-int/lit8 v3, v3, 0x8

    #@f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 172
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    .line 173
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@24
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@27
    .line 174
    .local v1, "result":Ljava/nio/DoubleBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2c
    .line 175
    return-object v1
.end method
