.class Landroid/icu/text/ReplaceableContextIterator;
.super Ljava/lang/Object;
.source "ReplaceableContextIterator.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# instance fields
.field protected contextLimit:I

.field protected contextStart:I

.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected reachedLimit:Z

.field protected rep:Landroid/icu/text/Replaceable;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 36
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@7
    .line 37
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@9
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@b
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@d
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@f
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@11
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@13
    .line 38
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@15
    .line 39
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@17
    .line 35
    return-void
.end method


# virtual methods
.method public didReachLimit()Z
    .locals 1

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@2
    return v0
.end method

.method public getCaseMapCPStart()I
    .locals 1

    #@0
    .prologue
    .line 70
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@2
    return v0
.end method

.method public next()I
    .locals 3

    #@0
    .prologue
    .line 175
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@2
    if-lez v1, :cond_2

    #@4
    .line 176
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@6
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@8
    if-ge v1, v2, :cond_0

    #@a
    .line 177
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@c
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@e
    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@11
    move-result v0

    #@12
    .line 178
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@14
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@1b
    .line 179
    return v0

    #@1c
    .line 182
    .end local v0    # "c":I
    :cond_0
    const/4 v1, 0x1

    #@1d
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@1f
    .line 189
    :cond_1
    const/4 v1, -0x1

    #@20
    return v1

    #@21
    .line 184
    :cond_2
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@23
    if-gez v1, :cond_1

    #@25
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@27
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@29
    if-le v1, v2, :cond_1

    #@2b
    .line 185
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@2d
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@2f
    add-int/lit8 v2, v2, -0x1

    #@31
    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@34
    move-result v0

    #@35
    .line 186
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@37
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@3a
    move-result v2

    #@3b
    sub-int/2addr v1, v2

    #@3c
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@3e
    .line 187
    return v0
.end method

.method public nextCaseMapCP()I
    .locals 3

    #@0
    .prologue
    .line 120
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@2
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@4
    if-ge v1, v2, :cond_0

    #@6
    .line 121
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@8
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@a
    .line 122
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@c
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@e
    invoke-interface {v1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@11
    move-result v0

    #@12
    .line 123
    .local v0, "c":I
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@14
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@1b
    .line 124
    return v0

    #@1c
    .line 126
    .end local v0    # "c":I
    :cond_0
    const/4 v1, -0x1

    #@1d
    return v1
.end method

.method public replace(Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@6
    iget v3, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@8
    sub-int/2addr v2, v3

    #@9
    sub-int v0, v1, v2

    #@b
    .line 139
    .local v0, "delta":I
    iget-object v1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@d
    iget v2, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@f
    iget v3, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@11
    invoke-interface {v1, v2, v3, p1}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@14
    .line 140
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@16
    add-int/2addr v1, v0

    #@17
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@19
    .line 141
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@1b
    add-int/2addr v1, v0

    #@1c
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@1e
    .line 142
    iget v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@20
    add-int/2addr v1, v0

    #@21
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@23
    .line 143
    return v0
.end method

.method public reset(I)V
    .locals 2
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 156
    if-lez p1, :cond_0

    #@3
    .line 158
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@6
    .line 159
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@8
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@a
    .line 169
    :goto_0
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@c
    .line 155
    return-void

    #@d
    .line 160
    :cond_0
    if-gez p1, :cond_1

    #@f
    .line 162
    const/4 v0, -0x1

    #@10
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@12
    .line 163
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@14
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@16
    goto :goto_0

    #@17
    .line 166
    :cond_1
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@19
    .line 167
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@1b
    goto :goto_0
.end method

.method public setContextLimits(II)V
    .locals 2
    .param p1, "contextStart"    # I
    .param p2, "contextLimit"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 95
    if-gez p1, :cond_0

    #@3
    .line 96
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@5
    .line 102
    :goto_0
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@7
    if-ge p2, v0, :cond_2

    #@9
    .line 103
    iget v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@b
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@d
    .line 109
    :goto_1
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@f
    .line 94
    return-void

    #@10
    .line 97
    :cond_0
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@12
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@15
    move-result v0

    #@16
    if-gt p1, v0, :cond_1

    #@18
    .line 98
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@1a
    goto :goto_0

    #@1b
    .line 100
    :cond_1
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@1d
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@23
    goto :goto_0

    #@24
    .line 104
    :cond_2
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@26
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@29
    move-result v0

    #@2a
    if-gt p2, v0, :cond_3

    #@2c
    .line 105
    iput p2, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@2e
    goto :goto_1

    #@2f
    .line 107
    :cond_3
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@31
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@37
    goto :goto_1
.end method

.method public setIndex(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 59
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@3
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@5
    .line 60
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@7
    .line 61
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@9
    .line 62
    iput-boolean v0, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@b
    .line 58
    return-void
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "lim"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 81
    if-ltz p1, :cond_0

    #@3
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@5
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@8
    move-result v0

    #@9
    if-gt p1, v0, :cond_0

    #@b
    .line 82
    iput p1, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@d
    .line 86
    :goto_0
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@f
    .line 80
    return-void

    #@10
    .line 84
    :cond_0
    iget-object v0, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@12
    invoke-interface {v0}, Landroid/icu/text/Replaceable;->length()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@18
    goto :goto_0
.end method

.method public setText(Landroid/icu/text/Replaceable;)V
    .locals 2
    .param p1, "rep"    # Landroid/icu/text/Replaceable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 47
    iput-object p1, p0, Landroid/icu/text/ReplaceableContextIterator;->rep:Landroid/icu/text/Replaceable;

    #@3
    .line 48
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->contextLimit:I

    #@9
    iput v0, p0, Landroid/icu/text/ReplaceableContextIterator;->limit:I

    #@b
    .line 49
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->contextStart:I

    #@d
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->index:I

    #@f
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpLimit:I

    #@11
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->cpStart:I

    #@13
    .line 50
    iput v1, p0, Landroid/icu/text/ReplaceableContextIterator;->dir:I

    #@15
    .line 51
    iput-boolean v1, p0, Landroid/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    #@17
    .line 46
    return-void
.end method
