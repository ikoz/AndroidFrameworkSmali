.class final Landroid/telecom/ParcelableCallAnalytics$1;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics;
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
        "Landroid/telecom/ParcelableCallAnalytics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics;

    #@2
    invoke-direct {v0, p1}, Landroid/telecom/ParcelableCallAnalytics;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCallAnalytics;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 54
    new-array v0, p1, [Landroid/telecom/ParcelableCallAnalytics;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$1;->newArray(I)[Landroid/telecom/ParcelableCallAnalytics;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
