.class public final Landroid/provider/MediaStore$Audio$Genres;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/MediaStore$Audio$GenresColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio$Genres$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/genre"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name"

.field public static final ENTRY_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/genre"

.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1542
    const-string/jumbo v0, "internal"

    #@3
    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1541
    sput-object v0, Landroid/provider/MediaStore$Audio$Genres;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1549
    const-string/jumbo v0, "external"

    #@c
    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    .line 1548
    sput-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    #@12
    .line 1512
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getContentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "content://media/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1522
    const-string/jumbo v1, "/audio/genres"

    #@13
    .line 1521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public static getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2
    .param p0, "volumeName"    # Ljava/lang/String;
    .param p1, "audioId"    # I

    #@0
    .prologue
    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "content://media/"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1535
    const-string/jumbo v1, "/audio/media/"

    #@13
    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 1535
    const-string/jumbo v1, "/genres"

    #@1e
    .line 1534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
