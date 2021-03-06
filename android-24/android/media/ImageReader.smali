.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$OnImageAvailableListener;,
        Landroid/media/ImageReader$SurfaceImage;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/media/ImageReader;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/media/ImageReader;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/media/ImageReader;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/media/ImageReader;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0
    .param p1, "i"    # Landroid/media/Image;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 891
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 892
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    #@9
    .line 56
    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 622
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@b
    .line 623
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    #@12
    .line 624
    const/4 v0, 0x0

    #@13
    iput-boolean v0, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    #@15
    .line 629
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@1c
    .line 131
    iput p1, p0, Landroid/media/ImageReader;->mWidth:I

    #@1e
    .line 132
    iput p2, p0, Landroid/media/ImageReader;->mHeight:I

    #@20
    .line 133
    iput p3, p0, Landroid/media/ImageReader;->mFormat:I

    #@22
    .line 134
    iput p4, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@24
    .line 136
    if-lt p1, v6, :cond_0

    #@26
    if-ge p2, v6, :cond_1

    #@28
    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2a
    .line 138
    const-string/jumbo v1, "The image dimensions must be positive"

    #@2d
    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 140
    :cond_1
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@33
    if-ge v0, v6, :cond_2

    #@35
    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@37
    .line 142
    const-string/jumbo v1, "Maximum outstanding image count must be at least 1"

    #@3a
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v0

    #@3e
    .line 145
    :cond_2
    const/16 v0, 0x11

    #@40
    if-ne p3, v0, :cond_3

    #@42
    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@44
    .line 147
    const-string/jumbo v1, "NV21 format is not supported"

    #@47
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 150
    :cond_3
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@4d
    invoke-static {v0}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    #@53
    .line 152
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@55
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@58
    move-object v0, p0

    #@59
    move v2, p1

    #@5a
    move v3, p2

    #@5b
    move v4, p3

    #@5c
    move v5, p4

    #@5d
    invoke-direct/range {v0 .. v5}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIII)V

    #@60
    .line 154
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@66
    .line 156
    iput-boolean v6, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    #@68
    .line 163
    invoke-static {p1, p2, p3, v6}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    #@6b
    move-result v0

    #@6c
    iput v0, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@6e
    .line 165
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@71
    move-result-object v0

    #@72
    iget v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@74
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@77
    .line 130
    return-void
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    #@0
    .prologue
    .line 332
    iget-object v2, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 334
    const/4 v0, 0x1

    #@4
    .line 335
    .local v0, "status":I
    :try_start_0
    iget-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 336
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;)I

    #@b
    move-result v0

    #@c
    .line 339
    :cond_0
    packed-switch v0, :pswitch_data_0

    #@f
    .line 346
    new-instance v1, Ljava/lang/AssertionError;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Unknown nativeImageSetup return code "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@28
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 332
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1

    #@2c
    .line 341
    :pswitch_0
    const/4 v1, 0x1

    #@2d
    :try_start_1
    iput-boolean v1, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@2f
    .line 351
    :pswitch_1
    if-nez v0, :cond_1

    #@31
    .line 352
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@33
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    :cond_1
    monitor-exit v2

    #@37
    .line 354
    return v0

    #@38
    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 584
    instance-of v2, p1, Landroid/media/ImageReader$SurfaceImage;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 585
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 587
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@9
    .line 588
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    #@c
    move-result-object v2

    #@d
    if-ne v2, p0, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :cond_1
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose()V
.end method

.method private synchronized native declared-synchronized nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native declared-synchronized nativeImageSetup(Landroid/media/Image;)I
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;IIII)V
.end method

.method private synchronized native declared-synchronized nativeReleaseImage(Landroid/media/Image;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/media/ImageReader;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/ImageReader;-><init>(IIII)V

    #@5
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v2, p0

    #@1
    .line 599
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@3
    .line 600
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/media/ImageReader;

    #@9
    .line 601
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_0

    #@b
    .line 602
    return-void

    #@c
    .line 606
    :cond_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 607
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v3

    #@12
    .line 609
    if-eqz v0, :cond_1

    #@14
    .line 610
    const/4 v3, 0x0

    #@15
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@18
    .line 597
    :cond_1
    return-void

    #@19
    .line 606
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v3

    #@1b
    throw v4
.end method

.method private releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    #@0
    .prologue
    .line 411
    instance-of v1, p1, Landroid/media/ImageReader$SurfaceImage;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 412
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@6
    .line 413
    const-string/jumbo v2, "This image was not produced by an ImageReader"

    #@9
    .line 412
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 415
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@10
    .line 416
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@12
    if-nez v1, :cond_1

    #@14
    .line 417
    return-void

    #@15
    .line 420
    :cond_1
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    #@18
    move-result-object v1

    #@19
    if-ne v1, p0, :cond_2

    #@1b
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@1d
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2

    #@23
    .line 425
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-wrap0(Landroid/media/ImageReader$SurfaceImage;)V

    #@26
    .line 426
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    #@29
    .line 427
    const/4 v1, 0x0

    #@2a
    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    #@2c
    .line 428
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@2e
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@31
    .line 410
    return-void

    #@32
    .line 421
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@34
    .line 422
    const-string/jumbo v2, "This image was not produced by this ImageReader"

    #@37
    .line 421
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 283
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    #@4
    move-result-object v0

    #@5
    .line 284
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_1

    #@7
    .line 285
    return-object v3

    #@8
    .line 295
    .local v1, "next":Landroid/media/Image;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@b
    .line 296
    move-object v0, v1

    #@c
    .line 289
    .end local v1    # "next":Landroid/media/Image;
    :cond_1
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v1

    #@10
    .line 290
    .restart local v1    # "next":Landroid/media/Image;
    if-nez v1, :cond_0

    #@12
    .line 291
    move-object v2, v0

    #@13
    .line 292
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    #@14
    .line 293
    .local v0, "image":Landroid/media/Image;
    return-object v2

    #@15
    .line 298
    .end local v1    # "next":Landroid/media/Image;
    .end local v2    # "result":Landroid/media/Image;
    .local v0, "image":Landroid/media/Image;
    :catchall_0
    move-exception v3

    #@16
    .line 299
    if-eqz v0, :cond_2

    #@18
    .line 300
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@1b
    .line 298
    :cond_2
    throw v3
.end method

.method public acquireNextImage()Landroid/media/Image;
    .locals 7

    #@0
    .prologue
    .line 389
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    #@2
    iget v2, p0, Landroid/media/ImageReader;->mFormat:I

    #@4
    invoke-direct {v0, p0, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    #@7
    .line 390
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    #@a
    move-result v1

    #@b
    .line 392
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    #@e
    .line 403
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Unknown nativeImageSetup return code "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@27
    throw v2

    #@28
    .line 394
    :pswitch_0
    return-object v0

    #@29
    .line 396
    :pswitch_1
    const/4 v2, 0x0

    #@2a
    return-object v2

    #@2b
    .line 398
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2d
    .line 400
    const-string/jumbo v3, "maxImages (%d) has already been acquired, call #close before acquiring more."

    #@30
    .line 399
    const/4 v4, 0x1

    #@31
    new-array v4, v4, [Ljava/lang/Object;

    #@33
    .line 401
    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v5

    #@39
    const/4 v6, 0x0

    #@3a
    aput-object v5, v4, v6

    #@3c
    .line 399
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    .line 398
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2

    #@44
    .line 392
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 2

    #@0
    .prologue
    .line 313
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    #@2
    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    #@4
    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    #@7
    .line 314
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    return-object v0

    #@e
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public close()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 496
    invoke-virtual {p0, v2, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    #@5
    .line 497
    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@b
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    #@e
    .line 507
    :cond_0
    iget-object v3, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    #@10
    monitor-enter v3

    #@11
    .line 508
    const/4 v2, 0x0

    #@12
    :try_start_0
    iput-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    #@14
    .line 509
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@16
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_1

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Landroid/media/Image;

    #@26
    .line 510
    .local v0, "image":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 507
    .end local v0    # "image":Landroid/media/Image;
    .end local v1    # "image$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2

    #@2d
    .line 512
    .restart local v1    # "image$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    #@2f
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@32
    .line 514
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    monitor-exit v3

    #@36
    .line 517
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@38
    if-lez v2, :cond_2

    #@3a
    .line 518
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3d
    move-result-object v2

    #@3e
    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@40
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@43
    .line 519
    iput v4, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    #@45
    .line 495
    :cond_2
    return-void
.end method

.method detachImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 564
    if-nez p1, :cond_0

    #@2
    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "input image must not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 567
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 568
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v2, "Trying to detach an image that is not owned by this ImageReader"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    :cond_1
    move-object v0, p1

    #@1b
    .line 572
    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    #@1d
    .line 573
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@20
    .line 575
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 576
    new-instance v1, Ljava/lang/IllegalStateException;

    #@28
    const-string/jumbo v2, "Image was already detached from this ImageReader"

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 579
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    #@32
    .line 580
    const/4 v1, 0x1

    #@33
    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-wrap1(Landroid/media/ImageReader$SurfaceImage;Z)V

    #@36
    .line 563
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 526
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 528
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 524
    return-void

    #@7
    .line 527
    :catchall_0
    move-exception v0

    #@8
    .line 528
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 527
    throw v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 191
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    #@2
    return v0
.end method

.method public getImageFormat()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    #@2
    return v0
.end method

.method public getMaxImages()I
    .locals 1

    #@0
    .prologue
    .line 231
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    #@2
    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    #@2
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    #@2
    return v0
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 444
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 445
    if-eqz p1, :cond_4

    #@5
    .line 446
    if-eqz p2, :cond_0

    #@7
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    .line 447
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    #@d
    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    .line 449
    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    #@12
    .line 448
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 444
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 446
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1e
    .line 451
    :cond_1
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@24
    invoke-virtual {v1}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    if-eq v1, v0, :cond_3

    #@2a
    .line 452
    :cond_2
    new-instance v1, Landroid/media/ImageReader$ListenerHandler;

    #@2c
    invoke-direct {v1, p0, v0}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    #@2f
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    #@31
    .line 454
    :cond_3
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    #@34
    .line 443
    return-void

    #@35
    .line 456
    :cond_4
    const/4 v1, 0x0

    #@36
    :try_start_2
    iput-object v1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    #@38
    .line 457
    const/4 v1, 0x0

    #@39
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method
