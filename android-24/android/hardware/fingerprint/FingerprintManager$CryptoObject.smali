.class public final Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1, "signature"    # Ljava/security/Signature;

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 208
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@5
    .line 207
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    #@0
    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 212
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@5
    .line 211
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "mac"    # Ljavax/crypto/Mac;

    #@0
    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 216
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@5
    .line 215
    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljavax/crypto/Cipher;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@8
    check-cast v0, Ljavax/crypto/Cipher;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljavax/crypto/Mac;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@8
    check-cast v0, Ljavax/crypto/Mac;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getOpId()J
    .locals 2

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 249
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@6
    invoke-static {v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    #@9
    move-result-wide v0

    #@a
    .line 248
    :goto_0
    return-wide v0

    #@b
    .line 249
    :cond_0
    const-wide/16 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@2
    instance-of v0, v0, Ljava/security/Signature;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->mCrypto:Ljava/lang/Object;

    #@8
    check-cast v0, Ljava/security/Signature;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method
