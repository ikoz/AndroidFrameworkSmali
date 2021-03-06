.class Landroid/hardware/ICameraServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/hardware/ICameraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceListener$Stub;
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
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput-object p1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 72
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    const-string/jumbo v0, "android.hardware.ICameraServiceListener"

    #@3
    return-object v0
.end method

.method public onStatusChanged(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.ICameraServiceListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 89
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 90
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 91
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x1

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 84
    return-void

    #@1c
    .line 93
    :catchall_0
    move-exception v1

    #@1d
    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 93
    throw v1
.end method

.method public onTorchStatusChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "android.hardware.ICameraServiceListener"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@a
    .line 102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 103
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 104
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@12
    const/4 v2, 0x2

    #@13
    const/4 v3, 0x0

    #@14
    const/4 v4, 0x1

    #@15
    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@1b
    .line 97
    return-void

    #@1c
    .line 106
    :catchall_0
    move-exception v1

    #@1d
    .line 107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 106
    throw v1
.end method
