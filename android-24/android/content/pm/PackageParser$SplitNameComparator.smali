.class Landroid/content/pm/PackageParser$SplitNameComparator;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplitNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 666
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser$SplitNameComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    if-nez p1, :cond_0

    #@2
    .line 668
    const/4 v0, -0x1

    #@3
    return v0

    #@4
    .line 669
    :cond_0
    if-nez p2, :cond_1

    #@6
    .line 670
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 672
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    return v0
.end method
