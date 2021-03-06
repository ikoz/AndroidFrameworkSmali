.class public Landroid/util/Pools$SynchronizedPool;
.super Landroid/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pools$SimplePool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxPoolSize"    # I

    #@0
    .prologue
    .line 148
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    #@3
    .line 138
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@a
    .line 147
    return-void
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 153
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    iget-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 154
    :try_start_0
    invoke-super {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    .line 153
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 160
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 161
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    monitor-exit v0

    #@8
    return v1

    #@9
    .line 160
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method
