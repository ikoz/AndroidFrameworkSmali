.class Lcom/android/server/am/ActivityManagerService$7;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->showLaunchWarningLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$cur:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$next:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$cur"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "val$next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 5411
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$7;->val$cur:Lcom/android/server/am/ActivityRecord;

    #@4
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$next:Lcom/android/server/am/ActivityRecord;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 5414
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v2

    #@3
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@6
    .line 5415
    new-instance v0, Lcom/android/server/am/LaunchWarningWindow;

    #@8
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@c
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$7;->val$cur:Lcom/android/server/am/ActivityRecord;

    #@e
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$7;->val$next:Lcom/android/server/am/ActivityRecord;

    #@10
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/LaunchWarningWindow;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 5416
    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    #@16
    .line 5417
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$7;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    #@1a
    new-instance v3, Lcom/android/server/am/ActivityManagerService$7$1;

    #@1c
    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ActivityManagerService$7$1;-><init>(Lcom/android/server/am/ActivityManagerService$7;Landroid/app/Dialog;)V

    #@1f
    .line 5425
    const-wide/16 v4, 0xfa0

    #@21
    .line 5417
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v2

    #@25
    .line 5414
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@28
    .line 5413
    return-void

    #@29
    .line 5414
    .end local v0    # "d":Landroid/app/Dialog;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2e
    throw v1
.end method
