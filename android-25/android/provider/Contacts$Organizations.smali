.class public final Landroid/provider/Contacts$Organizations;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$OrganizationColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Organizations"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_DIRECTORY:Ljava/lang/String; = "organizations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "company, title, isprimary ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1787
    const-string/jumbo v0, "content://contacts/organizations"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 1786
    sput-object v0, Landroid/provider/Contacts$Organizations;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 1751
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1763
    const-string/jumbo v0, ""

    #@4
    .line 1765
    .local v0, "display":Ljava/lang/CharSequence;
    if-eqz p1, :cond_1

    #@6
    .line 1766
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v3

    #@a
    .line 1767
    const v4, 0x1070002

    #@d
    .line 1766
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@10
    move-result-object v2

    #@11
    .line 1769
    .local v2, "labels":[Ljava/lang/CharSequence;
    add-int/lit8 v3, p1, -0x1

    #@13
    :try_start_0
    aget-object v0, v2, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 1778
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v0

    #@16
    .line 1770
    .restart local v2    # "labels":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    #@17
    .line 1771
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    aget-object v0, v2, v5

    #@19
    goto :goto_0

    #@1a
    .line 1774
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v2    # "labels":[Ljava/lang/CharSequence;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    .line 1775
    move-object v0, p2

    #@21
    goto :goto_0
.end method
