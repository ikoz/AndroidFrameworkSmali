.class final Landroid/view/ViewRootImpl$NativePreImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePreImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;
    .param p3, "traceCounter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4101
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    .line 4102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    #@5
    .line 4101
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "handled"    # Z

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 4116
    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@3
    .line 4117
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz p2, :cond_0

    #@5
    .line 4118
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    #@9
    .line 4119
    return-void

    #@a
    .line 4121
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePreImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    #@d
    .line 4115
    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    #@0
    .prologue
    .line 4107
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@2
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@8
    instance-of v0, v0, Landroid/view/KeyEvent;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4108
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    #@e
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    #@10
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    #@12
    const/4 v2, 0x1

    #@13
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    #@16
    .line 4109
    const/4 v0, 0x3

    #@17
    return v0

    #@18
    .line 4111
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0
.end method
