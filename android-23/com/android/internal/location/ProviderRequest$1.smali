.class final Lcom/android/internal/location/ProviderRequest$1;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/ProviderRequest;
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
        "Lcom/android/internal/location/ProviderRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 50
    new-instance v2, Lcom/android/internal/location/ProviderRequest;

    #@3
    invoke-direct {v2}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    #@6
    .line 51
    .local v2, "request":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v4

    #@a
    if-ne v4, v3, :cond_0

    #@c
    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@e
    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@11
    move-result-wide v4

    #@12
    iput-wide v4, v2, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@14
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    .line 54
    .local v0, "count":I
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@1b
    .line 55
    iget-object v4, v2, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@1d
    sget-object v3, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/location/LocationRequest;

    #@25
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 54
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_1

    #@2b
    .line 51
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    const/4 v3, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 57
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/location/ProviderRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/location/ProviderRequest;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    new-array v0, p1, [Lcom/android/internal/location/ProviderRequest;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/internal/location/ProviderRequest$1;->newArray(I)[Lcom/android/internal/location/ProviderRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
