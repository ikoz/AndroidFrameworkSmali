.class final enum Landroid/util/JsonScope;
.super Ljava/lang/Enum;
.source "JsonScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/JsonScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/JsonScope;

.field public static final enum CLOSED:Landroid/util/JsonScope;

.field public static final enum DANGLING_NAME:Landroid/util/JsonScope;

.field public static final enum EMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum EMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum EMPTY_OBJECT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_ARRAY:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

.field public static final enum NONEMPTY_OBJECT:Landroid/util/JsonScope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 24
    new-instance v0, Landroid/util/JsonScope;

    #@7
    const-string/jumbo v1, "EMPTY_ARRAY"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@d
    .line 28
    sput-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@f
    .line 30
    new-instance v0, Landroid/util/JsonScope;

    #@11
    const-string/jumbo v1, "NONEMPTY_ARRAY"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@17
    .line 34
    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@19
    .line 36
    new-instance v0, Landroid/util/JsonScope;

    #@1b
    const-string/jumbo v1, "EMPTY_OBJECT"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@21
    .line 40
    sput-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@23
    .line 42
    new-instance v0, Landroid/util/JsonScope;

    #@25
    const-string/jumbo v1, "DANGLING_NAME"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 46
    sput-object v0, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@2d
    .line 48
    new-instance v0, Landroid/util/JsonScope;

    #@2f
    const-string/jumbo v1, "NONEMPTY_OBJECT"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@35
    .line 52
    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@37
    .line 54
    new-instance v0, Landroid/util/JsonScope;

    #@39
    const-string/jumbo v1, "EMPTY_DOCUMENT"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@40
    .line 57
    sput-object v0, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@42
    .line 59
    new-instance v0, Landroid/util/JsonScope;

    #@44
    const-string/jumbo v1, "NONEMPTY_DOCUMENT"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 62
    sput-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@4d
    .line 64
    new-instance v0, Landroid/util/JsonScope;

    #@4f
    const-string/jumbo v1, "CLOSED"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Landroid/util/JsonScope;-><init>(Ljava/lang/String;I)V

    #@56
    .line 67
    sput-object v0, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    #@58
    .line 22
    const/16 v0, 0x8

    #@5a
    new-array v0, v0, [Landroid/util/JsonScope;

    #@5c
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    #@5e
    aput-object v1, v0, v3

    #@60
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    #@62
    aput-object v1, v0, v4

    #@64
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    #@66
    aput-object v1, v0, v5

    #@68
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    #@6a
    aput-object v1, v0, v6

    #@6c
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    #@6e
    aput-object v1, v0, v7

    #@70
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@72
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    #@77
    const/4 v2, 0x6

    #@78
    aput-object v1, v0, v2

    #@7a
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    #@7c
    const/4 v2, 0x7

    #@7d
    aput-object v1, v0, v2

    #@7f
    sput-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    #@81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/JsonScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 22
    const-class v0, Landroid/util/JsonScope;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/util/JsonScope;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/util/JsonScope;
    .locals 1

    #@0
    .prologue
    .line 22
    sget-object v0, Landroid/util/JsonScope;->$VALUES:[Landroid/util/JsonScope;

    #@2
    return-object v0
.end method
