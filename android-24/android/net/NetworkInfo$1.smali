.class final Landroid/net/NetworkInfo$1;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkInfo;
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
        "Landroid/net/NetworkInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v1

    #@6
    .line 469
    .local v1, "netType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v2

    #@a
    .line 470
    .local v2, "subtype":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    .line 471
    .local v4, "typeName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 472
    .local v3, "subtypeName":Ljava/lang/String;
    new-instance v0, Landroid/net/NetworkInfo;

    #@14
    invoke-direct {v0, v1, v2, v4, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    #@17
    .line 473
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v5}, Landroid/net/NetworkInfo$State;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$State;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set7(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    #@22
    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-static {v5}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    #@29
    move-result-object v5

    #@2a
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set0(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    #@2d
    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_0

    #@33
    move v5, v6

    #@34
    :goto_0
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set3(Landroid/net/NetworkInfo;Z)Z

    #@37
    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_1

    #@3d
    move v5, v6

    #@3e
    :goto_1
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set2(Landroid/net/NetworkInfo;Z)Z

    #@41
    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v5

    #@45
    if-eqz v5, :cond_2

    #@47
    move v5, v6

    #@48
    :goto_2
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set5(Landroid/net/NetworkInfo;Z)Z

    #@4b
    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4e
    move-result v5

    #@4f
    if-eqz v5, :cond_3

    #@51
    :goto_3
    invoke-static {v0, v6}, Landroid/net/NetworkInfo;->-set4(Landroid/net/NetworkInfo;Z)Z

    #@54
    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set6(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-static {v0, v5}, Landroid/net/NetworkInfo;->-set1(Landroid/net/NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    #@62
    .line 481
    return-object v0

    #@63
    :cond_0
    move v5, v7

    #@64
    .line 475
    goto :goto_0

    #@65
    :cond_1
    move v5, v7

    #@66
    .line 476
    goto :goto_1

    #@67
    :cond_2
    move v5, v7

    #@68
    .line 477
    goto :goto_2

    #@69
    :cond_3
    move v6, v7

    #@6a
    .line 478
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 467
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 486
    new-array v0, p1, [Landroid/net/NetworkInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 485
    invoke-virtual {p0, p1}, Landroid/net/NetworkInfo$1;->newArray(I)[Landroid/net/NetworkInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
