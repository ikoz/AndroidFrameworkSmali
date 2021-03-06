.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$1;,
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$MalformedMimeTypeException;
    }
.end annotation


# static fields
.field private static final ACTION_STR:Ljava/lang/String; = "action"

.field private static final AUTH_STR:Ljava/lang/String; = "auth"

.field private static final AUTO_VERIFY_STR:Ljava/lang/String; = "autoVerify"

.field private static final CAT_STR:Ljava/lang/String; = "cat"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOST_STR:Ljava/lang/String; = "host"

.field private static final LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final MATCH_CATEGORY_HOST:I = 0x300000

.field public static final MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final MATCH_CATEGORY_PATH:I = 0x500000

.field public static final MATCH_CATEGORY_PORT:I = 0x400000

.field public static final MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final NAME_STR:Ljava/lang/String; = "name"

.field public static final NO_MATCH_ACTION:I = -0x3

.field public static final NO_MATCH_CATEGORY:I = -0x4

.field public static final NO_MATCH_DATA:I = -0x2

.field public static final NO_MATCH_TYPE:I = -0x1

.field private static final PATH_STR:Ljava/lang/String; = "path"

.field private static final PORT_STR:Ljava/lang/String; = "port"

.field private static final PREFIX_STR:Ljava/lang/String; = "prefix"

.field public static final SCHEME_HTTP:Ljava/lang/String; = "http"

.field public static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static final SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final SSP_STR:Ljava/lang/String; = "ssp"

.field private static final STATE_NEED_VERIFY:I = 0x10

.field private static final STATE_NEED_VERIFY_CHECKED:I = 0x100

.field private static final STATE_VERIFIED:I = 0x1000

.field private static final STATE_VERIFY_AUTO:I = 0x1

.field public static final SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final TYPE_STR:Ljava/lang/String; = "type"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPartialTypes:Z

.field private mOrder:I

.field private mPriority:I

.field private mVerifyState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1772
    new-instance v0, Landroid/content/IntentFilter$1;

    #@2
    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    #@5
    .line 1771
    sput-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@7
    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@9
    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@b
    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@d
    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@f
    .line 275
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@11
    .line 276
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@13
    .line 381
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    #@15
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1c
    .line 380
    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 2
    .param p1, "o"    # Landroid/content/IntentFilter;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@6
    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@8
    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@a
    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@c
    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@e
    .line 275
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@10
    .line 276
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@13
    .line 428
    iget v0, p1, Landroid/content/IntentFilter;->mPriority:I

    #@15
    iput v0, p0, Landroid/content/IntentFilter;->mPriority:I

    #@17
    .line 429
    iget v0, p1, Landroid/content/IntentFilter;->mOrder:I

    #@19
    iput v0, p0, Landroid/content/IntentFilter;->mOrder:I

    #@1b
    .line 430
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    iget-object v1, p1, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@22
    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@24
    .line 431
    iget-object v0, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 432
    new-instance v0, Ljava/util/ArrayList;

    #@2a
    iget-object v1, p1, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2f
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@31
    .line 434
    :cond_0
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@33
    if-eqz v0, :cond_1

    #@35
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    #@37
    iget-object v1, p1, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@39
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3c
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@3e
    .line 437
    :cond_1
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 438
    new-instance v0, Ljava/util/ArrayList;

    #@44
    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@46
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@49
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@4b
    .line 440
    :cond_2
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@4d
    if-eqz v0, :cond_3

    #@4f
    .line 441
    new-instance v0, Ljava/util/ArrayList;

    #@51
    iget-object v1, p1, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@53
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@56
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@58
    .line 443
    :cond_3
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@5a
    if-eqz v0, :cond_4

    #@5c
    .line 444
    new-instance v0, Ljava/util/ArrayList;

    #@5e
    iget-object v1, p1, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@60
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@63
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@65
    .line 446
    :cond_4
    iget-object v0, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@67
    if-eqz v0, :cond_5

    #@69
    .line 447
    new-instance v0, Ljava/util/ArrayList;

    #@6b
    iget-object v1, p1, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@6d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@70
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@72
    .line 449
    :cond_5
    iget-boolean v0, p1, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@74
    iput-boolean v0, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@76
    .line 450
    iget v0, p1, Landroid/content/IntentFilter;->mVerifyState:I

    #@78
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@7a
    .line 427
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 270
    iput-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@8
    .line 271
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@a
    .line 272
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@c
    .line 273
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@e
    .line 274
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@10
    .line 275
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@12
    .line 276
    iput-boolean v4, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@14
    .line 1865
    new-instance v2, Ljava/util/ArrayList;

    #@16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1b
    .line 1866
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@20
    .line 1867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 1868
    new-instance v2, Ljava/util/ArrayList;

    #@28
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@2b
    iput-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2d
    .line 1869
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@32
    .line 1871
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 1872
    new-instance v2, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@3d
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@3f
    .line 1873
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@41
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@44
    .line 1875
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v2

    #@48
    if-eqz v2, :cond_2

    #@4a
    .line 1876
    new-instance v2, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4f
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@51
    .line 1877
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@53
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    #@56
    .line 1879
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v0

    #@5a
    .line 1880
    .local v0, "N":I
    if-lez v0, :cond_3

    #@5c
    .line 1881
    new-instance v2, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@61
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@63
    .line 1882
    const/4 v1, 0x0

    #@64
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@66
    .line 1883
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@68
    new-instance v5, Landroid/os/PatternMatcher;

    #@6a
    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    #@6d
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 1882
    add-int/lit8 v1, v1, 0x1

    #@72
    goto :goto_0

    #@73
    .line 1886
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v0

    #@77
    .line 1887
    if-lez v0, :cond_4

    #@79
    .line 1888
    new-instance v2, Ljava/util/ArrayList;

    #@7b
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@7e
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@80
    .line 1889
    const/4 v1, 0x0

    #@81
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    #@83
    .line 1890
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@85
    new-instance v5, Landroid/content/IntentFilter$AuthorityEntry;

    #@87
    invoke-direct {v5, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    #@8a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8d
    .line 1889
    add-int/lit8 v1, v1, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 1893
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@93
    move-result v0

    #@94
    .line 1894
    if-lez v0, :cond_5

    #@96
    .line 1895
    new-instance v2, Ljava/util/ArrayList;

    #@98
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9b
    iput-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@9d
    .line 1896
    const/4 v1, 0x0

    #@9e
    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_5

    #@a0
    .line 1897
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@a2
    new-instance v5, Landroid/os/PatternMatcher;

    #@a4
    invoke-direct {v5, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    #@a7
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@aa
    .line 1896
    add-int/lit8 v1, v1, 0x1

    #@ac
    goto :goto_2

    #@ad
    .line 1900
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b0
    move-result v2

    #@b1
    iput v2, p0, Landroid/content/IntentFilter;->mPriority:I

    #@b3
    .line 1901
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b6
    move-result v2

    #@b7
    if-lez v2, :cond_6

    #@b9
    move v2, v3

    #@ba
    :goto_3
    iput-boolean v2, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@bc
    .line 1902
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@bf
    move-result v2

    #@c0
    if-lez v2, :cond_7

    #@c2
    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    #@c5
    .line 1864
    return-void

    #@c6
    :cond_6
    move v2, v4

    #@c7
    .line 1901
    goto :goto_3

    #@c8
    :cond_7
    move v3, v4

    #@c9
    .line 1902
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@7
    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@9
    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@b
    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@d
    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@f
    .line 275
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@11
    .line 276
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@13
    .line 393
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    #@15
    .line 394
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1c
    .line 395
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 392
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 270
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@7
    .line 271
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@9
    .line 272
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@b
    .line 273
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@d
    .line 274
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@f
    .line 275
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@11
    .line 276
    iput-boolean v1, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@13
    .line 416
    iput v1, p0, Landroid/content/IntentFilter;->mPriority:I

    #@15
    .line 417
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@1c
    .line 418
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@1f
    .line 419
    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    #@22
    .line 415
    return-void
.end method

.method private static addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 300
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    #@4
    move-result v2

    #@5
    if-ltz v2, :cond_0

    #@7
    return-object p0

    #@8
    .line 301
    :cond_0
    if-nez p0, :cond_1

    #@a
    .line 302
    const/4 v2, 0x2

    #@b
    new-array p0, v2, [Ljava/lang/String;

    #@d
    .line 303
    aput-object p1, p0, v3

    #@f
    .line 304
    const/4 v2, 0x1

    #@10
    aput v2, p2, p3

    #@12
    .line 305
    return-object p0

    #@13
    .line 307
    :cond_1
    aget v0, p2, p3

    #@15
    .line 308
    .local v0, "N":I
    array-length v2, p0

    #@16
    if-ge v0, v2, :cond_2

    #@18
    .line 309
    aput-object p1, p0, v0

    #@1a
    .line 310
    add-int/lit8 v2, v0, 0x1

    #@1c
    aput v2, p2, p3

    #@1e
    .line 311
    return-object p0

    #@1f
    .line 314
    :cond_2
    mul-int/lit8 v2, v0, 0x3

    #@21
    div-int/lit8 v2, v2, 0x2

    #@23
    add-int/lit8 v2, v2, 0x2

    #@25
    new-array v1, v2, [Ljava/lang/String;

    #@27
    .line 315
    .local v1, "newSet":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2a
    .line 316
    move-object p0, v1

    #@2b
    .line 317
    aput-object p1, v1, v0

    #@2d
    .line 318
    add-int/lit8 v2, v0, 0x1

    #@2f
    aput v2, p2, p3

    #@31
    .line 319
    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "dataType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 371
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    #@2
    invoke-direct {v1, p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 372
    :catch_0
    move-exception v0

    #@7
    .line 373
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "Bad MIME type"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method private final findMimeType(Ljava/lang/String;)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1906
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@4
    .line 1908
    .local v3, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@6
    .line 1909
    return v6

    #@7
    .line 1912
    :cond_0
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_1

    #@d
    .line 1913
    return v7

    #@e
    .line 1917
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v4

    #@12
    .line 1918
    .local v4, "typeLength":I
    const/4 v8, 0x3

    #@13
    if-ne v4, v8, :cond_3

    #@15
    const-string/jumbo v8, "*/*"

    #@18
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_3

    #@1e
    .line 1919
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_2

    #@24
    :goto_0
    return v6

    #@25
    :cond_2
    move v6, v7

    #@26
    goto :goto_0

    #@27
    .line 1923
    :cond_3
    iget-boolean v8, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@29
    if-eqz v8, :cond_4

    #@2b
    const-string/jumbo v8, "*"

    #@2e
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_4

    #@34
    .line 1924
    return v7

    #@35
    .line 1927
    :cond_4
    const/16 v8, 0x2f

    #@37
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@3a
    move-result v2

    #@3b
    .line 1928
    .local v2, "slashpos":I
    if-lez v2, :cond_7

    #@3d
    .line 1929
    iget-boolean v8, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@3f
    if-eqz v8, :cond_5

    #@41
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_5

    #@4b
    .line 1930
    return v7

    #@4c
    .line 1932
    :cond_5
    add-int/lit8 v8, v2, 0x2

    #@4e
    if-ne v4, v8, :cond_7

    #@50
    add-int/lit8 v8, v2, 0x1

    #@52
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v8

    #@56
    const/16 v9, 0x2a

    #@58
    if-ne v8, v9, :cond_7

    #@5a
    .line 1935
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5d
    move-result v1

    #@5e
    .line 1936
    .local v1, "numTypes":I
    const/4 v0, 0x0

    #@5f
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_7

    #@61
    .line 1937
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v5

    #@65
    check-cast v5, Ljava/lang/String;

    #@67
    .line 1938
    .local v5, "v":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    #@69
    invoke-virtual {p1, v6, v5, v6, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@6c
    move-result v8

    #@6d
    if-eqz v8, :cond_6

    #@6f
    .line 1939
    return v7

    #@70
    .line 1936
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@72
    goto :goto_1

    #@73
    .line 1945
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_7
    return v6
.end method

.method private static findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .locals 4
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 290
    if-nez p0, :cond_0

    #@3
    return v3

    #@4
    .line 291
    :cond_0
    aget v0, p2, p3

    #@6
    .line 292
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 293
    aget-object v2, p0, v1

    #@b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    return v1

    #@12
    .line 292
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 295
    :cond_2
    return v3
.end method

.method private static removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .locals 6
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 324
    invoke-static {p0, p1, p2, p3}, Landroid/content/IntentFilter;->findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    #@4
    move-result v3

    #@5
    .line 325
    .local v3, "pos":I
    if-gez v3, :cond_0

    #@7
    return-object p0

    #@8
    .line 326
    :cond_0
    aget v0, p2, p3

    #@a
    .line 327
    .local v0, "N":I
    array-length v4, p0

    #@b
    div-int/lit8 v4, v4, 0x4

    #@d
    if-le v0, v4, :cond_2

    #@f
    .line 328
    add-int/lit8 v4, v3, 0x1

    #@11
    sub-int v1, v0, v4

    #@13
    .line 329
    .local v1, "copyLen":I
    if-lez v1, :cond_1

    #@15
    .line 330
    add-int/lit8 v4, v3, 0x1

    #@17
    invoke-static {p0, v4, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    .line 332
    :cond_1
    add-int/lit8 v4, v0, -0x1

    #@1c
    const/4 v5, 0x0

    #@1d
    aput-object v5, p0, v4

    #@1f
    .line 333
    add-int/lit8 v4, v0, -0x1

    #@21
    aput v4, p2, p3

    #@23
    .line 334
    return-object p0

    #@24
    .line 337
    .end local v1    # "copyLen":I
    :cond_2
    array-length v4, p0

    #@25
    div-int/lit8 v4, v4, 0x3

    #@27
    new-array v2, v4, [Ljava/lang/String;

    #@29
    .line 338
    .local v2, "newSet":[Ljava/lang/String;
    if-lez v3, :cond_3

    #@2b
    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 339
    :cond_3
    add-int/lit8 v4, v3, 0x1

    #@30
    if-ge v4, v0, :cond_4

    #@32
    add-int/lit8 v4, v3, 0x1

    #@34
    add-int/lit8 v5, v3, 0x1

    #@36
    sub-int v5, v0, v5

    #@38
    invoke-static {p0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3b
    .line 340
    :cond_4
    return-object v2
.end method


# virtual methods
.method public final actionsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 706
    iget-object v1, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final addAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 659
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 657
    :cond_0
    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1370
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@b
    .line 1371
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1372
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 1369
    :cond_1
    return-void
.end method

.method public final addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .locals 1
    .param p1, "ent"    # Landroid/content/IntentFilter$AuthorityEntry;

    #@0
    .prologue
    .line 1069
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1070
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 1069
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@b
    .line 1071
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1068
    return-void
.end method

.method public final addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1063
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@5
    move-result-object p2

    #@6
    .line 1064
    :cond_0
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    #@8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    #@12
    .line 1062
    return-void
.end method

.method public final addDataPath(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "path"    # Landroid/os/PatternMatcher;

    #@0
    .prologue
    .line 1155
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@b
    .line 1156
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 1154
    return-void
.end method

.method public final addDataPath(Ljava/lang/String;I)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 1150
    new-instance v0, Landroid/os/PatternMatcher;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@9
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    #@c
    .line 1149
    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@b
    .line 807
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 808
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 805
    :cond_1
    return-void
.end method

.method public final addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .locals 1
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    #@0
    .prologue
    .line 975
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 976
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@b
    .line 978
    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 974
    return-void
.end method

.method public final addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "type"    # I

    #@0
    .prologue
    .line 970
    new-instance v0, Landroid/os/PatternMatcher;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    #@5
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    #@8
    .line 969
    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 730
    const/16 v3, 0x2f

    #@3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 731
    .local v0, "slashpos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    .line 732
    .local v2, "typelen":I
    if-lez v0, :cond_4

    #@d
    add-int/lit8 v3, v0, 0x2

    #@f
    if-lt v2, v3, :cond_4

    #@11
    .line 733
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@13
    if-nez v3, :cond_0

    #@15
    new-instance v3, Ljava/util/ArrayList;

    #@17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@1c
    .line 734
    :cond_0
    add-int/lit8 v3, v0, 0x2

    #@1e
    if-ne v2, v3, :cond_3

    #@20
    add-int/lit8 v3, v0, 0x1

    #@22
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@25
    move-result v3

    #@26
    const/16 v4, 0x2a

    #@28
    if-ne v3, v4, :cond_3

    #@2a
    .line 735
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 736
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-nez v3, :cond_1

    #@36
    .line 737
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    .line 739
    :cond_1
    const/4 v3, 0x1

    #@40
    iput-boolean v3, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@42
    .line 745
    .end local v1    # "str":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    #@43
    .line 741
    :cond_3
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@48
    move-result v3

    #@49
    if-nez v3, :cond_2

    #@4b
    .line 742
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    goto :goto_0

    #@55
    .line 748
    :cond_4
    new-instance v3, Landroid/content/IntentFilter$MalformedMimeTypeException;

    #@57
    invoke-direct {v3, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v3
.end method

.method public final authoritiesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1120
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final categoriesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1407
    iget-object v1, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final countActions()I
    .locals 1

    #@0
    .prologue
    .line 667
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final countCategories()I
    .locals 1

    #@0
    .prologue
    .line 1380
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final countDataAuthorities()I
    .locals 1

    #@0
    .prologue
    .line 1078
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final countDataPaths()I
    .locals 1

    #@0
    .prologue
    .line 1163
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final countDataSchemeSpecificParts()I
    .locals 1

    #@0
    .prologue
    .line 985
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final countDataSchemes()I
    .locals 1

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final countDataTypes()I
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public debugCheck()Z
    .locals 1

    #@0
    .prologue
    .line 1845
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1783
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8
    .param p1, "du"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1689
    new-instance v5, Ljava/lang/StringBuilder;

    #@3
    const/16 v6, 0x100

    #@5
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 1690
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v6

    #@e
    if-lez v6, :cond_0

    #@10
    .line 1691
    iget-object v6, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .line 1692
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_0

    #@1c
    .line 1693
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1f
    .line 1694
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    const-string/jumbo v6, "Action: \""

    #@25
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 1695
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Ljava/lang/String;

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const-string/jumbo v6, "\""

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 1696
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 1699
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@41
    if-eqz v6, :cond_1

    #@43
    .line 1700
    iget-object v6, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object v3

    #@49
    .line 1701
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v6

    #@4d
    if-eqz v6, :cond_1

    #@4f
    .line 1702
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@52
    .line 1703
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    const-string/jumbo v6, "Category: \""

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 1704
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5e
    move-result-object v6

    #@5f
    check-cast v6, Ljava/lang/String;

    #@61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    const-string/jumbo v6, "\""

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    .line 1705
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@71
    goto :goto_1

    #@72
    .line 1708
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@74
    if-eqz v6, :cond_2

    #@76
    .line 1709
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v3

    #@7c
    .line 1710
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v6

    #@80
    if-eqz v6, :cond_2

    #@82
    .line 1711
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@85
    .line 1712
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    const-string/jumbo v6, "Scheme: \""

    #@8b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    .line 1713
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v6

    #@92
    check-cast v6, Ljava/lang/String;

    #@94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    const-string/jumbo v6, "\""

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 1714
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@a4
    goto :goto_2

    #@a5
    .line 1717
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@a7
    if-eqz v6, :cond_3

    #@a9
    .line 1718
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@ae
    move-result-object v2

    #@af
    .line 1719
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v6

    #@b3
    if-eqz v6, :cond_3

    #@b5
    .line 1720
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b8
    move-result-object v4

    #@b9
    check-cast v4, Landroid/os/PatternMatcher;

    #@bb
    .line 1721
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@be
    .line 1722
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    const-string/jumbo v6, "Ssp: \""

    #@c4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 1723
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    const-string/jumbo v6, "\""

    #@cd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    .line 1724
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v6

    #@d4
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@d7
    goto :goto_3

    #@d8
    .line 1727
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_3
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@da
    if-eqz v6, :cond_5

    #@dc
    .line 1728
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@de
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e1
    move-result-object v1

    #@e2
    .line 1729
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e5
    move-result v6

    #@e6
    if-eqz v6, :cond_5

    #@e8
    .line 1730
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@eb
    move-result-object v0

    #@ec
    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    #@ee
    .line 1731
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@f1
    .line 1732
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    const-string/jumbo v6, "Authority: \""

    #@f7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    .line 1733
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get0(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    #@fd
    move-result-object v6

    #@fe
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    const-string/jumbo v6, "\": "

    #@104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    .line 1734
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get1(Landroid/content/IntentFilter$AuthorityEntry;)I

    #@10a
    move-result v6

    #@10b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10e
    .line 1735
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->-get2(Landroid/content/IntentFilter$AuthorityEntry;)Z

    #@111
    move-result v6

    #@112
    if-eqz v6, :cond_4

    #@114
    const-string/jumbo v6, " WILD"

    #@117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    .line 1736
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v6

    #@11e
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@121
    goto :goto_4

    #@122
    .line 1739
    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_5
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@124
    if-eqz v6, :cond_6

    #@126
    .line 1740
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@128
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12b
    move-result-object v2

    #@12c
    .line 1741
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12f
    move-result v6

    #@130
    if-eqz v6, :cond_6

    #@132
    .line 1742
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@135
    move-result-object v4

    #@136
    check-cast v4, Landroid/os/PatternMatcher;

    #@138
    .line 1743
    .restart local v4    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@13b
    .line 1744
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    const-string/jumbo v6, "Path: \""

    #@141
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    .line 1745
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@147
    const-string/jumbo v6, "\""

    #@14a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    .line 1746
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v6

    #@151
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@154
    goto :goto_5

    #@155
    .line 1749
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_6
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@157
    if-eqz v6, :cond_7

    #@159
    .line 1750
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@15b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@15e
    move-result-object v3

    #@15f
    .line 1751
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@162
    move-result v6

    #@163
    if-eqz v6, :cond_7

    #@165
    .line 1752
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@168
    .line 1753
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    const-string/jumbo v6, "Type: \""

    #@16e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@171
    .line 1754
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@174
    move-result-object v6

    #@175
    check-cast v6, Ljava/lang/String;

    #@177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    const-string/jumbo v6, "\""

    #@17d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    .line 1755
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@183
    move-result-object v6

    #@184
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@187
    goto :goto_6

    #@188
    .line 1758
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    iget v6, p0, Landroid/content/IntentFilter;->mPriority:I

    #@18a
    if-nez v6, :cond_8

    #@18c
    iget-boolean v6, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@18e
    if-eqz v6, :cond_9

    #@190
    .line 1759
    :cond_8
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@193
    .line 1760
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    const-string/jumbo v6, "mPriority="

    #@199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    iget v6, p0, Landroid/content/IntentFilter;->mPriority:I

    #@19e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a1
    .line 1761
    const-string/jumbo v6, ", mHasPartialTypes="

    #@1a4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    iget-boolean v6, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@1a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1ac
    .line 1762
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1af
    move-result-object v6

    #@1b0
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1b3
    .line 1765
    :cond_9
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@1b6
    .line 1766
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    const-string/jumbo v6, "AutoVerify="

    #@1bc
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bf
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    #@1c2
    move-result v6

    #@1c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c6
    .line 1767
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c9
    move-result-object v6

    #@1ca
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@1cd
    .line 1688
    return-void
.end method

.method public final getAction(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public final getAutoVerify()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 530
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public final getCategory(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1387
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public final getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1085
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    #@8
    return-object v0
.end method

.method public final getDataPath(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1170
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/PatternMatcher;

    #@8
    return-object v0
.end method

.method public final getDataScheme(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 823
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public final getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 992
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/PatternMatcher;

    #@8
    return-object v0
.end method

.method public final getDataType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 779
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public getHosts()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1967
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 1968
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    new-array v1, v1, [Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Ljava/lang/String;

    #@10
    return-object v1
.end method

.method public getHostsList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1952
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1953
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 1954
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_0

    #@b
    .line 1955
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    .line 1956
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    #@17
    .line 1957
    .local v0, "entry":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 1960
    .end local v0    # "entry":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_0
    return-object v2
.end method

.method public final getOrder()I
    .locals 1

    #@0
    .prologue
    .line 489
    iget v0, p0, Landroid/content/IntentFilter;->mOrder:I

    #@2
    return v0
.end method

.method public final getPriority()I
    .locals 1

    #@0
    .prologue
    .line 479
    iget v0, p0, Landroid/content/IntentFilter;->mPriority:I

    #@2
    return v0
.end method

.method public final handleAllWebDataURI()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 549
    const-string/jumbo v2, "android.intent.category.APP_BROWSER"

    #@5
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    #@8
    move-result v2

    #@9
    if-nez v2, :cond_0

    #@b
    .line 550
    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1

    #@11
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 549
    :cond_0
    :goto_0
    return v0

    #@18
    :cond_1
    move v0, v1

    #@19
    .line 550
    goto :goto_0
.end method

.method public final handlesWebUris(Z)Z
    .locals 6
    .param p1, "onlyWebSchemes"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 571
    const-string/jumbo v4, "android.intent.action.VIEW"

    #@4
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 572
    const-string/jumbo v4, "android.intent.category.BROWSABLE"

    #@d
    invoke-virtual {p0, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 573
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@15
    if-nez v4, :cond_1

    #@17
    .line 575
    :cond_0
    return v5

    #@18
    .line 574
    :cond_1
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 579
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v0

    #@26
    .line 580
    .local v0, "N":I
    const/4 v1, 0x0

    #@27
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@29
    .line 581
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Ljava/lang/String;

    #@31
    .line 583
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "http"

    #@34
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v4

    #@38
    if-nez v4, :cond_2

    #@3a
    const-string/jumbo v4, "https"

    #@3d
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    .line 584
    :goto_1
    if-eqz p1, :cond_3

    #@43
    .line 588
    if-nez v2, :cond_4

    #@45
    .line 589
    return v5

    #@46
    .line 583
    :cond_2
    const/4 v2, 0x1

    #@47
    .local v2, "isWebScheme":Z
    goto :goto_1

    #@48
    .line 594
    .end local v2    # "isWebScheme":Z
    :cond_3
    if-eqz v2, :cond_4

    #@4a
    .line 595
    const/4 v4, 0x1

    #@4b
    return v4

    #@4c
    .line 580
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 603
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_5
    return p1
.end method

.method public final hasAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 686
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1398
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 4
    .param p1, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1104
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1105
    return v3

    #@6
    .line 1107
    :cond_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1108
    .local v1, "numDataAuthorities":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1109
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    #@17
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 1110
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 1108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1113
    :cond_2
    return v3
.end method

.method public final hasDataAuthority(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1099
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    #@4
    move-result v1

    #@5
    if-ltz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public final hasDataPath(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "path"    # Landroid/os/PatternMatcher;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1200
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1201
    return v5

    #@6
    .line 1203
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1204
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1205
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/PatternMatcher;

    #@17
    .line 1206
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    #@1e
    move-result v4

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 1207
    const/4 v3, 0x1

    #@30
    return v3

    #@31
    .line 1204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1210
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v5
.end method

.method public final hasDataPath(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1185
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1186
    return v4

    #@6
    .line 1188
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1189
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1190
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/PatternMatcher;

    #@17
    .line 1191
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1192
    const/4 v3, 0x1

    #@1e
    return v3

    #@1f
    .line 1189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1195
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v4
.end method

.method public final hasDataScheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 836
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .locals 6
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1021
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1022
    return v5

    #@6
    .line 1024
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1025
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1026
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/PatternMatcher;

    #@17
    .line 1027
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    #@1e
    move-result v4

    #@1f
    if-ne v3, v4, :cond_1

    #@21
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_1

    #@2f
    .line 1028
    const/4 v3, 0x1

    #@30
    return v3

    #@31
    .line 1025
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 1031
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v5
.end method

.method public final hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1006
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 1007
    return v4

    #@6
    .line 1009
    :cond_0
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v1

    #@c
    .line 1010
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@f
    .line 1011
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/PatternMatcher;

    #@17
    .line 1012
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 1013
    const/4 v3, 0x1

    #@1e
    return v3

    #@1f
    .line 1010
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1016
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_2
    return v4
.end method

.method public final hasDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 760
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public final hasExactDataType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 765
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public final isVerified()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 631
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@3
    and-int/lit16 v1, v1, 0x100

    #@5
    const/16 v2, 0x100

    #@7
    if-ne v1, v2, :cond_1

    #@9
    .line 632
    iget v1, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@b
    and-int/lit8 v1, v1, 0x10

    #@d
    const/16 v2, 0x10

    #@f
    if-ne v1, v2, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0

    #@13
    .line 634
    :cond_1
    return v0
.end method

.method public final match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolve"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1462
    if-eqz p3, :cond_0

    #@2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 1463
    .local v2, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 1464
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@15
    move-result-object v5

    #@16
    move-object v0, p0

    #@17
    move-object v6, p4

    #@18
    .line 1463
    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    return v0

    #@1d
    .line 1462
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .restart local v2    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public final match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 1497
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 1503
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    #@b
    move-result v1

    #@c
    .line 1504
    .local v1, "dataMatch":I
    if-gez v1, :cond_2

    #@e
    .line 1515
    return v1

    #@f
    .line 1500
    .end local v1    # "dataMatch":I
    :cond_1
    const/4 v2, -0x3

    #@10
    return v2

    #@11
    .line 1518
    .restart local v1    # "dataMatch":I
    :cond_2
    invoke-virtual {p0, p5}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1519
    .local v0, "categoryMismatch":Ljava/lang/String;
    if-eqz v0, :cond_3

    #@17
    .line 1523
    const/4 v2, -0x4

    #@18
    return v2

    #@19
    .line 1534
    :cond_3
    return v1
.end method

.method public final matchAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 698
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@1
    .line 1422
    if-nez p1, :cond_0

    #@3
    .line 1423
    return-object v2

    #@4
    .line 1426
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .line 1428
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 1429
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/lang/String;

    #@18
    :cond_1
    return-object v2

    #@19
    .line 1432
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_3

    #@1f
    .line 1433
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/String;

    #@25
    .line 1434
    .local v0, "category":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_2

    #@2d
    .line 1435
    return-object v0

    #@2e
    .line 1439
    .end local v0    # "category":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public final matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v9, -0x1

    #@1
    const/4 v7, -0x2

    #@2
    .line 1284
    iget-object v6, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@4
    .line 1285
    .local v6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@6
    .line 1287
    .local v5, "schemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v2, 0x100000

    #@8
    .line 1289
    .local v2, "match":I
    if-nez v6, :cond_1

    #@a
    if-nez v5, :cond_1

    #@c
    .line 1290
    if-nez p1, :cond_0

    #@e
    if-nez p3, :cond_0

    #@10
    .line 1291
    const v7, 0x108000

    #@13
    .line 1290
    :cond_0
    return v7

    #@14
    .line 1294
    :cond_1
    if-eqz v5, :cond_a

    #@16
    .line 1295
    if-eqz p2, :cond_4

    #@18
    .end local p2    # "scheme":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v8

    #@1c
    if-eqz v8, :cond_5

    #@1e
    .line 1296
    const/high16 v2, 0x200000

    #@20
    .line 1301
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@22
    .line 1302
    .local v4, "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-eqz v4, :cond_2

    #@24
    if-eqz p3, :cond_2

    #@26
    .line 1303
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@29
    move-result-object v8

    #@2a
    invoke-virtual {p0, v8}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;)Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_6

    #@30
    .line 1304
    const/high16 v2, 0x580000

    #@32
    .line 1306
    :cond_2
    :goto_1
    const/high16 v8, 0x580000

    #@34
    if-eq v2, v8, :cond_3

    #@36
    .line 1308
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@38
    .line 1309
    .local v1, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_3

    #@3a
    .line 1310
    invoke-virtual {p0, p3}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    #@3d
    move-result v0

    #@3e
    .line 1311
    .local v0, "authMatch":I
    if-ltz v0, :cond_9

    #@40
    .line 1312
    iget-object v3, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@42
    .line 1313
    .local v3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-nez v3, :cond_7

    #@44
    .line 1314
    move v2, v0

    #@45
    .line 1326
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_3
    :goto_2
    if-ne v2, v7, :cond_b

    #@47
    .line 1327
    return v7

    #@48
    .line 1295
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_4
    const-string/jumbo p2, ""

    #@4b
    goto :goto_0

    #@4c
    .line 1298
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_5
    return v7

    #@4d
    .line 1304
    .restart local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_6
    const/4 v2, -0x2

    #@4e
    goto :goto_1

    #@4f
    .line 1315
    .restart local v0    # "authMatch":I
    .restart local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_7
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {p0, v8}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;)Z

    #@56
    move-result v8

    #@57
    if-eqz v8, :cond_8

    #@59
    .line 1316
    const/high16 v2, 0x500000

    #@5b
    goto :goto_2

    #@5c
    .line 1318
    :cond_8
    return v7

    #@5d
    .line 1321
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_9
    return v7

    #@5e
    .line 1335
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_a
    if-eqz p2, :cond_b

    #@60
    const-string/jumbo v8, ""

    #@63
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v8

    #@67
    if-eqz v8, :cond_d

    #@69
    .line 1342
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_f

    #@6b
    .line 1343
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;->findMimeType(Ljava/lang/String;)Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_e

    #@71
    .line 1344
    const/high16 v2, 0x600000

    #@73
    .line 1356
    :cond_c
    const v7, 0x8000

    #@76
    add-int/2addr v7, v2

    #@77
    return v7

    #@78
    .line 1336
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_d
    const-string/jumbo v8, "content"

    #@7b
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v8

    #@7f
    if-nez v8, :cond_b

    #@81
    .line 1337
    const-string/jumbo v8, "file"

    #@84
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v8

    #@88
    if-nez v8, :cond_b

    #@8a
    .line 1338
    return v7

    #@8b
    .line 1346
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_e
    return v9

    #@8c
    .line 1351
    :cond_f
    if-eqz p1, :cond_c

    #@8e
    .line 1352
    return v9
.end method

.method public final matchDataAuthority(Landroid/net/Uri;)I
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v5, -0x2

    #@1
    .line 1231
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@3
    if-eqz v4, :cond_0

    #@5
    if-nez p1, :cond_1

    #@7
    .line 1232
    :cond_0
    return v5

    #@8
    .line 1234
    :cond_1
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v3

    #@e
    .line 1235
    .local v3, "numDataAuthorities":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@11
    .line 1236
    iget-object v4, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    #@19
    .line 1237
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    #@1c
    move-result v2

    #@1d
    .line 1238
    .local v2, "match":I
    if-ltz v2, :cond_2

    #@1f
    .line 1239
    return v2

    #@20
    .line 1235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1242
    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v2    # "match":I
    :cond_3
    return v5
.end method

.method public final needsVerification()Z
    .locals 1

    #@0
    .prologue
    .line 620
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public final pathsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1217
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1620
    const-string/jumbo v10, "autoVerify"

    #@3
    const/4 v11, 0x0

    #@4
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1621
    .local v0, "autoVerify":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v10

    #@c
    if-eqz v10, :cond_3

    #@e
    const/4 v10, 0x0

    #@f
    :goto_0
    invoke-virtual {p0, v10}, Landroid/content/IntentFilter;->setAutoVerify(Z)V

    #@12
    .line 1623
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@15
    move-result v4

    #@16
    .line 1625
    .local v4, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@19
    move-result v9

    #@1a
    .local v9, "type":I
    const/4 v10, 0x1

    #@1b
    if-eq v9, v10, :cond_f

    #@1d
    .line 1626
    const/4 v10, 0x3

    #@1e
    if-ne v9, v10, :cond_1

    #@20
    .line 1627
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@23
    move-result v10

    #@24
    if-le v10, v4, :cond_f

    #@26
    .line 1628
    :cond_1
    const/4 v10, 0x3

    #@27
    if-eq v9, v10, :cond_0

    #@29
    .line 1629
    const/4 v10, 0x4

    #@2a
    if-eq v9, v10, :cond_0

    #@2c
    .line 1633
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2f
    move-result-object v8

    #@30
    .line 1634
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "action"

    #@33
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v10

    #@37
    if-eqz v10, :cond_4

    #@39
    .line 1635
    const-string/jumbo v10, "name"

    #@3c
    const/4 v11, 0x0

    #@3d
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    .line 1636
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@43
    .line 1637
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@46
    .line 1684
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@49
    goto :goto_1

    #@4a
    .line 1621
    .end local v4    # "outerDepth":I
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    #@4d
    move-result v10

    #@4e
    goto :goto_0

    #@4f
    .line 1639
    .restart local v4    # "outerDepth":I
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_4
    const-string/jumbo v10, "cat"

    #@52
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v10

    #@56
    if-eqz v10, :cond_5

    #@58
    .line 1640
    const-string/jumbo v10, "name"

    #@5b
    const/4 v11, 0x0

    #@5c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    .line 1641
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@62
    .line 1642
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    #@65
    goto :goto_2

    #@66
    .line 1644
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "type"

    #@69
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c
    move-result v10

    #@6d
    if-eqz v10, :cond_6

    #@6f
    .line 1645
    const-string/jumbo v10, "name"

    #@72
    const/4 v11, 0x0

    #@73
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@76
    move-result-object v3

    #@77
    .line 1646
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@79
    .line 1648
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    goto :goto_2

    #@7d
    .line 1649
    :catch_0
    move-exception v1

    #@7e
    .local v1, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    goto :goto_2

    #@7f
    .line 1652
    .end local v1    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "scheme"

    #@82
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v10

    #@86
    if-eqz v10, :cond_7

    #@88
    .line 1653
    const-string/jumbo v10, "name"

    #@8b
    const/4 v11, 0x0

    #@8c
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v3

    #@90
    .line 1654
    .restart local v3    # "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@92
    .line 1655
    invoke-virtual {p0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    #@95
    goto :goto_2

    #@96
    .line 1657
    .end local v3    # "name":Ljava/lang/String;
    :cond_7
    const-string/jumbo v10, "ssp"

    #@99
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v10

    #@9d
    if-eqz v10, :cond_a

    #@9f
    .line 1658
    const-string/jumbo v10, "literal"

    #@a2
    const/4 v11, 0x0

    #@a3
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    .line 1659
    .local v7, "ssp":Ljava/lang/String;
    if-eqz v7, :cond_8

    #@a9
    .line 1660
    const/4 v10, 0x0

    #@aa
    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@ad
    goto :goto_2

    #@ae
    .line 1661
    :cond_8
    const-string/jumbo v10, "prefix"

    #@b1
    const/4 v11, 0x0

    #@b2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    move-result-object v7

    #@b6
    if-eqz v7, :cond_9

    #@b8
    .line 1662
    const/4 v10, 0x1

    #@b9
    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@bc
    goto :goto_2

    #@bd
    .line 1663
    :cond_9
    const-string/jumbo v10, "sglob"

    #@c0
    const/4 v11, 0x0

    #@c1
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@c4
    move-result-object v7

    #@c5
    if-eqz v7, :cond_2

    #@c7
    .line 1664
    const/4 v10, 0x2

    #@c8
    invoke-virtual {p0, v7, v10}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    #@cb
    goto/16 :goto_2

    #@cd
    .line 1666
    .end local v7    # "ssp":Ljava/lang/String;
    :cond_a
    const-string/jumbo v10, "auth"

    #@d0
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v10

    #@d4
    if-eqz v10, :cond_b

    #@d6
    .line 1667
    const-string/jumbo v10, "host"

    #@d9
    const/4 v11, 0x0

    #@da
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@dd
    move-result-object v2

    #@de
    .line 1668
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v10, "port"

    #@e1
    const/4 v11, 0x0

    #@e2
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e5
    move-result-object v6

    #@e6
    .line 1669
    .local v6, "port":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@e8
    .line 1670
    invoke-virtual {p0, v2, v6}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    #@eb
    goto/16 :goto_2

    #@ed
    .line 1672
    .end local v2    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    :cond_b
    const-string/jumbo v10, "path"

    #@f0
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v10

    #@f4
    if-eqz v10, :cond_e

    #@f6
    .line 1673
    const-string/jumbo v10, "literal"

    #@f9
    const/4 v11, 0x0

    #@fa
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@fd
    move-result-object v5

    #@fe
    .line 1674
    .local v5, "path":Ljava/lang/String;
    if-eqz v5, :cond_c

    #@100
    .line 1675
    const/4 v10, 0x0

    #@101
    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@104
    goto/16 :goto_2

    #@106
    .line 1676
    :cond_c
    const-string/jumbo v10, "prefix"

    #@109
    const/4 v11, 0x0

    #@10a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@10d
    move-result-object v5

    #@10e
    if-eqz v5, :cond_d

    #@110
    .line 1677
    const/4 v10, 0x1

    #@111
    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@114
    goto/16 :goto_2

    #@116
    .line 1678
    :cond_d
    const-string/jumbo v10, "sglob"

    #@119
    const/4 v11, 0x0

    #@11a
    invoke-interface {p1, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11d
    move-result-object v5

    #@11e
    if-eqz v5, :cond_2

    #@120
    .line 1679
    const/4 v10, 0x2

    #@121
    invoke-virtual {p0, v5, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    #@124
    goto/16 :goto_2

    #@126
    .line 1682
    .end local v5    # "path":Ljava/lang/String;
    :cond_e
    const-string/jumbo v10, "IntentFilter"

    #@129
    new-instance v11, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    const-string/jumbo v12, "Unknown tag parsing IntentFilter: "

    #@131
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v11

    #@135
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v11

    #@139
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v11

    #@13d
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@140
    goto/16 :goto_2

    #@142
    .line 1619
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public final schemeSpecificPartsIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1038
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final schemesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 843
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final setAutoVerify(Z)V
    .locals 1
    .param p1, "autoVerify"    # Z

    #@0
    .prologue
    .line 516
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@2
    and-int/lit8 v0, v0, -0x2

    #@4
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@6
    .line 517
    if-eqz p1, :cond_0

    #@8
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@a
    or-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@e
    .line 515
    :cond_0
    return-void
.end method

.method public final setOrder(I)V
    .locals 0
    .param p1, "order"    # I

    #@0
    .prologue
    .line 484
    iput p1, p0, Landroid/content/IntentFilter;->mOrder:I

    #@2
    .line 483
    return-void
.end method

.method public final setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 468
    iput p1, p0, Landroid/content/IntentFilter;->mPriority:I

    #@2
    .line 467
    return-void
.end method

.method public setVerified(Z)V
    .locals 1
    .param p1, "verified"    # Z

    #@0
    .prologue
    .line 645
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@2
    or-int/lit16 v0, v0, 0x100

    #@4
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@6
    .line 646
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@8
    and-int/lit16 v0, v0, -0x1001

    #@a
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@c
    .line 647
    if-eqz p1, :cond_0

    #@e
    iget v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@10
    or-int/lit16 v0, v0, 0x1000

    #@12
    iput v0, p0, Landroid/content/IntentFilter;->mVerifyState:I

    #@14
    .line 644
    :cond_0
    return-void
.end method

.method public final typesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 786
    iget-object v1, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1787
    iget-object v2, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@7
    .line 1788
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1789
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 1790
    iget-object v2, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@13
    .line 1794
    :goto_0
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 1795
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1796
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@1f
    .line 1800
    :goto_1
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 1801
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 1802
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@28
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@2b
    .line 1806
    :goto_2
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@2d
    if-eqz v2, :cond_3

    #@2f
    .line 1807
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v0

    #@35
    .line 1808
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1809
    const/4 v1, 0x0

    #@39
    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_4

    #@3b
    .line 1810
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    check-cast v2, Landroid/os/PatternMatcher;

    #@43
    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    #@46
    .line 1809
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_3

    #@49
    .line 1792
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    goto :goto_0

    #@4d
    .line 1798
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    goto :goto_1

    #@51
    .line 1804
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@54
    goto :goto_2

    #@55
    .line 1813
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 1815
    :cond_4
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@5a
    if-eqz v2, :cond_5

    #@5c
    .line 1816
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v0

    #@62
    .line 1817
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1818
    const/4 v1, 0x0

    #@66
    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_6

    #@68
    .line 1819
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object v2

    #@6e
    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    #@70
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    #@73
    .line 1818
    add-int/lit8 v1, v1, 0x1

    #@75
    goto :goto_4

    #@76
    .line 1822
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 1824
    :cond_6
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@7b
    if-eqz v2, :cond_7

    #@7d
    .line 1825
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v0

    #@83
    .line 1826
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 1827
    const/4 v1, 0x0

    #@87
    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_8

    #@89
    .line 1828
    iget-object v2, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v2

    #@8f
    check-cast v2, Landroid/os/PatternMatcher;

    #@91
    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    #@94
    .line 1827
    add-int/lit8 v1, v1, 0x1

    #@96
    goto :goto_5

    #@97
    .line 1831
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    .line 1833
    :cond_8
    iget v2, p0, Landroid/content/IntentFilter;->mPriority:I

    #@9c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9f
    .line 1834
    iget-boolean v2, p0, Landroid/content/IntentFilter;->mHasPartialTypes:Z

    #@a1
    if-eqz v2, :cond_9

    #@a3
    move v2, v3

    #@a4
    :goto_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@a7
    .line 1835
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    #@aa
    move-result v2

    #@ab
    if-eqz v2, :cond_a

    #@ad
    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b0
    .line 1786
    return-void

    #@b1
    :cond_9
    move v2, v4

    #@b2
    .line 1834
    goto :goto_6

    #@b3
    :cond_a
    move v3, v4

    #@b4
    .line 1835
    goto :goto_7
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1542
    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    #@4
    move-result v5

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 1543
    const-string/jumbo v5, "autoVerify"

    #@a
    const/4 v6, 0x1

    #@b
    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@12
    .line 1546
    :cond_0
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    #@15
    move-result v0

    #@16
    .line 1547
    .local v0, "N":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@19
    .line 1548
    const-string/jumbo v5, "action"

    #@1c
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1f
    .line 1549
    const-string/jumbo v6, "name"

    #@22
    iget-object v5, p0, Landroid/content/IntentFilter;->mActions:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    check-cast v5, Ljava/lang/String;

    #@2a
    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@2d
    .line 1550
    const-string/jumbo v5, "action"

    #@30
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@33
    .line 1547
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1552
    :cond_1
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    #@39
    move-result v0

    #@3a
    .line 1553
    const/4 v2, 0x0

    #@3b
    :goto_1
    if-ge v2, v0, :cond_2

    #@3d
    .line 1554
    const-string/jumbo v5, "cat"

    #@40
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@43
    .line 1555
    const-string/jumbo v6, "name"

    #@46
    iget-object v5, p0, Landroid/content/IntentFilter;->mCategories:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v5

    #@4c
    check-cast v5, Ljava/lang/String;

    #@4e
    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 1556
    const-string/jumbo v5, "cat"

    #@54
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@57
    .line 1553
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 1558
    :cond_2
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    #@5d
    move-result v0

    #@5e
    .line 1559
    const/4 v2, 0x0

    #@5f
    :goto_2
    if-ge v2, v0, :cond_4

    #@61
    .line 1560
    const-string/jumbo v5, "type"

    #@64
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@67
    .line 1561
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataTypes:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v4

    #@6d
    check-cast v4, Ljava/lang/String;

    #@6f
    .line 1562
    .local v4, "type":Ljava/lang/String;
    const/16 v5, 0x2f

    #@71
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    #@74
    move-result v5

    #@75
    if-gez v5, :cond_3

    #@77
    new-instance v5, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v5

    #@80
    const-string/jumbo v6, "/*"

    #@83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    .line 1563
    :cond_3
    const-string/jumbo v5, "name"

    #@8e
    invoke-interface {p1, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@91
    .line 1564
    const-string/jumbo v5, "type"

    #@94
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@97
    .line 1559
    add-int/lit8 v2, v2, 0x1

    #@99
    goto :goto_2

    #@9a
    .line 1566
    .end local v4    # "type":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    #@9d
    move-result v0

    #@9e
    .line 1567
    const/4 v2, 0x0

    #@9f
    :goto_3
    if-ge v2, v0, :cond_5

    #@a1
    .line 1568
    const-string/jumbo v5, "scheme"

    #@a4
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@a7
    .line 1569
    const-string/jumbo v6, "name"

    #@aa
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemes:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v5

    #@b0
    check-cast v5, Ljava/lang/String;

    #@b2
    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@b5
    .line 1570
    const-string/jumbo v5, "scheme"

    #@b8
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@bb
    .line 1567
    add-int/lit8 v2, v2, 0x1

    #@bd
    goto :goto_3

    #@be
    .line 1572
    :cond_5
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    #@c1
    move-result v0

    #@c2
    .line 1573
    const/4 v2, 0x0

    #@c3
    :goto_4
    if-ge v2, v0, :cond_6

    #@c5
    .line 1574
    const-string/jumbo v5, "ssp"

    #@c8
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@cb
    .line 1575
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataSchemeSpecificParts:Ljava/util/ArrayList;

    #@cd
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d0
    move-result-object v3

    #@d1
    check-cast v3, Landroid/os/PatternMatcher;

    #@d3
    .line 1576
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    #@d6
    move-result v5

    #@d7
    packed-switch v5, :pswitch_data_0

    #@da
    .line 1587
    :goto_5
    const-string/jumbo v5, "ssp"

    #@dd
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@e0
    .line 1573
    add-int/lit8 v2, v2, 0x1

    #@e2
    goto :goto_4

    #@e3
    .line 1578
    :pswitch_0
    const-string/jumbo v5, "literal"

    #@e6
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@e9
    move-result-object v6

    #@ea
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ed
    goto :goto_5

    #@ee
    .line 1581
    :pswitch_1
    const-string/jumbo v5, "prefix"

    #@f1
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@f4
    move-result-object v6

    #@f5
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@f8
    goto :goto_5

    #@f9
    .line 1584
    :pswitch_2
    const-string/jumbo v5, "sglob"

    #@fc
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@ff
    move-result-object v6

    #@100
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@103
    goto :goto_5

    #@104
    .line 1589
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_6
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    #@107
    move-result v0

    #@108
    .line 1590
    const/4 v2, 0x0

    #@109
    :goto_6
    if-ge v2, v0, :cond_8

    #@10b
    .line 1591
    const-string/jumbo v5, "auth"

    #@10e
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@111
    .line 1592
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataAuthorities:Ljava/util/ArrayList;

    #@113
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v1

    #@117
    check-cast v1, Landroid/content/IntentFilter$AuthorityEntry;

    #@119
    .line 1593
    .local v1, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    const-string/jumbo v5, "host"

    #@11c
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    #@11f
    move-result-object v6

    #@120
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@123
    .line 1594
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    #@126
    move-result v5

    #@127
    if-ltz v5, :cond_7

    #@129
    .line 1595
    const-string/jumbo v5, "port"

    #@12c
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    #@12f
    move-result v6

    #@130
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@133
    move-result-object v6

    #@134
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@137
    .line 1597
    :cond_7
    const-string/jumbo v5, "auth"

    #@13a
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@13d
    .line 1590
    add-int/lit8 v2, v2, 0x1

    #@13f
    goto :goto_6

    #@140
    .line 1599
    .end local v1    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_8
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    #@143
    move-result v0

    #@144
    .line 1600
    const/4 v2, 0x0

    #@145
    :goto_7
    if-ge v2, v0, :cond_9

    #@147
    .line 1601
    const-string/jumbo v5, "path"

    #@14a
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@14d
    .line 1602
    iget-object v5, p0, Landroid/content/IntentFilter;->mDataPaths:Ljava/util/ArrayList;

    #@14f
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@152
    move-result-object v3

    #@153
    check-cast v3, Landroid/os/PatternMatcher;

    #@155
    .line 1603
    .restart local v3    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    #@158
    move-result v5

    #@159
    packed-switch v5, :pswitch_data_1

    #@15c
    .line 1614
    :goto_8
    const-string/jumbo v5, "path"

    #@15f
    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@162
    .line 1600
    add-int/lit8 v2, v2, 0x1

    #@164
    goto :goto_7

    #@165
    .line 1605
    :pswitch_3
    const-string/jumbo v5, "literal"

    #@168
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@16b
    move-result-object v6

    #@16c
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@16f
    goto :goto_8

    #@170
    .line 1608
    :pswitch_4
    const-string/jumbo v5, "prefix"

    #@173
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@176
    move-result-object v6

    #@177
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@17a
    goto :goto_8

    #@17b
    .line 1611
    :pswitch_5
    const-string/jumbo v5, "sglob"

    #@17e
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    #@181
    move-result-object v6

    #@182
    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@185
    goto :goto_8

    #@186
    .line 1540
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_9
    return-void

    #@187
    .line 1576
    nop

    #@188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    #@192
    .line 1603
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
