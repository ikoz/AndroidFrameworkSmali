.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/RadioAccessFamily$1;
    }
.end annotation


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    #@5
    .line 128
    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "radioAccessFamily"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@5
    .line 74
    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@7
    .line 72
    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 3
    .param p0, "raf"    # I

    #@0
    .prologue
    const v2, 0x10006

    #@3
    const v1, 0x8e08

    #@6
    .line 231
    and-int v0, v2, p0

    #@8
    if-lez v0, :cond_0

    #@a
    or-int/2addr p0, v2

    #@b
    .line 232
    :cond_0
    and-int v0, v1, p0

    #@d
    if-lez v0, :cond_1

    #@f
    or-int/2addr p0, v1

    #@10
    .line 233
    :cond_1
    and-int/lit8 v0, p0, 0x70

    #@12
    if-lez v0, :cond_2

    #@14
    or-int/lit8 p0, p0, 0x70

    #@16
    .line 234
    :cond_2
    and-int/lit16 v0, p0, 0x3180

    #@18
    if-lez v0, :cond_3

    #@1a
    or-int/lit16 p0, p0, 0x3180

    #@1c
    .line 236
    :cond_3
    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 1
    .param p0, "raf"    # I

    #@0
    .prologue
    .line 242
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    #@3
    move-result p0

    #@4
    .line 244
    sparse-switch p0, :sswitch_data_0

    #@7
    .line 312
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    #@9
    .line 316
    .local v0, "type":I
    :goto_0
    return v0

    #@a
    .line 246
    .end local v0    # "type":I
    :sswitch_0
    const/4 v0, 0x0

    #@b
    .line 247
    .restart local v0    # "type":I
    goto :goto_0

    #@c
    .line 249
    .end local v0    # "type":I
    :sswitch_1
    const/4 v0, 0x1

    #@d
    .line 250
    .restart local v0    # "type":I
    goto :goto_0

    #@e
    .line 252
    .end local v0    # "type":I
    :sswitch_2
    const/4 v0, 0x2

    #@f
    .line 253
    .restart local v0    # "type":I
    goto :goto_0

    #@10
    .line 255
    .end local v0    # "type":I
    :sswitch_3
    const/4 v0, 0x4

    #@11
    .line 256
    .restart local v0    # "type":I
    goto :goto_0

    #@12
    .line 258
    .end local v0    # "type":I
    :sswitch_4
    const/16 v0, 0x8

    #@14
    .line 259
    .restart local v0    # "type":I
    goto :goto_0

    #@15
    .line 261
    .end local v0    # "type":I
    :sswitch_5
    const/16 v0, 0x9

    #@17
    .line 262
    .restart local v0    # "type":I
    goto :goto_0

    #@18
    .line 264
    .end local v0    # "type":I
    :sswitch_6
    const/16 v0, 0xa

    #@1a
    .line 265
    .restart local v0    # "type":I
    goto :goto_0

    #@1b
    .line 267
    .end local v0    # "type":I
    :sswitch_7
    const/16 v0, 0xb

    #@1d
    .line 268
    .restart local v0    # "type":I
    goto :goto_0

    #@1e
    .line 270
    .end local v0    # "type":I
    :sswitch_8
    const/16 v0, 0xc

    #@20
    .line 271
    .restart local v0    # "type":I
    goto :goto_0

    #@21
    .line 273
    .end local v0    # "type":I
    :sswitch_9
    const/4 v0, 0x5

    #@22
    .line 274
    .restart local v0    # "type":I
    goto :goto_0

    #@23
    .line 276
    .end local v0    # "type":I
    :sswitch_a
    const/4 v0, 0x6

    #@24
    .line 277
    .restart local v0    # "type":I
    goto :goto_0

    #@25
    .line 279
    .end local v0    # "type":I
    :sswitch_b
    const/4 v0, 0x7

    #@26
    .line 280
    .restart local v0    # "type":I
    goto :goto_0

    #@27
    .line 282
    .end local v0    # "type":I
    :sswitch_c
    const/16 v0, 0xd

    #@29
    .line 283
    .restart local v0    # "type":I
    goto :goto_0

    #@2a
    .line 285
    .end local v0    # "type":I
    :sswitch_d
    const/16 v0, 0xe

    #@2c
    .line 286
    .restart local v0    # "type":I
    goto :goto_0

    #@2d
    .line 288
    .end local v0    # "type":I
    :sswitch_e
    const/16 v0, 0xf

    #@2f
    .line 289
    .restart local v0    # "type":I
    goto :goto_0

    #@30
    .line 291
    .end local v0    # "type":I
    :sswitch_f
    const/16 v0, 0x10

    #@32
    .line 292
    .restart local v0    # "type":I
    goto :goto_0

    #@33
    .line 294
    .end local v0    # "type":I
    :sswitch_10
    const/16 v0, 0x11

    #@35
    .line 295
    .restart local v0    # "type":I
    goto :goto_0

    #@36
    .line 297
    .end local v0    # "type":I
    :sswitch_11
    const/16 v0, 0x12

    #@38
    .line 298
    .restart local v0    # "type":I
    goto :goto_0

    #@39
    .line 300
    .end local v0    # "type":I
    :sswitch_12
    const/16 v0, 0x13

    #@3b
    .line 301
    .restart local v0    # "type":I
    goto :goto_0

    #@3c
    .line 303
    .end local v0    # "type":I
    :sswitch_13
    const/16 v0, 0x14

    #@3e
    .line 304
    .restart local v0    # "type":I
    goto :goto_0

    #@3f
    .line 306
    .end local v0    # "type":I
    :sswitch_14
    const/16 v0, 0x15

    #@41
    .line 307
    .restart local v0    # "type":I
    goto :goto_0

    #@42
    .line 309
    .end local v0    # "type":I
    :sswitch_15
    const/16 v0, 0x16

    #@44
    .line 310
    .restart local v0    # "type":I
    goto :goto_0

    #@45
    .line 244
    nop

    #@46
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_9
        0x3180 -> :sswitch_a
        0x31f0 -> :sswitch_3
        0x4000 -> :sswitch_7
        0x71f0 -> :sswitch_4
        0x8e08 -> :sswitch_2
        0xce08 -> :sswitch_8
        0x10006 -> :sswitch_1
        0x18e0e -> :sswitch_0
        0x1bffe -> :sswitch_b
        0x1ce0e -> :sswitch_5
        0x1fffe -> :sswitch_6
        0x20000 -> :sswitch_c
        0x24000 -> :sswitch_e
        0x28e08 -> :sswitch_d
        0x2ce08 -> :sswitch_12
        0x30006 -> :sswitch_f
        0x34006 -> :sswitch_10
        0x38e0e -> :sswitch_11
        0x3bffe -> :sswitch_14
        0x3ce0e -> :sswitch_13
        0x3fffe -> :sswitch_15
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 148
    packed-switch p0, :pswitch_data_0

    #@3
    .line 219
    const/4 v0, 0x1

    #@4
    .line 223
    .local v0, "raf":I
    :goto_0
    return v0

    #@5
    .line 150
    .end local v0    # "raf":I
    :pswitch_0
    const v0, 0x18e0e

    #@8
    .line 151
    .restart local v0    # "raf":I
    goto :goto_0

    #@9
    .line 153
    .end local v0    # "raf":I
    :pswitch_1
    const v0, 0x10006

    #@c
    .line 154
    .restart local v0    # "raf":I
    goto :goto_0

    #@d
    .line 156
    .end local v0    # "raf":I
    :pswitch_2
    const v0, 0x8e08

    #@10
    .line 157
    .restart local v0    # "raf":I
    goto :goto_0

    #@11
    .line 159
    .end local v0    # "raf":I
    :pswitch_3
    const v0, 0x18e0e

    #@14
    .line 160
    .restart local v0    # "raf":I
    goto :goto_0

    #@15
    .line 162
    .end local v0    # "raf":I
    :pswitch_4
    const/16 v0, 0x31f0

    #@17
    .line 163
    .restart local v0    # "raf":I
    goto :goto_0

    #@18
    .line 165
    .end local v0    # "raf":I
    :pswitch_5
    const/16 v0, 0x71f0

    #@1a
    .line 166
    .restart local v0    # "raf":I
    goto :goto_0

    #@1b
    .line 168
    .end local v0    # "raf":I
    :pswitch_6
    const v0, 0x1ce0e

    #@1e
    .line 169
    .restart local v0    # "raf":I
    goto :goto_0

    #@1f
    .line 171
    .end local v0    # "raf":I
    :pswitch_7
    const v0, 0x1fffe

    #@22
    .line 172
    .restart local v0    # "raf":I
    goto :goto_0

    #@23
    .line 174
    .end local v0    # "raf":I
    :pswitch_8
    const/16 v0, 0x4000

    #@25
    .line 175
    .restart local v0    # "raf":I
    goto :goto_0

    #@26
    .line 177
    .end local v0    # "raf":I
    :pswitch_9
    const v0, 0xce08

    #@29
    .line 178
    .restart local v0    # "raf":I
    goto :goto_0

    #@2a
    .line 180
    .end local v0    # "raf":I
    :pswitch_a
    const/16 v0, 0x70

    #@2c
    .line 181
    .restart local v0    # "raf":I
    goto :goto_0

    #@2d
    .line 183
    .end local v0    # "raf":I
    :pswitch_b
    const/16 v0, 0x3180

    #@2f
    .line 184
    .restart local v0    # "raf":I
    goto :goto_0

    #@30
    .line 186
    .end local v0    # "raf":I
    :pswitch_c
    const v0, 0x1bffe

    #@33
    .line 187
    .restart local v0    # "raf":I
    goto :goto_0

    #@34
    .line 189
    .end local v0    # "raf":I
    :pswitch_d
    const/high16 v0, 0x20000

    #@36
    .line 190
    .restart local v0    # "raf":I
    goto :goto_0

    #@37
    .line 192
    .end local v0    # "raf":I
    :pswitch_e
    const v0, 0x28e08

    #@3a
    .line 193
    .restart local v0    # "raf":I
    goto :goto_0

    #@3b
    .line 195
    .end local v0    # "raf":I
    :pswitch_f
    const v0, 0x24000

    #@3e
    .line 196
    .restart local v0    # "raf":I
    goto :goto_0

    #@3f
    .line 198
    .end local v0    # "raf":I
    :pswitch_10
    const v0, 0x30006

    #@42
    .line 199
    .restart local v0    # "raf":I
    goto :goto_0

    #@43
    .line 201
    .end local v0    # "raf":I
    :pswitch_11
    const v0, 0x34006

    #@46
    .line 202
    .restart local v0    # "raf":I
    goto :goto_0

    #@47
    .line 204
    .end local v0    # "raf":I
    :pswitch_12
    const v0, 0x38e0e

    #@4a
    .line 205
    .restart local v0    # "raf":I
    goto :goto_0

    #@4b
    .line 207
    .end local v0    # "raf":I
    :pswitch_13
    const v0, 0x2ce08

    #@4e
    .line 208
    .restart local v0    # "raf":I
    goto :goto_0

    #@4f
    .line 210
    .end local v0    # "raf":I
    :pswitch_14
    const v0, 0x3ce0e

    #@52
    .line 211
    .restart local v0    # "raf":I
    goto :goto_0

    #@53
    .line 213
    .end local v0    # "raf":I
    :pswitch_15
    const v0, 0x3bffe

    #@56
    .line 214
    .restart local v0    # "raf":I
    goto :goto_0

    #@57
    .line 216
    .end local v0    # "raf":I
    :pswitch_16
    const v0, 0x3fffe

    #@5a
    .line 217
    .restart local v0    # "raf":I
    goto :goto_0

    #@5b
    .line 148
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 7
    .param p0, "rafList"    # Ljava/lang/String;

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@3
    move-result-object p0

    #@4
    .line 348
    const-string/jumbo v4, "\\|"

    #@7
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    .line 349
    .local v2, "rafs":[Ljava/lang/String;
    const/4 v3, 0x0

    #@c
    .line 350
    .local v3, "result":I
    const/4 v4, 0x0

    #@d
    array-length v5, v2

    #@e
    :goto_0
    if-ge v4, v5, :cond_1

    #@10
    aget-object v0, v2, v4

    #@12
    .line 351
    .local v0, "raf":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object v6

    #@16
    invoke-static {v6}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    #@19
    move-result v1

    #@1a
    .line 352
    .local v1, "rafType":I
    const/4 v6, 0x1

    #@1b
    if-ne v1, v6, :cond_0

    #@1d
    return v1

    #@1e
    .line 353
    :cond_0
    or-int/2addr v3, v1

    #@1f
    .line 350
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 355
    .end local v0    # "raf":Ljava/lang/String;
    .end local v1    # "rafType":I
    :cond_1
    return v3
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 1
    .param p0, "rafString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 320
    const-string/jumbo v0, "GPRS"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 321
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 320
    :cond_0
    const-string/jumbo v0, "EDGE"

    #@e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 322
    const/4 v0, 0x4

    #@15
    return v0

    #@16
    .line 320
    :cond_1
    const-string/jumbo v0, "UMTS"

    #@19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 323
    const/16 v0, 0x8

    #@21
    return v0

    #@22
    .line 320
    :cond_2
    const-string/jumbo v0, "IS95A"

    #@25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 324
    const/16 v0, 0x10

    #@2d
    return v0

    #@2e
    .line 320
    :cond_3
    const-string/jumbo v0, "IS95B"

    #@31
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_4

    #@37
    .line 325
    const/16 v0, 0x20

    #@39
    return v0

    #@3a
    .line 320
    :cond_4
    const-string/jumbo v0, "1XRTT"

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_5

    #@43
    .line 326
    const/16 v0, 0x40

    #@45
    return v0

    #@46
    .line 320
    :cond_5
    const-string/jumbo v0, "EVDO_0"

    #@49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_6

    #@4f
    .line 327
    const/16 v0, 0x80

    #@51
    return v0

    #@52
    .line 320
    :cond_6
    const-string/jumbo v0, "EVDO_A"

    #@55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_7

    #@5b
    .line 328
    const/16 v0, 0x100

    #@5d
    return v0

    #@5e
    .line 320
    :cond_7
    const-string/jumbo v0, "HSDPA"

    #@61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 329
    const/16 v0, 0x200

    #@69
    return v0

    #@6a
    .line 320
    :cond_8
    const-string/jumbo v0, "HSUPA"

    #@6d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_9

    #@73
    .line 330
    const/16 v0, 0x400

    #@75
    return v0

    #@76
    .line 320
    :cond_9
    const-string/jumbo v0, "HSPA"

    #@79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_a

    #@7f
    .line 331
    const/16 v0, 0x800

    #@81
    return v0

    #@82
    .line 320
    :cond_a
    const-string/jumbo v0, "EVDO_B"

    #@85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_b

    #@8b
    .line 332
    const/16 v0, 0x1000

    #@8d
    return v0

    #@8e
    .line 320
    :cond_b
    const-string/jumbo v0, "EHRPD"

    #@91
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_c

    #@97
    .line 333
    const/16 v0, 0x2000

    #@99
    return v0

    #@9a
    .line 320
    :cond_c
    const-string/jumbo v0, "LTE"

    #@9d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_d

    #@a3
    .line 334
    const/16 v0, 0x4000

    #@a5
    return v0

    #@a6
    .line 320
    :cond_d
    const-string/jumbo v0, "HSPAP"

    #@a9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_e

    #@af
    .line 335
    const v0, 0x8000

    #@b2
    return v0

    #@b3
    .line 320
    :cond_e
    const-string/jumbo v0, "GSM"

    #@b6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v0

    #@ba
    if-eqz v0, :cond_f

    #@bc
    .line 336
    const/high16 v0, 0x10000

    #@be
    return v0

    #@bf
    .line 320
    :cond_f
    const-string/jumbo v0, "TD_SCDMA"

    #@c2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c5
    move-result v0

    #@c6
    if-eqz v0, :cond_10

    #@c8
    .line 337
    const/high16 v0, 0x20000

    #@ca
    return v0

    #@cb
    .line 320
    :cond_10
    const-string/jumbo v0, "HS"

    #@ce
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_11

    #@d4
    .line 338
    const v0, 0x8e00

    #@d7
    return v0

    #@d8
    .line 320
    :cond_11
    const-string/jumbo v0, "CDMA"

    #@db
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v0

    #@df
    if-eqz v0, :cond_12

    #@e1
    .line 339
    const/16 v0, 0x70

    #@e3
    return v0

    #@e4
    .line 320
    :cond_12
    const-string/jumbo v0, "EVDO"

    #@e7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_13

    #@ed
    .line 340
    const/16 v0, 0x3180

    #@ef
    return v0

    #@f0
    .line 320
    :cond_13
    const-string/jumbo v0, "WCDMA"

    #@f3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f6
    move-result v0

    #@f7
    if-eqz v0, :cond_14

    #@f9
    .line 341
    const v0, 0x8e08

    #@fc
    return v0

    #@fd
    .line 342
    :cond_14
    const/4 v0, 0x1

    #@fe
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 110
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@2
    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "{ mPhoneId = "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    .line 98
    const-string/jumbo v2, ", mRadioAccessFamily = "

    #@15
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 98
    iget v2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@1b
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 99
    const-string/jumbo v2, "}"

    #@22
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    .line 100
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "outParcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 121
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 122
    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 120
    return-void
.end method
