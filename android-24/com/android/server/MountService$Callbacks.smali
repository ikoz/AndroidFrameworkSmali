.class Lcom/android/server/MountService$Callbacks;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callbacks"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/storage/IMountServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;)V
    .locals 0
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/DiskInfo;I)V
    .locals 0
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$Callbacks;->notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/MountService$Callbacks;Ljava/lang/String;)V
    .locals 0
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$Callbacks;->notifyVolumeForgotten(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeRecord;)V
    .locals 0
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/MountService$Callbacks;->notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/MountService$Callbacks;Landroid/os/storage/VolumeInfo;II)V
    .locals 0
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/MountService$Callbacks;->notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 3589
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    .line 3586
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@5
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@a
    .line 3588
    return-void
.end method

.method private invokeCallback(Landroid/os/storage/IMountServiceListener;ILcom/android/internal/os/SomeArgs;)V
    .locals 3
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 3617
    packed-switch p2, :pswitch_data_0

    #@3
    .line 3616
    :goto_0
    return-void

    #@4
    .line 3619
    :pswitch_0
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 3620
    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@e
    check-cast v2, Ljava/lang/String;

    #@10
    .line 3619
    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IMountServiceListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    goto :goto_0

    #@14
    .line 3624
    :pswitch_1
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@16
    check-cast v0, Landroid/os/storage/VolumeInfo;

    #@18
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@1a
    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@1c
    invoke-interface {p1, v0, v1, v2}, Landroid/os/storage/IMountServiceListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    #@1f
    goto :goto_0

    #@20
    .line 3628
    :pswitch_2
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@22
    check-cast v0, Landroid/os/storage/VolumeRecord;

    #@24
    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    #@27
    goto :goto_0

    #@28
    .line 3632
    :pswitch_3
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@2a
    check-cast v0, Ljava/lang/String;

    #@2c
    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onVolumeForgotten(Ljava/lang/String;)V

    #@2f
    goto :goto_0

    #@30
    .line 3636
    :pswitch_4
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@32
    check-cast v0, Landroid/os/storage/DiskInfo;

    #@34
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@36
    invoke-interface {p1, v0, v1}, Landroid/os/storage/IMountServiceListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    #@39
    goto :goto_0

    #@3a
    .line 3640
    :pswitch_5
    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@3c
    check-cast v0, Landroid/os/storage/DiskInfo;

    #@3e
    invoke-interface {p1, v0}, Landroid/os/storage/IMountServiceListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    #@41
    goto :goto_0

    #@42
    .line 3617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    #@0
    .prologue
    .line 3682
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3683
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 3684
    const/4 v1, 0x6

    #@b
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 3681
    return-void
.end method

.method private notifyDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 2
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    #@0
    .prologue
    .line 3675
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3676
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->clone()Landroid/os/storage/DiskInfo;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 3677
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@c
    .line 3678
    const/4 v1, 0x5

    #@d
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 3674
    return-void
.end method

.method private notifyStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3647
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3648
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 3649
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 3650
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@a
    .line 3651
    const/4 v1, 0x1

    #@b
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 3646
    return-void
.end method

.method private notifyVolumeForgotten(Ljava/lang/String;)V
    .locals 2
    .param p1, "fsUuid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3669
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3670
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 3671
    const/4 v1, 0x4

    #@7
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 3668
    return-void
.end method

.method private notifyVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 2
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    #@0
    .prologue
    .line 3663
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3664
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->clone()Landroid/os/storage/VolumeRecord;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 3665
    const/4 v1, 0x3

    #@b
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 3662
    return-void
.end method

.method private notifyVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    #@0
    .prologue
    .line 3655
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 3656
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->clone()Landroid/os/storage/VolumeInfo;

    #@7
    move-result-object v1

    #@8
    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@a
    .line 3657
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    #@c
    .line 3658
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    #@e
    .line 3659
    const/4 v1, 0x2

    #@f
    invoke-virtual {p0, v1, v0}, Lcom/android/server/MountService$Callbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 3654
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 3602
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    #@4
    .line 3603
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@6
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@9
    move-result v4

    #@a
    .line 3604
    .local v4, "n":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    #@d
    .line 3605
    iget-object v5, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@f
    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/os/storage/IMountServiceListener;

    #@15
    .line 3607
    .local v1, "callback":Landroid/os/storage/IMountServiceListener;
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    #@17
    invoke-direct {p0, v1, v5, v0}, Lcom/android/server/MountService$Callbacks;->invokeCallback(Landroid/os/storage/IMountServiceListener;ILcom/android/internal/os/SomeArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 3604
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 3611
    .end local v1    # "callback":Landroid/os/storage/IMountServiceListener;
    :cond_0
    iget-object v5, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@1f
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@22
    .line 3612
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@25
    .line 3601
    return-void

    #@26
    .line 3608
    .restart local v1    # "callback":Landroid/os/storage/IMountServiceListener;
    :catch_0
    move-exception v3

    #@27
    .local v3, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public register(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 3593
    iget-object v0, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@5
    .line 3592
    return-void
.end method

.method public unregister(Landroid/os/storage/IMountServiceListener;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/IMountServiceListener;

    #@0
    .prologue
    .line 3597
    iget-object v0, p0, Lcom/android/server/MountService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@5
    .line 3596
    return-void
.end method
