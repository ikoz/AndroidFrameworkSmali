.class final Landroid/net/NetworkStats$1;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
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
        "Landroid/net/NetworkStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 863
    new-instance v0, Landroid/net/NetworkStats;

    #@2
    invoke-direct {v0, p1}, Landroid/net/NetworkStats;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 862
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkStats;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 868
    new-array v0, p1, [Landroid/net/NetworkStats;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 867
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats$1;->newArray(I)[Landroid/net/NetworkStats;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
