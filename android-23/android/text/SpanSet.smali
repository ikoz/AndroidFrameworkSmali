.class public Landroid/text/SpanSet;
.super Ljava/lang/Object;
.source "SpanSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final classType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field numberOfSpans:I

.field spanEnds:[I

.field spanFlags:[I

.field spanStarts:[I

.field spans:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    #@5
    .line 42
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@8
    .line 40
    return-void
.end method


# virtual methods
.method getNextTransition(II)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 101
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@3
    if-ge v0, v3, :cond_2

    #@5
    .line 102
    iget-object v3, p0, Landroid/text/SpanSet;->spanStarts:[I

    #@7
    aget v2, v3, v0

    #@9
    .line 103
    .local v2, "spanStart":I
    iget-object v3, p0, Landroid/text/SpanSet;->spanEnds:[I

    #@b
    aget v1, v3, v0

    #@d
    .line 104
    .local v1, "spanEnd":I
    if-le v2, p1, :cond_0

    #@f
    if-ge v2, p2, :cond_0

    #@11
    move p2, v2

    #@12
    .line 105
    :cond_0
    if-le v1, p1, :cond_1

    #@14
    if-ge v1, p2, :cond_1

    #@16
    move p2, v1

    #@17
    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 107
    .end local v1    # "spanEnd":I
    .end local v2    # "spanStart":I
    :cond_2
    return p2
.end method

.method public hasSpansIntersecting(II)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 89
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@3
    if-ge v0, v1, :cond_2

    #@5
    .line 91
    iget-object v1, p0, Landroid/text/SpanSet;->spanStarts:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ge v1, p2, :cond_0

    #@b
    iget-object v1, p0, Landroid/text/SpanSet;->spanEnds:[I

    #@d
    aget v1, v1, v0

    #@f
    if-gt v1, p1, :cond_1

    #@11
    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 92
    :cond_1
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 94
    :cond_2
    const/4 v1, 0x0

    #@17
    return v1
.end method

.method public init(Landroid/text/Spanned;II)V
    .locals 11
    .param p1, "spanned"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 47
    iget-object v8, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    #@4
    invoke-interface {p1, p2, p3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    .line 48
    .local v0, "allSpans":[Ljava/lang/Object;, "[TE;"
    array-length v2, v0

    #@9
    .line 50
    .local v2, "length":I
    if-lez v2, :cond_1

    #@b
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@d
    if-eqz v8, :cond_0

    #@f
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@11
    array-length v8, v8

    #@12
    if-ge v8, v2, :cond_1

    #@14
    .line 52
    :cond_0
    iget-object v8, p0, Landroid/text/SpanSet;->classType:Ljava/lang/Class;

    #@16
    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    check-cast v8, [Ljava/lang/Object;

    #@1c
    iput-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@1e
    .line 53
    new-array v8, v2, [I

    #@20
    iput-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    #@22
    .line 54
    new-array v8, v2, [I

    #@24
    iput-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    #@26
    .line 55
    new-array v8, v2, [I

    #@28
    iput-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    #@2a
    .line 58
    :cond_1
    iget v3, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@2c
    .line 59
    .local v3, "prevNumberOfSpans":I
    iput v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@2e
    .line 60
    const/4 v1, 0x0

    #@2f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    #@31
    .line 61
    aget-object v4, v0, v1

    #@33
    .line 63
    .local v4, "span":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@36
    move-result v7

    #@37
    .line 64
    .local v7, "spanStart":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@3a
    move-result v5

    #@3b
    .line 65
    .local v5, "spanEnd":I
    if-ne v7, v5, :cond_2

    #@3d
    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 67
    :cond_2
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@43
    move-result v6

    #@44
    .line 69
    .local v6, "spanFlag":I
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@46
    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@48
    aput-object v4, v8, v9

    #@4a
    .line 70
    iget-object v8, p0, Landroid/text/SpanSet;->spanStarts:[I

    #@4c
    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@4e
    aput v7, v8, v9

    #@50
    .line 71
    iget-object v8, p0, Landroid/text/SpanSet;->spanEnds:[I

    #@52
    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@54
    aput v5, v8, v9

    #@56
    .line 72
    iget-object v8, p0, Landroid/text/SpanSet;->spanFlags:[I

    #@58
    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@5a
    aput v6, v8, v9

    #@5c
    .line 74
    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@5e
    add-int/lit8 v8, v8, 0x1

    #@60
    iput v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@62
    goto :goto_1

    #@63
    .line 78
    .end local v4    # "span":Ljava/lang/Object;, "TE;"
    .end local v5    # "spanEnd":I
    .end local v6    # "spanFlag":I
    .end local v7    # "spanStart":I
    :cond_3
    iget v8, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@65
    if-ge v8, v3, :cond_4

    #@67
    .line 80
    iget-object v8, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@69
    iget v9, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@6b
    invoke-static {v8, v9, v3, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@6e
    .line 46
    :cond_4
    return-void
.end method

.method public recycle()V
    .locals 4

    #@0
    .prologue
    .local p0, "this":Landroid/text/SpanSet;, "Landroid/text/SpanSet<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 114
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 115
    iget-object v0, p0, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@7
    iget v1, p0, Landroid/text/SpanSet;->numberOfSpans:I

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    #@d
    .line 113
    :cond_0
    return-void
.end method
