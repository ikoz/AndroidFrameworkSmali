.class final Landroid/nfc/TransceiveResult$1;
.super Ljava/lang/Object;
.source "TransceiveResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/TransceiveResult;
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
        "Landroid/nfc/TransceiveResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 77
    .local v2, "result":I
    if-nez v2, :cond_0

    #@6
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v1

    #@a
    .line 79
    .local v1, "responseLength":I
    new-array v0, v1, [B

    #@c
    .line 80
    .local v0, "responseData":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@f
    .line 84
    .end local v0    # "responseData":[B
    .end local v1    # "responseLength":I
    :goto_0
    new-instance v3, Landroid/nfc/TransceiveResult;

    #@11
    invoke-direct {v3, v2, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    #@14
    return-object v3

    #@15
    .line 82
    :cond_0
    const/4 v0, 0x0

    #@16
    .local v0, "responseData":[B
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 73
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/TransceiveResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/TransceiveResult;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 89
    new-array v0, p1, [Landroid/nfc/TransceiveResult;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/nfc/TransceiveResult$1;->newArray(I)[Landroid/nfc/TransceiveResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
