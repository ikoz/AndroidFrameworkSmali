.class final Landroid/net/NetworkRequest$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
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
        "Landroid/net/NetworkRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 288
    const/4 v5, 0x0

    #@1
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroid/net/NetworkCapabilities;

    #@7
    .line 289
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    .line 290
    .local v0, "legacyType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    .line 291
    .local v2, "requestId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    invoke-static {v5}, Landroid/net/NetworkRequest$Type;->valueOf(Ljava/lang/String;)Landroid/net/NetworkRequest$Type;

    #@16
    move-result-object v4

    #@17
    .line 292
    .local v4, "type":Landroid/net/NetworkRequest$Type;
    new-instance v3, Landroid/net/NetworkRequest;

    #@19
    invoke-direct {v3, v1, v0, v2, v4}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    #@1c
    .line 293
    .local v3, "result":Landroid/net/NetworkRequest;
    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 287
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkRequest;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 296
    new-array v0, p1, [Landroid/net/NetworkRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest$1;->newArray(I)[Landroid/net/NetworkRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
