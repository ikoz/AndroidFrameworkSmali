.class public abstract Landroid/icu/impl/Trie;
.super Ljava/lang/Object;
.source "Trie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie$DataManipulate;,
        Landroid/icu/impl/Trie$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field protected static final BMP_INDEX_LENGTH:I = 0x800

.field protected static final DATA_BLOCK_LENGTH:I = 0x20

.field protected static final HEADER_LENGTH_:I = 0x10

.field protected static final HEADER_OPTIONS_DATA_IS_32_BIT_:I = 0x100

.field protected static final HEADER_OPTIONS_INDEX_SHIFT_:I = 0x4

.field protected static final HEADER_OPTIONS_LATIN1_IS_LINEAR_MASK_:I = 0x200

.field private static final HEADER_OPTIONS_SHIFT_MASK_:I = 0xf

.field protected static final HEADER_SIGNATURE_:I = 0x54726965

.field protected static final INDEX_STAGE_1_SHIFT_:I = 0x5

.field protected static final INDEX_STAGE_2_SHIFT_:I = 0x2

.field protected static final INDEX_STAGE_3_MASK_:I = 0x1f

.field protected static final LEAD_INDEX_OFFSET_:I = 0x140

.field protected static final SURROGATE_BLOCK_BITS:I = 0x5

.field protected static final SURROGATE_BLOCK_COUNT:I = 0x20

.field protected static final SURROGATE_MASK_:I = 0x3ff


# instance fields
.field protected m_dataLength_:I

.field protected m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

.field protected m_dataOffset_:I

.field protected m_index_:[C

.field private m_isLatin1Linear_:Z

.field private m_options_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/Trie;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/Trie;->-assertionsDisabled:Z

    #@b
    .line 46
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/nio/ByteBuffer;Landroid/icu/impl/Trie$DataManipulate;)V
    .locals 4
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .param p2, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@8
    move-result v0

    #@9
    .line 149
    .local v0, "signature":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@c
    move-result v2

    #@d
    iput v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@f
    .line 151
    invoke-direct {p0, v0}, Landroid/icu/impl/Trie;->checkHeader(I)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_0

    #@15
    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@17
    const-string/jumbo v2, "ICU data file error: Trie header authentication failed, please check if you have the most updated ICU data file"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 155
    :cond_0
    if-eqz p2, :cond_2

    #@20
    .line 156
    iput-object p2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@22
    .line 160
    :goto_0
    iget v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@24
    and-int/lit16 v2, v2, 0x200

    #@26
    if-eqz v2, :cond_1

    #@28
    const/4 v1, 0x1

    #@29
    :cond_1
    iput-boolean v1, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    #@2b
    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@31
    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    #@34
    move-result v1

    #@35
    iput v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    #@37
    .line 164
    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    #@3a
    .line 145
    return-void

    #@3b
    .line 158
    :cond_2
    new-instance v2, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    #@3d
    invoke-direct {v2, v3}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$DefaultGetFoldingOffset;)V

    #@40
    iput-object v2, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@42
    goto :goto_0
.end method

.method protected constructor <init>([CILandroid/icu/impl/Trie$DataManipulate;)V
    .locals 3
    .param p1, "index"    # [C
    .param p2, "options"    # I
    .param p3, "dataManipulate"    # Landroid/icu/impl/Trie$DataManipulate;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 176
    iput p2, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@7
    .line 177
    if-eqz p3, :cond_1

    #@9
    .line 178
    iput-object p3, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@b
    .line 182
    :goto_0
    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@d
    and-int/lit16 v1, v1, 0x200

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    iput-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    #@14
    .line 184
    iput-object p1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    #@16
    .line 185
    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    #@18
    array-length v0, v0

    #@19
    iput v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@1b
    .line 174
    return-void

    #@1c
    .line 180
    :cond_1
    new-instance v1, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;

    #@1e
    invoke-direct {v1, v2}, Landroid/icu/impl/Trie$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/Trie$DefaultGetFoldingOffset;)V

    #@21
    iput-object v1, p0, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@23
    goto :goto_0
.end method

.method private final checkHeader(I)Z
    .locals 3
    .param p1, "signature"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 441
    const v0, 0x54726965

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 442
    return v2

    #@7
    .line 445
    :cond_0
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@9
    and-int/lit8 v0, v0, 0xf

    #@b
    .line 446
    const/4 v1, 0x5

    #@c
    .line 445
    if-ne v0, v1, :cond_1

    #@e
    .line 447
    iget v0, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@10
    shr-int/lit8 v0, v0, 0x4

    #@12
    and-int/lit8 v0, v0, 0xf

    #@14
    .line 449
    const/4 v1, 0x2

    #@15
    .line 447
    if-eq v0, v1, :cond_2

    #@17
    .line 450
    :cond_1
    return v2

    #@18
    .line 452
    :cond_2
    const/4 v0, 0x1

    #@19
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 98
    if-ne p1, p0, :cond_0

    #@3
    .line 99
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 101
    :cond_0
    instance-of v2, p1, Landroid/icu/impl/Trie;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 102
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 104
    check-cast v0, Landroid/icu/impl/Trie;

    #@d
    .line 105
    .local v0, "othertrie":Landroid/icu/impl/Trie;
    iget-boolean v2, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    #@f
    iget-boolean v3, v0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 106
    iget v2, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@15
    iget v3, v0, Landroid/icu/impl/Trie;->m_options_:I

    #@17
    if-ne v2, v3, :cond_2

    #@19
    .line 107
    iget v2, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    #@1b
    iget v3, v0, Landroid/icu/impl/Trie;->m_dataLength_:I

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    .line 108
    iget-object v1, p0, Landroid/icu/impl/Trie;->m_index_:[C

    #@21
    iget-object v2, v0, Landroid/icu/impl/Trie;->m_index_:[C

    #@23
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    #@26
    move-result v1

    #@27
    .line 105
    :cond_2
    return v1
.end method

.method protected final getBMPOffset(C)I
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 307
    const v0, 0xd800

    #@3
    if-lt p1, v0, :cond_0

    #@5
    .line 308
    const v0, 0xdbff

    #@8
    if-gt p1, v0, :cond_0

    #@a
    .line 309
    const/16 v0, 0x140

    #@c
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    #@f
    move-result v0

    #@10
    .line 307
    :goto_0
    return v0

    #@11
    .line 310
    :cond_0
    const/4 v0, 0x0

    #@12
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    #@15
    move-result v0

    #@16
    goto :goto_0
.end method

.method protected final getCodePointOffset(I)I
    .locals 3
    .param p1, "ch"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 338
    if-gez p1, :cond_0

    #@4
    .line 339
    return v1

    #@5
    .line 340
    :cond_0
    const v0, 0xd800

    #@8
    if-ge p1, v0, :cond_1

    #@a
    .line 342
    int-to-char v0, p1

    #@b
    invoke-virtual {p0, v2, v0}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 343
    :cond_1
    const/high16 v0, 0x10000

    #@12
    if-ge p1, v0, :cond_2

    #@14
    .line 345
    int-to-char v0, p1

    #@15
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie;->getBMPOffset(C)I

    #@18
    move-result v0

    #@19
    return v0

    #@1a
    .line 346
    :cond_2
    const v0, 0x10ffff

    #@1d
    if-gt p1, v0, :cond_3

    #@1f
    .line 349
    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@22
    move-result v0

    #@23
    .line 350
    and-int/lit16 v1, p1, 0x3ff

    #@25
    int-to-char v1, v1

    #@26
    .line 349
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/Trie;->getSurrogateOffset(CC)I

    #@29
    move-result v0

    #@2a
    return v0

    #@2b
    .line 353
    :cond_3
    return v1
.end method

.method protected abstract getInitialValue()I
.end method

.method protected final getLeadOffset(C)I
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 324
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/Trie;->getRawOffset(IC)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected final getRawOffset(IC)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    #@2
    shr-int/lit8 v1, p2, 0x5

    #@4
    add-int/2addr v1, p1

    #@5
    aget-char v0, v0, v1

    #@7
    shl-int/lit8 v0, v0, 0x2

    #@9
    .line 296
    and-int/lit8 v1, p2, 0x1f

    #@b
    .line 294
    add-int/2addr v0, v1

    #@c
    return v0
.end method

.method public getSerializedDataSize()I
    .locals 2

    #@0
    .prologue
    .line 127
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@2
    shl-int/lit8 v1, v1, 0x1

    #@4
    add-int/lit8 v0, v1, 0x10

    #@6
    .line 128
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isCharTrie()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 129
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    #@e
    shl-int/lit8 v1, v1, 0x1

    #@10
    add-int/2addr v0, v1

    #@11
    .line 134
    :cond_0
    :goto_0
    return v0

    #@12
    .line 131
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/Trie;->isIntTrie()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 132
    iget v1, p0, Landroid/icu/impl/Trie;->m_dataLength_:I

    #@1a
    shl-int/lit8 v1, v1, 0x2

    #@1c
    add-int/2addr v0, v1

    #@1d
    goto :goto_0
.end method

.method protected abstract getSurrogateOffset(CC)I
.end method

.method protected abstract getValue(I)I
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 112
    sget-boolean v0, Landroid/icu/impl/Trie;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 113
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method protected final isCharTrie()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 383
    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method protected final isIntTrie()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 374
    iget v1, p0, Landroid/icu/impl/Trie;->m_options_:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final isLatin1Linear()Z
    .locals 1

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/icu/impl/Trie;->m_isLatin1Linear_:Z

    #@2
    return v0
.end method

.method protected unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 365
    iget v0, p0, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p1, v0, v1}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/Trie;->m_index_:[C

    #@9
    .line 363
    return-void
.end method
