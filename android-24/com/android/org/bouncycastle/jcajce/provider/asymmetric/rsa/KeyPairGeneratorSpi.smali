.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field static final defaultPublicExponent:Ljava/math/BigInteger;

.field static final defaultTests:I = 0x70


# instance fields
.field engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

.field param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    const-wide/32 v0, 0x10001

    #@3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    #@9
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "RSA"

    #@3
    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@6
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@8
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@d
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@f
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    #@11
    .line 37
    new-instance v2, Ljava/security/SecureRandom;

    #@13
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    #@16
    const/16 v3, 0x800

    #@18
    const/16 v4, 0x70

    #@1a
    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@1f
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@21
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@23
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@26
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithmName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    #@3
    .line 20
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    #@0
    .prologue
    .line 77
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@5
    move-result-object v0

    #@6
    .line 78
    .local v0, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@9
    move-result-object v2

    #@a
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@c
    .line 79
    .local v2, "pub":Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@12
    .line 81
    .local v1, "priv":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    #@14
    new-instance v4, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;

    #@16
    invoke-direct {v4, v2}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;)V

    #@19
    .line 82
    new-instance v5, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;

    #@1b
    invoke-direct {v5, v1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/BCRSAPrivateCrtKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;)V

    #@1e
    .line 81
    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@21
    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@2
    sget-object v1, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->defaultPublicExponent:Ljava/math/BigInteger;

    #@4
    .line 48
    if-eqz p2, :cond_0

    #@6
    .end local p2    # "random":Ljava/security/SecureRandom;
    :goto_0
    const/16 v2, 0x70

    #@8
    .line 45
    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    #@b
    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@d
    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@f
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@11
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@14
    .line 43
    return-void

    #@15
    .line 48
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_0
    new-instance p2, Ljava/security/SecureRandom;

    #@17
    .end local p2    # "random":Ljava/security/SecureRandom;
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    #@1a
    goto :goto_0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 59
    instance-of v1, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 61
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    #@6
    const-string/jumbo v2, "parameter object not a RSAKeyGenParameterSpec"

    #@9
    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    :cond_0
    move-object v0, p1

    #@e
    .line 63
    nop

    #@f
    nop

    #@10
    .line 65
    .local v0, "rsaParams":Ljava/security/spec/RSAKeyGenParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@12
    .line 66
    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    #@15
    move-result-object v2

    #@16
    .line 69
    if-eqz p2, :cond_1

    #@18
    .end local p2    # "random":Ljava/security/SecureRandom;
    :goto_0
    invoke-virtual {v0}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    #@1b
    move-result v3

    #@1c
    const/16 v4, 0x70

    #@1e
    .line 65
    invoke-direct {v1, v2, p2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;-><init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V

    #@21
    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@23
    .line 72
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;

    #@25
    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/rsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@27
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    #@2a
    .line 57
    return-void

    #@2b
    .line 69
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_1
    new-instance p2, Ljava/security/SecureRandom;

    #@2d
    .end local p2    # "random":Ljava/security/SecureRandom;
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    #@30
    goto :goto_0
.end method
