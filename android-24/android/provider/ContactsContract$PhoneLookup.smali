.class public final Landroid/provider/ContactsContract$PhoneLookup;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$PhoneLookupColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneLookup"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_lookup"

.field public static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final QUERY_PARAMETER_SIP_ADDRESS:Ljava/lang/String; = "sip"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 5167
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@2
    .line 5168
    const-string/jumbo v1, "phone_lookup"

    #@5
    .line 5167
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@b
    .line 5216
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@d
    .line 5217
    const-string/jumbo v1, "phone_lookup_enterprise"

    #@10
    .line 5216
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    #@16
    .line 5152
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
