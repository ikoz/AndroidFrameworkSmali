.class public Landroid/text/method/DateKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DateKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DateKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/16 v0, 0xd

    #@2
    new-array v0, v0, [C

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    #@9
    .line 29
    return-void

    #@a
    .line 56
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2fs
        0x2ds
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/DateKeyListener;
    .locals 1

    #@0
    .prologue
    .line 43
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 44
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    #@6
    return-object v0

    #@7
    .line 46
    :cond_0
    new-instance v0, Landroid/text/method/DateKeyListener;

    #@9
    invoke-direct {v0}, Landroid/text/method/DateKeyListener;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    #@e
    .line 47
    sget-object v0, Landroid/text/method/DateKeyListener;->sInstance:Landroid/text/method/DateKeyListener;

    #@10
    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    #@2
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    #@0
    .prologue
    .line 32
    const/16 v0, 0x14

    #@2
    return v0
.end method