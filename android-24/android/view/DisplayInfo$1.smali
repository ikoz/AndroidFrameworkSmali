.class final Landroid/view/DisplayInfo$1;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayInfo;
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
        "Landroid/view/DisplayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 247
    new-instance v0, Landroid/view/DisplayInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;Landroid/view/DisplayInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 246
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/DisplayInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 252
    new-array v0, p1, [Landroid/view/DisplayInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 251
    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo$1;->newArray(I)[Landroid/view/DisplayInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
