.class final Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
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
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v5

    #@4
    .line 335
    .local v5, "type":I
    if-nez v5, :cond_0

    #@6
    .line 336
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    #@9
    move-result-object v6

    #@a
    return-object v6

    #@b
    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v4

    #@f
    .line 340
    .local v4, "systemIconResourceId":I
    if-eqz v4, :cond_1

    #@11
    .line 341
    new-instance v3, Landroid/view/PointerIcon;

    #@13
    const/4 v6, 0x0

    #@14
    invoke-direct {v3, v5, v6}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon;)V

    #@17
    .line 342
    .local v3, "icon":Landroid/view/PointerIcon;
    invoke-static {v3, v4}, Landroid/view/PointerIcon;->-set0(Landroid/view/PointerIcon;I)I

    #@1a
    .line 343
    return-object v3

    #@1b
    .line 346
    .end local v3    # "icon":Landroid/view/PointerIcon;
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/graphics/Bitmap;

    #@23
    .line 347
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@26
    move-result v1

    #@27
    .line 348
    .local v1, "hotSpotX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@2a
    move-result v2

    #@2b
    .line 349
    .local v2, "hotSpotY":F
    invoke-static {v0, v1, v2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    #@2e
    move-result-object v6

    #@2f
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 333
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/PointerIcon;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 353
    new-array v0, p1, [Landroid/view/PointerIcon;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 352
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
