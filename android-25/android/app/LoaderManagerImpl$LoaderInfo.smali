.class final Landroid/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/content/Loader$OnLoadCompleteListener;
.implements Landroid/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/Loader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/LoaderManagerImpl;
    .param p2, "id"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    .local p4, "callbacks":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 246
    iput p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@7
    .line 247
    iput-object p3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    #@9
    .line 248
    iput-object p4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@b
    .line 245
    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 480
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@2
    if-eqz v1, :cond_3

    #@4
    .line 481
    const/4 v0, 0x0

    #@5
    .line 482
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@7
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 483
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@f
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@12
    move-result-object v1

    #@13
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@15
    iget-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@17
    .line 484
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@19
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@1c
    move-result-object v1

    #@1d
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@1f
    const-string/jumbo v2, "onLoadFinished"

    #@22
    iput-object v2, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@24
    .line 487
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@26
    if-eqz v1, :cond_1

    #@28
    const-string/jumbo v1, "LoaderManager"

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "  onLoadFinished in "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, ": "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 488
    invoke-virtual {p1, p2}, Landroid/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 487
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    .line 489
    :cond_1
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@53
    invoke-interface {v1, p1, p2}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 491
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@58
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@5b
    move-result-object v1

    #@5c
    if-eqz v1, :cond_2

    #@5e
    .line 492
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@60
    invoke-static {v1}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@63
    move-result-object v1

    #@64
    iget-object v1, v1, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@66
    iput-object v0, v1, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@68
    .line 495
    :cond_2
    const/4 v1, 0x1

    #@69
    iput-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@6b
    .line 479
    :cond_3
    return-void

    #@6c
    .line 490
    :catchall_0
    move-exception v1

    #@6d
    .line 491
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@6f
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@72
    move-result-object v2

    #@73
    if-eqz v2, :cond_4

    #@75
    .line 492
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@77
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@7a
    move-result-object v2

    #@7b
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@7d
    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@7f
    .line 490
    :cond_4
    throw v1
.end method

.method cancel()Z
    .locals 4

    #@0
    .prologue
    .line 346
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "LoaderManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "  Canceling: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 347
    :cond_0
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@24
    if-eqz v1, :cond_2

    #@26
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 348
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@2c
    invoke-virtual {v1}, Landroid/content/Loader;->cancelLoad()Z

    #@2f
    move-result v0

    #@30
    .line 349
    .local v0, "cancelLoadResult":Z
    if-nez v0, :cond_1

    #@32
    .line 350
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@34
    invoke-virtual {p0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/content/Loader;)V

    #@37
    .line 352
    :cond_1
    return v0

    #@38
    .line 354
    .end local v0    # "cancelLoadResult":Z
    :cond_2
    const/4 v1, 0x0

    #@39
    return v1
.end method

.method destroy()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 358
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "LoaderManager"

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "  Destroying: "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 359
    :cond_0
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    #@23
    .line 360
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@25
    .line 361
    .local v1, "needReset":Z
    iput-boolean v6, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@27
    .line 362
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@29
    if-eqz v2, :cond_3

    #@2b
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@2d
    if-eqz v2, :cond_3

    #@2f
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@31
    if-eqz v2, :cond_3

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 363
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@37
    if-eqz v2, :cond_1

    #@39
    const-string/jumbo v2, "LoaderManager"

    #@3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v4, "  Reseting: "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 364
    :cond_1
    const/4 v0, 0x0

    #@54
    .line 365
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@56
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@59
    move-result-object v2

    #@5a
    if-eqz v2, :cond_2

    #@5c
    .line 366
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@5e
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@61
    move-result-object v2

    #@62
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@64
    iget-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@66
    .line 367
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@68
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@6b
    move-result-object v2

    #@6c
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@6e
    const-string/jumbo v3, "onLoaderReset"

    #@71
    iput-object v3, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@73
    .line 370
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@75
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@77
    invoke-interface {v2, v3}, Landroid/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7a
    .line 372
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@7c
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@7f
    move-result-object v2

    #@80
    if-eqz v2, :cond_3

    #@82
    .line 373
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@84
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@87
    move-result-object v2

    #@88
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@8a
    iput-object v0, v2, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@8c
    .line 377
    :cond_3
    iput-object v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@8e
    .line 378
    iput-object v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@90
    .line 379
    iput-boolean v6, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@92
    .line 380
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@94
    if-eqz v2, :cond_5

    #@96
    .line 381
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@98
    if-eqz v2, :cond_4

    #@9a
    .line 382
    iput-boolean v6, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@9c
    .line 383
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@9e
    invoke-virtual {v2, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    #@a1
    .line 384
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@a3
    invoke-virtual {v2, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    #@a6
    .line 386
    :cond_4
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@a8
    invoke-virtual {v2}, Landroid/content/Loader;->reset()V

    #@ab
    .line 388
    :cond_5
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@ad
    if-eqz v2, :cond_6

    #@af
    .line 389
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@b1
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@b4
    .line 357
    :cond_6
    return-void

    #@b5
    .line 371
    :catchall_0
    move-exception v2

    #@b6
    .line 372
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@b8
    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@bb
    move-result-object v3

    #@bc
    if-eqz v3, :cond_7

    #@be
    .line 373
    iget-object v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@c0
    invoke-static {v3}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@c3
    move-result-object v3

    #@c4
    iget-object v3, v3, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@c6
    iput-object v0, v3, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@c8
    .line 371
    :cond_7
    throw v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 513
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mId="

    #@6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@e
    .line 514
    const-string/jumbo v0, " mArgs="

    #@11
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@14
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19
    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    const-string/jumbo v0, "mCallbacks="

    #@1f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@27
    .line 516
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2a
    const-string/jumbo v0, "mLoader="

    #@2d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@32
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@35
    .line 517
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@37
    if-eqz v0, :cond_0

    #@39
    .line 518
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    const-string/jumbo v2, "  "

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@52
    .line 520
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@54
    if-nez v0, :cond_1

    #@56
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@58
    if-eqz v0, :cond_2

    #@5a
    .line 521
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5d
    const-string/jumbo v0, "mHaveData="

    #@60
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@65
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@68
    .line 522
    const-string/jumbo v0, "  mDeliveredData="

    #@6b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@70
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@73
    .line 523
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@76
    const-string/jumbo v0, "mData="

    #@79
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7c
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@7e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@81
    .line 525
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    const-string/jumbo v0, "mStarted="

    #@87
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8a
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@8c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@8f
    .line 526
    const-string/jumbo v0, " mReportNextStart="

    #@92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@95
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    #@97
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@9a
    .line 527
    const-string/jumbo v0, " mDestroyed="

    #@9d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    #@a2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@a5
    .line 528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string/jumbo v0, "mRetaining="

    #@ab
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@b0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@b3
    .line 529
    const-string/jumbo v0, " mRetainingStarted="

    #@b6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b9
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    #@bb
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@be
    .line 530
    const-string/jumbo v0, " mListenerRegistered="

    #@c1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c4
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@c6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@c9
    .line 531
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@cb
    if-eqz v0, :cond_3

    #@cd
    .line 532
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    const-string/jumbo v0, "Pending Loader "

    #@d3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d6
    .line 533
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@d8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@db
    const-string/jumbo v0, ":"

    #@de
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e1
    .line 534
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@e3
    new-instance v1, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    const-string/jumbo v2, "  "

    #@ef
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v1

    #@f3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v1

    #@f7
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@fa
    .line 512
    :cond_3
    return-void
.end method

.method finishRetain()V
    .locals 3

    #@0
    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 297
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "LoaderManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "  Finished Retaining: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 298
    :cond_0
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@25
    .line 299
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@27
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    #@29
    if-eq v0, v1, :cond_1

    #@2b
    .line 300
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@2d
    if-nez v0, :cond_1

    #@2f
    .line 304
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->stop()V

    #@32
    .line 309
    :cond_1
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@34
    if-eqz v0, :cond_2

    #@36
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@38
    if-eqz v0, :cond_2

    #@3a
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 295
    :cond_2
    :goto_0
    return-void

    #@3f
    .line 316
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@41
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@43
    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    #@46
    goto :goto_0
.end method

.method public onLoadCanceled(Landroid/content/Loader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@1
    .line 395
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    const-string/jumbo v1, "LoaderManager"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "onLoadCanceled: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 397
    :cond_0
    iget-boolean v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 398
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@25
    if-eqz v1, :cond_1

    #@27
    const-string/jumbo v1, "LoaderManager"

    #@2a
    const-string/jumbo v2, "  Ignoring load canceled -- destroyed"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 399
    :cond_1
    return-void

    #@31
    .line 402
    :cond_2
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@33
    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@35
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@37
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    if-eq v1, p0, :cond_4

    #@3d
    .line 405
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3f
    if-eqz v1, :cond_3

    #@41
    const-string/jumbo v1, "LoaderManager"

    #@44
    const-string/jumbo v2, "  Ignoring load canceled -- not active"

    #@47
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 406
    :cond_3
    return-void

    #@4b
    .line 409
    :cond_4
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@4d
    .line 410
    .local v0, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_6

    #@4f
    .line 414
    sget-boolean v1, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@51
    if-eqz v1, :cond_5

    #@53
    const-string/jumbo v1, "LoaderManager"

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "  Switching to pending loader: "

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 415
    :cond_5
    iput-object v4, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@6f
    .line 416
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@71
    iget-object v1, v1, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@73
    iget v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@75
    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@78
    .line 417
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@7b
    .line 418
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@7d
    invoke-virtual {v1, v0}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    #@80
    .line 394
    :cond_6
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    #@1
    .line 424
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    const-string/jumbo v2, "LoaderManager"

    #@8
    new-instance v3, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v4, "onLoadComplete: "

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 426
    :cond_0
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 427
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@25
    if-eqz v2, :cond_1

    #@27
    const-string/jumbo v2, "LoaderManager"

    #@2a
    const-string/jumbo v3, "  Ignoring load complete -- destroyed"

    #@2d
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 428
    :cond_1
    return-void

    #@31
    .line 431
    :cond_2
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@33
    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@35
    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@37
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v2

    #@3b
    if-eq v2, p0, :cond_4

    #@3d
    .line 434
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3f
    if-eqz v2, :cond_3

    #@41
    const-string/jumbo v2, "LoaderManager"

    #@44
    const-string/jumbo v3, "  Ignoring load complete -- not active"

    #@47
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 435
    :cond_3
    return-void

    #@4b
    .line 438
    :cond_4
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@4d
    .line 439
    .local v1, "pending":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_6

    #@4f
    .line 443
    sget-boolean v2, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@51
    if-eqz v2, :cond_5

    #@53
    const-string/jumbo v2, "LoaderManager"

    #@56
    new-instance v3, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v4, "  Switching to pending loader: "

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 444
    :cond_5
    iput-object v5, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@6f
    .line 445
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@71
    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mLoaders:Landroid/util/SparseArray;

    #@73
    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@75
    invoke-virtual {v2, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@78
    .line 446
    invoke-virtual {p0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@7b
    .line 447
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@7d
    invoke-virtual {v2, v1}, Landroid/app/LoaderManagerImpl;->installLoader(Landroid/app/LoaderManagerImpl$LoaderInfo;)V

    #@80
    .line 448
    return-void

    #@81
    .line 453
    :cond_6
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@83
    if-ne v2, p2, :cond_a

    #@85
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@87
    if-eqz v2, :cond_a

    #@89
    .line 467
    :cond_7
    :goto_0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@8b
    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@8d
    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@8f
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, Landroid/app/LoaderManagerImpl$LoaderInfo;

    #@95
    .line 468
    .local v0, "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_8

    #@97
    if-eq v0, p0, :cond_8

    #@99
    .line 469
    const/4 v2, 0x0

    #@9a
    iput-boolean v2, v0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    #@9c
    .line 470
    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    #@9f
    .line 471
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@a1
    iget-object v2, v2, Landroid/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/util/SparseArray;

    #@a3
    iget v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@a5
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    #@a8
    .line 474
    :cond_8
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@aa
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@ad
    move-result-object v2

    #@ae
    if-eqz v2, :cond_9

    #@b0
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@b2
    invoke-virtual {v2}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@b5
    move-result v2

    #@b6
    if-eqz v2, :cond_b

    #@b8
    .line 423
    :cond_9
    :goto_1
    return-void

    #@b9
    .line 454
    .end local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_a
    iput-object p2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@bb
    .line 455
    const/4 v2, 0x1

    #@bc
    iput-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@be
    .line 456
    iget-boolean v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@c0
    if-eqz v2, :cond_7

    #@c2
    .line 457
    invoke-virtual {p0, p1, p2}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    #@c5
    goto :goto_0

    #@c6
    .line 475
    .restart local v0    # "info":Landroid/app/LoaderManagerImpl$LoaderInfo;
    :cond_b
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/app/LoaderManagerImpl;

    #@c8
    invoke-static {v2}, Landroid/app/LoaderManagerImpl;->-get0(Landroid/app/LoaderManagerImpl;)Landroid/app/FragmentHostCallback;

    #@cb
    move-result-object v2

    #@cc
    iget-object v2, v2, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    #@ce
    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@d1
    goto :goto_1
.end method

.method reportStart()V
    .locals 2

    #@0
    .prologue
    .line 321
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 322
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 323
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    #@b
    .line 324
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 320
    :cond_0
    :goto_0
    return-void

    #@14
    .line 325
    :cond_1
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@16
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    #@18
    invoke-virtual {p0, v0, v1}, Landroid/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V

    #@1b
    goto :goto_0
.end method

.method retain()V
    .locals 3

    #@0
    .prologue
    .line 288
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "LoaderManager"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "  Retaining: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 289
    :cond_0
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@21
    .line 290
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@23
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    #@25
    .line 291
    const/4 v0, 0x0

    #@26
    iput-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@28
    .line 292
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@2b
    .line 287
    return-void
.end method

.method start()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 252
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 256
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@b
    .line 257
    return-void

    #@c
    .line 260
    :cond_0
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 262
    return-void

    #@11
    .line 265
    :cond_1
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@13
    .line 267
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    const-string/jumbo v0, "LoaderManager"

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "  Starting: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 268
    :cond_2
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@33
    if-nez v0, :cond_3

    #@35
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 269
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    #@3b
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@3d
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    #@3f
    invoke-interface {v0, v1, v2}, Landroid/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@45
    .line 271
    :cond_3
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@47
    if-eqz v0, :cond_6

    #@49
    .line 272
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@4b
    invoke-virtual {v0}, Landroid/content/Loader;->getClass()Ljava/lang/Class;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    #@52
    move-result v0

    #@53
    if-eqz v0, :cond_4

    #@55
    .line 273
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@57
    invoke-virtual {v0}, Landroid/content/Loader;->getClass()Ljava/lang/Class;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    #@5e
    move-result v0

    #@5f
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_7

    #@65
    .line 278
    :cond_4
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@67
    if-nez v0, :cond_5

    #@69
    .line 279
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@6b
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@6d
    invoke-virtual {v0, v1, p0}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    #@70
    .line 280
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@72
    invoke-virtual {v0, p0}, Landroid/content/Loader;->registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    #@75
    .line 281
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@77
    .line 283
    :cond_5
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@79
    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    #@7c
    .line 251
    :cond_6
    return-void

    #@7d
    .line 274
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7f
    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    .line 276
    iget-object v2, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@8d
    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@98
    throw v0
.end method

.method stop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 332
    sget-boolean v0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "LoaderManager"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "  Stopping: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 333
    :cond_0
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    #@21
    .line 334
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    #@23
    if-nez v0, :cond_1

    #@25
    .line 335
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@27
    if-eqz v0, :cond_1

    #@29
    iget-boolean v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@2b
    if-eqz v0, :cond_1

    #@2d
    .line 337
    iput-boolean v3, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    #@2f
    .line 338
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@31
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    #@34
    .line 339
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@36
    invoke-virtual {v0, p0}, Landroid/content/Loader;->unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V

    #@39
    .line 340
    iget-object v0, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@3b
    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    #@3e
    .line 331
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 502
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "LoaderInfo{"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 503
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 504
    const-string/jumbo v1, " #"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 505
    iget v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mId:I

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    .line 506
    const-string/jumbo v1, " : "

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 507
    iget-object v1, p0, Landroid/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/content/Loader;

    #@2b
    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@2e
    .line 508
    const-string/jumbo v1, "}}"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method
