.class public final Landroid/provider/BrowserContract$Searches;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Searches"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/searches"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/searches"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 470
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "searches"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 464
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
