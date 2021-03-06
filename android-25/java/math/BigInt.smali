.class final Ljava/math/BigInt;
.super Ljava/lang/Object;
.source "BigInt.java"


# static fields
.field private static registry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field transient bignum:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    .line 28
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    #@2
    .line 29
    const-class v1, Ljava/math/BigInt;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {}, Ljava/math/NativeBN;->getNativeFinalizer()J

    #@b
    move-result-wide v2

    #@c
    invoke-static {}, Ljava/math/NativeBN;->size()J

    #@f
    move-result-wide v4

    #@10
    .line 28
    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    #@13
    sput-object v0, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    #@15
    .line 26
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@7
    .line 26
    return-void
.end method

.method static addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 251
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 252
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    #@d
    .line 253
    return-object v6
.end method

.method static bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 281
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 282
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_exp(JJJ)V

    #@d
    .line 283
    return-object v6
.end method

.method static cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I
    .locals 4
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 59
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_cmp(JJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method static division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V
    .locals 8
    .param p0, "dividend"    # Ljava/math/BigInt;
    .param p1, "divisor"    # Ljava/math/BigInt;
    .param p2, "quotient"    # Ljava/math/BigInt;
    .param p3, "remainder"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 298
    if-eqz p2, :cond_0

    #@2
    .line 299
    invoke-direct {p2}, Ljava/math/BigInt;->makeValid()V

    #@5
    .line 300
    iget-wide v0, p2, Ljava/math/BigInt;->bignum:J

    #@7
    .line 304
    .local v0, "quot":J
    :goto_0
    if-eqz p3, :cond_1

    #@9
    .line 305
    invoke-direct {p3}, Ljava/math/BigInt;->makeValid()V

    #@c
    .line 306
    iget-wide v2, p3, Ljava/math/BigInt;->bignum:J

    #@e
    .line 310
    .local v2, "rem":J
    :goto_1
    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    #@10
    iget-wide v6, p1, Ljava/math/BigInt;->bignum:J

    #@12
    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_div(JJJJ)V

    #@15
    .line 296
    return-void

    #@16
    .line 302
    .end local v0    # "quot":J
    .end local v2    # "rem":J
    :cond_0
    const-wide/16 v0, 0x0

    #@18
    .restart local v0    # "quot":J
    goto :goto_0

    #@19
    .line 308
    :cond_1
    const-wide/16 v2, 0x0

    #@1b
    .restart local v2    # "rem":J
    goto :goto_1
.end method

.method static exp(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 4
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # I

    #@0
    .prologue
    .line 288
    new-instance v0, Ljava/math/BigInt;

    #@2
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@5
    .line 289
    .local v0, "power":Ljava/math/BigInt;
    int-to-long v2, p1

    #@6
    invoke-virtual {v0, v2, v3}, Ljava/math/BigInt;->putLongInt(J)V

    #@9
    .line 290
    invoke-static {p0, v0}, Ljava/math/BigInt;->bigExp(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method static gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 268
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 269
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_gcd(JJJ)V

    #@d
    .line 270
    return-object v6
.end method

.method static generatePrimeDefault(I)Ljava/math/BigInt;
    .locals 11
    .param p0, "bitLength"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 336
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@5
    move-result-object v10

    #@6
    .line 337
    .local v10, "r":Ljava/math/BigInt;
    iget-wide v0, v10, Ljava/math/BigInt;->bignum:J

    #@8
    const/4 v3, 0x0

    #@9
    move v2, p0

    #@a
    move-wide v6, v4

    #@b
    move-wide v8, v4

    #@c
    invoke-static/range {v0 .. v9}, Ljava/math/NativeBN;->BN_generate_prime_ex(JIZJJJ)V

    #@f
    .line 338
    return-object v10
.end method

.method private invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid BigInteger: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private makeValid()V
    .locals 4

    #@0
    .prologue
    .line 44
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 45
    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@e
    .line 46
    sget-object v0, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    #@10
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@12
    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@15
    .line 43
    :cond_0
    return-void
.end method

.method static modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 9
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "p"    # Ljava/math/BigInt;
    .param p2, "m"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 322
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v8

    #@4
    .line 323
    .local v8, "r":Ljava/math/BigInt;
    iget-wide v0, v8, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    iget-wide v6, p2, Ljava/math/BigInt;->bignum:J

    #@c
    invoke-static/range {v0 .. v7}, Ljava/math/NativeBN;->BN_mod_exp(JJJJ)V

    #@f
    .line 324
    return-object v8
.end method

.method static modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "m"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 329
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 330
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mod_inverse(JJJ)V

    #@d
    .line 331
    return-object v6
.end method

.method static modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "m"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 315
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 316
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_nnmod(JJJ)V

    #@d
    .line 317
    return-object v6
.end method

.method private static newBigInt()Ljava/math/BigInt;
    .locals 4

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/math/BigInt;

    #@2
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@5
    .line 52
    .local v0, "bi":Ljava/math/BigInt;
    invoke-static {}, Ljava/math/NativeBN;->BN_new()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, v0, Ljava/math/BigInt;->bignum:J

    #@b
    .line 53
    sget-object v1, Ljava/math/BigInt;->registry:Llibcore/util/NativeAllocationRegistry;

    #@d
    iget-wide v2, v0, Ljava/math/BigInt;->bignum:J

    #@f
    invoke-virtual {v1, v0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    #@12
    .line 54
    return-object v0
.end method

.method static product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 274
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 275
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_mul(JJJ)V

    #@d
    .line 276
    return-object v6
.end method

.method static remainderByPositiveInt(Ljava/math/BigInt;I)I
    .locals 2
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "w"    # I

    #@0
    .prologue
    .line 247
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mod_word(JI)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static shift(Ljava/math/BigInt;I)Ljava/math/BigInt;
    .locals 6
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "n"    # I

    #@0
    .prologue
    .line 229
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v0

    #@4
    .line 230
    .local v0, "r":Ljava/math/BigInt;
    iget-wide v2, v0, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v4, p0, Ljava/math/BigInt;->bignum:J

    #@8
    invoke-static {v2, v3, v4, v5, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    #@b
    .line 231
    return-object v0
.end method

.method static subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;
    .locals 7
    .param p0, "a"    # Ljava/math/BigInt;
    .param p1, "b"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 261
    invoke-static {}, Ljava/math/BigInt;->newBigInt()Ljava/math/BigInt;

    #@3
    move-result-object v6

    #@4
    .line 262
    .local v6, "r":Ljava/math/BigInt;
    iget-wide v0, v6, Ljava/math/BigInt;->bignum:J

    #@6
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@8
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@a
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_sub(JJJ)V

    #@d
    .line 263
    return-object v6
.end method

.method private static toAscii(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "base"    # I

    #@0
    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    .line 154
    .local v2, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 155
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@c
    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 157
    .local v0, "ch":C
    invoke-static {v0, p1}, Ljava/lang/Character;->digit(CI)I

    #@13
    move-result v4

    #@14
    .line 158
    .local v4, "value":I
    if-ltz v4, :cond_0

    #@16
    const/16 v5, 0x9

    #@18
    if-gt v4, v5, :cond_0

    #@1a
    .line 159
    add-int/lit8 v5, v4, 0x30

    #@1c
    int-to-char v0, v5

    #@1d
    .line 161
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    .line 155
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 163
    .end local v0    # "ch":C
    .end local v4    # "value":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v5

    #@27
    return-object v5
.end method


# virtual methods
.method add(Ljava/math/BigInt;)V
    .locals 6
    .param p1, "a"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 257
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@4
    iget-wide v4, p1, Ljava/math/BigInt;->bignum:J

    #@6
    invoke-static/range {v0 .. v5}, Ljava/math/NativeBN;->BN_add(JJJ)V

    #@9
    .line 256
    return-void
.end method

.method addPositiveInt(I)V
    .locals 2
    .param p1, "w"    # I

    #@0
    .prologue
    .line 239
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_add_word(JI)V

    #@5
    .line 238
    return-void
.end method

.method bigEndianMagnitude()[B
    .locals 2

    #@0
    .prologue
    .line 195
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2bin(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method bitLength()I
    .locals 2

    #@0
    .prologue
    .line 220
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->bitLength(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method checkString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "base"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 115
    if-nez p1, :cond_0

    #@3
    .line 116
    new-instance v4, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v5, "s == null"

    #@8
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v4

    #@c
    .line 121
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    .line 122
    .local v1, "charCount":I
    const/4 v2, 0x0

    #@11
    .line 123
    .local v2, "i":I
    if-lez v1, :cond_1

    #@13
    .line 124
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v0

    #@17
    .line 125
    .local v0, "ch":C
    const/16 v4, 0x2b

    #@19
    if-ne v0, v4, :cond_2

    #@1b
    .line 127
    const/4 v4, 0x1

    #@1c
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    .line 128
    add-int/lit8 v1, v1, -0x1

    #@22
    .line 133
    .end local v0    # "ch":C
    :cond_1
    :goto_0
    sub-int v4, v1, v2

    #@24
    if-nez v4, :cond_3

    #@26
    .line 134
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@29
    move-result-object v4

    #@2a
    throw v4

    #@2b
    .line 129
    .restart local v0    # "ch":C
    :cond_2
    const/16 v4, 0x2d

    #@2d
    if-ne v0, v4, :cond_1

    #@2f
    .line 130
    const/4 v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 136
    .end local v0    # "ch":C
    :cond_3
    const/4 v3, 0x0

    #@32
    .line 137
    .local v3, "nonAscii":Z
    :goto_1
    if-ge v2, v1, :cond_6

    #@34
    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@37
    move-result v0

    #@38
    .line 139
    .restart local v0    # "ch":C
    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    #@3b
    move-result v4

    #@3c
    const/4 v5, -0x1

    #@3d
    if-ne v4, v5, :cond_4

    #@3f
    .line 140
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@42
    move-result-object v4

    #@43
    throw v4

    #@44
    .line 142
    :cond_4
    const/16 v4, 0x80

    #@46
    if-le v0, v4, :cond_5

    #@48
    .line 143
    const/4 v3, 0x1

    #@49
    .line 137
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 146
    .end local v0    # "ch":C
    :cond_6
    if-eqz v3, :cond_7

    #@4e
    invoke-static {p1, p2}, Ljava/math/BigInt;->toAscii(Ljava/lang/String;I)Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    .end local p1    # "s":Ljava/lang/String;
    :cond_7
    return-object p1
.end method

.method copy()Ljava/math/BigInt;
    .locals 1

    #@0
    .prologue
    .line 69
    new-instance v0, Ljava/math/BigInt;

    #@2
    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    #@5
    .line 70
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, p0}, Ljava/math/BigInt;->putCopy(Ljava/math/BigInt;)V

    #@8
    .line 71
    return-object v0
.end method

.method decString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 187
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2dec(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getNativeBIGNUM()J
    .locals 2

    #@0
    .prologue
    .line 40
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    return-wide v0
.end method

.method hexString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 191
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->BN_bn2hex(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method isBitSet(I)Z
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    .line 224
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_is_bit_set(JI)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isPrime(I)Z
    .locals 4
    .param p1, "certainty"    # I

    #@0
    .prologue
    .line 342
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    invoke-static {v0, v1, p1, v2, v3}, Ljava/math/NativeBN;->BN_is_prime_ex(JIJ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method littleEndianIntsMagnitude()[I
    .locals 2

    #@0
    .prologue
    .line 199
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->bn2litEndInts(J)[I

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method longInt()J
    .locals 2

    #@0
    .prologue
    .line 183
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->longInt(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method multiplyByPositiveInt(I)V
    .locals 2
    .param p1, "w"    # I

    #@0
    .prologue
    .line 243
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1, p1}, Ljava/math/NativeBN;->BN_mul_word(JI)V

    #@5
    .line 242
    return-void
.end method

.method putBigEndian([BZ)V
    .locals 4
    .param p1, "a"    # [B
    .param p2, "neg"    # Z

    #@0
    .prologue
    .line 167
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 168
    array-length v0, p1

    #@4
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@6
    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->BN_bin2bn([BIZJ)V

    #@9
    .line 166
    return-void
.end method

.method putBigEndianTwosComplement([B)V
    .locals 4
    .param p1, "a"    # [B

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 178
    array-length v0, p1

    #@4
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@6
    invoke-static {p1, v0, v2, v3}, Ljava/math/NativeBN;->twosComp2bn([BIJ)V

    #@9
    .line 176
    return-void
.end method

.method putCopy(Ljava/math/BigInt;)V
    .locals 4
    .param p1, "from"    # Ljava/math/BigInt;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 65
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@5
    iget-wide v2, p1, Ljava/math/BigInt;->bignum:J

    #@7
    invoke-static {v0, v1, v2, v3}, Ljava/math/NativeBN;->BN_copy(JJ)V

    #@a
    .line 63
    return-void
.end method

.method putDecString(Ljava/lang/String;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    const/16 v2, 0xa

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 91
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@9
    .line 92
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@b
    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_dec2bn(JLjava/lang/String;)I

    #@e
    move-result v1

    #@f
    .line 93
    .local v1, "usedLen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_0

    #@15
    .line 94
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@18
    move-result-object v2

    #@19
    throw v2

    #@1a
    .line 89
    :cond_0
    return-void
.end method

.method putHexString(Ljava/lang/String;)V
    .locals 4
    .param p1, "original"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    const/16 v2, 0x10

    #@2
    invoke-virtual {p0, p1, v2}, Ljava/math/BigInt;->checkString(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 100
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@9
    .line 101
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@b
    invoke-static {v2, v3, v0}, Ljava/math/NativeBN;->BN_hex2bn(JLjava/lang/String;)I

    #@e
    move-result v1

    #@f
    .line 102
    .local v1, "usedLen":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-ge v1, v2, :cond_0

    #@15
    .line 103
    invoke-direct {p0, p1}, Ljava/math/BigInt;->invalidBigInteger(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@18
    move-result-object v2

    #@19
    throw v2

    #@1a
    .line 98
    :cond_0
    return-void
.end method

.method putLittleEndianInts([IZ)V
    .locals 4
    .param p1, "a"    # [I
    .param p2, "neg"    # Z

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 173
    array-length v0, p1

    #@4
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@6
    invoke-static {p1, v0, p2, v2, v3}, Ljava/math/NativeBN;->litEndInts2bn([IIZJ)V

    #@9
    .line 171
    return-void
.end method

.method putLongInt(J)V
    .locals 3
    .param p1, "val"    # J

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 77
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@5
    invoke-static {v0, v1, p1, p2}, Ljava/math/NativeBN;->putLongInt(JJ)V

    #@8
    .line 75
    return-void
.end method

.method putULongInt(JZ)V
    .locals 3
    .param p1, "val"    # J
    .param p3, "neg"    # Z

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/math/BigInt;->makeValid()V

    #@3
    .line 82
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@5
    invoke-static {v0, v1, p1, p2, p3}, Ljava/math/NativeBN;->putULongInt(JJZ)V

    #@8
    .line 80
    return-void
.end method

.method setSign(I)V
    .locals 3
    .param p1, "val"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 207
    if-lez p1, :cond_1

    #@3
    .line 208
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@5
    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    #@8
    .line 206
    :cond_0
    :goto_0
    return-void

    #@9
    .line 210
    :cond_1
    if-gez p1, :cond_0

    #@b
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@d
    const/4 v2, 0x1

    #@e
    invoke-static {v0, v1, v2}, Ljava/math/NativeBN;->BN_set_negative(JI)V

    #@11
    goto :goto_0
.end method

.method shift(I)V
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 235
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@4
    invoke-static {v0, v1, v2, v3, p1}, Ljava/math/NativeBN;->BN_shift(JJI)V

    #@7
    .line 234
    return-void
.end method

.method sign()I
    .locals 2

    #@0
    .prologue
    .line 203
    iget-wide v0, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v0, v1}, Ljava/math/NativeBN;->sign(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method twosCompFitsIntoBytes(I)Z
    .locals 4
    .param p1, "desiredByteCount"    # I

    #@0
    .prologue
    .line 215
    iget-wide v2, p0, Ljava/math/BigInt;->bignum:J

    #@2
    invoke-static {v2, v3}, Ljava/math/NativeBN;->bitLength(J)I

    #@5
    move-result v1

    #@6
    add-int/lit8 v1, v1, 0x7

    #@8
    div-int/lit8 v0, v1, 0x8

    #@a
    .line 216
    .local v0, "actualByteCount":I
    if-gt v0, p1, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method
