.class Landroid/renderscript/Font$FontFamily;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontFamily"
.end annotation


# instance fields
.field mBoldFileName:Ljava/lang/String;

.field mBoldItalicFileName:Ljava/lang/String;

.field mItalicFileName:Ljava/lang/String;

.field mNames:[Ljava/lang/String;

.field mNormalFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/renderscript/Font$FontFamily;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/renderscript/Font$FontFamily;-><init>()V

    #@3
    return-void
.end method
