.class public Landroid/text/style/TtsSpan$DigitsBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$DigitsBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1435
    const-string/jumbo v0, "android.type.digits"

    #@3
    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    #@6
    .line 1434
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1443
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>()V

    #@3
    .line 1444
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$DigitsBuilder;->setDigits(Ljava/lang/String;)Landroid/text/style/TtsSpan$DigitsBuilder;

    #@6
    .line 1442
    return-void
.end method


# virtual methods
.method public setDigits(Ljava/lang/String;)Landroid/text/style/TtsSpan$DigitsBuilder;
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1453
    const-string/jumbo v0, "android.arg.digits"

    #@3
    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DigitsBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/text/style/TtsSpan$DigitsBuilder;

    #@9
    return-object v0
.end method
