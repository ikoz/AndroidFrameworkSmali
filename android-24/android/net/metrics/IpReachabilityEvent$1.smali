.class final Landroid/net/metrics/IpReachabilityEvent$1;
.super Ljava/lang/Object;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/IpReachabilityEvent;
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
        "Landroid/net/metrics/IpReachabilityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/IpReachabilityEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 66
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-virtual {p0, p1}, Landroid/net/metrics/IpReachabilityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/metrics/IpReachabilityEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/metrics/IpReachabilityEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 70
    new-array v0, p1, [Landroid/net/metrics/IpReachabilityEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/net/metrics/IpReachabilityEvent$1;->newArray(I)[Landroid/net/metrics/IpReachabilityEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
