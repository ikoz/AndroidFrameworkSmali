.class public abstract Landroid/location/IGpsStatusProvider$Stub;
.super Landroid/os/Binder;
.source "IGpsStatusProvider.java"

# interfaces
.implements Landroid/location/IGpsStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsStatusProvider"

.field static final TRANSACTION_addGpsStatusListener:I = 0x1

.field static final TRANSACTION_removeGpsStatusListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.location.IGpsStatusProvider"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusProvider;
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
    const-string/jumbo v1, "android.location.IGpsStatusProvider"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/location/IGpsStatusProvider;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/location/IGpsStatusProvider;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/location/IGpsStatusProvider$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/location/IGpsStatusProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v2, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v1, "android.location.IGpsStatusProvider"

    #@c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v2

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v1, "android.location.IGpsStatusProvider"

    #@13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    #@1d
    move-result-object v0

    #@1e
    .line 55
    .local v0, "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual {p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    #@21
    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 57
    return v2

    #@25
    .line 61
    .end local v0    # "_arg0":Landroid/location/IGpsStatusListener;
    :sswitch_2
    const-string/jumbo v1, "android.location.IGpsStatusProvider"

    #@28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v1}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    #@32
    move-result-object v0

    #@33
    .line 64
    .restart local v0    # "_arg0":Landroid/location/IGpsStatusListener;
    invoke-virtual {p0, v0}, Landroid/location/IGpsStatusProvider$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    #@36
    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 66
    return v2

    #@3a
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
