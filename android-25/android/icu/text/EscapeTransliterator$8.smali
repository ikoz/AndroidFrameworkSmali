.class final Landroid/icu/text/EscapeTransliterator$8;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/EscapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 8
    .param p1, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 142
    new-instance v0, Landroid/icu/text/EscapeTransliterator;

    #@2
    const-string/jumbo v1, "Any-Hex"

    #@5
    .line 143
    const-string/jumbo v2, "\\u"

    #@8
    const-string/jumbo v3, ""

    #@b
    const/16 v4, 0x10

    #@d
    const/4 v5, 0x4

    #@e
    const/4 v6, 0x0

    #@f
    const/4 v7, 0x0

    #@10
    .line 142
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    #@13
    return-object v0
.end method
