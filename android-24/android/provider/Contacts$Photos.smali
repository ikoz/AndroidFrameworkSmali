.class public final Landroid/provider/Contacts$Photos;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PhotosColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Photos"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "photo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "person ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1878
    const-string/jumbo v0, "content://contacts/photos"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1867
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
