.class public abstract Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothStateChangeCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothStateChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothStateChangeCallback"

.field static final TRANSACTION_onBluetoothStateChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothStateChangeCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothStateChangeCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v1

    #@9
    return v1

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v2, "android.bluetooth.IBluetoothStateChangeCallback"

    #@d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v1

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v2, "android.bluetooth.IBluetoothStateChangeCallback"

    #@14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    move v0, v1

    #@1e
    .line 55
    .local v0, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->onBluetoothStateChange(Z)V

    #@21
    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 57
    return v1

    #@25
    .line 43
    nop

    #@26
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
