.class final Landroid/net/Network$1;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Network;
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
        "Landroid/net/Network;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 401
    .local v0, "netId":I
    new-instance v1, Landroid/net/Network;

    #@6
    invoke-direct {v1, v0}, Landroid/net/Network;-><init>(I)V

    #@9
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 398
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Network;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/Network;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 405
    new-array v0, p1, [Landroid/net/Network;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 404
    invoke-virtual {p0, p1}, Landroid/net/Network$1;->newArray(I)[Landroid/net/Network;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
