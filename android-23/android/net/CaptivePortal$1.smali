.class final Landroid/net/CaptivePortal$1;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/CaptivePortal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 58
    new-instance v0, Landroid/net/CaptivePortal;

    #@2
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 57
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/CaptivePortal;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 63
    new-array v0, p1, [Landroid/net/CaptivePortal;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->newArray(I)[Landroid/net/CaptivePortal;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
