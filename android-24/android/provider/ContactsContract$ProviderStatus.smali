.class public final Landroid/provider/ContactsContract$ProviderStatus;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderStatus"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/provider_status"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_BUSY:I = 0x1

.field public static final STATUS_EMPTY:I = 0x2

.field public static final STATUS_NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 8113
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    const-string/jumbo v1, "provider_status"

    #@5
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    .line 8112
    sput-object v0, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 8100
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
