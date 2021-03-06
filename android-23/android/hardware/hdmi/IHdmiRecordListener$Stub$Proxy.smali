.class Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHdmiRecordListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
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
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    iput-object p1, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 97
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    const-string/jumbo v0, "android.hardware.hdmi.IHdmiRecordListener"

    #@3
    return-object v0
.end method

.method public getOneTouchRecordSource(I)[B
    .locals 6
    .param p1, "recorderAddress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 121
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.hardware.hdmi.IHdmiRecordListener"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 123
    iget-object v3, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x1

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 128
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 131
    return-object v2

    #@26
    .line 127
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v3

    #@27
    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 127
    throw v3
.end method

.method public onClearTimerRecordingResult(II)V
    .locals 5
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 191
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.hdmi.IHdmiRecordListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 193
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 194
    iget-object v2, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x4

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 186
    return-void

    #@25
    .line 197
    :catchall_0
    move-exception v2

    #@26
    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 197
    throw v2
.end method

.method public onOneTouchRecordResult(II)V
    .locals 5
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.hdmi.IHdmiRecordListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 148
    iget-object v2, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x2

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 140
    return-void

    #@25
    .line 151
    :catchall_0
    move-exception v2

    #@26
    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 151
    throw v2
.end method

.method public onTimerRecordingResult(II)V
    .locals 5
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.hardware.hdmi.IHdmiRecordListener"

    #@b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 171
    iget-object v2, p0, Landroid/hardware/hdmi/IHdmiRecordListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/4 v3, 0x3

    #@17
    const/4 v4, 0x0

    #@18
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1b
    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@21
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@24
    .line 163
    return-void

    #@25
    .line 174
    :catchall_0
    move-exception v2

    #@26
    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 174
    throw v2
.end method
