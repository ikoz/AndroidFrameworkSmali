.class Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceInteractionManagerService.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 379
    iput-object p1, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 377
    return-void
.end method


# virtual methods
.method public activeServiceSupportsAssist()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 896
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 900
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x18

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 902
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 905
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 908
    return v2

    #@27
    .line 902
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 904
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 904
    throw v3
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 917
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 921
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x19

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 926
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 929
    return v2

    #@27
    .line 923
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 925
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 925
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public closeSystemDialogs(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 523
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 524
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 525
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v3, 0x7

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1e
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 518
    return-void

    #@22
    .line 528
    :catchall_0
    move-exception v2

    #@23
    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 528
    throw v2
.end method

.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 659
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 660
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 661
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xe

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 662
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 663
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 666
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 669
    return v2

    #@2a
    .line 665
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 665
    throw v3
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 420
    if-eqz p2, :cond_1

    #@14
    invoke-interface {p2}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v4

    #@18
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 421
    if-eqz p3, :cond_0

    #@1d
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 422
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/4 v4, 0x2

    #@27
    const/4 v5, 0x0

    #@28
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2b
    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2e
    .line 424
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_2

    #@34
    const/4 v2, 0x1

    #@35
    .line 427
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@38
    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 430
    return v2

    #@3c
    .end local v2    # "_result":Z
    :cond_1
    move-object v4, v3

    #@3d
    .line 420
    goto :goto_0

    #@3e
    .line 424
    :cond_2
    const/4 v2, 0x0

    #@3f
    .restart local v2    # "_result":Z
    goto :goto_1

    #@40
    .line 426
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@41
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@47
    .line 426
    throw v3
.end method

.method public finish(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 536
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 538
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 540
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x8

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 533
    return-void

    #@23
    .line 543
    :catchall_0
    move-exception v2

    #@24
    .line 544
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 543
    throw v2
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 779
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 783
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x13

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 785
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 786
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@21
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 793
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 796
    return-object v2

    #@2e
    .line 789
    :cond_0
    const/4 v2, 0x0

    #@2f
    .local v2, "_result":Landroid/content/ComponentName;
    goto :goto_0

    #@30
    .line 792
    .end local v2    # "_result":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    #@31
    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 792
    throw v3
.end method

.method public getDisabledShowContext()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 570
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xa

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 575
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 578
    return v2

    #@24
    .line 574
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 574
    throw v3
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 681
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 682
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xf

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 684
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_1

    #@29
    .line 685
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 692
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 695
    return-object v2

    #@38
    .line 688
    :cond_1
    const/4 v2, 0x0

    #@39
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    goto :goto_0

    #@3a
    .line 691
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :catchall_0
    move-exception v3

    #@3b
    .line 692
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3e
    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@41
    .line 691
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 387
    const-string/jumbo v0, "com.android.internal.app.IVoiceInteractionManagerService"

    #@3
    return-object v0
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 6
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 611
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 612
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 613
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xc

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 614
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 615
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 616
    sget-object v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@27
    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    .line 623
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 626
    return-object v2

    #@34
    .line 619
    :cond_0
    const/4 v2, 0x0

    #@35
    .local v2, "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    goto :goto_0

    #@36
    .line 622
    .end local v2    # "_result":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_0
    move-exception v3

    #@37
    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 622
    throw v3
.end method

.method public getUserDisabledShowContext()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 587
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xb

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v2

    #@1d
    .line 592
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 595
    return v2

    #@24
    .line 591
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@25
    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 593
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 591
    throw v3
.end method

.method public hideCurrentSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 840
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 842
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 843
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x15

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 844
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 837
    return-void

    #@20
    .line 846
    :catchall_0
    move-exception v2

    #@21
    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 846
    throw v2
.end method

.method public hideSessionFromSession(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 466
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x4

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    const/4 v2, 0x1

    #@22
    .line 471
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 474
    return v2

    #@29
    .line 468
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@2a
    .restart local v2    # "_result":Z
    goto :goto_0

    #@2b
    .line 470
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2c
    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 470
    throw v3
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 712
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v3

    #@15
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 713
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 714
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 715
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/16 v4, 0x10

    #@22
    const/4 v5, 0x0

    #@23
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@26
    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@29
    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    const/4 v2, 0x1

    #@30
    .line 720
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 723
    return v2

    #@37
    .line 717
    .end local v2    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    #@38
    .restart local v2    # "_result":Z
    goto :goto_0

    #@39
    .line 719
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@3a
    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 719
    throw v3
.end method

.method public isSessionRunning()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 875
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 878
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 879
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x17

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 880
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 881
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    const/4 v2, 0x1

    #@20
    .line 884
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 887
    return v2

    #@27
    .line 881
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@28
    .restart local v2    # "_result":Z
    goto :goto_0

    #@29
    .line 883
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@2a
    .line 884
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 883
    throw v3
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 858
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 860
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 861
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x16

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 862
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 855
    return-void

    #@20
    .line 864
    :catchall_0
    move-exception v2

    #@21
    .line 865
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 864
    throw v2
.end method

.method public onLockscreenShown()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 940
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v3, 0x1a

    #@12
    const/4 v4, 0x0

    #@13
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1c
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 934
    return-void

    #@20
    .line 943
    :catchall_0
    move-exception v2

    #@21
    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 943
    throw v2
.end method

.method public setDisabledShowContext(I)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 555
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/16 v3, 0x9

    #@15
    const/4 v4, 0x0

    #@16
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@19
    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 548
    return-void

    #@23
    .line 558
    :catchall_0
    move-exception v2

    #@24
    .line 559
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 558
    throw v2
.end method

.method public setKeepAwake(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 507
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 508
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 509
    if-eqz p2, :cond_0

    #@14
    const/4 v2, 0x1

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 510
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/4 v3, 0x6

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 502
    return-void

    #@29
    .line 513
    :catchall_0
    move-exception v2

    #@2a
    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@30
    .line 513
    throw v2
.end method

.method public showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    .locals 5
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 395
    if-eqz p1, :cond_0

    #@11
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v2

    #@15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 396
    if-eqz p2, :cond_1

    #@1a
    .line 397
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 398
    const/4 v2, 0x0

    #@1f
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@22
    .line 403
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 404
    iget-object v2, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@27
    const/4 v3, 0x1

    #@28
    const/4 v4, 0x0

    #@29
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 389
    return-void

    #@36
    .line 401
    :cond_1
    const/4 v2, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 407
    :catchall_0
    move-exception v2

    #@3c
    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 407
    throw v2
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 814
    if-eqz p1, :cond_1

    #@11
    .line 815
    const/4 v4, 0x1

    #@12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 816
    const/4 v4, 0x0

    #@16
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@19
    .line 821
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 822
    if-eqz p3, :cond_0

    #@1e
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->asBinder()Landroid/os/IBinder;

    #@21
    move-result-object v3

    #@22
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@25
    .line 823
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@28
    .line 824
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2a
    const/16 v4, 0x14

    #@2c
    const/4 v5, 0x0

    #@2d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@30
    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@33
    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_2

    #@39
    const/4 v2, 0x1

    #@3a
    .line 829
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3d
    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 832
    return v2

    #@41
    .line 819
    .end local v2    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    #@42
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    goto :goto_0

    #@46
    .line 828
    :catchall_0
    move-exception v3

    #@47
    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@4a
    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4d
    .line 828
    throw v3

    #@4e
    .line 826
    :cond_2
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionArgs"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 435
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 438
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 439
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 440
    if-eqz p2, :cond_0

    #@13
    .line 441
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 442
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 447
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 448
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x3

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 453
    .local v2, "_result":Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@35
    .line 456
    return v2

    #@36
    .line 445
    .end local v2    # "_result":Z
    :cond_0
    const/4 v3, 0x0

    #@37
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    goto :goto_0

    #@3b
    .line 452
    :catchall_0
    move-exception v3

    #@3c
    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@42
    .line 452
    throw v3

    #@43
    .line 450
    :cond_1
    const/4 v2, 0x0

    #@44
    .restart local v2    # "_result":Z
    goto :goto_1
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 732
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 733
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 734
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 735
    if-eqz p4, :cond_0

    #@20
    invoke-interface {p4}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@23
    move-result-object v3

    #@24
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@27
    .line 736
    if-eqz p5, :cond_2

    #@29
    .line 737
    const/4 v3, 0x1

    #@2a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 738
    const/4 v3, 0x0

    #@2e
    invoke-virtual {p5, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->writeToParcel(Landroid/os/Parcel;I)V

    #@31
    .line 743
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@33
    const/16 v4, 0x11

    #@35
    const/4 v5, 0x0

    #@36
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3c
    .line 745
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v2

    #@40
    .line 748
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 751
    return v2

    #@47
    .end local v2    # "_result":I
    :cond_1
    move-object v4, v3

    #@48
    .line 732
    goto :goto_0

    #@49
    .line 741
    :cond_2
    const/4 v3, 0x0

    #@4a
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    goto :goto_1

    #@4e
    .line 747
    :catchall_0
    move-exception v3

    #@4f
    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@52
    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@55
    .line 747
    throw v3
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 484
    if-eqz p2, :cond_0

    #@13
    .line 485
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 486
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 491
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 492
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@20
    const/4 v4, 0x5

    #@21
    const/4 v5, 0x0

    #@22
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@25
    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@28
    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result v2

    #@2c
    .line 497
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@32
    .line 500
    return v2

    #@33
    .line 489
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@34
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 496
    :catchall_0
    move-exception v3

    #@39
    .line 497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 496
    throw v3
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 755
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 756
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v4, "com.android.internal.app.IVoiceInteractionManagerService"

    #@c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 760
    if-eqz p1, :cond_1

    #@11
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@14
    move-result-object v4

    #@15
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@18
    .line 761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 762
    if-eqz p3, :cond_0

    #@1d
    invoke-interface {p3}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback;->asBinder()Landroid/os/IBinder;

    #@20
    move-result-object v3

    #@21
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@24
    .line 763
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@26
    const/16 v4, 0x12

    #@28
    const/4 v5, 0x0

    #@29
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@2c
    .line 764
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@2f
    .line 765
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    move-result v2

    #@33
    .line 768
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@39
    .line 771
    return v2

    #@3a
    .end local v2    # "_result":I
    :cond_1
    move-object v4, v3

    #@3b
    .line 760
    goto :goto_0

    #@3c
    .line 767
    :catchall_0
    move-exception v3

    #@3d
    .line 768
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@40
    .line 769
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 767
    throw v3
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .locals 6
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 631
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "com.android.internal.app.IVoiceInteractionManagerService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 635
    if-eqz p1, :cond_0

    #@10
    .line 636
    const/4 v3, 0x1

    #@11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 637
    const/4 v3, 0x0

    #@15
    invoke-virtual {p1, v0, v3}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->writeToParcel(Landroid/os/Parcel;I)V

    #@18
    .line 642
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1a
    const/16 v4, 0xd

    #@1c
    const/4 v5, 0x0

    #@1d
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@20
    .line 643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@23
    .line 644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    move-result v2

    #@27
    .line 647
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 650
    return v2

    #@2e
    .line 640
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@2f
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 646
    :catchall_0
    move-exception v3

    #@34
    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3a
    .line 646
    throw v3
.end method
