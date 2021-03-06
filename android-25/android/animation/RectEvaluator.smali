.class public Landroid/animation/RectEvaluator;
.super Ljava/lang/Object;
.source "RectEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "reuseRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@5
    .line 50
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Rect;
    .param p3, "endValue"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 73
    iget v4, p2, Landroid/graphics/Rect;->left:I

    #@2
    iget v5, p3, Landroid/graphics/Rect;->left:I

    #@4
    iget v6, p2, Landroid/graphics/Rect;->left:I

    #@6
    sub-int/2addr v5, v6

    #@7
    int-to-float v5, v5

    #@8
    mul-float/2addr v5, p1

    #@9
    float-to-int v5, v5

    #@a
    add-int v1, v4, v5

    #@c
    .line 74
    .local v1, "left":I
    iget v4, p2, Landroid/graphics/Rect;->top:I

    #@e
    iget v5, p3, Landroid/graphics/Rect;->top:I

    #@10
    iget v6, p2, Landroid/graphics/Rect;->top:I

    #@12
    sub-int/2addr v5, v6

    #@13
    int-to-float v5, v5

    #@14
    mul-float/2addr v5, p1

    #@15
    float-to-int v5, v5

    #@16
    add-int v3, v4, v5

    #@18
    .line 75
    .local v3, "top":I
    iget v4, p2, Landroid/graphics/Rect;->right:I

    #@1a
    iget v5, p3, Landroid/graphics/Rect;->right:I

    #@1c
    iget v6, p2, Landroid/graphics/Rect;->right:I

    #@1e
    sub-int/2addr v5, v6

    #@1f
    int-to-float v5, v5

    #@20
    mul-float/2addr v5, p1

    #@21
    float-to-int v5, v5

    #@22
    add-int v2, v4, v5

    #@24
    .line 76
    .local v2, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    #@26
    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    #@28
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    #@2a
    sub-int/2addr v5, v6

    #@2b
    int-to-float v5, v5

    #@2c
    mul-float/2addr v5, p1

    #@2d
    float-to-int v5, v5

    #@2e
    add-int v0, v4, v5

    #@30
    .line 77
    .local v0, "bottom":I
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@32
    if-nez v4, :cond_0

    #@34
    .line 78
    new-instance v4, Landroid/graphics/Rect;

    #@36
    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@39
    return-object v4

    #@3a
    .line 80
    :cond_0
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@3c
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@3f
    .line 81
    iget-object v4, p0, Landroid/animation/RectEvaluator;->mRect:Landroid/graphics/Rect;

    #@41
    return-object v4
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 72
    check-cast p2, Landroid/graphics/Rect;

    #@2
    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Rect;

    #@4
    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/animation/RectEvaluator;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
