.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$1;,
        Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method static synthetic -get0(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 5
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 344
    new-instance v1, Landroid/telecom/RemoteConnection$VideoProvider$1;

    #@5
    invoke-direct {v1, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    #@8
    iput-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    #@a
    .line 407
    new-instance v1, Landroid/telecom/VideoCallbackServant;

    #@c
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    #@e
    invoke-direct {v1, v2}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    #@11
    .line 406
    iput-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    #@13
    .line 417
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    const/16 v2, 0x8

    #@17
    const v3, 0x3f666666    # 0.9f

    #@1a
    const/4 v4, 0x1

    #@1b
    invoke-direct {v1, v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@1e
    .line 416
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    #@24
    .line 420
    iput-object p1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@26
    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@28
    iget-object v2, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    #@2a
    invoke-virtual {v2}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v2}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    #@31
    move-result-object v2

    #@32
    invoke-interface {v1, v2}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 419
    :goto_0
    return-void

    #@36
    .line 423
    :catch_0
    move-exception v0

    #@37
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public registerCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    .line 432
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 2

    #@0
    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 563
    :goto_0
    return-void

    #@6
    .line 566
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 550
    :goto_0
    return-void

    #@6
    .line 553
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 523
    :goto_0
    return-void

    #@6
    .line 526
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 539
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 537
    :goto_0
    return-void

    #@6
    .line 540
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 453
    :goto_0
    return-void

    #@6
    .line 456
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDeviceOrientation(I)V
    .locals 2
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 495
    :goto_0
    return-void

    #@6
    .line 498
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 481
    :goto_0
    return-void

    #@6
    .line 484
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 578
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 576
    :goto_0
    return-void

    #@6
    .line 579
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 467
    :goto_0
    return-void

    #@6
    .line 470
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setZoom(F)V
    .locals 2
    .param p1, "value"    # F

    #@0
    .prologue
    .line 510
    :try_start_0
    iget-object v1, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 508
    :goto_0
    return-void

    #@6
    .line 511
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .locals 1
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    .line 441
    return-void
.end method
