.class final Landroid/location/GpsNavigationMessageEvent$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessageEvent;
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
        "Landroid/location/GpsNavigationMessageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/location/GpsNavigationMessageEvent$1;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 92
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/location/GpsNavigationMessage;

    #@e
    .line 93
    .local v1, "navigationMessage":Landroid/location/GpsNavigationMessage;
    new-instance v2, Landroid/location/GpsNavigationMessageEvent;

    #@10
    invoke-direct {v2, v1}, Landroid/location/GpsNavigationMessageEvent;-><init>(Landroid/location/GpsNavigationMessage;)V

    #@13
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessageEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 98
    new-array v0, p1, [Landroid/location/GpsNavigationMessageEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 97
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->newArray(I)[Landroid/location/GpsNavigationMessageEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method