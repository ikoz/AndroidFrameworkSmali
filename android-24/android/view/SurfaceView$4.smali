.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    #@0
    .prologue
    .line 861
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 13
    .param p1, "dirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 968
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@3
    iget-object v3, v3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@8
    .line 973
    const/4 v0, 0x0

    #@9
    .line 974
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@b
    iget-boolean v3, v3, Landroid/view/SurfaceView;->mDrawingStopped:Z

    #@d
    if-nez v3, :cond_0

    #@f
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@11
    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 976
    :try_start_0
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@17
    iget-object v3, v3, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@19
    invoke-virtual {v3, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v0

    #@1d
    .line 983
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@1f
    .line 984
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@24
    move-result-wide v8

    #@25
    iput-wide v8, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    #@27
    .line 985
    return-object v0

    #@28
    .line 977
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    #@29
    .line 978
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SurfaceHolder"

    #@2c
    const-string/jumbo v8, "Exception locking surface"

    #@2f
    invoke-static {v3, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@32
    goto :goto_0

    #@33
    .line 991
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@36
    move-result-wide v6

    #@37
    .line 992
    .local v6, "now":J
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@39
    iget-wide v8, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    #@3b
    const-wide/16 v10, 0x64

    #@3d
    add-long v4, v8, v10

    #@3f
    .line 993
    .local v4, "nextTime":J
    cmp-long v3, v4, v6

    #@41
    if-lez v3, :cond_2

    #@43
    .line 995
    sub-long v8, v4, v6

    #@45
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    #@48
    .line 998
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4b
    move-result-wide v6

    #@4c
    .line 1000
    :cond_2
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@4e
    iput-wide v6, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    #@50
    .line 1001
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@52
    iget-object v3, v3, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@54
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@57
    .line 1003
    return-object v12

    #@58
    .line 996
    :catch_1
    move-exception v2

    #@59
    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    #@0
    .prologue
    .line 872
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@4
    monitor-enter v1

    #@5
    .line 875
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@7
    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 876
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@11
    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 871
    return-void

    #@18
    .line 872
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 1020
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@4
    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 1025
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    #@4
    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    #@0
    .prologue
    .line 867
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    #@4
    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    #@0
    .prologue
    .line 944
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 964
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@4
    monitor-enter v1

    #@5
    .line 884
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@7
    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 882
    return-void

    #@e
    .line 883
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@4
    if-ne v0, p1, :cond_0

    #@6
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@8
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@a
    if-eq v0, p2, :cond_1

    #@c
    .line 891
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@e
    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@10
    .line 892
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@12
    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@14
    .line 893
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@16
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    #@19
    .line 889
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .param p1, "format"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 910
    const/4 v0, -0x1

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 911
    const/4 p1, 0x4

    #@5
    .line 913
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@7
    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    #@9
    .line 914
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@b
    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 915
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@11
    invoke-virtual {v0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    #@14
    .line 906
    :cond_1
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 928
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@3
    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@5
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@8
    move-result-object v0

    #@9
    .line 929
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    #@b
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@d
    .line 930
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@f
    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 927
    return-void

    #@15
    .line 929
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public setSizeFromLayout()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 899
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@3
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@5
    if-ne v0, v2, :cond_0

    #@7
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@9
    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@b
    if-eq v0, v2, :cond_1

    #@d
    .line 900
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@f
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@11
    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    #@13
    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    #@15
    .line 901
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@17
    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    #@1a
    .line 898
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 924
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1014
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@2
    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    #@4
    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    #@7
    .line 1015
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #@9
    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    #@b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@e
    .line 1013
    return-void
.end method
