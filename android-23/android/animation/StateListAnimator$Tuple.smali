.class public Landroid/animation/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field final mAnimator:Landroid/animation/Animator;

.field final mSpecs:[I


# direct methods
.method private constructor <init>([ILandroid/animation/Animator;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 282
    iput-object p1, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    #@5
    .line 283
    iput-object p2, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@7
    .line 281
    return-void
.end method

.method synthetic constructor <init>([ILandroid/animation/Animator;Landroid/animation/StateListAnimator$Tuple;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/animation/StateListAnimator$Tuple;-><init>([ILandroid/animation/Animator;)V

    #@3
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mAnimator:Landroid/animation/Animator;

    #@2
    return-object v0
.end method

.method public getSpecs()[I
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/animation/StateListAnimator$Tuple;->mSpecs:[I

    #@2
    return-object v0
.end method
