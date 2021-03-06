.class public Landroid/view/ViewGroup$LayoutParams;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field public height:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field

.field public layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

.field public width:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 7004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7005
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5
    .line 7006
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@7
    .line 7004
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 6985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 6986
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    #@5
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 6988
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    #@a
    .line 6989
    const/4 v2, 0x1

    #@b
    .line 6987
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    #@e
    .line 6990
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@11
    .line 6985
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 7014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 7015
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@7
    .line 7016
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@9
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b
    .line 7014
    return-void
.end method

.method protected static sizeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "size"    # I

    #@0
    .prologue
    .line 7085
    const/4 v0, -0x2

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 7086
    const-string/jumbo v0, "wrap-content"

    #@6
    return-object v0

    #@7
    .line 7088
    :cond_0
    const/4 v0, -0x1

    #@8
    if-ne p0, v0, :cond_1

    #@a
    .line 7089
    const-string/jumbo v0, "match-parent"

    #@d
    return-object v0

    #@e
    .line 7091
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7061
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "ViewGroup.LayoutParams={ width="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 7062
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@12
    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 7061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 7062
    const-string/jumbo v1, ", height="

    #@1d
    .line 7061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 7062
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@23
    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 7061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 7062
    const-string/jumbo v1, " }"

    #@2e
    .line 7061
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method encode(Landroid/view/ViewHierarchyEncoder;)V
    .locals 0
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 7096
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    #@3
    .line 7097
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@6
    .line 7098
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    #@9
    .line 7095
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 7103
    const-string/jumbo v0, "width"

    #@3
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@8
    .line 7104
    const-string/jumbo v0, "height"

    #@b
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@10
    .line 7102
    return-void
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 7073
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 7048
    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    #@0
    .prologue
    .line 7034
    const-string/jumbo v0, "layout_width"

    #@3
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@9
    .line 7035
    const-string/jumbo v0, "layout_height"

    #@c
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@12
    .line 7033
    return-void
.end method
