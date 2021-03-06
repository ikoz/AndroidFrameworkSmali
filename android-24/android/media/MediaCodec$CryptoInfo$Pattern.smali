.class public final Landroid/media/MediaCodec$CryptoInfo$Pattern;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$CryptoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pattern"
.end annotation


# instance fields
.field private mEncryptBlocks:I

.field private mSkipBlocks:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    #@0
    .prologue
    .line 2361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2362
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    #@6
    .line 2361
    return-void
.end method


# virtual methods
.method public getEncryptBlocks()I
    .locals 1

    #@0
    .prologue
    .line 2385
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    #@2
    return v0
.end method

.method public getSkipBlocks()I
    .locals 1

    #@0
    .prologue
    .line 2378
    iget v0, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    #@2
    return v0
.end method

.method public set(II)V
    .locals 0
    .param p1, "blocksToEncrypt"    # I
    .param p2, "blocksToSkip"    # I

    #@0
    .prologue
    .line 2370
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mEncryptBlocks:I

    #@2
    .line 2371
    iput p2, p0, Landroid/media/MediaCodec$CryptoInfo$Pattern;->mSkipBlocks:I

    #@4
    .line 2369
    return-void
.end method
