.class final Landroid/media/Cea708CCWidget$ScaledLayout$1;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCWidget$ScaledLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p1, "lhs"    # Landroid/graphics/Rect;
    .param p2, "rhs"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1079
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@2
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 1080
    iget v0, p1, Landroid/graphics/Rect;->top:I

    #@8
    iget v1, p2, Landroid/graphics/Rect;->top:I

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0

    #@c
    .line 1082
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@e
    iget v1, p2, Landroid/graphics/Rect;->left:I

    #@10
    sub-int/2addr v0, v1

    #@11
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1078
    check-cast p1, Landroid/graphics/Rect;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/Rect;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/Cea708CCWidget$ScaledLayout$1;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
