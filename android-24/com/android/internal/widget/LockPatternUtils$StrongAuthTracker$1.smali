.class Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;
.super Landroid/app/trust/IStrongAuthTracker$Stub;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    #@0
    .prologue
    .line 1597
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    #@2
    invoke-direct {p0}, Landroid/app/trust/IStrongAuthTracker$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onStrongAuthRequiredChanged(II)V
    .locals 2
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$1;->this$1:Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    #@2
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->-get0(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker$H;->obtainMessage(III)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 1600
    return-void
.end method
