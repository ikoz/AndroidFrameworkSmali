.class final Landroid/content/pm/PackageInstaller$SessionInfo$1;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$SessionInfo;
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
        "Landroid/content/pm/PackageInstaller$SessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1247
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInstaller$SessionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/PackageInstaller$SessionInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1252
    new-array v0, p1, [Landroid/content/pm/PackageInstaller$SessionInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1251
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$SessionInfo$1;->newArray(I)[Landroid/content/pm/PackageInstaller$SessionInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
