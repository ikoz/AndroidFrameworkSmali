.class public Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;
.super Lcom/android/org/conscrypt/OpenSSLMac;
.source "OpenSSLMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacMD5"
.end annotation


# static fields
.field private static final EVP_MD:J

.field private static final SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 131
    const-string/jumbo v0, "md5"

    #@3
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    #@6
    move-result-wide v0

    #@7
    sput-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;->EVP_MD:J

    #@9
    .line 132
    sget-wide v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;->EVP_MD:J

    #@b
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    #@e
    move-result v0

    #@f
    sput v0, Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;->SIZE:I

    #@11
    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    .line 135
    sget-wide v2, Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;->EVP_MD:J

    #@2
    sget v4, Lcom/android/org/conscrypt/OpenSSLMac$HmacMD5;->SIZE:I

    #@4
    const/16 v5, 0x357

    #@6
    const/4 v6, 0x0

    #@7
    move-object v1, p0

    #@8
    invoke-direct/range {v1 .. v6}, Lcom/android/org/conscrypt/OpenSSLMac;-><init>(JIILcom/android/org/conscrypt/OpenSSLMac;)V

    #@b
    .line 134
    return-void
.end method
