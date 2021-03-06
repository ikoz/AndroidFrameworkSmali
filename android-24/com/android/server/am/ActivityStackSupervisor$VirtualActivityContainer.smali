.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualActivityContainer"
.end annotation


# instance fields
.field mDrawn:Z

.field mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callback"    # Landroid/app/IActivityContainerCallback;

    #@0
    .prologue
    .line 4189
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    .line 4190
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    #@5
    move-result v0

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    #@9
    .line 4187
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    #@c
    .line 4191
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@e
    .line 4192
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    #@10
    .line 4193
    const/4 v0, 0x1

    #@11
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    #@13
    .line 4194
    new-instance v0, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v1, "VirtualActivityContainer{"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStackId:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string/jumbo v1, ", parent="

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "}"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mIdString:Ljava/lang/String;

    #@3f
    .line 4189
    return-void
.end method

.method private setSurfaceIfReadyLocked()V
    .locals 2

    #@0
    .prologue
    .line 4268
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    #@a
    const/4 v1, 0x1

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 4269
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@f
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    #@11
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@13
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    #@16
    .line 4270
    const/4 v0, 0x0

    #@17
    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    #@19
    .line 4265
    :cond_0
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;III)V
    .locals 6
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 4212
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    #@5
    const/4 v2, 0x2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 4213
    return-void

    #@9
    .line 4216
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@b
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    #@d
    .line 4217
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    if-nez v0, :cond_1

    #@f
    .line 4219
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    #@11
    .end local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@13
    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    #@16
    .line 4220
    .restart local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@18
    .line 4221
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->-get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    #@1d
    move-result-object v1

    #@1e
    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    #@20
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@23
    .line 4222
    invoke-virtual {p0, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)V

    #@26
    .line 4225
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 4226
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@2c
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    #@2f
    .line 4229
    :cond_2
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@31
    .line 4230
    if-eqz p1, :cond_4

    #@33
    .line 4231
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@35
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@38
    .line 4240
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    #@3b
    .line 4211
    return-void

    #@3c
    .line 4233
    :cond_4
    iput v5, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    #@3e
    .line 4234
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@40
    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    #@42
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    #@45
    .line 4235
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@47
    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@49
    if-nez v1, :cond_3

    #@4b
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@4d
    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4f
    if-eqz v1, :cond_3

    #@51
    .line 4236
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@53
    invoke-virtual {v1, v4, v5, v4, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@56
    goto :goto_0
.end method


# virtual methods
.method isAttachedLocked()Z
    .locals 1

    #@0
    .prologue
    .line 4248
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    #@0
    .prologue
    .line 4262
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method setDrawn()V
    .locals 2

    #@0
    .prologue
    .line 4253
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@8
    .line 4254
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    #@b
    .line 4255
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 4253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@12
    .line 4252
    return-void

    #@13
    .line 4253
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@18
    throw v0
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    #@0
    .prologue
    .line 4199
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    #@3
    .line 4201
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    #@5
    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    monitor-enter v3

    #@8
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@b
    .line 4202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@e
    move-result-wide v0

    #@f
    .line 4204
    .local v0, "origId":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceLocked(Landroid/view/Surface;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    .line 4206
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@15
    monitor-exit v3

    #@16
    .line 4201
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@19
    .line 4198
    return-void

    #@1a
    .line 4205
    :catchall_0
    move-exception v2

    #@1b
    .line 4206
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@1e
    .line 4205
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1f
    .line 4201
    .end local v0    # "origId":J
    :catchall_1
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@24
    throw v2
.end method
