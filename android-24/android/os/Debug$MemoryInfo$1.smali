.class final Landroid/os/Debug$MemoryInfo$1;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug$MemoryInfo;
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
        "Landroid/os/Debug$MemoryInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Debug$MemoryInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 748
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;Landroid/os/Debug$MemoryInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 747
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Debug$MemoryInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/Debug$MemoryInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 751
    new-array v0, p1, [Landroid/os/Debug$MemoryInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 750
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo$1;->newArray(I)[Landroid/os/Debug$MemoryInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method