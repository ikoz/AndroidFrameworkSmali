.class final Lcom/android/internal/telephony/cat/Tone$1;
.super Ljava/lang/Object;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Tone;
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
        "Lcom/android/internal/telephony/cat/Tone;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/Tone;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 186
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->values()[Lcom/android/internal/telephony/cat/Tone;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    aget-object v0, v0, v1

    #@a
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/Tone$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/Tone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/cat/Tone;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 191
    new-array v0, p1, [Lcom/android/internal/telephony/cat/Tone;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/Tone$1;->newArray(I)[Lcom/android/internal/telephony/cat/Tone;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
