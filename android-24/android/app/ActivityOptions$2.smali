.class Landroid/app/ActivityOptions$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setOnAnimationFinishedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityOptions;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityOptions;
    .param p2, "val$handler"    # Landroid/os/Handler;
    .param p3, "val$listener"    # Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@0
    .prologue
    .line 345
    iput-object p1, p0, Landroid/app/ActivityOptions$2;->this$0:Landroid/app/ActivityOptions;

    #@2
    iput-object p2, p0, Landroid/app/ActivityOptions$2;->val$handler:Landroid/os/Handler;

    #@4
    iput-object p3, p0, Landroid/app/ActivityOptions$2;->val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@6
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/app/ActivityOptions$2;->val$handler:Landroid/os/Handler;

    #@2
    new-instance v1, Landroid/app/ActivityOptions$2$1;

    #@4
    iget-object v2, p0, Landroid/app/ActivityOptions$2;->val$listener:Landroid/app/ActivityOptions$OnAnimationFinishedListener;

    #@6
    invoke-direct {v1, p0, v2}, Landroid/app/ActivityOptions$2$1;-><init>(Landroid/app/ActivityOptions$2;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 347
    return-void
.end method
