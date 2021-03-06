.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$1;,
        Landroid/content/ClipData$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final MIMETYPES_TEXT_HTML:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_URILIST:[Ljava/lang/String;


# instance fields
.field final mClipDescription:Landroid/content/ClipDescription;

.field final mIcon:Landroid/graphics/Bitmap;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 154
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 155
    const-string/jumbo v1, "text/plain"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 154
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    #@b
    .line 156
    new-array v0, v3, [Ljava/lang/String;

    #@d
    .line 157
    const-string/jumbo v1, "text/html"

    #@10
    aput-object v1, v0, v2

    #@12
    .line 156
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    #@14
    .line 158
    new-array v0, v3, [Ljava/lang/String;

    #@16
    .line 159
    const-string/jumbo v1, "text/uri-list"

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 158
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@1d
    .line 160
    new-array v0, v3, [Ljava/lang/String;

    #@1f
    .line 161
    const-string/jumbo v1, "text/vnd.android.intent"

    #@22
    aput-object v1, v0, v2

    #@24
    .line 160
    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    #@26
    .line 1010
    new-instance v0, Landroid/content/ClipData$1;

    #@28
    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    #@2b
    .line 1009
    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2d
    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;)V
    .locals 2
    .param p1, "other"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 678
    iget-object v0, p1, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@5
    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@7
    .line 679
    iget-object v0, p1, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@9
    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@b
    .line 680
    new-instance v0, Ljava/util/ArrayList;

    #@d
    iget-object v1, p1, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@12
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@14
    .line 677
    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "description"    # Landroid/content/ClipDescription;
    .param p2, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 662
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@6
    .line 663
    if-nez p2, :cond_0

    #@8
    .line 664
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "item is null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 666
    :cond_0
    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@13
    .line 667
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@18
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1a
    .line 668
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1f
    .line 661
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 992
    new-instance v6, Landroid/content/ClipDescription;

    #@5
    invoke-direct {v6, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    #@8
    iput-object v6, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@a
    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 994
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    #@12
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Landroid/graphics/Bitmap;

    #@18
    iput-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@1a
    .line 998
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    #@1c
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@1f
    iput-object v6, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    .line 1000
    .local v0, "N":I
    const/4 v2, 0x0

    #@26
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    #@28
    .line 1001
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Ljava/lang/CharSequence;

    #@30
    .line 1002
    .local v4, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1003
    .local v1, "htmlText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_1

    #@3a
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3c
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    check-cast v3, Landroid/content/Intent;

    #@42
    .line 1004
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v6

    #@46
    if-eqz v6, :cond_2

    #@48
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4a
    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4d
    move-result-object v5

    #@4e
    check-cast v5, Landroid/net/Uri;

    #@50
    .line 1005
    :goto_3
    iget-object v6, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@52
    new-instance v7, Landroid/content/ClipData$Item;

    #@54
    invoke-direct {v7, v4, v1, v3, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@57
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 1000
    add-int/lit8 v2, v2, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 996
    .end local v0    # "N":I
    .end local v1    # "htmlText":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    :cond_0
    const/4 v6, 0x0

    #@5e
    iput-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@60
    goto :goto_0

    #@61
    .line 1003
    .restart local v0    # "N":I
    .restart local v1    # "htmlText":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    #@62
    .local v3, "intent":Landroid/content/Intent;
    goto :goto_2

    #@63
    .line 1004
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x0

    #@64
    .local v5, "uri":Landroid/net/Uri;
    goto :goto_3

    #@65
    .line 991
    .end local v1    # "htmlText":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 646
    new-instance v0, Landroid/content/ClipDescription;

    #@6
    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    #@9
    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@b
    .line 647
    if-nez p3, :cond_0

    #@d
    .line 648
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "item is null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 650
    :cond_0
    iput-object v1, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@18
    .line 651
    new-instance v0, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1f
    .line 652
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 645
    return-void
.end method

.method public static newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "htmlText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 708
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    #@5
    .line 709
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_HTML:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 721
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    #@5
    .line 722
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 692
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    #@5
    .line 693
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 772
    new-instance v0, Landroid/content/ClipData$Item;

    #@2
    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@5
    .line 773
    .local v0, "item":Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    #@7
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@9
    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c
    return-object v1
.end method

.method public static newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 738
    new-instance v0, Landroid/content/ClipData$Item;

    #@4
    invoke-direct {v0, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@7
    .line 739
    .local v0, "item":Landroid/content/ClipData$Item;
    const/4 v1, 0x0

    #@8
    .line 740
    .local v1, "mimeTypes":[Ljava/lang/String;
    const-string/jumbo v4, "content"

    #@b
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 741
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 742
    .local v2, "realType":Ljava/lang/String;
    const-string/jumbo v4, "*/*"

    #@1c
    invoke-virtual {p0, p2, v4}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 743
    .local v1, "mimeTypes":[Ljava/lang/String;
    if-eqz v2, :cond_0

    #@22
    .line 744
    if-nez v1, :cond_2

    #@24
    .line 745
    new-array v1, v7, [Ljava/lang/String;

    #@26
    .end local v1    # "mimeTypes":[Ljava/lang/String;
    aput-object v2, v1, v6

    #@28
    .line 754
    .end local v2    # "realType":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@2a
    .line 755
    sget-object v1, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    #@2c
    .line 757
    :cond_1
    new-instance v4, Landroid/content/ClipData;

    #@2e
    invoke-direct {v4, p1, v1, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@31
    return-object v4

    #@32
    .line 747
    .restart local v1    # "mimeTypes":[Ljava/lang/String;
    .restart local v2    # "realType":Ljava/lang/String;
    :cond_2
    array-length v4, v1

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    new-array v3, v4, [Ljava/lang/String;

    #@37
    .line 748
    .local v3, "tmp":[Ljava/lang/String;
    aput-object v2, v3, v6

    #@39
    .line 749
    array-length v4, v1

    #@3a
    invoke-static {v1, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 750
    move-object v1, v3

    #@3e
    goto :goto_0
.end method


# virtual methods
.method public addItem(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    #@0
    .prologue
    .line 793
    if-nez p1, :cond_0

    #@2
    .line 794
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "item is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 796
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 792
    return-void
.end method

.method public collectUris(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 937
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    if-ge v0, v3, :cond_3

    #@9
    .line 938
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@c
    move-result-object v2

    #@d
    .line 940
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@10
    move-result-object v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 941
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@16
    move-result-object v3

    #@17
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    .line 944
    :cond_0
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@1d
    move-result-object v1

    #@1e
    .line 945
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    #@20
    .line 946
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@23
    move-result-object v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 947
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 949
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@30
    move-result-object v3

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 950
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3, p1}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    #@3a
    .line 937
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 936
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 958
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public fixUris(I)V
    .locals 4
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 850
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 851
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@9
    .line 852
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/content/ClipData$Item;

    #@11
    .line 853
    .local v1, "item":Landroid/content/ClipData$Item;
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 854
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v3, p1}, Landroid/content/Intent;->fixUris(I)V

    #@1a
    .line 856
    :cond_0
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    .line 857
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@20
    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@23
    move-result-object v3

    #@24
    iput-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@26
    .line 851
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 849
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public fixUrisLight(I)V
    .locals 6
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 867
    iget-object v4, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    .line 868
    .local v3, "size":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@9
    .line 869
    iget-object v4, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/content/ClipData$Item;

    #@11
    .line 870
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 871
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1a
    move-result-object v0

    #@1b
    .line 872
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@1d
    .line 873
    iget-object v4, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@1f
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@22
    move-result-object v5

    #@23
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@26
    .line 876
    .end local v0    # "data":Landroid/net/Uri;
    :cond_0
    iget-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 877
    iget-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@2c
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@2f
    move-result-object v4

    #@30
    iput-object v4, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@32
    .line 868
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 866
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    #@0
    .prologue
    .line 781
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@2
    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getItemAt(I)Landroid/content/ClipData$Item;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/ClipData$Item;

    #@8
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public prepareToEnterProcess()V
    .locals 4

    #@0
    .prologue
    .line 839
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 840
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 841
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/content/ClipData$Item;

    #@11
    .line 842
    .local v1, "item":Landroid/content/ClipData$Item;
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 843
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v3}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@1a
    .line 840
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 838
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_1
    return-void
.end method

.method public prepareToLeaveProcess(Z)V
    .locals 5
    .param p1, "leavingPackage"    # Z

    #@0
    .prologue
    .line 825
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 826
    .local v2, "size":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@9
    .line 827
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/content/ClipData$Item;

    #@11
    .line 828
    .local v1, "item":Landroid/content/ClipData$Item;
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 829
    iget-object v3, v1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@17
    invoke-virtual {v3, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    #@1a
    .line 831
    :cond_0
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@1c
    if-eqz v3, :cond_1

    #@1e
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_1

    #@24
    if-eqz p1, :cond_1

    #@26
    .line 832
    iget-object v3, v1, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@28
    const-string/jumbo v4, "ClipData.Item.getUri()"

    #@2b
    invoke-virtual {v3, v4}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@2e
    .line 826
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 824
    .end local v1    # "item":Landroid/content/ClipData$Item;
    :cond_2
    return-void
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/16 v3, 0x20

    #@2
    .line 896
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@4
    if-eqz v2, :cond_4

    #@6
    .line 897
    iget-object v2, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@8
    invoke-virtual {v2, p1}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_3

    #@e
    const/4 v0, 0x0

    #@f
    .line 901
    .local v0, "first":Z
    :goto_0
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 902
    if-nez v0, :cond_0

    #@15
    .line 903
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 905
    :cond_0
    const/4 v0, 0x0

    #@19
    .line 906
    const-string/jumbo v2, "I:"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 907
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@21
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    #@24
    move-result v2

    #@25
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    .line 908
    const/16 v2, 0x78

    #@2a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 909
    iget-object v2, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@2f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@32
    move-result v2

    #@33
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    .line 911
    :cond_1
    const/4 v1, 0x0

    #@37
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v2

    #@3d
    if-ge v1, v2, :cond_5

    #@3f
    .line 912
    if-nez v0, :cond_2

    #@41
    .line 913
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    .line 915
    :cond_2
    const/4 v0, 0x0

    #@45
    .line 916
    const/16 v2, 0x7b

    #@47
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 917
    iget-object v2, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v2

    #@50
    check-cast v2, Landroid/content/ClipData$Item;

    #@52
    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    #@55
    .line 918
    const/16 v2, 0x7d

    #@57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    .line 911
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 897
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v0, 0x1

    #@5e
    .restart local v0    # "first":Z
    goto :goto_0

    #@5f
    .line 899
    .end local v0    # "first":Z
    :cond_4
    const/4 v0, 0x1

    #@60
    .restart local v0    # "first":Z
    goto :goto_0

    #@61
    .line 894
    .restart local v1    # "i":I
    :cond_5
    return-void
.end method

.method public toShortStringShortItems(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "first"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 924
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_1

    #@9
    .line 925
    if-nez p2, :cond_0

    #@b
    .line 926
    const/16 v0, 0x20

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    .line 928
    :cond_0
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/content/ClipData$Item;

    #@18
    invoke-virtual {v0, p1}, Landroid/content/ClipData$Item;->toShortString(Ljava/lang/StringBuilder;)V

    #@1b
    .line 929
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v0

    #@21
    const/4 v1, 0x1

    #@22
    if-le v0, v1, :cond_1

    #@24
    .line 930
    const-string/jumbo v0, " ..."

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 923
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 886
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ClipData { "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 887
    invoke-virtual {p0, v0}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    #@10
    .line 888
    const-string/jumbo v1, " }"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 963
    iget-object v3, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    #@4
    invoke-virtual {v3, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 964
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 965
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 966
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    #@10
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    #@13
    .line 970
    :goto_0
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    .line 971
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 972
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    #@1f
    .line 973
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/content/ClipData$Item;

    #@27
    .line 974
    .local v2, "item":Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    #@29
    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2c
    .line 975
    iget-object v3, v2, Landroid/content/ClipData$Item;->mHtmlText:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    .line 976
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@33
    if-eqz v3, :cond_1

    #@35
    .line 977
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 978
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    #@3a
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3d
    .line 982
    :goto_2
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 983
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@44
    .line 984
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    #@46
    invoke-virtual {v3, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@49
    .line 972
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 968
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_0

    #@50
    .line 980
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v2    # "item":Landroid/content/ClipData$Item;
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    goto :goto_2

    #@54
    .line 986
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    goto :goto_3

    #@58
    .line 962
    .end local v2    # "item":Landroid/content/ClipData$Item;
    :cond_3
    return-void
.end method
