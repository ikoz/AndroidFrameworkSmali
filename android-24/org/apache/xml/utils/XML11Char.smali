.class public Lorg/apache/xml/utils/XML11Char;
.super Ljava/lang/Object;
.source "XML11Char.java"


# static fields
.field public static final MASK_XML11_CONTENT:I = 0x20

.field public static final MASK_XML11_CONTENT_INTERNAL:I = 0x30

.field public static final MASK_XML11_CONTROL:I = 0x10

.field public static final MASK_XML11_NAME:I = 0x8

.field public static final MASK_XML11_NAME_START:I = 0x4

.field public static final MASK_XML11_NCNAME:I = 0x80

.field public static final MASK_XML11_NCNAME_START:I = 0x40

.field public static final MASK_XML11_SPACE:I = 0x2

.field public static final MASK_XML11_VALID:I = 0x1

.field private static final XML11CHARS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/16 v6, 0x11

    #@3
    const/16 v5, -0x57

    #@5
    const/16 v4, -0x13

    #@7
    const/16 v3, 0x21

    #@9
    .line 48
    const/high16 v0, 0x10000

    #@b
    new-array v0, v0, [B

    #@d
    sput-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@f
    .line 86
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@11
    const/16 v1, 0x9

    #@13
    invoke-static {v0, v7, v1, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@16
    .line 87
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@18
    const/16 v1, 0x23

    #@1a
    const/16 v2, 0x9

    #@1c
    aput-byte v1, v0, v2

    #@1e
    .line 88
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@20
    const/4 v1, 0x3

    #@21
    const/16 v2, 0xa

    #@23
    aput-byte v1, v0, v2

    #@25
    .line 89
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@27
    const/16 v1, 0xb

    #@29
    const/16 v2, 0xd

    #@2b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@2e
    .line 90
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@30
    const/4 v1, 0x3

    #@31
    const/16 v2, 0xd

    #@33
    aput-byte v1, v0, v2

    #@35
    .line 91
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@37
    const/16 v1, 0xe

    #@39
    const/16 v2, 0x20

    #@3b
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@3e
    .line 92
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@40
    const/16 v1, 0x23

    #@42
    const/16 v2, 0x20

    #@44
    aput-byte v1, v0, v2

    #@46
    .line 93
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@48
    const/16 v1, 0x26

    #@4a
    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@4d
    .line 94
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@4f
    const/16 v1, 0x26

    #@51
    aput-byte v7, v0, v1

    #@53
    .line 95
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@55
    const/16 v1, 0x27

    #@57
    const/16 v2, 0x2d

    #@59
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@5c
    .line 96
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@5e
    const/16 v1, 0x2d

    #@60
    const/16 v2, 0x2f

    #@62
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@65
    .line 97
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@67
    const/16 v1, 0x2f

    #@69
    aput-byte v3, v0, v1

    #@6b
    .line 98
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@6d
    const/16 v1, 0x30

    #@6f
    const/16 v2, 0x3a

    #@71
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@74
    .line 99
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@76
    const/16 v1, 0x2d

    #@78
    const/16 v2, 0x3a

    #@7a
    aput-byte v1, v0, v2

    #@7c
    .line 100
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@7e
    const/16 v1, 0x3b

    #@80
    aput-byte v3, v0, v1

    #@82
    .line 101
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@84
    const/16 v1, 0x3c

    #@86
    aput-byte v7, v0, v1

    #@88
    .line 102
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8a
    const/16 v1, 0x3d

    #@8c
    const/16 v2, 0x41

    #@8e
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@91
    .line 103
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@93
    const/16 v1, 0x41

    #@95
    const/16 v2, 0x5b

    #@97
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@9a
    .line 104
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@9c
    const/16 v1, 0x5b

    #@9e
    const/16 v2, 0x5d

    #@a0
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@a3
    .line 105
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@a5
    const/16 v1, 0x5d

    #@a7
    aput-byte v7, v0, v1

    #@a9
    .line 106
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@ab
    const/16 v1, 0x5e

    #@ad
    aput-byte v3, v0, v1

    #@af
    .line 107
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@b1
    const/16 v1, 0x5f

    #@b3
    aput-byte v4, v0, v1

    #@b5
    .line 108
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@b7
    const/16 v1, 0x60

    #@b9
    aput-byte v3, v0, v1

    #@bb
    .line 109
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@bd
    const/16 v1, 0x61

    #@bf
    const/16 v2, 0x7b

    #@c1
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@c4
    .line 110
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@c6
    const/16 v1, 0x7b

    #@c8
    const/16 v2, 0x7f

    #@ca
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@cd
    .line 111
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@cf
    const/16 v1, 0x7f

    #@d1
    const/16 v2, 0x85

    #@d3
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@d6
    .line 112
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@d8
    const/16 v1, 0x23

    #@da
    const/16 v2, 0x85

    #@dc
    aput-byte v1, v0, v2

    #@de
    .line 113
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@e0
    const/16 v1, 0x86

    #@e2
    const/16 v2, 0xa0

    #@e4
    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    #@e7
    .line 114
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@e9
    const/16 v1, 0xa0

    #@eb
    const/16 v2, 0xb7

    #@ed
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@f0
    .line 115
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@f2
    const/16 v1, 0xb7

    #@f4
    aput-byte v5, v0, v1

    #@f6
    .line 116
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@f8
    const/16 v1, 0xb8

    #@fa
    const/16 v2, 0xc0

    #@fc
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@ff
    .line 117
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@101
    const/16 v1, 0xc0

    #@103
    const/16 v2, 0xd7

    #@105
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@108
    .line 118
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@10a
    const/16 v1, 0xd7

    #@10c
    aput-byte v3, v0, v1

    #@10e
    .line 119
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@110
    const/16 v1, 0xd8

    #@112
    const/16 v2, 0xf7

    #@114
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@117
    .line 120
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@119
    const/16 v1, 0xf7

    #@11b
    aput-byte v3, v0, v1

    #@11d
    .line 121
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@11f
    const/16 v1, 0xf8

    #@121
    const/16 v2, 0x300

    #@123
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@126
    .line 122
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@128
    const/16 v1, 0x300

    #@12a
    const/16 v2, 0x370

    #@12c
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@12f
    .line 123
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@131
    const/16 v1, 0x370

    #@133
    const/16 v2, 0x37e

    #@135
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@138
    .line 124
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@13a
    const/16 v1, 0x37e

    #@13c
    aput-byte v3, v0, v1

    #@13e
    .line 125
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@140
    const/16 v1, 0x37f

    #@142
    const/16 v2, 0x2000

    #@144
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@147
    .line 126
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@149
    const/16 v1, 0x2000

    #@14b
    const/16 v2, 0x200c

    #@14d
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@150
    .line 127
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@152
    const/16 v1, 0x200c

    #@154
    const/16 v2, 0x200e

    #@156
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@159
    .line 128
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@15b
    const/16 v1, 0x200e

    #@15d
    const/16 v2, 0x2028

    #@15f
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@162
    .line 129
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@164
    const/16 v1, 0x23

    #@166
    const/16 v2, 0x2028

    #@168
    aput-byte v1, v0, v2

    #@16a
    .line 130
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@16c
    const/16 v1, 0x2029

    #@16e
    const/16 v2, 0x203f

    #@170
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@173
    .line 131
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@175
    const/16 v1, 0x203f

    #@177
    const/16 v2, 0x2041

    #@179
    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    #@17c
    .line 132
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@17e
    const/16 v1, 0x2041

    #@180
    const/16 v2, 0x2070

    #@182
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@185
    .line 133
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@187
    const/16 v1, 0x2070

    #@189
    const/16 v2, 0x2190

    #@18b
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@18e
    .line 134
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@190
    const/16 v1, 0x2190

    #@192
    const/16 v2, 0x2c00

    #@194
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@197
    .line 135
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@199
    const/16 v1, 0x2c00

    #@19b
    const/16 v2, 0x2ff0

    #@19d
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1a0
    .line 136
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1a2
    const/16 v1, 0x2ff0

    #@1a4
    const/16 v2, 0x3001

    #@1a6
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@1a9
    .line 137
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1ab
    const/16 v1, 0x3001

    #@1ad
    const v2, 0xd800

    #@1b0
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1b3
    .line 138
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1b5
    const v1, 0xe000

    #@1b8
    const v2, 0xf900

    #@1bb
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@1be
    .line 139
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1c0
    const v1, 0xf900

    #@1c3
    const v2, 0xfdd0

    #@1c6
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1c9
    .line 140
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1cb
    const v1, 0xfdd0

    #@1ce
    const v2, 0xfdf0

    #@1d1
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    #@1d4
    .line 141
    sget-object v0, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@1d6
    const v1, 0xfdf0

    #@1d9
    const v2, 0xfffe

    #@1dc
    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    #@1df
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isXML11Content(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 203
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x20

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 204
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const v2, 0x10ffff

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public static isXML11InternalEntityContent(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 214
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x30

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 215
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const v2, 0x10ffff

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public static isXML11Invalid(I)Z
    .locals 1
    .param p0, "c"    # I

    #@0
    .prologue
    .line 180
    invoke-static {p0}, Lorg/apache/xml/utils/XML11Char;->isXML11Valid(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public static isXML11NCName(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 262
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit16 v2, v2, 0x80

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 263
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const/high16 v2, 0xf0000

    #@13
    if-lt p0, v2, :cond_0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public static isXML11NCNameStart(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 250
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x40

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 251
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const/high16 v2, 0xf0000

    #@13
    if-lt p0, v2, :cond_0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public static isXML11Name(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 238
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x8

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 239
    :cond_1
    if-lt p0, v3, :cond_2

    #@11
    const/high16 v2, 0xf0000

    #@13
    if-lt p0, v2, :cond_0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public static isXML11NameHighSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 275
    const v1, 0xd800

    #@4
    if-gt v1, p0, :cond_0

    #@6
    const v1, 0xdb7f

    #@9
    if-gt p0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static isXML11NameStart(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 226
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x4

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 227
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const/high16 v2, 0xf0000

    #@13
    if-lt p0, v2, :cond_0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public static isXML11Space(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 156
    const/high16 v1, 0x10000

    #@3
    if-ge p0, v1, :cond_0

    #@5
    sget-object v1, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@7
    aget-byte v1, v1, p0

    #@9
    and-int/lit8 v1, v1, 0x2

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isXML11Valid(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 170
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x1

    #@c
    if-eqz v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 171
    :cond_1
    if-gt v3, p0, :cond_2

    #@11
    const v2, 0x10ffff

    #@14
    if-le p0, v2, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0
.end method

.method public static isXML11ValidLiteral(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/high16 v3, 0x10000

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 192
    if-ge p0, v3, :cond_1

    #@6
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@8
    aget-byte v2, v2, p0

    #@a
    and-int/lit8 v2, v2, 0x1

    #@c
    if-eqz v2, :cond_1

    #@e
    sget-object v2, Lorg/apache/xml/utils/XML11Char;->XML11CHARS:[B

    #@10
    aget-byte v2, v2, p0

    #@12
    and-int/lit8 v2, v2, 0x10

    #@14
    if-nez v2, :cond_1

    #@16
    :cond_0
    :goto_0
    return v0

    #@17
    .line 193
    :cond_1
    if-gt v3, p0, :cond_2

    #@19
    const v2, 0x10ffff

    #@1c
    if-le p0, v2, :cond_0

    #@1e
    :cond_2
    move v0, v1

    #@1f
    goto :goto_0
.end method

.method public static isXML11ValidNCName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "ncName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 340
    .local v3, "length":I
    if-nez v3, :cond_0

    #@8
    .line 341
    return v5

    #@9
    .line 342
    :cond_0
    const/4 v2, 0x1

    #@a
    .line 343
    .local v2, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 344
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NCNameStart(I)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 345
    if-le v3, v6, :cond_4

    #@16
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_4

    #@1c
    .line 346
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 347
    .local v1, "ch2":C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 348
    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    #@29
    move-result v4

    #@2a
    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NCNameStart(I)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 351
    const/4 v2, 0x2

    #@31
    .line 357
    .end local v1    # "ch2":C
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_7

    #@33
    .line 358
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v0

    #@37
    .line 359
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NCName(I)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 360
    add-int/lit8 v2, v2, 0x1

    #@3f
    if-ge v2, v3, :cond_6

    #@41
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_6

    #@47
    .line 361
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v1

    #@4b
    .line 362
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_5

    #@51
    .line 363
    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    #@54
    move-result v4

    #@55
    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NCName(I)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5

    #@5b
    .line 371
    .end local v1    # "ch2":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 349
    .restart local v1    # "ch2":C
    :cond_3
    return v5

    #@5f
    .line 354
    .end local v1    # "ch2":C
    :cond_4
    return v5

    #@60
    .line 364
    .restart local v1    # "ch2":C
    :cond_5
    return v5

    #@61
    .line 368
    .end local v1    # "ch2":C
    :cond_6
    return v5

    #@62
    .line 373
    :cond_7
    return v6
.end method

.method public static isXML11ValidName(Ljava/lang/String;)Z
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 290
    .local v3, "length":I
    if-nez v3, :cond_0

    #@8
    .line 291
    return v5

    #@9
    .line 292
    :cond_0
    const/4 v2, 0x1

    #@a
    .line 293
    .local v2, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    .line 294
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameStart(I)Z

    #@11
    move-result v4

    #@12
    if-nez v4, :cond_1

    #@14
    .line 295
    if-le v3, v6, :cond_4

    #@16
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_4

    #@1c
    .line 296
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    #@1f
    move-result v1

    #@20
    .line 297
    .local v1, "ch2":C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 298
    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    #@29
    move-result v4

    #@2a
    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11NameStart(I)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_3

    #@30
    .line 301
    const/4 v2, 0x2

    #@31
    .line 307
    .end local v1    # "ch2":C
    :cond_1
    :goto_0
    if-ge v2, v3, :cond_7

    #@33
    .line 308
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v0

    #@37
    .line 309
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 310
    add-int/lit8 v2, v2, 0x1

    #@3f
    if-ge v2, v3, :cond_6

    #@41
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_6

    #@47
    .line 311
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v1

    #@4b
    .line 312
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_5

    #@51
    .line 313
    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    #@54
    move-result v4

    #@55
    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    #@58
    move-result v4

    #@59
    if-eqz v4, :cond_5

    #@5b
    .line 321
    .end local v1    # "ch2":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 299
    .restart local v1    # "ch2":C
    :cond_3
    return v5

    #@5f
    .line 304
    .end local v1    # "ch2":C
    :cond_4
    return v5

    #@60
    .line 314
    .restart local v1    # "ch2":C
    :cond_5
    return v5

    #@61
    .line 318
    .end local v1    # "ch2":C
    :cond_6
    return v5

    #@62
    .line 323
    :cond_7
    return v6
.end method

.method public static isXML11ValidNmtoken(Ljava/lang/String;)Z
    .locals 6
    .param p0, "nmtoken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 387
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 388
    .local v3, "length":I
    if-nez v3, :cond_0

    #@7
    .line 389
    return v5

    #@8
    .line 390
    :cond_0
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@b
    .line 391
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v0

    #@f
    .line 392
    .local v0, "ch":C
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    #@12
    move-result v4

    #@13
    if-nez v4, :cond_1

    #@15
    .line 393
    add-int/lit8 v2, v2, 0x1

    #@17
    if-ge v2, v3, :cond_3

    #@19
    invoke-static {v0}, Lorg/apache/xml/utils/XML11Char;->isXML11NameHighSurrogate(I)Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_3

    #@1f
    .line 394
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v1

    #@23
    .line 395
    .local v1, "ch2":C
    invoke-static {v1}, Lorg/apache/xml/utils/XMLChar;->isLowSurrogate(I)Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 396
    invoke-static {v0, v1}, Lorg/apache/xml/utils/XMLChar;->supplemental(CC)I

    #@2c
    move-result v4

    #@2d
    invoke-static {v4}, Lorg/apache/xml/utils/XML11Char;->isXML11Name(I)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 390
    .end local v1    # "ch2":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 397
    .restart local v1    # "ch2":C
    :cond_2
    return v5

    #@37
    .line 401
    .end local v1    # "ch2":C
    :cond_3
    return v5

    #@38
    .line 405
    .end local v0    # "ch":C
    :cond_4
    const/4 v4, 0x1

    #@39
    return v4
.end method

.method public static isXML11ValidQName(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 415
    const/16 v4, 0x3a

    #@3
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 417
    .local v0, "colon":I
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c
    move-result v4

    #@d
    add-int/lit8 v4, v4, -0x1

    #@f
    if-ne v0, v4, :cond_1

    #@11
    .line 418
    :cond_0
    return v3

    #@12
    .line 421
    :cond_1
    if-lez v0, :cond_3

    #@14
    .line 422
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 423
    .local v2, "prefix":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    #@1a
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 424
    .local v1, "localPart":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_2

    #@24
    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@27
    move-result v3

    #@28
    :cond_2
    return v3

    #@29
    .line 427
    .end local v1    # "localPart":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@2c
    move-result v3

    #@2d
    return v3
.end method
