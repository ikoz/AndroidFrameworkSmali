.class public Landroid/icu/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Bidi$BracketData;,
        Landroid/icu/text/Bidi$ImpTabPair;,
        Landroid/icu/text/Bidi$InsertPoints;,
        Landroid/icu/text/Bidi$IsoRun;,
        Landroid/icu/text/Bidi$Isolate;,
        Landroid/icu/text/Bidi$LevState;,
        Landroid/icu/text/Bidi$Opening;,
        Landroid/icu/text/Bidi$Point;
    }
.end annotation


# static fields
.field static final AL:B = 0xdt

.field static final AN:B = 0x5t

.field static final B:B = 0x7t

.field static final BN:B = 0x12t

.field public static final CLASS_DEFAULT:I = 0x17

.field private static final CR:C = '\r'

.field static final CS:B = 0x6t

.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = 0x7e

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = 0x7f

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DO_MIRRORING:S = 0x2s

.field static final DirPropFlagE:[I

.field static final DirPropFlagLR:[I

.field static final DirPropFlagMultiRuns:I

.field static final DirPropFlagO:[I

.field static final EN:B = 0x2t

.field static final ENL:B = 0x17t

.field static final ENR:B = 0x18t

.field static final ES:B = 0x3t

.field static final ET:B = 0x4t

.field static final FIRSTALLOC:I = 0xa

.field static final FOUND_L:B

.field static final FOUND_R:B

.field static final FSI:B = 0x13t

.field private static final IMPTABLEVELS_COLUMNS:I = 0x8

.field private static final IMPTABLEVELS_RES:I = 0x7

.field private static final IMPTABPROPS_COLUMNS:I = 0x10

.field private static final IMPTABPROPS_RES:I = 0xf

.field public static final INSERT_LRM_FOR_NUMERIC:S = 0x4s

.field static final ISOLATE:I = 0x100

.field public static final KEEP_BASE_COMBINING:S = 0x1s

.field static final L:B = 0x0t

.field public static final LEVEL_DEFAULT_LTR:B = 0x7et

.field public static final LEVEL_DEFAULT_RTL:B = 0x7ft

.field public static final LEVEL_OVERRIDE:B = -0x80t

.field private static final LF:C = '\n'

.field static final LOOKING_FOR_PDI:I = 0x3

.field static final LRE:B = 0xbt

.field static final LRI:B = 0x14t

.field static final LRM_AFTER:I = 0x2

.field static final LRM_BEFORE:I = 0x1

.field static final LRO:B = 0xct

.field public static final LTR:B = 0x0t

.field public static final MAP_NOWHERE:I = -0x1

.field static final MASK_BN_EXPLICIT:I

.field static final MASK_B_S:I

.field static final MASK_EMBEDDING:I

.field static final MASK_EXPLICIT:I

.field static final MASK_ISO:I

.field static final MASK_LTR:I

.field static final MASK_POSSIBLE_N:I

.field static final MASK_RTL:I

.field static final MASK_R_AL:I

.field static final MASK_STRONG_EN_AN:I

.field static final MASK_WS:I

.field public static final MAX_EXPLICIT_LEVEL:B = 0x7dt

.field public static final MIXED:B = 0x2t

.field public static final NEUTRAL:B = 0x3t

.field static final NOT_SEEKING_STRONG:I = 0x0

.field static final NSM:B = 0x11t

.field static final ON:B = 0xat

.field public static final OPTION_DEFAULT:I = 0x0

.field public static final OPTION_INSERT_MARKS:I = 0x1

.field public static final OPTION_REMOVE_CONTROLS:I = 0x2

.field public static final OPTION_STREAMING:I = 0x4

.field public static final OUTPUT_REVERSE:S = 0x10s

.field static final PDF:B = 0x10t

.field static final PDI:B = 0x16t

.field static final R:B = 0x1t

.field public static final REMOVE_BIDI_CONTROLS:S = 0x8s

.field static final REORDER_COUNT:S = 0x7s

.field public static final REORDER_DEFAULT:S = 0x0s

.field public static final REORDER_GROUP_NUMBERS_WITH_R:S = 0x2s

.field public static final REORDER_INVERSE_FOR_NUMBERS_SPECIAL:S = 0x6s

.field public static final REORDER_INVERSE_LIKE_DIRECT:S = 0x5s

.field public static final REORDER_INVERSE_NUMBERS_AS_L:S = 0x4s

.field static final REORDER_LAST_LOGICAL_TO_VISUAL:S = 0x1s

.field public static final REORDER_NUMBERS_SPECIAL:S = 0x1s

.field public static final REORDER_RUNS_ONLY:S = 0x3s

.field static final RLE:B = 0xet

.field static final RLI:B = 0x15t

.field static final RLM_AFTER:I = 0x8

.field static final RLM_BEFORE:I = 0x4

.field static final RLO:B = 0xft

.field public static final RTL:B = 0x1t

.field static final S:B = 0x8t

.field static final SEEKING_STRONG_FOR_FSI:I = 0x2

.field static final SEEKING_STRONG_FOR_PARA:I = 0x1

.field static final SIMPLE_OPENINGS_COUNT:I = 0x14

.field static final SIMPLE_PARAS_COUNT:I = 0xa

.field static final WS:B = 0x9t

.field private static final _AN:S = 0x3s

.field private static final _B:S = 0x6s

.field private static final _EN:S = 0x2s

.field private static final _L:S = 0x0s

.field private static final _ON:S = 0x4s

.field private static final _R:S = 0x1s

.field private static final _S:S = 0x5s

.field private static final groupProp:[S

.field private static final impAct0:[S

.field private static final impAct1:[S

.field private static final impAct2:[S

.field private static final impAct3:[S

.field private static final impTabL_DEFAULT:[[B

.field private static final impTabL_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTabL_NUMBERS_SPECIAL:[[B

.field private static final impTabProps:[[S

.field private static final impTabR_DEFAULT:[[B

.field private static final impTabR_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabR_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;


# instance fields
.field final bdp:Landroid/icu/impl/UBiDiProps;

.field controlCount:I

.field customClassifier:Landroid/icu/text/BidiClassifier;

.field defaultParaLevel:B

.field dirProps:[B

.field dirPropsMemory:[B

.field direction:B

.field epilogue:Ljava/lang/String;

.field flags:I

.field impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

.field insertPoints:Landroid/icu/text/Bidi$InsertPoints;

.field isGoodLogicalToVisualRunsMap:Z

.field isInverse:Z

.field isolateCount:I

.field isolates:[Landroid/icu/text/Bidi$Isolate;

.field lastArabicPos:I

.field length:I

.field levels:[B

.field levelsMemory:[B

.field logicalToVisualRunsMap:[I

.field mayAllocateRuns:Z

.field mayAllocateText:Z

.field orderParagraphsLTR:Z

.field originalLength:I

.field paraBidi:Landroid/icu/text/Bidi;

.field paraCount:I

.field paraLevel:B

.field paras_level:[B

.field paras_limit:[I

.field prologue:Ljava/lang/String;

.field reorderingMode:I

.field reorderingOptions:I

.field resultLength:I

.field runCount:I

.field runs:[Landroid/icu/text/BidiRun;

.field runsMemory:[Landroid/icu/text/BidiRun;

.field simpleRuns:[Landroid/icu/text/BidiRun;

.field text:[C

.field trailingWSStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    const/16 v3, 0x10

    #@5
    const/16 v5, 0x8

    #@7
    .line 974
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@a
    move-result v0

    #@b
    int-to-byte v0, v0

    #@c
    sput-byte v0, Landroid/icu/text/Bidi;->FOUND_L:B

    #@e
    .line 975
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@11
    move-result v0

    #@12
    int-to-byte v0, v0

    #@13
    sput-byte v0, Landroid/icu/text/Bidi;->FOUND_R:B

    #@15
    .line 1110
    const/16 v0, 0x1f

    #@17
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1a
    move-result v0

    #@1b
    sput v0, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    #@1d
    .line 1113
    new-array v0, v8, [I

    #@1f
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@22
    move-result v1

    #@23
    aput v1, v0, v7

    #@25
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@28
    move-result v1

    #@29
    aput v1, v0, v6

    #@2b
    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    #@2d
    .line 1114
    new-array v0, v8, [I

    #@2f
    const/16 v1, 0xb

    #@31
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@34
    move-result v1

    #@35
    aput v1, v0, v7

    #@37
    const/16 v1, 0xe

    #@39
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@3c
    move-result v1

    #@3d
    aput v1, v0, v6

    #@3f
    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    #@41
    .line 1115
    new-array v0, v8, [I

    #@43
    const/16 v1, 0xc

    #@45
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@48
    move-result v1

    #@49
    aput v1, v0, v7

    #@4b
    const/16 v1, 0xf

    #@4d
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@50
    move-result v1

    #@51
    aput v1, v0, v6

    #@53
    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    #@55
    .line 1125
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@58
    move-result v0

    #@59
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@5c
    move-result v1

    #@5d
    or-int/2addr v0, v1

    #@5e
    const/16 v1, 0x17

    #@60
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@63
    move-result v1

    #@64
    or-int/2addr v0, v1

    #@65
    const/16 v1, 0x18

    #@67
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@6a
    move-result v1

    #@6b
    or-int/2addr v0, v1

    #@6c
    const/4 v1, 0x5

    #@6d
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@70
    move-result v1

    #@71
    or-int/2addr v0, v1

    #@72
    const/16 v1, 0xb

    #@74
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@77
    move-result v1

    #@78
    or-int/2addr v0, v1

    #@79
    const/16 v1, 0xc

    #@7b
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@7e
    move-result v1

    #@7f
    or-int/2addr v0, v1

    #@80
    const/16 v1, 0x14

    #@82
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@85
    move-result v1

    #@86
    or-int/2addr v0, v1

    #@87
    .line 1124
    sput v0, Landroid/icu/text/Bidi;->MASK_LTR:I

    #@89
    .line 1126
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@8c
    move-result v0

    #@8d
    const/16 v1, 0xd

    #@8f
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@92
    move-result v1

    #@93
    or-int/2addr v0, v1

    #@94
    const/16 v1, 0xe

    #@96
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@99
    move-result v1

    #@9a
    or-int/2addr v0, v1

    #@9b
    const/16 v1, 0xf

    #@9d
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@a0
    move-result v1

    #@a1
    or-int/2addr v0, v1

    #@a2
    const/16 v1, 0x15

    #@a4
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@a7
    move-result v1

    #@a8
    or-int/2addr v0, v1

    #@a9
    sput v0, Landroid/icu/text/Bidi;->MASK_RTL:I

    #@ab
    .line 1128
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@ae
    move-result v0

    #@af
    const/16 v1, 0xd

    #@b1
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@b4
    move-result v1

    #@b5
    or-int/2addr v0, v1

    #@b6
    sput v0, Landroid/icu/text/Bidi;->MASK_R_AL:I

    #@b8
    .line 1129
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@bb
    move-result v0

    #@bc
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@bf
    move-result v1

    #@c0
    or-int/2addr v0, v1

    #@c1
    const/16 v1, 0xd

    #@c3
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@c6
    move-result v1

    #@c7
    or-int/2addr v0, v1

    #@c8
    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@cb
    move-result v1

    #@cc
    or-int/2addr v0, v1

    #@cd
    const/4 v1, 0x5

    #@ce
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@d1
    move-result v1

    #@d2
    or-int/2addr v0, v1

    #@d3
    sput v0, Landroid/icu/text/Bidi;->MASK_STRONG_EN_AN:I

    #@d5
    .line 1131
    const/16 v0, 0xb

    #@d7
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@da
    move-result v0

    #@db
    const/16 v1, 0xc

    #@dd
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@e0
    move-result v1

    #@e1
    or-int/2addr v0, v1

    #@e2
    const/16 v1, 0xe

    #@e4
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@e7
    move-result v1

    #@e8
    or-int/2addr v0, v1

    #@e9
    const/16 v1, 0xf

    #@eb
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@ee
    move-result v1

    #@ef
    or-int/2addr v0, v1

    #@f0
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@f3
    move-result v1

    #@f4
    or-int/2addr v0, v1

    #@f5
    sput v0, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    #@f7
    .line 1132
    const/16 v0, 0x12

    #@f9
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@fc
    move-result v0

    #@fd
    sget v1, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    #@ff
    or-int/2addr v0, v1

    #@100
    sput v0, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@102
    .line 1135
    const/16 v0, 0x14

    #@104
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@107
    move-result v0

    #@108
    const/16 v1, 0x15

    #@10a
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@10d
    move-result v1

    #@10e
    or-int/2addr v0, v1

    #@10f
    const/16 v1, 0x13

    #@111
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@114
    move-result v1

    #@115
    or-int/2addr v0, v1

    #@116
    const/16 v1, 0x16

    #@118
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@11b
    move-result v1

    #@11c
    or-int/2addr v0, v1

    #@11d
    sput v0, Landroid/icu/text/Bidi;->MASK_ISO:I

    #@11f
    .line 1138
    const/4 v0, 0x7

    #@120
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@123
    move-result v0

    #@124
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@127
    move-result v1

    #@128
    or-int/2addr v0, v1

    #@129
    sput v0, Landroid/icu/text/Bidi;->MASK_B_S:I

    #@12b
    .line 1141
    sget v0, Landroid/icu/text/Bidi;->MASK_B_S:I

    #@12d
    const/16 v1, 0x9

    #@12f
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@132
    move-result v1

    #@133
    or-int/2addr v0, v1

    #@134
    sget v1, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@136
    or-int/2addr v0, v1

    #@137
    sget v1, Landroid/icu/text/Bidi;->MASK_ISO:I

    #@139
    or-int/2addr v0, v1

    #@13a
    sput v0, Landroid/icu/text/Bidi;->MASK_WS:I

    #@13c
    .line 1144
    const/16 v0, 0xa

    #@13e
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@141
    move-result v0

    #@142
    const/4 v1, 0x6

    #@143
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@146
    move-result v1

    #@147
    or-int/2addr v0, v1

    #@148
    const/4 v1, 0x3

    #@149
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@14c
    move-result v1

    #@14d
    or-int/2addr v0, v1

    #@14e
    const/4 v1, 0x4

    #@14f
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@152
    move-result v1

    #@153
    or-int/2addr v0, v1

    #@154
    sget v1, Landroid/icu/text/Bidi;->MASK_WS:I

    #@156
    or-int/2addr v0, v1

    #@157
    sput v0, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    #@159
    .line 1151
    const/16 v0, 0x11

    #@15b
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@15e
    move-result v0

    #@15f
    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    #@161
    or-int/2addr v0, v1

    #@162
    sput v0, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    #@164
    .line 2716
    const/16 v0, 0x19

    #@166
    new-array v0, v0, [S

    #@168
    fill-array-data v0, :array_0

    #@16b
    .line 2715
    sput-object v0, Landroid/icu/text/Bidi;->groupProp:[S

    #@16d
    .line 2763
    const/16 v0, 0x18

    #@16f
    new-array v0, v0, [[S

    #@171
    .line 2765
    new-array v1, v3, [S

    #@173
    fill-array-data v1, :array_1

    #@176
    aput-object v1, v0, v7

    #@178
    .line 2766
    new-array v1, v3, [S

    #@17a
    fill-array-data v1, :array_2

    #@17d
    aput-object v1, v0, v6

    #@17f
    .line 2767
    new-array v1, v3, [S

    #@181
    fill-array-data v1, :array_3

    #@184
    aput-object v1, v0, v8

    #@186
    .line 2768
    new-array v1, v3, [S

    #@188
    fill-array-data v1, :array_4

    #@18b
    const/4 v2, 0x3

    #@18c
    aput-object v1, v0, v2

    #@18e
    .line 2769
    new-array v1, v3, [S

    #@190
    fill-array-data v1, :array_5

    #@193
    const/4 v2, 0x4

    #@194
    aput-object v1, v0, v2

    #@196
    .line 2770
    new-array v1, v3, [S

    #@198
    fill-array-data v1, :array_6

    #@19b
    const/4 v2, 0x5

    #@19c
    aput-object v1, v0, v2

    #@19e
    .line 2771
    new-array v1, v3, [S

    #@1a0
    fill-array-data v1, :array_7

    #@1a3
    const/4 v2, 0x6

    #@1a4
    aput-object v1, v0, v2

    #@1a6
    .line 2772
    new-array v1, v3, [S

    #@1a8
    fill-array-data v1, :array_8

    #@1ab
    const/4 v2, 0x7

    #@1ac
    aput-object v1, v0, v2

    #@1ae
    .line 2773
    new-array v1, v3, [S

    #@1b0
    fill-array-data v1, :array_9

    #@1b3
    aput-object v1, v0, v5

    #@1b5
    .line 2774
    new-array v1, v3, [S

    #@1b7
    fill-array-data v1, :array_a

    #@1ba
    const/16 v2, 0x9

    #@1bc
    aput-object v1, v0, v2

    #@1be
    .line 2775
    new-array v1, v3, [S

    #@1c0
    fill-array-data v1, :array_b

    #@1c3
    const/16 v2, 0xa

    #@1c5
    aput-object v1, v0, v2

    #@1c7
    .line 2776
    new-array v1, v3, [S

    #@1c9
    fill-array-data v1, :array_c

    #@1cc
    const/16 v2, 0xb

    #@1ce
    aput-object v1, v0, v2

    #@1d0
    .line 2777
    new-array v1, v3, [S

    #@1d2
    fill-array-data v1, :array_d

    #@1d5
    const/16 v2, 0xc

    #@1d7
    aput-object v1, v0, v2

    #@1d9
    .line 2778
    new-array v1, v3, [S

    #@1db
    fill-array-data v1, :array_e

    #@1de
    const/16 v2, 0xd

    #@1e0
    aput-object v1, v0, v2

    #@1e2
    .line 2779
    new-array v1, v3, [S

    #@1e4
    fill-array-data v1, :array_f

    #@1e7
    const/16 v2, 0xe

    #@1e9
    aput-object v1, v0, v2

    #@1eb
    .line 2780
    new-array v1, v3, [S

    #@1ed
    fill-array-data v1, :array_10

    #@1f0
    const/16 v2, 0xf

    #@1f2
    aput-object v1, v0, v2

    #@1f4
    .line 2781
    new-array v1, v3, [S

    #@1f6
    fill-array-data v1, :array_11

    #@1f9
    aput-object v1, v0, v3

    #@1fb
    .line 2782
    new-array v1, v3, [S

    #@1fd
    fill-array-data v1, :array_12

    #@200
    const/16 v2, 0x11

    #@202
    aput-object v1, v0, v2

    #@204
    .line 2783
    new-array v1, v3, [S

    #@206
    fill-array-data v1, :array_13

    #@209
    const/16 v2, 0x12

    #@20b
    aput-object v1, v0, v2

    #@20d
    .line 2784
    new-array v1, v3, [S

    #@20f
    fill-array-data v1, :array_14

    #@212
    const/16 v2, 0x13

    #@214
    aput-object v1, v0, v2

    #@216
    .line 2785
    new-array v1, v3, [S

    #@218
    fill-array-data v1, :array_15

    #@21b
    const/16 v2, 0x14

    #@21d
    aput-object v1, v0, v2

    #@21f
    .line 2786
    new-array v1, v3, [S

    #@221
    fill-array-data v1, :array_16

    #@224
    const/16 v2, 0x15

    #@226
    aput-object v1, v0, v2

    #@228
    .line 2787
    new-array v1, v3, [S

    #@22a
    fill-array-data v1, :array_17

    #@22d
    const/16 v2, 0x16

    #@22f
    aput-object v1, v0, v2

    #@231
    .line 2788
    new-array v1, v3, [S

    #@233
    fill-array-data v1, :array_18

    #@236
    const/16 v2, 0x17

    #@238
    aput-object v1, v0, v2

    #@23a
    .line 2762
    sput-object v0, Landroid/icu/text/Bidi;->impTabProps:[[S

    #@23c
    .line 2865
    const/4 v0, 0x6

    #@23d
    new-array v0, v0, [[B

    #@23f
    .line 2867
    new-array v1, v5, [B

    #@241
    fill-array-data v1, :array_19

    #@244
    aput-object v1, v0, v7

    #@246
    .line 2868
    new-array v1, v5, [B

    #@248
    fill-array-data v1, :array_1a

    #@24b
    aput-object v1, v0, v6

    #@24d
    .line 2869
    new-array v1, v5, [B

    #@24f
    fill-array-data v1, :array_1b

    #@252
    aput-object v1, v0, v8

    #@254
    .line 2870
    new-array v1, v5, [B

    #@256
    fill-array-data v1, :array_1c

    #@259
    const/4 v2, 0x3

    #@25a
    aput-object v1, v0, v2

    #@25c
    .line 2871
    new-array v1, v5, [B

    #@25e
    fill-array-data v1, :array_1d

    #@261
    const/4 v2, 0x4

    #@262
    aput-object v1, v0, v2

    #@264
    .line 2872
    new-array v1, v5, [B

    #@266
    fill-array-data v1, :array_1e

    #@269
    const/4 v2, 0x5

    #@26a
    aput-object v1, v0, v2

    #@26c
    .line 2861
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    #@26e
    .line 2879
    const/4 v0, 0x6

    #@26f
    new-array v0, v0, [[B

    #@271
    .line 2881
    new-array v1, v5, [B

    #@273
    fill-array-data v1, :array_1f

    #@276
    aput-object v1, v0, v7

    #@278
    .line 2882
    new-array v1, v5, [B

    #@27a
    fill-array-data v1, :array_20

    #@27d
    aput-object v1, v0, v6

    #@27f
    .line 2883
    new-array v1, v5, [B

    #@281
    fill-array-data v1, :array_21

    #@284
    aput-object v1, v0, v8

    #@286
    .line 2884
    new-array v1, v5, [B

    #@288
    fill-array-data v1, :array_22

    #@28b
    const/4 v2, 0x3

    #@28c
    aput-object v1, v0, v2

    #@28e
    .line 2885
    new-array v1, v5, [B

    #@290
    fill-array-data v1, :array_23

    #@293
    const/4 v2, 0x4

    #@294
    aput-object v1, v0, v2

    #@296
    .line 2886
    new-array v1, v5, [B

    #@298
    fill-array-data v1, :array_24

    #@29b
    const/4 v2, 0x5

    #@29c
    aput-object v1, v0, v2

    #@29e
    .line 2875
    sput-object v0, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    #@2a0
    .line 2889
    const/4 v0, 0x5

    #@2a1
    new-array v0, v0, [S

    #@2a3
    fill-array-data v0, :array_25

    #@2a6
    sput-object v0, Landroid/icu/text/Bidi;->impAct0:[S

    #@2a8
    .line 2891
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@2aa
    .line 2892
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    #@2ac
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    #@2ae
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@2b0
    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    #@2b2
    .line 2891
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@2b5
    sput-object v0, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    #@2b7
    .line 2894
    const/4 v0, 0x5

    #@2b8
    new-array v0, v0, [[B

    #@2ba
    .line 2899
    new-array v1, v5, [B

    #@2bc
    fill-array-data v1, :array_26

    #@2bf
    aput-object v1, v0, v7

    #@2c1
    .line 2900
    new-array v1, v5, [B

    #@2c3
    fill-array-data v1, :array_27

    #@2c6
    aput-object v1, v0, v6

    #@2c8
    .line 2901
    new-array v1, v5, [B

    #@2ca
    fill-array-data v1, :array_28

    #@2cd
    aput-object v1, v0, v8

    #@2cf
    .line 2902
    new-array v1, v5, [B

    #@2d1
    fill-array-data v1, :array_29

    #@2d4
    const/4 v2, 0x3

    #@2d5
    aput-object v1, v0, v2

    #@2d7
    .line 2903
    new-array v1, v5, [B

    #@2d9
    fill-array-data v1, :array_2a

    #@2dc
    const/4 v2, 0x4

    #@2dd
    aput-object v1, v0, v2

    #@2df
    .line 2894
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    #@2e1
    .line 2905
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@2e3
    .line 2906
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    #@2e5
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    #@2e7
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@2e9
    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    #@2eb
    .line 2905
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@2ee
    sput-object v0, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    #@2f0
    .line 2908
    const/4 v0, 0x6

    #@2f1
    new-array v0, v0, [[B

    #@2f3
    .line 2913
    new-array v1, v5, [B

    #@2f5
    fill-array-data v1, :array_2b

    #@2f8
    aput-object v1, v0, v7

    #@2fa
    .line 2914
    new-array v1, v5, [B

    #@2fc
    fill-array-data v1, :array_2c

    #@2ff
    aput-object v1, v0, v6

    #@301
    .line 2915
    new-array v1, v5, [B

    #@303
    fill-array-data v1, :array_2d

    #@306
    aput-object v1, v0, v8

    #@308
    .line 2916
    new-array v1, v5, [B

    #@30a
    fill-array-data v1, :array_2e

    #@30d
    const/4 v2, 0x3

    #@30e
    aput-object v1, v0, v2

    #@310
    .line 2917
    new-array v1, v5, [B

    #@312
    fill-array-data v1, :array_2f

    #@315
    const/4 v2, 0x4

    #@316
    aput-object v1, v0, v2

    #@318
    .line 2918
    new-array v1, v5, [B

    #@31a
    fill-array-data v1, :array_30

    #@31d
    const/4 v2, 0x5

    #@31e
    aput-object v1, v0, v2

    #@320
    .line 2908
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    #@322
    .line 2920
    const/4 v0, 0x5

    #@323
    new-array v0, v0, [[B

    #@325
    .line 2925
    new-array v1, v5, [B

    #@327
    fill-array-data v1, :array_31

    #@32a
    aput-object v1, v0, v7

    #@32c
    .line 2926
    new-array v1, v5, [B

    #@32e
    fill-array-data v1, :array_32

    #@331
    aput-object v1, v0, v6

    #@333
    .line 2927
    new-array v1, v5, [B

    #@335
    fill-array-data v1, :array_33

    #@338
    aput-object v1, v0, v8

    #@33a
    .line 2928
    new-array v1, v5, [B

    #@33c
    fill-array-data v1, :array_34

    #@33f
    const/4 v2, 0x3

    #@340
    aput-object v1, v0, v2

    #@342
    .line 2929
    new-array v1, v5, [B

    #@344
    fill-array-data v1, :array_35

    #@347
    const/4 v2, 0x4

    #@348
    aput-object v1, v0, v2

    #@34a
    .line 2920
    sput-object v0, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    #@34c
    .line 2931
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@34e
    .line 2932
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    #@350
    .line 2933
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    #@352
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@354
    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    #@356
    .line 2931
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@359
    sput-object v0, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    #@35b
    .line 2935
    const/4 v0, 0x6

    #@35c
    new-array v0, v0, [[B

    #@35e
    .line 2940
    new-array v1, v5, [B

    #@360
    fill-array-data v1, :array_36

    #@363
    aput-object v1, v0, v7

    #@365
    .line 2941
    new-array v1, v5, [B

    #@367
    fill-array-data v1, :array_37

    #@36a
    aput-object v1, v0, v6

    #@36c
    .line 2942
    new-array v1, v5, [B

    #@36e
    fill-array-data v1, :array_38

    #@371
    aput-object v1, v0, v8

    #@373
    .line 2943
    new-array v1, v5, [B

    #@375
    fill-array-data v1, :array_39

    #@378
    const/4 v2, 0x3

    #@379
    aput-object v1, v0, v2

    #@37b
    .line 2944
    new-array v1, v5, [B

    #@37d
    fill-array-data v1, :array_3a

    #@380
    const/4 v2, 0x4

    #@381
    aput-object v1, v0, v2

    #@383
    .line 2945
    new-array v1, v5, [B

    #@385
    fill-array-data v1, :array_3b

    #@388
    const/4 v2, 0x5

    #@389
    aput-object v1, v0, v2

    #@38b
    .line 2935
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    #@38d
    .line 2947
    const/4 v0, 0x6

    #@38e
    new-array v0, v0, [[B

    #@390
    .line 2952
    new-array v1, v5, [B

    #@392
    fill-array-data v1, :array_3c

    #@395
    aput-object v1, v0, v7

    #@397
    .line 2953
    new-array v1, v5, [B

    #@399
    fill-array-data v1, :array_3d

    #@39c
    aput-object v1, v0, v6

    #@39e
    .line 2954
    new-array v1, v5, [B

    #@3a0
    fill-array-data v1, :array_3e

    #@3a3
    aput-object v1, v0, v8

    #@3a5
    .line 2955
    new-array v1, v5, [B

    #@3a7
    fill-array-data v1, :array_3f

    #@3aa
    const/4 v2, 0x3

    #@3ab
    aput-object v1, v0, v2

    #@3ad
    .line 2956
    new-array v1, v5, [B

    #@3af
    fill-array-data v1, :array_40

    #@3b2
    const/4 v2, 0x4

    #@3b3
    aput-object v1, v0, v2

    #@3b5
    .line 2957
    new-array v1, v5, [B

    #@3b7
    fill-array-data v1, :array_41

    #@3ba
    const/4 v2, 0x5

    #@3bb
    aput-object v1, v0, v2

    #@3bd
    .line 2947
    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    #@3bf
    .line 2959
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@3c1
    .line 2960
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    #@3c3
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    #@3c5
    .line 2961
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@3c7
    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    #@3c9
    .line 2959
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@3cc
    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    #@3ce
    .line 2963
    const/4 v0, 0x7

    #@3cf
    new-array v0, v0, [[B

    #@3d1
    .line 2968
    new-array v1, v5, [B

    #@3d3
    fill-array-data v1, :array_42

    #@3d6
    aput-object v1, v0, v7

    #@3d8
    .line 2969
    new-array v1, v5, [B

    #@3da
    fill-array-data v1, :array_43

    #@3dd
    aput-object v1, v0, v6

    #@3df
    .line 2970
    new-array v1, v5, [B

    #@3e1
    fill-array-data v1, :array_44

    #@3e4
    aput-object v1, v0, v8

    #@3e6
    .line 2971
    new-array v1, v5, [B

    #@3e8
    fill-array-data v1, :array_45

    #@3eb
    const/4 v2, 0x3

    #@3ec
    aput-object v1, v0, v2

    #@3ee
    .line 2972
    new-array v1, v5, [B

    #@3f0
    fill-array-data v1, :array_46

    #@3f3
    const/4 v2, 0x4

    #@3f4
    aput-object v1, v0, v2

    #@3f6
    .line 2973
    new-array v1, v5, [B

    #@3f8
    fill-array-data v1, :array_47

    #@3fb
    const/4 v2, 0x5

    #@3fc
    aput-object v1, v0, v2

    #@3fe
    .line 2974
    new-array v1, v5, [B

    #@400
    fill-array-data v1, :array_48

    #@403
    const/4 v2, 0x6

    #@404
    aput-object v1, v0, v2

    #@406
    .line 2963
    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    #@408
    .line 2976
    const/4 v0, 0x4

    #@409
    new-array v0, v0, [S

    #@40b
    fill-array-data v0, :array_49

    #@40e
    sput-object v0, Landroid/icu/text/Bidi;->impAct1:[S

    #@410
    .line 2977
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@412
    .line 2978
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    #@414
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    #@416
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@418
    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    #@41a
    .line 2977
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@41d
    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    #@41f
    .line 2980
    const/4 v0, 0x7

    #@420
    new-array v0, v0, [[B

    #@422
    .line 2984
    new-array v1, v5, [B

    #@424
    fill-array-data v1, :array_4a

    #@427
    aput-object v1, v0, v7

    #@429
    .line 2985
    new-array v1, v5, [B

    #@42b
    fill-array-data v1, :array_4b

    #@42e
    aput-object v1, v0, v6

    #@430
    .line 2986
    new-array v1, v5, [B

    #@432
    fill-array-data v1, :array_4c

    #@435
    aput-object v1, v0, v8

    #@437
    .line 2987
    new-array v1, v5, [B

    #@439
    fill-array-data v1, :array_4d

    #@43c
    const/4 v2, 0x3

    #@43d
    aput-object v1, v0, v2

    #@43f
    .line 2988
    new-array v1, v5, [B

    #@441
    fill-array-data v1, :array_4e

    #@444
    const/4 v2, 0x4

    #@445
    aput-object v1, v0, v2

    #@447
    .line 2989
    new-array v1, v5, [B

    #@449
    fill-array-data v1, :array_4f

    #@44c
    const/4 v2, 0x5

    #@44d
    aput-object v1, v0, v2

    #@44f
    .line 2990
    new-array v1, v5, [B

    #@451
    fill-array-data v1, :array_50

    #@454
    const/4 v2, 0x6

    #@455
    aput-object v1, v0, v2

    #@457
    .line 2980
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    #@459
    .line 2992
    const/4 v0, 0x7

    #@45a
    new-array v0, v0, [[B

    #@45c
    .line 2997
    new-array v1, v5, [B

    #@45e
    fill-array-data v1, :array_51

    #@461
    aput-object v1, v0, v7

    #@463
    .line 2998
    new-array v1, v5, [B

    #@465
    fill-array-data v1, :array_52

    #@468
    aput-object v1, v0, v6

    #@46a
    .line 2999
    new-array v1, v5, [B

    #@46c
    fill-array-data v1, :array_53

    #@46f
    aput-object v1, v0, v8

    #@471
    .line 3000
    new-array v1, v5, [B

    #@473
    fill-array-data v1, :array_54

    #@476
    const/4 v2, 0x3

    #@477
    aput-object v1, v0, v2

    #@479
    .line 3001
    new-array v1, v5, [B

    #@47b
    fill-array-data v1, :array_55

    #@47e
    const/4 v2, 0x4

    #@47f
    aput-object v1, v0, v2

    #@481
    .line 3002
    new-array v1, v5, [B

    #@483
    fill-array-data v1, :array_56

    #@486
    const/4 v2, 0x5

    #@487
    aput-object v1, v0, v2

    #@489
    .line 3003
    new-array v1, v5, [B

    #@48b
    fill-array-data v1, :array_57

    #@48e
    const/4 v2, 0x6

    #@48f
    aput-object v1, v0, v2

    #@491
    .line 2992
    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    #@493
    .line 3005
    const/4 v0, 0x7

    #@494
    new-array v0, v0, [S

    #@496
    fill-array-data v0, :array_58

    #@499
    sput-object v0, Landroid/icu/text/Bidi;->impAct2:[S

    #@49b
    .line 3006
    const/4 v0, 0x6

    #@49c
    new-array v0, v0, [S

    #@49e
    fill-array-data v0, :array_59

    #@4a1
    sput-object v0, Landroid/icu/text/Bidi;->impAct3:[S

    #@4a3
    .line 3008
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@4a5
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    #@4a7
    .line 3009
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    #@4a9
    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    #@4ab
    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    #@4ad
    .line 3008
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@4b0
    .line 3007
    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    #@4b2
    .line 3011
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@4b4
    .line 3012
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    #@4b6
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    #@4b8
    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    #@4ba
    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    #@4bc
    .line 3011
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@4bf
    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    #@4c1
    .line 3014
    const/4 v0, 0x5

    #@4c2
    new-array v0, v0, [[B

    #@4c4
    .line 3018
    new-array v1, v5, [B

    #@4c6
    fill-array-data v1, :array_5a

    #@4c9
    aput-object v1, v0, v7

    #@4cb
    .line 3019
    new-array v1, v5, [B

    #@4cd
    fill-array-data v1, :array_5b

    #@4d0
    aput-object v1, v0, v6

    #@4d2
    .line 3020
    new-array v1, v5, [B

    #@4d4
    fill-array-data v1, :array_5c

    #@4d7
    aput-object v1, v0, v8

    #@4d9
    .line 3021
    new-array v1, v5, [B

    #@4db
    fill-array-data v1, :array_5d

    #@4de
    const/4 v2, 0x3

    #@4df
    aput-object v1, v0, v2

    #@4e1
    .line 3022
    new-array v1, v5, [B

    #@4e3
    fill-array-data v1, :array_5e

    #@4e6
    const/4 v2, 0x4

    #@4e7
    aput-object v1, v0, v2

    #@4e9
    .line 3014
    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    #@4eb
    .line 3024
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    #@4ed
    .line 3025
    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    #@4ef
    .line 3026
    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    #@4f1
    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    #@4f3
    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    #@4f5
    .line 3024
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    #@4f8
    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    #@4fa
    .line 511
    return-void

    #@4fb
    .line 2716
    nop

    #@4fc
    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x7s
        0x8s
        0x3s
        0x9s
        0x6s
        0x5s
        0x4s
        0x4s
        0xas
        0xas
        0xcs
        0xas
        0xas
        0xas
        0xbs
        0xas
        0x4s
        0x4s
        0x4s
        0x4s
        0xds
        0xes
    .end array-data

    #@519
    .line 2765
    nop

    #@51a
    :array_1
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x5s
        0x7s
        0xfs
        0x11s
        0x7s
        0x9s
        0x7s
        0x0s
        0x7s
        0x3s
        0x12s
        0x15s
        0x4s
    .end array-data

    #@52e
    .line 2766
    :array_2
    .array-data 2
        0x1s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x1s
        0x1s
        0x23s
        0x32s
        0x35s
        0x0s
    .end array-data

    #@542
    .line 2767
    :array_3
    .array-data 2
        0x21s
        0x2s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x2s
        0x2s
        0x23s
        0x32s
        0x35s
        0x1s
    .end array-data

    #@556
    .line 2768
    :array_4
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x28s
        0x3s
        0x3s
        0x3s
        0x32s
        0x35s
        0x1s
    .end array-data

    #@56a
    .line 2769
    :array_5
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x4as
        0xbs
        0x4as
        0x4s
        0x4s
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    #@57e
    .line 2770
    :array_6
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x5s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x4cs
        0x5s
        0x5s
        0x23s
        0x32s
        0x35s
        0x3s
    .end array-data

    #@592
    .line 2771
    :array_7
    .array-data 2
        0x21s
        0x22s
        0x6s
        0x6s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x4ds
        0x6s
        0x6s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    #@5a6
    .line 2772
    :array_8
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x4es
        0x7s
        0x7s
        0x7s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    #@5ba
    .line 2773
    :array_9
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x8s
        0x30s
        0x31s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    #@5ce
    .line 2774
    :array_a
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x9s
        0x7s
        0x9s
        0x9s
        0x23s
        0x12s
        0x15s
        0x4s
    .end array-data

    #@5e2
    .line 2775
    :array_b
    .array-data 2
        0x61s
        0x62s
        0x4s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xas
        0x87s
        0x63s
        0x12s
        0x15s
        0x2s
    .end array-data

    #@5f6
    .line 2776
    :array_c
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0xbs
        0x27s
        0xbs
        0xbs
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    #@60a
    .line 2777
    :array_d
    .array-data 2
        0x61s
        0x62s
        0x64s
        0x5s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xcs
        0x87s
        0x63s
        0x72s
        0x75s
        0x3s
    .end array-data

    #@61e
    .line 2778
    :array_e
    .array-data 2
        0x61s
        0x62s
        0x6s
        0x6s
        0x88s
        0x70s
        0x71s
        0x88s
        0x88s
        0x88s
        0xds
        0x88s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    #@632
    .line 2779
    :array_f
    .array-data 2
        0x21s
        0x22s
        0x84s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0xes
        0x7s
        0xes
        0xes
        0x23s
        0x92s
        0x95s
        0x4s
    .end array-data

    #@646
    .line 2780
    :array_10
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0xfs
        0x31s
        0x27s
        0x29s
        0x27s
        0xfs
        0x27s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    #@65a
    .line 2781
    :array_11
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x10s
        0x31s
        0x28s
        0x28s
        0x28s
        0x10s
        0x28s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    #@66e
    .line 2782
    :array_12
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x11s
        0x27s
        0x29s
        0x27s
        0x11s
        0x27s
        0x23s
        0x32s
        0x35s
        0x6s
    .end array-data

    #@682
    .line 2783
    :array_13
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x53s
        0x14s
        0x53s
        0x12s
        0x12s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    #@696
    .line 2784
    :array_14
    .array-data 2
        0x61s
        0x62s
        0x12s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x13s
        0x87s
        0x63s
        0x12s
        0x15s
        0x0s
    .end array-data

    #@6aa
    .line 2785
    :array_15
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x14s
        0x27s
        0x14s
        0x14s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    #@6be
    .line 2786
    :array_16
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x56s
        0x17s
        0x56s
        0x15s
        0x15s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    #@6d2
    .line 2787
    :array_17
    .array-data 2
        0x61s
        0x62s
        0x15s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x16s
        0x87s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    #@6e6
    .line 2788
    :array_18
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x17s
        0x27s
        0x17s
        0x17s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    #@6fa
    .line 2867
    :array_19
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@702
    .line 2868
    :array_1a
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    #@70a
    .line 2869
    :array_1b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    #@712
    .line 2870
    :array_1c
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    #@71a
    .line 2871
    :array_1d
    .array-data 1
        0x0t
        0x21t
        0x33t
        0x33t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    #@722
    .line 2872
    :array_1e
    .array-data 1
        0x0t
        0x21t
        0x0t
        0x32t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    #@72a
    .line 2881
    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@732
    .line 2882
    :array_20
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    #@73a
    .line 2883
    :array_21
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@742
    .line 2884
    :array_22
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    #@74a
    .line 2885
    :array_23
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x3t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    #@752
    .line 2886
    :array_24
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    #@75a
    .line 2889
    :array_25
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data

    #@763
    .line 2899
    nop

    #@764
    :array_26
    .array-data 1
        0x0t
        0x2t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@76c
    .line 2900
    :array_27
    .array-data 1
        0x0t
        0x42t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@774
    .line 2901
    :array_28
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    #@77c
    .line 2902
    :array_29
    .array-data 1
        0x0t
        0x22t
        0x34t
        0x34t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data

    #@784
    .line 2903
    :array_2a
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x2t
    .end array-data

    #@78c
    .line 2913
    :array_2b
    .array-data 1
        0x0t
        0x3t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@794
    .line 2914
    :array_2c
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x2t
    .end array-data

    #@79c
    .line 2915
    :array_2d
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x1t
    .end array-data

    #@7a4
    .line 2916
    :array_2e
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@7ac
    .line 2917
    :array_2f
    .array-data 1
        0x20t
        0x3t
        0x5t
        0x5t
        0x4t
        0x20t
        0x20t
        0x1t
    .end array-data

    #@7b4
    .line 2918
    :array_30
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x2t
    .end array-data

    #@7bc
    .line 2925
    :array_31
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@7c4
    .line 2926
    :array_32
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@7cc
    .line 2927
    :array_33
    .array-data 1
        0x2t
        0x0t
        0x14t
        0x14t
        0x13t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@7d4
    .line 2928
    :array_34
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@7dc
    .line 2929
    :array_35
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@7e4
    .line 2940
    :array_36
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@7ec
    .line 2941
    :array_37
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    #@7f4
    .line 2942
    :array_38
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    #@7fc
    .line 2943
    :array_39
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    #@804
    .line 2944
    :array_3a
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x4t
        0x4t
        0x20t
        0x1t
    .end array-data

    #@80c
    .line 2945
    :array_3b
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x5t
        0x5t
        0x20t
        0x1t
    .end array-data

    #@814
    .line 2952
    :array_3c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@81c
    .line 2953
    :array_3d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    #@824
    .line 2954
    :array_3e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@82c
    .line 2955
    :array_3f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    #@834
    .line 2956
    :array_40
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x21t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    #@83c
    .line 2957
    :array_41
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    #@844
    .line 2968
    :array_42
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@84c
    .line 2969
    :array_43
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x2t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    #@854
    .line 2970
    :array_44
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    #@85c
    .line 2971
    :array_45
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x0t
    .end array-data

    #@864
    .line 2972
    :array_46
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x3t
    .end array-data

    #@86c
    .line 2973
    :array_47
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x2t
    .end array-data

    #@874
    .line 2974
    :array_48
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x1t
    .end array-data

    #@87c
    .line 2976
    :array_49
    .array-data 2
        0x0s
        0x1s
        0xds
        0xes
    .end array-data

    #@884
    .line 2984
    :array_4a
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@88c
    .line 2985
    :array_4b
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x12t
        0x30t
        0x0t
        0x4t
    .end array-data

    #@894
    .line 2986
    :array_4c
    .array-data 1
        0x20t
        0x63t
        0x20t
        0x1t
        0x2t
        0x30t
        0x20t
        0x3t
    .end array-data

    #@89c
    .line 2987
    :array_4d
    .array-data 1
        0x0t
        0x63t
        0x55t
        0x56t
        0x14t
        0x30t
        0x0t
        0x3t
    .end array-data

    #@8a4
    .line 2988
    :array_4e
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x56t
        0x4t
        0x30t
        0x30t
        0x3t
    .end array-data

    #@8ac
    .line 2989
    :array_4f
    .array-data 1
        0x30t
        0x43t
        0x5t
        0x56t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    #@8b4
    .line 2990
    :array_50
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x6t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    #@8bc
    .line 2997
    :array_51
    .array-data 1
        0x13t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@8c4
    .line 2998
    :array_52
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x1t
    .end array-data

    #@8cc
    .line 2999
    :array_53
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x0t
    .end array-data

    #@8d4
    .line 3000
    :array_54
    .array-data 1
        0x3t
        0x0t
        0x3t
        0x36t
        0x14t
        0x40t
        0x0t
        0x1t
    .end array-data

    #@8dc
    .line 3001
    :array_55
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x0t
    .end array-data

    #@8e4
    .line 3002
    :array_56
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x1t
    .end array-data

    #@8ec
    .line 3003
    :array_57
    .array-data 1
        0x53t
        0x40t
        0x6t
        0x6t
        0x4t
        0x40t
        0x40t
        0x3t
    .end array-data

    #@8f4
    .line 3005
    :array_58
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    #@8ff
    .line 3006
    nop

    #@900
    :array_59
    .array-data 2
        0x0s
        0x1s
        0x9s
        0xas
        0xbs
        0xcs
    .end array-data

    #@90a
    .line 3018
    :array_5a
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    #@912
    .line 3019
    :array_5b
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x30t
        0x0t
        0x4t
    .end array-data

    #@91a
    .line 3020
    :array_5c
    .array-data 1
        0x0t
        0x62t
        0x54t
        0x54t
        0x13t
        0x30t
        0x0t
        0x3t
    .end array-data

    #@922
    .line 3021
    :array_5d
    .array-data 1
        0x30t
        0x42t
        0x54t
        0x54t
        0x3t
        0x30t
        0x30t
        0x3t
    .end array-data

    #@92a
    .line 3022
    :array_5e
    .array-data 1
        0x30t
        0x42t
        0x4t
        0x4t
        0x13t
        0x30t
        0x30t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1215
    invoke-direct {p0, v0, v0}, Landroid/icu/text/Bidi;-><init>(II)V

    #@4
    .line 1213
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "maxLength"    # I
    .param p2, "maxRunCount"    # I

    #@0
    .prologue
    const/16 v1, 0xa

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 1247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1017
    new-array v0, v3, [B

    #@9
    iput-object v0, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    #@b
    .line 1018
    new-array v0, v3, [B

    #@d
    iput-object v0, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    #@f
    .line 1062
    new-array v0, v1, [I

    #@11
    iput-object v0, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@13
    .line 1063
    new-array v0, v1, [B

    #@15
    iput-object v0, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@17
    .line 1067
    new-array v0, v2, [Landroid/icu/text/BidiRun;

    #@19
    iput-object v0, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@1b
    .line 1071
    new-array v0, v3, [Landroid/icu/text/BidiRun;

    #@1d
    new-instance v1, Landroid/icu/text/BidiRun;

    #@1f
    invoke-direct {v1}, Landroid/icu/text/BidiRun;-><init>()V

    #@22
    aput-object v1, v0, v2

    #@24
    iput-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    #@26
    .line 1088
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    #@29
    .line 1091
    new-instance v0, Landroid/icu/text/Bidi$InsertPoints;

    #@2b
    invoke-direct {v0}, Landroid/icu/text/Bidi$InsertPoints;-><init>()V

    #@2e
    iput-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@30
    .line 1250
    if-ltz p1, :cond_0

    #@32
    if-gez p2, :cond_1

    #@34
    .line 1251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@39
    throw v0

    #@3a
    .line 1272
    :cond_1
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    #@3c
    iput-object v0, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    #@3e
    .line 1275
    if-lez p1, :cond_3

    #@40
    .line 1276
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialDirPropsMemory(I)V

    #@43
    .line 1277
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialLevelsMemory(I)V

    #@46
    .line 1282
    :goto_0
    if-lez p2, :cond_4

    #@48
    .line 1284
    if-le p2, v3, :cond_2

    #@4a
    .line 1285
    invoke-direct {p0, p2}, Landroid/icu/text/Bidi;->getInitialRunsMemory(I)V

    #@4d
    .line 1247
    :cond_2
    :goto_1
    return-void

    #@4e
    .line 1279
    :cond_3
    iput-boolean v3, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    #@50
    goto :goto_0

    #@51
    .line 1288
    :cond_4
    iput-boolean v3, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    #@53
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "paragraph"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5178
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    const/4 v3, 0x0

    #@a
    move-object v0, p0

    #@b
    move v4, v2

    #@c
    move v6, p2

    #@d
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    #@10
    .line 5176
    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 0
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    .line 5208
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    #@3
    .line 5209
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->setPara(Ljava/text/AttributedCharacterIterator;)V

    #@6
    .line 5206
    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 7
    .param p1, "text"    # [C
    .param p2, "textStart"    # I
    .param p3, "embeddings"    # [B
    .param p4, "embStart"    # I
    .param p5, "paragraphLength"    # I
    .param p6, "flags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5252
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    #@4
    .line 5254
    sparse-switch p6, :sswitch_data_0

    #@7
    .line 5257
    const/4 v3, 0x0

    #@8
    .line 5270
    .local v3, "paraLvl":B
    :goto_0
    if-nez p3, :cond_1

    #@a
    .line 5271
    const/4 v2, 0x0

    #@b
    .line 5288
    :cond_0
    if-nez p2, :cond_4

    #@d
    if-nez p4, :cond_4

    #@f
    array-length v5, p1

    #@10
    if-ne p5, v5, :cond_4

    #@12
    .line 5289
    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@15
    .line 5250
    :goto_1
    return-void

    #@16
    .line 5260
    .end local v3    # "paraLvl":B
    :sswitch_0
    const/4 v3, 0x1

    #@17
    .line 5261
    .restart local v3    # "paraLvl":B
    goto :goto_0

    #@18
    .line 5263
    .end local v3    # "paraLvl":B
    :sswitch_1
    const/16 v3, 0x7e

    #@1a
    .line 5264
    .restart local v3    # "paraLvl":B
    goto :goto_0

    #@1b
    .line 5266
    .end local v3    # "paraLvl":B
    :sswitch_2
    const/16 v3, 0x7f

    #@1d
    .line 5267
    .restart local v3    # "paraLvl":B
    goto :goto_0

    #@1e
    .line 5273
    :cond_1
    new-array v2, p5, [B

    #@20
    .line 5275
    .local v2, "paraEmbeddings":[B
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_2
    if-ge v0, p5, :cond_0

    #@23
    .line 5276
    add-int v5, v0, p4

    #@25
    aget-byte v1, p3, v5

    #@27
    .line 5277
    .local v1, "lev":B
    if-gez v1, :cond_3

    #@29
    .line 5278
    neg-int v5, v1

    #@2a
    or-int/lit8 v5, v5, -0x80

    #@2c
    int-to-byte v1, v5

    #@2d
    .line 5285
    :cond_2
    :goto_3
    aput-byte v1, v2, v0

    #@2f
    .line 5275
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_2

    #@32
    .line 5279
    :cond_3
    if-nez v1, :cond_2

    #@34
    .line 5280
    move v1, v3

    #@35
    .line 5281
    const/16 v5, 0x7d

    #@37
    if-le v3, v5, :cond_2

    #@39
    .line 5282
    and-int/lit8 v5, v1, 0x1

    #@3b
    int-to-byte v1, v5

    #@3c
    goto :goto_3

    #@3d
    .line 5291
    .end local v0    # "i":I
    .end local v1    # "lev":B
    .end local v2    # "paraEmbeddings":[B
    :cond_4
    new-array v4, p5, [C

    #@3f
    .line 5292
    .local v4, "paraText":[C
    invoke-static {p1, p2, v4, v6, p5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@42
    .line 5293
    invoke-virtual {p0, v4, v3, v2}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@45
    goto :goto_1

    #@46
    .line 5254
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method static final DirFromStrong(B)B
    .locals 1
    .param p0, "strong"    # B

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1120
    if-nez p0, :cond_0

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x1

    #@5
    goto :goto_0
.end method

.method static DirPropFlag(B)I
    .locals 1
    .param p0, "dir"    # B

    #@0
    .prologue
    .line 1103
    const/4 v0, 0x1

    #@1
    shl-int/2addr v0, p0

    #@2
    return v0
.end method

.method static final DirPropFlagE(B)I
    .locals 2
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1118
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    #@2
    and-int/lit8 v1, p0, 0x1

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method static final DirPropFlagLR(B)I
    .locals 2
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1117
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    #@2
    and-int/lit8 v1, p0, 0x1

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method static final DirPropFlagO(B)I
    .locals 2
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1119
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    #@2
    and-int/lit8 v1, p0, 0x1

    #@4
    aget v0, v0, v1

    #@6
    return v0
.end method

.method private static GetAction(B)S
    .locals 1
    .param p0, "cell"    # B

    #@0
    .prologue
    .line 2812
    shr-int/lit8 v0, p0, 0x4

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method private static GetActionProps(S)S
    .locals 1
    .param p0, "cell"    # S

    #@0
    .prologue
    .line 2712
    shr-int/lit8 v0, p0, 0x5

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method static GetLRFromLevel(B)B
    .locals 1
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1158
    and-int/lit8 v0, p0, 0x1

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private static GetState(B)S
    .locals 1
    .param p0, "cell"    # B

    #@0
    .prologue
    .line 2811
    and-int/lit8 v0, p0, 0xf

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method private static GetStateProps(S)S
    .locals 1
    .param p0, "cell"    # S

    #@0
    .prologue
    .line 2709
    and-int/lit8 v0, p0, 0x1f

    #@2
    int-to-short v0, v0

    #@3
    return v0
.end method

.method static IsBidiControlChar(I)Z
    .locals 4
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1170
    and-int/lit8 v2, p0, -0x4

    #@4
    const/16 v3, 0x200c

    #@6
    if-eq v2, v3, :cond_0

    #@8
    const/16 v2, 0x202a

    #@a
    if-lt p0, v2, :cond_1

    #@c
    const/16 v2, 0x202e

    #@e
    if-gt p0, v2, :cond_1

    #@10
    :cond_0
    :goto_0
    return v0

    #@11
    .line 1171
    :cond_1
    const/16 v2, 0x2066

    #@13
    if-lt p0, v2, :cond_2

    #@15
    const/16 v2, 0x2069

    #@17
    if-le p0, v2, :cond_0

    #@19
    :cond_2
    move v0, v1

    #@1a
    goto :goto_0
.end method

.method static IsDefaultLevel(B)Z
    .locals 2
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1163
    and-int/lit8 v0, p0, 0x7e

    #@2
    const/16 v1, 0x7e

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method static final NoOverride(B)B
    .locals 1
    .param p0, "level"    # B

    #@0
    .prologue
    .line 1121
    and-int/lit8 v0, p0, 0x7f

    #@2
    int-to-byte v0, v0

    #@3
    return v0
.end method

.method private addPoint(II)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "flag"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3048
    new-instance v1, Landroid/icu/text/Bidi$Point;

    #@3
    invoke-direct {v1}, Landroid/icu/text/Bidi$Point;-><init>()V

    #@6
    .line 3050
    .local v1, "point":Landroid/icu/text/Bidi$Point;
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@8
    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@a
    array-length v0, v3

    #@b
    .line 3051
    .local v0, "len":I
    if-nez v0, :cond_0

    #@d
    .line 3052
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@f
    const/16 v4, 0xa

    #@11
    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    #@13
    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@15
    .line 3053
    const/16 v0, 0xa

    #@17
    .line 3055
    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@19
    iget v3, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@1b
    if-lt v3, v0, :cond_1

    #@1d
    .line 3056
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@1f
    iget-object v2, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@21
    .line 3057
    .local v2, "savePoints":[Landroid/icu/text/Bidi$Point;
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@23
    mul-int/lit8 v4, v0, 0x2

    #@25
    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    #@27
    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@29
    .line 3058
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@2b
    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@2d
    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@30
    .line 3060
    .end local v2    # "savePoints":[Landroid/icu/text/Bidi$Point;
    :cond_1
    iput p1, v1, Landroid/icu/text/Bidi$Point;->pos:I

    #@32
    .line 3061
    iput p2, v1, Landroid/icu/text/Bidi$Point;->flag:I

    #@34
    .line 3062
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@36
    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@38
    iget-object v4, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@3a
    iget v4, v4, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@3c
    aput-object v1, v3, v4

    #@3e
    .line 3063
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@40
    iget v4, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@42
    add-int/lit8 v4, v4, 0x1

    #@44
    iput v4, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@46
    .line 3046
    return-void
.end method

.method private adjustWSLevels()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x7

    #@1
    const/4 v5, 0x0

    #@2
    .line 3506
    iget v2, p0, Landroid/icu/text/Bidi;->flags:I

    #@4
    sget v3, Landroid/icu/text/Bidi;->MASK_WS:I

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_5

    #@9
    .line 3508
    iget v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@b
    .line 3509
    .local v1, "i":I
    :cond_0
    :goto_0
    if-lez v1, :cond_5

    #@d
    .line 3511
    :goto_1
    if-lez v1, :cond_2

    #@f
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    aget-byte v2, v2, v1

    #@15
    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@18
    move-result v0

    #@19
    .local v0, "flag":I
    sget v2, Landroid/icu/text/Bidi;->MASK_WS:I

    #@1b
    and-int/2addr v2, v0

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 3512
    iget-boolean v2, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@20
    if-eqz v2, :cond_1

    #@22
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@25
    move-result v2

    #@26
    and-int/2addr v2, v0

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 3513
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@2b
    aput-byte v5, v2, v1

    #@2d
    goto :goto_1

    #@2e
    .line 3515
    :cond_1
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@30
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@33
    move-result v3

    #@34
    aput-byte v3, v2, v1

    #@36
    goto :goto_1

    #@37
    .line 3521
    .end local v0    # "flag":I
    :cond_2
    :goto_2
    if-lez v1, :cond_0

    #@39
    .line 3522
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    aget-byte v2, v2, v1

    #@3f
    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@42
    move-result v0

    #@43
    .line 3523
    .restart local v0    # "flag":I
    sget v2, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@45
    and-int/2addr v2, v0

    #@46
    if-eqz v2, :cond_3

    #@48
    .line 3524
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@4a
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@4c
    add-int/lit8 v4, v1, 0x1

    #@4e
    aget-byte v3, v3, v4

    #@50
    aput-byte v3, v2, v1

    #@52
    goto :goto_2

    #@53
    .line 3525
    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@55
    if-eqz v2, :cond_4

    #@57
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@5a
    move-result v2

    #@5b
    and-int/2addr v2, v0

    #@5c
    if-eqz v2, :cond_4

    #@5e
    .line 3526
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@60
    aput-byte v5, v2, v1

    #@62
    goto :goto_0

    #@63
    .line 3528
    :cond_4
    sget v2, Landroid/icu/text/Bidi;->MASK_B_S:I

    #@65
    and-int/2addr v2, v0

    #@66
    if-eqz v2, :cond_2

    #@68
    .line 3529
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    #@6a
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@6d
    move-result v3

    #@6e
    aput-byte v3, v2, v1

    #@70
    goto :goto_0

    #@71
    .line 3503
    .end local v0    # "flag":I
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V
    .locals 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "match"    # C
    .param p3, "position"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2067
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@3
    iget v6, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@5
    aget-object v2, v5, v6

    #@7
    .line 2069
    .local v2, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@9
    iget-object v6, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@b
    array-length v6, v6

    #@c
    if-lt v5, v6, :cond_0

    #@e
    .line 2070
    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@10
    .line 2073
    .local v4, "saveOpenings":[Landroid/icu/text/Bidi$Opening;
    :try_start_0
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@12
    array-length v0, v5

    #@13
    .line 2074
    .local v0, "count":I
    mul-int/lit8 v5, v0, 0x2

    #@15
    new-array v5, v5, [Landroid/icu/text/Bidi$Opening;

    #@17
    iput-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 2078
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@1b
    invoke-static {v4, v7, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1e
    .line 2080
    .end local v0    # "count":I
    .end local v4    # "saveOpenings":[Landroid/icu/text/Bidi$Opening;
    :cond_0
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@20
    iget-short v6, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@22
    aget-object v3, v5, v6

    #@24
    .line 2081
    .local v3, "pOpening":Landroid/icu/text/Bidi$Opening;
    if-nez v3, :cond_1

    #@26
    .line 2082
    new-instance v3, Landroid/icu/text/Bidi$Opening;

    #@28
    .end local v3    # "pOpening":Landroid/icu/text/Bidi$Opening;
    invoke-direct {v3}, Landroid/icu/text/Bidi$Opening;-><init>()V

    #@2b
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@2d
    iget-short v6, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@2f
    aput-object v3, v5, v6

    #@31
    .line 2083
    .restart local v3    # "pOpening":Landroid/icu/text/Bidi$Opening;
    :cond_1
    iput p3, v3, Landroid/icu/text/Bidi$Opening;->position:I

    #@33
    .line 2084
    iput p2, v3, Landroid/icu/text/Bidi$Opening;->match:I

    #@35
    .line 2085
    iget-byte v5, v2, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@37
    iput-byte v5, v3, Landroid/icu/text/Bidi$Opening;->contextDir:B

    #@39
    .line 2086
    iget v5, v2, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@3b
    iput v5, v3, Landroid/icu/text/Bidi$Opening;->contextPos:I

    #@3d
    .line 2087
    iput-short v7, v3, Landroid/icu/text/Bidi$Opening;->flags:S

    #@3f
    .line 2088
    iget-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    int-to-short v5, v5

    #@44
    iput-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@46
    .line 2066
    return-void

    #@47
    .line 2075
    .end local v3    # "pOpening":Landroid/icu/text/Bidi$Opening;
    .restart local v4    # "saveOpenings":[Landroid/icu/text/Bidi$Opening;
    :catch_0
    move-exception v1

    #@48
    .line 2076
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/OutOfMemoryError;

    #@4a
    const-string/jumbo v6, "Failed to allocate memory for openings"

    #@4d
    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@50
    throw v5
.end method

.method private bracketInit(Landroid/icu/text/Bidi$BracketData;)V
    .locals 5
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2006
    iput v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@4
    .line 2007
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@6
    new-instance v3, Landroid/icu/text/Bidi$IsoRun;

    #@8
    invoke-direct {v3}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    #@b
    aput-object v3, v2, v1

    #@d
    .line 2008
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@f
    aget-object v2, v2, v1

    #@11
    iput-short v1, v2, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@13
    .line 2009
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@15
    aget-object v2, v2, v1

    #@17
    iput-short v1, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@19
    .line 2010
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@1b
    aget-object v2, v2, v1

    #@1d
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@20
    move-result v3

    #@21
    iput-byte v3, v2, Landroid/icu/text/Bidi$IsoRun;->level:B

    #@23
    .line 2011
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@25
    aget-object v2, v2, v1

    #@27
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@2a
    move-result v3

    #@2b
    and-int/lit8 v3, v3, 0x1

    #@2d
    int-to-byte v3, v3

    #@2e
    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@30
    aget-object v4, v4, v1

    #@32
    iput-byte v3, v4, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@34
    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@36
    aget-object v4, v4, v1

    #@38
    iput-byte v3, v4, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@3a
    iput-byte v3, v2, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@3c
    .line 2012
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@3e
    aget-object v2, v2, v1

    #@40
    iput v1, v2, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@42
    .line 2013
    const/16 v2, 0x14

    #@44
    new-array v2, v2, [Landroid/icu/text/Bidi$Opening;

    #@46
    iput-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@48
    .line 2014
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@4a
    if-eq v2, v0, :cond_0

    #@4c
    .line 2015
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@4e
    const/4 v3, 0x6

    #@4f
    if-ne v2, v3, :cond_1

    #@51
    .line 2014
    :cond_0
    :goto_0
    iput-boolean v0, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    #@53
    .line 2005
    return-void

    #@54
    :cond_1
    move v0, v1

    #@55
    .line 2015
    goto :goto_0
.end method

.method private bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 4
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "level"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2020
    iput v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@3
    .line 2021
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@5
    aget-object v0, v0, v3

    #@7
    iput-short v3, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@9
    .line 2022
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@b
    aget-object v0, v0, v3

    #@d
    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    #@f
    .line 2023
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@11
    aget-object v0, v0, v3

    #@13
    and-int/lit8 v1, p2, 0x1

    #@15
    int-to-byte v1, v1

    #@16
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@18
    aget-object v2, v2, v3

    #@1a
    iput-byte v1, v2, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@1c
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@1e
    aget-object v2, v2, v3

    #@20
    iput-byte v1, v2, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@22
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@24
    .line 2024
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@26
    aget-object v0, v0, v3

    #@28
    iput v3, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@2a
    .line 2019
    return-void
.end method

.method private bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V
    .locals 3
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "lastCcPos"    # I
    .param p3, "contextLevel"    # B
    .param p4, "embeddingLevel"    # B

    #@0
    .prologue
    .line 2030
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@2
    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@4
    aget-object v0, v1, v2

    #@6
    .line 2031
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@8
    aget-byte v1, v1, p2

    #@a
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@d
    move-result v1

    #@e
    sget v2, Landroid/icu/text/Bidi;->MASK_ISO:I

    #@10
    and-int/2addr v1, v2

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 2032
    return-void

    #@14
    .line 2033
    :cond_0
    invoke-static {p4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@17
    move-result v1

    #@18
    invoke-static {p3}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@1b
    move-result v2

    #@1c
    if-le v1, v2, :cond_1

    #@1e
    .line 2034
    move p3, p4

    #@1f
    .line 2035
    :cond_1
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@21
    iput-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@23
    .line 2036
    iput-byte p4, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    #@25
    .line 2037
    and-int/lit8 v1, p3, 0x1

    #@27
    int-to-byte v1, v1

    #@28
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@2a
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@2c
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@2e
    .line 2038
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@30
    .line 2029
    return-void
.end method

.method private bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V
    .locals 12
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 2196
    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@2
    iget v10, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@4
    aget-object v8, v9, v10

    #@6
    .line 2199
    .local v8, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@8
    aget-byte v1, v9, p2

    #@a
    .line 2200
    .local v1, "dirProp":B
    const/16 v9, 0xa

    #@c
    if-ne v1, v9, :cond_3

    #@e
    .line 2205
    iget-object v9, p0, Landroid/icu/text/Bidi;->text:[C

    #@10
    aget-char v0, v9, p2

    #@12
    .line 2206
    .local v0, "c":C
    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@14
    add-int/lit8 v4, v9, -0x1

    #@16
    .local v4, "idx":I
    :goto_0
    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@18
    if-lt v4, v9, :cond_1

    #@1a
    .line 2207
    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@1c
    aget-object v9, v9, v4

    #@1e
    iget v9, v9, Landroid/icu/text/Bidi$Opening;->match:I

    #@20
    if-eq v9, v0, :cond_0

    #@22
    .line 2206
    add-int/lit8 v4, v4, -0x1

    #@24
    goto :goto_0

    #@25
    .line 2210
    :cond_0
    invoke-direct {p0, p1, v4, p2}, Landroid/icu/text/Bidi;->bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B

    #@28
    move-result v7

    #@29
    .line 2211
    .local v7, "newProp":B
    const/16 v9, 0xa

    #@2b
    if-ne v7, v9, :cond_8

    #@2d
    .line 2212
    const/4 v0, 0x0

    #@2e
    .line 2237
    .end local v0    # "c":C
    .end local v7    # "newProp":B
    :cond_1
    if-eqz v0, :cond_b

    #@30
    .line 2238
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getBidiPairedBracket(I)I

    #@33
    move-result v9

    #@34
    int-to-char v6, v9

    #@35
    .line 2241
    :goto_1
    if-eq v6, v0, :cond_3

    #@37
    .line 2242
    const/16 v9, 0x1015

    #@39
    invoke-static {v0, v9}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@3c
    move-result v9

    #@3d
    .line 2243
    const/4 v10, 0x1

    #@3e
    .line 2242
    if-ne v9, v10, :cond_3

    #@40
    .line 2246
    const/16 v9, 0x232a

    #@42
    if-ne v6, v9, :cond_c

    #@44
    .line 2247
    const/16 v9, 0x3009

    #@46
    invoke-direct {p0, p1, v9, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    #@49
    .line 2252
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v6, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    #@4c
    .line 2255
    .end local v4    # "idx":I
    :cond_3
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    #@4e
    aget-byte v5, v9, p2

    #@50
    .line 2256
    .local v5, "level":B
    and-int/lit8 v9, v5, -0x80

    #@52
    if-eqz v9, :cond_d

    #@54
    .line 2257
    and-int/lit8 v9, v5, 0x1

    #@56
    int-to-byte v7, v9

    #@57
    .line 2258
    .restart local v7    # "newProp":B
    const/16 v9, 0x8

    #@59
    if-eq v1, v9, :cond_4

    #@5b
    const/16 v9, 0x9

    #@5d
    if-eq v1, v9, :cond_4

    #@5f
    const/16 v9, 0xa

    #@61
    if-eq v1, v9, :cond_4

    #@63
    .line 2259
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@65
    aput-byte v7, v9, p2

    #@67
    .line 2260
    :cond_4
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@69
    .line 2261
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@6b
    .line 2262
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@6d
    .line 2263
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@6f
    .line 2309
    .end local v7    # "newProp":B
    :cond_5
    :goto_3
    const/4 v9, 0x1

    #@70
    if-le v7, v9, :cond_6

    #@72
    const/16 v9, 0xd

    #@74
    if-ne v7, v9, :cond_16

    #@76
    .line 2311
    :cond_6
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    #@79
    move-result v9

    #@7a
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@7d
    move-result v9

    #@7e
    int-to-short v2, v9

    #@7f
    .line 2312
    .local v2, "flag":S
    iget-short v3, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@81
    .local v3, "i":I
    :goto_4
    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@83
    if-ge v3, v9, :cond_16

    #@85
    .line 2313
    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@87
    aget-object v9, v9, v3

    #@89
    iget v9, v9, Landroid/icu/text/Bidi$Opening;->position:I

    #@8b
    if-le p2, v9, :cond_7

    #@8d
    .line 2314
    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@8f
    aget-object v9, v9, v3

    #@91
    iget-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    #@93
    or-int/2addr v10, v2

    #@94
    int-to-short v10, v10

    #@95
    iput-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    #@97
    .line 2312
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@99
    goto :goto_4

    #@9a
    .line 2215
    .end local v2    # "flag":S
    .end local v3    # "i":I
    .end local v5    # "level":B
    .restart local v0    # "c":C
    .restart local v4    # "idx":I
    .restart local v7    # "newProp":B
    :cond_8
    const/16 v9, 0xa

    #@9c
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@9e
    .line 2216
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@a0
    .line 2217
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@a2
    .line 2218
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    #@a4
    aget-byte v5, v9, p2

    #@a6
    .line 2219
    .restart local v5    # "level":B
    and-int/lit8 v9, v5, -0x80

    #@a8
    if-eqz v9, :cond_a

    #@aa
    .line 2222
    and-int/lit8 v9, v5, 0x1

    #@ac
    int-to-byte v7, v9

    #@ad
    .line 2223
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@af
    .line 2224
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@b2
    move-result v9

    #@b3
    int-to-short v2, v9

    #@b4
    .line 2225
    .restart local v2    # "flag":S
    iget-short v3, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@b6
    .restart local v3    # "i":I
    :goto_5
    if-ge v3, v4, :cond_9

    #@b8
    .line 2226
    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@ba
    aget-object v9, v9, v3

    #@bc
    iget-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    #@be
    or-int/2addr v10, v2

    #@bf
    int-to-short v10, v10

    #@c0
    iput-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    #@c2
    .line 2225
    add-int/lit8 v3, v3, 0x1

    #@c4
    goto :goto_5

    #@c5
    .line 2228
    :cond_9
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    #@c7
    aget-byte v10, v9, p2

    #@c9
    and-int/lit8 v10, v10, 0x7f

    #@cb
    int-to-byte v10, v10

    #@cc
    aput-byte v10, v9, p2

    #@ce
    .line 2231
    .end local v2    # "flag":S
    .end local v3    # "i":I
    :cond_a
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    #@d0
    iget-object v10, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@d2
    aget-object v10, v10, v4

    #@d4
    iget v10, v10, Landroid/icu/text/Bidi$Opening;->position:I

    #@d6
    aget-byte v11, v9, v10

    #@d8
    and-int/lit8 v11, v11, 0x7f

    #@da
    int-to-byte v11, v11

    #@db
    aput-byte v11, v9, v10

    #@dd
    .line 2232
    return-void

    #@de
    .line 2240
    .end local v0    # "c":C
    .end local v5    # "level":B
    .end local v7    # "newProp":B
    :cond_b
    const/4 v6, 0x0

    #@df
    .local v6, "match":C
    goto/16 :goto_1

    #@e1
    .line 2249
    .end local v6    # "match":C
    :cond_c
    const/16 v9, 0x3009

    #@e3
    if-ne v6, v9, :cond_2

    #@e5
    .line 2250
    const/16 v9, 0x232a

    #@e7
    invoke-direct {p0, p1, v9, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    #@ea
    goto/16 :goto_2

    #@ec
    .line 2265
    .end local v4    # "idx":I
    .restart local v5    # "level":B
    :cond_d
    const/4 v9, 0x1

    #@ed
    if-le v1, v9, :cond_e

    #@ef
    const/16 v9, 0xd

    #@f1
    if-ne v1, v9, :cond_f

    #@f3
    .line 2266
    :cond_e
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    #@f6
    move-result v7

    #@f7
    .line 2267
    .restart local v7    # "newProp":B
    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@f9
    .line 2268
    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@fb
    .line 2269
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@fd
    .line 2270
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@ff
    goto/16 :goto_3

    #@101
    .line 2272
    .end local v7    # "newProp":B
    :cond_f
    const/4 v9, 0x2

    #@102
    if-ne v1, v9, :cond_13

    #@104
    .line 2273
    const/4 v9, 0x2

    #@105
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@107
    .line 2274
    iget-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@109
    if-nez v9, :cond_11

    #@10b
    .line 2275
    const/4 v7, 0x0

    #@10c
    .line 2276
    .local v7, "newProp":B
    iget-boolean v9, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    #@10e
    if-nez v9, :cond_10

    #@110
    .line 2277
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@112
    const/16 v10, 0x17

    #@114
    aput-byte v10, v9, p2

    #@116
    .line 2278
    :cond_10
    const/4 v9, 0x0

    #@117
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@119
    .line 2279
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@11b
    goto/16 :goto_3

    #@11d
    .line 2282
    .end local v7    # "newProp":B
    :cond_11
    const/4 v7, 0x1

    #@11e
    .line 2283
    .restart local v7    # "newProp":B
    iget-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@120
    const/16 v10, 0xd

    #@122
    if-ne v9, v10, :cond_12

    #@124
    .line 2284
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@126
    const/4 v10, 0x5

    #@127
    aput-byte v10, v9, p2

    #@129
    .line 2287
    :goto_6
    const/4 v9, 0x1

    #@12a
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@12c
    .line 2288
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@12e
    goto/16 :goto_3

    #@130
    .line 2286
    :cond_12
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@132
    const/16 v10, 0x18

    #@134
    aput-byte v10, v9, p2

    #@136
    goto :goto_6

    #@137
    .line 2291
    .end local v7    # "newProp":B
    :cond_13
    const/4 v9, 0x5

    #@138
    if-ne v1, v9, :cond_14

    #@13a
    .line 2292
    const/4 v7, 0x1

    #@13b
    .line 2293
    .restart local v7    # "newProp":B
    const/4 v9, 0x5

    #@13c
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@13e
    .line 2294
    const/4 v9, 0x1

    #@13f
    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@141
    .line 2295
    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@143
    goto/16 :goto_3

    #@145
    .line 2297
    .end local v7    # "newProp":B
    :cond_14
    const/16 v9, 0x11

    #@147
    if-ne v1, v9, :cond_15

    #@149
    .line 2301
    iget-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@14b
    .line 2302
    .local v7, "newProp":B
    const/16 v9, 0xa

    #@14d
    if-ne v7, v9, :cond_5

    #@14f
    .line 2303
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@151
    aput-byte v7, v9, p2

    #@153
    goto/16 :goto_3

    #@155
    .line 2306
    .end local v7    # "newProp":B
    :cond_15
    move v7, v1

    #@156
    .line 2307
    .restart local v7    # "newProp":B
    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@158
    goto/16 :goto_3

    #@15a
    .line 2195
    .end local v7    # "newProp":B
    :cond_16
    return-void
.end method

.method private bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B
    .locals 12
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "openIdx"    # I
    .param p3, "position"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 2119
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@3
    iget v9, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@5
    aget-object v4, v8, v9

    #@7
    .line 2124
    .local v4, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@9
    aget-object v5, v8, p2

    #@b
    .line 2125
    .local v5, "pOpening":Landroid/icu/text/Bidi$Opening;
    iget-byte v8, v4, Landroid/icu/text/Bidi$IsoRun;->level:B

    #@d
    and-int/lit8 v8, v8, 0x1

    #@f
    int-to-byte v0, v8

    #@10
    .line 2126
    .local v0, "direction":B
    const/4 v7, 0x1

    #@11
    .line 2146
    .local v7, "stable":Z
    if-nez v0, :cond_1

    #@13
    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    #@15
    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_L:B

    #@17
    and-int/2addr v8, v9

    #@18
    if-lez v8, :cond_1

    #@1a
    .line 2148
    :cond_0
    move v3, v0

    #@1b
    .line 2163
    .local v3, "newProp":B
    :goto_0
    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@1d
    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    #@1f
    aput-byte v3, v8, v9

    #@21
    .line 2164
    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@23
    aput-byte v3, v8, p3

    #@25
    .line 2166
    iget v8, v5, Landroid/icu/text/Bidi$Opening;->position:I

    #@27
    invoke-direct {p0, p1, p2, v8, v3}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    #@2a
    .line 2167
    if-eqz v7, :cond_6

    #@2c
    .line 2168
    int-to-short v8, p2

    #@2d
    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@2f
    .line 2170
    :goto_1
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@31
    iget-short v9, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@33
    if-le v8, v9, :cond_8

    #@35
    .line 2171
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@37
    iget-short v9, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@39
    add-int/lit8 v9, v9, -0x1

    #@3b
    aget-object v8, v8, v9

    #@3d
    iget v8, v8, Landroid/icu/text/Bidi$Opening;->position:I

    #@3f
    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    #@41
    if-ne v8, v9, :cond_8

    #@43
    .line 2172
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@45
    add-int/lit8 v8, v8, -0x1

    #@47
    int-to-short v8, v8

    #@48
    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@4a
    goto :goto_1

    #@4b
    .line 2147
    .end local v3    # "newProp":B
    :cond_1
    const/4 v8, 0x1

    #@4c
    if-ne v0, v8, :cond_2

    #@4e
    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    #@50
    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_R:B

    #@52
    and-int/2addr v8, v9

    #@53
    if-gtz v8, :cond_0

    #@55
    .line 2150
    :cond_2
    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    #@57
    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_L:B

    #@59
    sget-byte v10, Landroid/icu/text/Bidi;->FOUND_R:B

    #@5b
    or-int/2addr v9, v10

    #@5c
    and-int/2addr v8, v9

    #@5d
    if-eqz v8, :cond_5

    #@5f
    .line 2153
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@61
    if-ne p2, v8, :cond_3

    #@63
    const/4 v7, 0x1

    #@64
    .line 2154
    :goto_2
    iget-byte v8, v5, Landroid/icu/text/Bidi$Opening;->contextDir:B

    #@66
    if-eq v0, v8, :cond_4

    #@68
    .line 2155
    iget-byte v3, v5, Landroid/icu/text/Bidi$Opening;->contextDir:B

    #@6a
    .restart local v3    # "newProp":B
    goto :goto_0

    #@6b
    .line 2153
    .end local v3    # "newProp":B
    :cond_3
    const/4 v7, 0x0

    #@6c
    goto :goto_2

    #@6d
    .line 2157
    :cond_4
    move v3, v0

    #@6e
    .restart local v3    # "newProp":B
    goto :goto_0

    #@6f
    .line 2160
    .end local v3    # "newProp":B
    :cond_5
    int-to-short v8, p2

    #@70
    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@72
    .line 2161
    const/16 v8, 0xa

    #@74
    return v8

    #@75
    .line 2175
    .restart local v3    # "newProp":B
    :cond_6
    neg-int v8, p3

    #@76
    iput v8, v5, Landroid/icu/text/Bidi$Opening;->match:I

    #@78
    .line 2177
    add-int/lit8 v1, p2, -0x1

    #@7a
    .line 2178
    .local v1, "k":I
    :goto_3
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@7c
    if-lt v1, v8, :cond_7

    #@7e
    .line 2179
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@80
    aget-object v8, v8, v1

    #@82
    iget v8, v8, Landroid/icu/text/Bidi$Opening;->position:I

    #@84
    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    #@86
    if-ne v8, v9, :cond_7

    #@88
    .line 2180
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@8a
    add-int/lit8 v2, v1, -0x1

    #@8c
    .end local v1    # "k":I
    .local v2, "k":I
    aget-object v8, v8, v1

    #@8e
    iput v11, v8, Landroid/icu/text/Bidi$Opening;->match:I

    #@90
    move v1, v2

    #@91
    .end local v2    # "k":I
    .restart local v1    # "k":I
    goto :goto_3

    #@92
    .line 2183
    :cond_7
    add-int/lit8 v1, p2, 0x1

    #@94
    :goto_4
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@96
    if-ge v1, v8, :cond_8

    #@98
    .line 2184
    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@9a
    aget-object v6, v8, v1

    #@9c
    .line 2185
    .local v6, "qOpening":Landroid/icu/text/Bidi$Opening;
    iget v8, v6, Landroid/icu/text/Bidi$Opening;->position:I

    #@9e
    if-lt v8, p3, :cond_9

    #@a0
    .line 2191
    .end local v1    # "k":I
    .end local v6    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_8
    return v3

    #@a1
    .line 2187
    .restart local v1    # "k":I
    .restart local v6    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_9
    iget v8, v6, Landroid/icu/text/Bidi$Opening;->match:I

    #@a3
    if-lez v8, :cond_a

    #@a5
    .line 2188
    iput v11, v6, Landroid/icu/text/Bidi$Opening;->match:I

    #@a7
    .line 2183
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@a9
    goto :goto_4
.end method

.method private bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 4
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "level"    # B

    #@0
    .prologue
    .line 2043
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@2
    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@4
    aget-object v1, v2, v3

    #@6
    .line 2045
    .local v1, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    const/16 v2, 0xa

    #@8
    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@a
    .line 2046
    iget-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@c
    .line 2047
    .local v0, "lastLimit":S
    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@e
    add-int/lit8 v2, v2, 0x1

    #@10
    iput v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@12
    .line 2048
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@14
    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@16
    aget-object v1, v2, v3

    #@18
    .line 2049
    if-nez v1, :cond_0

    #@1a
    .line 2050
    new-instance v1, Landroid/icu/text/Bidi$IsoRun;

    #@1c
    .end local v1    # "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    invoke-direct {v1}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    #@1f
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@21
    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@23
    aput-object v1, v2, v3

    #@25
    .line 2051
    .restart local v1    # "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    :cond_0
    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@27
    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->start:S

    #@29
    .line 2052
    iput-byte p2, v1, Landroid/icu/text/Bidi$IsoRun;->level:B

    #@2b
    .line 2053
    and-int/lit8 v2, p2, 0x1

    #@2d
    int-to-byte v2, v2

    #@2e
    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    #@30
    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@32
    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    #@34
    .line 2054
    const/4 v2, 0x0

    #@35
    iput v2, v1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    #@37
    .line 2042
    return-void
.end method

.method private bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V
    .locals 3
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;

    #@0
    .prologue
    .line 2060
    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    iput v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@6
    .line 2061
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@8
    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@a
    aget-object v0, v1, v2

    #@c
    .line 2062
    .local v0, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    const/16 v1, 0xa

    #@e
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    #@10
    .line 2058
    return-void
.end method

.method private checkExplicitLevels()B
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x7

    #@1
    const/4 v4, 0x0

    #@2
    .line 2650
    const/4 v2, 0x0

    #@3
    .line 2652
    .local v2, "isolateCount":I
    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@5
    .line 2654
    iput v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    #@7
    .line 2656
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    #@a
    if-ge v1, v4, :cond_7

    #@c
    .line 2657
    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    #@e
    aget-byte v3, v4, v1

    #@10
    .line 2658
    .local v3, "level":B
    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@12
    aget-byte v0, v4, v1

    #@14
    .line 2659
    .local v0, "dirProp":B
    const/16 v4, 0x14

    #@16
    if-eq v0, v4, :cond_0

    #@18
    const/16 v4, 0x15

    #@1a
    if-ne v0, v4, :cond_3

    #@1c
    .line 2660
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@1e
    .line 2661
    iget v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    #@20
    if-le v2, v4, :cond_1

    #@22
    .line 2662
    iput v2, p0, Landroid/icu/text/Bidi;->isolateCount:I

    #@24
    .line 2668
    :cond_1
    :goto_1
    and-int/lit8 v4, v3, -0x80

    #@26
    if-eqz v4, :cond_5

    #@28
    .line 2670
    and-int/lit8 v4, v3, 0x7f

    #@2a
    int-to-byte v3, v4

    #@2b
    .line 2671
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@2d
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    #@30
    move-result v5

    #@31
    or-int/2addr v4, v5

    #@32
    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@34
    .line 2676
    :goto_2
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@37
    move-result v4

    #@38
    if-ge v3, v4, :cond_6

    #@3a
    .line 2677
    if-nez v3, :cond_2

    #@3c
    if-eq v0, v7, :cond_6

    #@3e
    .line 2680
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@40
    new-instance v5, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v6, "level "

    #@48
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 2681
    const-string/jumbo v6, " out of bounds at "

    #@53
    .line 2680
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v4

    #@63
    .line 2664
    :cond_3
    const/16 v4, 0x16

    #@65
    if-ne v0, v4, :cond_4

    #@67
    .line 2665
    add-int/lit8 v2, v2, -0x1

    #@69
    goto :goto_1

    #@6a
    .line 2666
    :cond_4
    if-ne v0, v7, :cond_1

    #@6c
    .line 2667
    const/4 v2, 0x0

    #@6d
    goto :goto_1

    #@6e
    .line 2674
    :cond_5
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@70
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    #@73
    move-result v5

    #@74
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@77
    move-result v6

    #@78
    or-int/2addr v5, v6

    #@79
    or-int/2addr v4, v5

    #@7a
    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@7c
    goto :goto_2

    #@7d
    .line 2678
    :cond_6
    const/16 v4, 0x7d

    #@7f
    if-lt v4, v3, :cond_2

    #@81
    .line 2656
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_0

    #@84
    .line 2684
    .end local v0    # "dirProp":B
    .end local v3    # "level":B
    :cond_7
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@86
    sget v5, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    #@88
    and-int/2addr v4, v5

    #@89
    if-eqz v4, :cond_8

    #@8b
    .line 2685
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@8d
    iget-byte v5, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@8f
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@92
    move-result v5

    #@93
    or-int/2addr v4, v5

    #@94
    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    #@96
    .line 2687
    :cond_8
    invoke-direct {p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    #@99
    move-result v4

    #@9a
    return v4
.end method

.method private checkParaCount()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1735
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@3
    .line 1736
    .local v0, "count":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@5
    array-length v5, v5

    #@6
    if-gt v0, v5, :cond_0

    #@8
    .line 1737
    return-void

    #@9
    .line 1738
    :cond_0
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@b
    array-length v2, v5

    #@c
    .line 1739
    .local v2, "oldLength":I
    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@e
    .line 1740
    .local v4, "saveLimits":[I
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@10
    .line 1742
    .local v3, "saveLevels":[B
    mul-int/lit8 v5, v0, 0x2

    #@12
    :try_start_0
    new-array v5, v5, [I

    #@14
    iput-object v5, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@16
    .line 1743
    mul-int/lit8 v5, v0, 0x2

    #@18
    new-array v5, v5, [B

    #@1a
    iput-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1747
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@1e
    invoke-static {v4, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@21
    .line 1748
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@23
    invoke-static {v3, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 1732
    return-void

    #@27
    .line 1744
    :catch_0
    move-exception v1

    #@28
    .line 1745
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/OutOfMemoryError;

    #@2a
    const-string/jumbo v6, "Failed to allocate memory for paras"

    #@2d
    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@30
    throw v5
.end method

.method private directionFromFlags()B
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2323
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    #@3
    sget v1, Landroid/icu/text/Bidi;->MASK_RTL:I

    #@5
    and-int/2addr v0, v1

    #@6
    if-nez v0, :cond_1

    #@8
    .line 2324
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    #@a
    const/4 v1, 0x5

    #@b
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@e
    move-result v1

    #@f
    and-int/2addr v0, v1

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 2325
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    #@14
    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    #@16
    and-int/2addr v0, v1

    #@17
    if-nez v0, :cond_1

    #@19
    .line 2326
    :cond_0
    return v2

    #@1a
    .line 2327
    :cond_1
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    #@1c
    sget v1, Landroid/icu/text/Bidi;->MASK_LTR:I

    #@1e
    and-int/2addr v0, v1

    #@1f
    if-nez v0, :cond_2

    #@21
    .line 2328
    const/4 v0, 0x1

    #@22
    return v0

    #@23
    .line 2330
    :cond_2
    const/4 v0, 0x2

    #@24
    return v0
.end method

.method private firstL_R_AL()B
    .locals 5

    #@0
    .prologue
    .line 1711
    const/16 v2, 0xa

    #@2
    .line 1712
    .local v2, "result":B
    const/4 v1, 0x0

    #@3
    .end local v2    # "result":B
    .local v1, "i":I
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@8
    move-result v4

    #@9
    if-ge v1, v4, :cond_4

    #@b
    .line 1713
    iget-object v4, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@d
    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    #@10
    move-result v3

    #@11
    .line 1714
    .local v3, "uchar":I
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    #@14
    move-result v4

    #@15
    add-int/2addr v1, v4

    #@16
    .line 1715
    invoke-virtual {p0, v3}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    #@19
    move-result v4

    #@1a
    int-to-byte v0, v4

    #@1b
    .line 1716
    .local v0, "dirProp":B
    const/16 v4, 0xa

    #@1d
    if-ne v2, v4, :cond_3

    #@1f
    .line 1717
    if-eqz v0, :cond_1

    #@21
    const/4 v4, 0x1

    #@22
    if-ne v0, v4, :cond_2

    #@24
    .line 1718
    :cond_1
    :goto_1
    move v2, v0

    #@25
    .local v2, "result":B
    goto :goto_0

    #@26
    .line 1717
    .end local v2    # "result":B
    :cond_2
    const/16 v4, 0xd

    #@28
    if-ne v0, v4, :cond_0

    #@2a
    goto :goto_1

    #@2b
    .line 1721
    :cond_3
    const/4 v4, 0x7

    #@2c
    if-ne v0, v4, :cond_0

    #@2e
    .line 1722
    const/16 v2, 0xa

    #@30
    .local v2, "result":B
    goto :goto_0

    #@31
    .line 1726
    .end local v0    # "dirProp":B
    .end local v2    # "result":B
    .end local v3    # "uchar":I
    :cond_4
    return v2
.end method

.method private firstL_R_AL_EN_AN()B
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 3317
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v3

    #@a
    if-ge v1, v3, :cond_5

    #@c
    .line 3318
    iget-object v3, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    #@e
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    #@11
    move-result v2

    #@12
    .line 3319
    .local v2, "uchar":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@15
    move-result v3

    #@16
    add-int/2addr v1, v3

    #@17
    .line 3320
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    #@1a
    move-result v3

    #@1b
    int-to-byte v0, v3

    #@1c
    .line 3321
    .local v0, "dirProp":B
    if-nez v0, :cond_1

    #@1e
    .line 3322
    return v4

    #@1f
    .line 3324
    :cond_1
    if-eq v0, v5, :cond_2

    #@21
    const/16 v3, 0xd

    #@23
    if-ne v0, v3, :cond_3

    #@25
    .line 3325
    :cond_2
    return v5

    #@26
    .line 3327
    :cond_3
    if-ne v0, v6, :cond_4

    #@28
    .line 3328
    return v6

    #@29
    .line 3330
    :cond_4
    const/4 v3, 0x5

    #@2a
    if-ne v0, v3, :cond_0

    #@2c
    .line 3331
    const/4 v3, 0x3

    #@2d
    return v3

    #@2e
    .line 3334
    .end local v0    # "dirProp":B
    .end local v2    # "uchar":I
    :cond_5
    const/4 v3, 0x4

    #@2f
    return v3
.end method

.method private fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V
    .locals 8
    .param p1, "bd"    # Landroid/icu/text/Bidi$BracketData;
    .param p2, "openingIndex"    # I
    .param p3, "newPropPosition"    # I
    .param p4, "newProp"    # B

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2094
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    #@3
    iget v6, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    #@5
    aget-object v3, v5, v6

    #@7
    .line 2097
    .local v3, "pLastIsoRun":Landroid/icu/text/Bidi$IsoRun;
    add-int/lit8 v1, p2, 0x1

    #@9
    .local v1, "k":I
    :goto_0
    iget-short v5, v3, Landroid/icu/text/Bidi$IsoRun;->limit:S

    #@b
    if-ge v1, v5, :cond_2

    #@d
    .line 2098
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    #@f
    aget-object v4, v5, v1

    #@11
    .line 2099
    .local v4, "qOpening":Landroid/icu/text/Bidi$Opening;
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->match:I

    #@13
    if-ltz v5, :cond_1

    #@15
    .line 2097
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 2101
    :cond_1
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->contextPos:I

    #@1a
    if-ge p3, v5, :cond_3

    #@1c
    .line 2092
    .end local v4    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_2
    return-void

    #@1d
    .line 2103
    .restart local v4    # "qOpening":Landroid/icu/text/Bidi$Opening;
    :cond_3
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->position:I

    #@1f
    if-ge p3, v5, :cond_0

    #@21
    .line 2105
    iget-byte v5, v4, Landroid/icu/text/Bidi$Opening;->contextDir:B

    #@23
    if-eq p4, v5, :cond_2

    #@25
    .line 2107
    iget v2, v4, Landroid/icu/text/Bidi$Opening;->position:I

    #@27
    .line 2108
    .local v2, "openingPosition":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@29
    aput-byte p4, v5, v2

    #@2b
    .line 2109
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->match:I

    #@2d
    neg-int v0, v5

    #@2e
    .line 2110
    .local v0, "closingPosition":I
    iget-object v5, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@30
    aput-byte p4, v5, v0

    #@32
    .line 2111
    iput v7, v4, Landroid/icu/text/Bidi$Opening;->match:I

    #@34
    .line 2112
    invoke-direct {p0, p1, v1, v2, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    #@37
    .line 2113
    invoke-direct {p0, p1, v1, v0, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    #@3a
    goto :goto_1
.end method

.method public static getBaseDirection(Ljava/lang/CharSequence;)B
    .locals 8
    .param p0, "paragraph"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 1679
    if-eqz p0, :cond_0

    #@5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v4

    #@9
    if-nez v4, :cond_1

    #@b
    .line 1680
    :cond_0
    return v7

    #@c
    .line 1683
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result v3

    #@10
    .line 1687
    .local v3, "length":I
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    #@13
    .line 1689
    invoke-static {p0, v2}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    #@16
    move-result v0

    #@17
    .line 1690
    .local v0, "c":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getDirectionality(I)B

    #@1a
    move-result v1

    #@1b
    .line 1691
    .local v1, "direction":B
    if-nez v1, :cond_2

    #@1d
    .line 1692
    return v5

    #@1e
    .line 1693
    :cond_2
    if-eq v1, v6, :cond_3

    #@20
    .line 1694
    const/16 v4, 0xd

    #@22
    if-ne v1, v4, :cond_4

    #@24
    .line 1695
    :cond_3
    return v6

    #@25
    .line 1698
    :cond_4
    invoke-static {p0, v2, v6}, Landroid/icu/lang/UCharacter;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@28
    move-result v2

    #@29
    goto :goto_0

    #@2a
    .line 1700
    .end local v0    # "c":I
    .end local v1    # "direction":B
    :cond_5
    return v7
.end method

.method private getDirProps()V
    .locals 21

    #@0
    .prologue
    .line 1766
    const/4 v6, 0x0

    #@1
    .line 1767
    .local v6, "i":I
    const/16 v18, 0x0

    #@3
    move/from16 v0, v18

    #@5
    move-object/from16 v1, p0

    #@7
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@9
    .line 1770
    const/4 v4, 0x0

    #@a
    .line 1771
    .local v4, "defaultParaLevel":B
    move-object/from16 v0, p0

    #@c
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@e
    move/from16 v18, v0

    #@10
    invoke-static/range {v18 .. v18}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    #@13
    move-result v9

    #@14
    .line 1774
    .local v9, "isDefaultLevel":Z
    if-eqz v9, :cond_8

    #@16
    .line 1775
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@1a
    move/from16 v18, v0

    #@1c
    const/16 v19, 0x5

    #@1e
    move/from16 v0, v18

    #@20
    move/from16 v1, v19

    #@22
    if-eq v0, v1, :cond_6

    #@24
    .line 1776
    move-object/from16 v0, p0

    #@26
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@28
    move/from16 v18, v0

    #@2a
    const/16 v19, 0x6

    #@2c
    move/from16 v0, v18

    #@2e
    move/from16 v1, v19

    #@30
    if-ne v0, v1, :cond_7

    #@32
    const/4 v10, 0x1

    #@33
    .line 1777
    .local v10, "isDefaultLevelInverse":Z
    :goto_0
    const/16 v18, -0x1

    #@35
    move/from16 v0, v18

    #@37
    move-object/from16 v1, p0

    #@39
    iput v0, v1, Landroid/icu/text/Bidi;->lastArabicPos:I

    #@3b
    .line 1778
    const/4 v3, 0x0

    #@3c
    .line 1779
    .local v3, "controlCount":I
    move-object/from16 v0, p0

    #@3e
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@40
    move/from16 v18, v0

    #@42
    and-int/lit8 v18, v18, 0x2

    #@44
    if-eqz v18, :cond_9

    #@46
    const/4 v14, 0x1

    #@47
    .line 1782
    .local v14, "removeBidiControls":Z
    :goto_1
    const/16 v12, 0xa

    #@49
    .line 1791
    .local v12, "lastStrong":B
    const/16 v18, 0x7e

    #@4b
    move/from16 v0, v18

    #@4d
    new-array v11, v0, [I

    #@4f
    .line 1794
    .local v11, "isolateStartStack":[I
    const/16 v18, 0x7e

    #@51
    move/from16 v0, v18

    #@53
    new-array v13, v0, [B

    #@55
    .line 1795
    .local v13, "previousStateStack":[B
    const/4 v15, -0x1

    #@56
    .line 1797
    .local v15, "stackLast":I
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@5a
    move/from16 v18, v0

    #@5c
    and-int/lit8 v18, v18, 0x4

    #@5e
    if-eqz v18, :cond_0

    #@60
    .line 1798
    const/16 v18, 0x0

    #@62
    move/from16 v0, v18

    #@64
    move-object/from16 v1, p0

    #@66
    iput v0, v1, Landroid/icu/text/Bidi;->length:I

    #@68
    .line 1799
    :cond_0
    move-object/from16 v0, p0

    #@6a
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@6c
    move/from16 v18, v0

    #@6e
    and-int/lit8 v18, v18, 0x1

    #@70
    move/from16 v0, v18

    #@72
    int-to-byte v4, v0

    #@73
    .line 1801
    .local v4, "defaultParaLevel":B
    if-eqz v9, :cond_c

    #@75
    .line 1802
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@79
    move-object/from16 v18, v0

    #@7b
    const/16 v19, 0x0

    #@7d
    aput-byte v4, v18, v19

    #@7f
    .line 1803
    move v12, v4

    #@80
    .line 1804
    .local v12, "lastStrong":B
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@84
    move-object/from16 v18, v0

    #@86
    if-eqz v18, :cond_b

    #@88
    .line 1805
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL()B

    #@8b
    move-result v5

    #@8c
    .local v5, "dirProp":B
    const/16 v18, 0xa

    #@8e
    move/from16 v0, v18

    #@90
    if-eq v5, v0, :cond_b

    #@92
    .line 1806
    if-nez v5, :cond_a

    #@94
    .line 1807
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@98
    move-object/from16 v18, v0

    #@9a
    const/16 v19, 0x0

    #@9c
    const/16 v20, 0x0

    #@9e
    aput-byte v19, v18, v20

    #@a0
    .line 1810
    :goto_2
    const/16 v16, 0x0

    #@a2
    .line 1825
    .end local v5    # "dirProp":B
    .end local v12    # "lastStrong":B
    .local v16, "state":B
    :goto_3
    const/4 v6, 0x0

    #@a3
    .end local v16    # "state":B
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    #@a5
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@a7
    move/from16 v18, v0

    #@a9
    move/from16 v0, v18

    #@ab
    if-ge v6, v0, :cond_1f

    #@ad
    .line 1826
    move v7, v6

    #@ae
    .line 1827
    .local v7, "i0":I
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@b2
    move-object/from16 v18, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@b8
    move/from16 v19, v0

    #@ba
    const/16 v20, 0x0

    #@bc
    move-object/from16 v0, v18

    #@be
    move/from16 v1, v20

    #@c0
    move/from16 v2, v19

    #@c2
    invoke-static {v0, v1, v2, v6}, Landroid/icu/text/UTF16;->charAt([CIII)I

    #@c5
    move-result v17

    #@c6
    .line 1828
    .local v17, "uchar":I
    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@c9
    move-result v18

    #@ca
    add-int v6, v6, v18

    #@cc
    .line 1829
    add-int/lit8 v8, v6, -0x1

    #@ce
    .line 1831
    .local v8, "i1":I
    move-object/from16 v0, p0

    #@d0
    move/from16 v1, v17

    #@d2
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    #@d5
    move-result v18

    #@d6
    move/from16 v0, v18

    #@d8
    int-to-byte v5, v0

    #@d9
    .line 1832
    .restart local v5    # "dirProp":B
    move-object/from16 v0, p0

    #@db
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@dd
    move/from16 v18, v0

    #@df
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@e2
    move-result v19

    #@e3
    or-int v18, v18, v19

    #@e5
    move/from16 v0, v18

    #@e7
    move-object/from16 v1, p0

    #@e9
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@eb
    .line 1833
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@ef
    move-object/from16 v18, v0

    #@f1
    aput-byte v5, v18, v8

    #@f3
    .line 1834
    if-le v8, v7, :cond_3

    #@f5
    .line 1835
    move-object/from16 v0, p0

    #@f7
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@f9
    move/from16 v18, v0

    #@fb
    const/16 v19, 0x12

    #@fd
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@100
    move-result v19

    #@101
    or-int v18, v18, v19

    #@103
    move/from16 v0, v18

    #@105
    move-object/from16 v1, p0

    #@107
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@109
    .line 1837
    :cond_2
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@10d
    move-object/from16 v18, v0

    #@10f
    add-int/lit8 v8, v8, -0x1

    #@111
    const/16 v19, 0x12

    #@113
    aput-byte v19, v18, v8

    #@115
    .line 1838
    if-gt v8, v7, :cond_2

    #@117
    .line 1840
    :cond_3
    if-eqz v14, :cond_4

    #@119
    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    #@11c
    move-result v18

    #@11d
    if-eqz v18, :cond_4

    #@11f
    .line 1841
    add-int/lit8 v3, v3, 0x1

    #@121
    .line 1843
    :cond_4
    if-nez v5, :cond_f

    #@123
    .line 1844
    const/16 v18, 0x1

    #@125
    move/from16 v0, v16

    #@127
    move/from16 v1, v18

    #@129
    if-ne v0, v1, :cond_d

    #@12b
    .line 1845
    move-object/from16 v0, p0

    #@12d
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@12f
    move-object/from16 v18, v0

    #@131
    move-object/from16 v0, p0

    #@133
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@135
    move/from16 v19, v0

    #@137
    add-int/lit8 v19, v19, -0x1

    #@139
    const/16 v20, 0x0

    #@13b
    aput-byte v20, v18, v19

    #@13d
    .line 1846
    const/16 v16, 0x0

    #@13f
    .line 1856
    :cond_5
    :goto_5
    const/4 v12, 0x0

    #@140
    .line 1857
    .local v12, "lastStrong":B
    goto/16 :goto_4

    #@142
    .line 1775
    .end local v3    # "controlCount":I
    .end local v5    # "dirProp":B
    .end local v7    # "i0":I
    .end local v8    # "i1":I
    .end local v10    # "isDefaultLevelInverse":Z
    .end local v11    # "isolateStartStack":[I
    .end local v12    # "lastStrong":B
    .end local v13    # "previousStateStack":[B
    .end local v14    # "removeBidiControls":Z
    .end local v15    # "stackLast":I
    .end local v17    # "uchar":I
    .local v4, "defaultParaLevel":B
    :cond_6
    const/4 v10, 0x1

    #@143
    .restart local v10    # "isDefaultLevelInverse":Z
    goto/16 :goto_0

    #@145
    .line 1776
    .end local v10    # "isDefaultLevelInverse":Z
    :cond_7
    const/4 v10, 0x0

    #@146
    .restart local v10    # "isDefaultLevelInverse":Z
    goto/16 :goto_0

    #@148
    .line 1774
    .end local v10    # "isDefaultLevelInverse":Z
    :cond_8
    const/4 v10, 0x0

    #@149
    .restart local v10    # "isDefaultLevelInverse":Z
    goto/16 :goto_0

    #@14b
    .line 1779
    .restart local v3    # "controlCount":I
    :cond_9
    const/4 v14, 0x0

    #@14c
    .restart local v14    # "removeBidiControls":Z
    goto/16 :goto_1

    #@14e
    .line 1809
    .local v4, "defaultParaLevel":B
    .restart local v5    # "dirProp":B
    .restart local v11    # "isolateStartStack":[I
    .local v12, "lastStrong":B
    .restart local v13    # "previousStateStack":[B
    .restart local v15    # "stackLast":I
    :cond_a
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@152
    move-object/from16 v18, v0

    #@154
    const/16 v19, 0x1

    #@156
    const/16 v20, 0x0

    #@158
    aput-byte v19, v18, v20

    #@15a
    goto/16 :goto_2

    #@15c
    .line 1812
    .end local v5    # "dirProp":B
    :cond_b
    const/16 v16, 0x1

    #@15e
    .restart local v16    # "state":B
    goto/16 :goto_3

    #@160
    .line 1815
    .end local v16    # "state":B
    .local v12, "lastStrong":B
    :cond_c
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@164
    move-object/from16 v18, v0

    #@166
    move-object/from16 v0, p0

    #@168
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@16a
    move/from16 v19, v0

    #@16c
    const/16 v20, 0x0

    #@16e
    aput-byte v19, v18, v20

    #@170
    .line 1816
    const/16 v16, 0x0

    #@172
    .restart local v16    # "state":B
    goto/16 :goto_3

    #@174
    .line 1848
    .end local v12    # "lastStrong":B
    .end local v16    # "state":B
    .restart local v5    # "dirProp":B
    .restart local v7    # "i0":I
    .restart local v8    # "i1":I
    .restart local v17    # "uchar":I
    :cond_d
    const/16 v18, 0x2

    #@176
    move/from16 v0, v16

    #@178
    move/from16 v1, v18

    #@17a
    if-ne v0, v1, :cond_5

    #@17c
    .line 1849
    const/16 v18, 0x7d

    #@17e
    move/from16 v0, v18

    #@180
    if-gt v15, v0, :cond_e

    #@182
    .line 1852
    move-object/from16 v0, p0

    #@184
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@186
    move/from16 v18, v0

    #@188
    const/16 v19, 0x14

    #@18a
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@18d
    move-result v19

    #@18e
    or-int v18, v18, v19

    #@190
    move/from16 v0, v18

    #@192
    move-object/from16 v1, p0

    #@194
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@196
    .line 1854
    :cond_e
    const/16 v16, 0x3

    #@198
    .restart local v16    # "state":B
    goto :goto_5

    #@199
    .line 1859
    .end local v16    # "state":B
    :cond_f
    const/16 v18, 0x1

    #@19b
    move/from16 v0, v18

    #@19d
    if-eq v5, v0, :cond_10

    #@19f
    const/16 v18, 0xd

    #@1a1
    move/from16 v0, v18

    #@1a3
    if-ne v5, v0, :cond_14

    #@1a5
    .line 1860
    :cond_10
    const/16 v18, 0x1

    #@1a7
    move/from16 v0, v16

    #@1a9
    move/from16 v1, v18

    #@1ab
    if-ne v0, v1, :cond_12

    #@1ad
    .line 1861
    move-object/from16 v0, p0

    #@1af
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@1b1
    move-object/from16 v18, v0

    #@1b3
    move-object/from16 v0, p0

    #@1b5
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@1b7
    move/from16 v19, v0

    #@1b9
    add-int/lit8 v19, v19, -0x1

    #@1bb
    const/16 v20, 0x1

    #@1bd
    aput-byte v20, v18, v19

    #@1bf
    .line 1862
    const/16 v16, 0x0

    #@1c1
    .line 1871
    :cond_11
    :goto_6
    const/4 v12, 0x1

    #@1c2
    .line 1872
    .restart local v12    # "lastStrong":B
    const/16 v18, 0xd

    #@1c4
    move/from16 v0, v18

    #@1c6
    if-ne v5, v0, :cond_1

    #@1c8
    .line 1873
    add-int/lit8 v18, v6, -0x1

    #@1ca
    move/from16 v0, v18

    #@1cc
    move-object/from16 v1, p0

    #@1ce
    iput v0, v1, Landroid/icu/text/Bidi;->lastArabicPos:I

    #@1d0
    goto/16 :goto_4

    #@1d2
    .line 1864
    .end local v12    # "lastStrong":B
    :cond_12
    const/16 v18, 0x2

    #@1d4
    move/from16 v0, v16

    #@1d6
    move/from16 v1, v18

    #@1d8
    if-ne v0, v1, :cond_11

    #@1da
    .line 1865
    const/16 v18, 0x7d

    #@1dc
    move/from16 v0, v18

    #@1de
    if-gt v15, v0, :cond_13

    #@1e0
    .line 1866
    move-object/from16 v0, p0

    #@1e2
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@1e4
    move-object/from16 v18, v0

    #@1e6
    aget v19, v11, v15

    #@1e8
    const/16 v20, 0x15

    #@1ea
    aput-byte v20, v18, v19

    #@1ec
    .line 1867
    move-object/from16 v0, p0

    #@1ee
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@1f0
    move/from16 v18, v0

    #@1f2
    const/16 v19, 0x15

    #@1f4
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1f7
    move-result v19

    #@1f8
    or-int v18, v18, v19

    #@1fa
    move/from16 v0, v18

    #@1fc
    move-object/from16 v1, p0

    #@1fe
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@200
    .line 1869
    :cond_13
    const/16 v16, 0x3

    #@202
    .restart local v16    # "state":B
    goto :goto_6

    #@203
    .line 1876
    .end local v16    # "state":B
    :cond_14
    const/16 v18, 0x13

    #@205
    move/from16 v0, v18

    #@207
    if-lt v5, v0, :cond_17

    #@209
    const/16 v18, 0x15

    #@20b
    move/from16 v0, v18

    #@20d
    if-gt v5, v0, :cond_17

    #@20f
    .line 1877
    add-int/lit8 v15, v15, 0x1

    #@211
    .line 1878
    const/16 v18, 0x7d

    #@213
    move/from16 v0, v18

    #@215
    if-gt v15, v0, :cond_15

    #@217
    .line 1879
    add-int/lit8 v18, v6, -0x1

    #@219
    aput v18, v11, v15

    #@21b
    .line 1880
    aput-byte v16, v13, v15

    #@21d
    .line 1882
    :cond_15
    const/16 v18, 0x13

    #@21f
    move/from16 v0, v18

    #@221
    if-ne v5, v0, :cond_16

    #@223
    .line 1883
    move-object/from16 v0, p0

    #@225
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@227
    move-object/from16 v18, v0

    #@229
    add-int/lit8 v19, v6, -0x1

    #@22b
    const/16 v20, 0x14

    #@22d
    aput-byte v20, v18, v19

    #@22f
    .line 1884
    const/16 v16, 0x2

    #@231
    .restart local v16    # "state":B
    goto/16 :goto_4

    #@233
    .line 1887
    .end local v16    # "state":B
    :cond_16
    const/16 v16, 0x3

    #@235
    .restart local v16    # "state":B
    goto/16 :goto_4

    #@237
    .line 1890
    .end local v16    # "state":B
    :cond_17
    const/16 v18, 0x16

    #@239
    move/from16 v0, v18

    #@23b
    if-ne v5, v0, :cond_1a

    #@23d
    .line 1891
    const/16 v18, 0x2

    #@23f
    move/from16 v0, v16

    #@241
    move/from16 v1, v18

    #@243
    if-ne v0, v1, :cond_18

    #@245
    .line 1892
    const/16 v18, 0x7d

    #@247
    move/from16 v0, v18

    #@249
    if-gt v15, v0, :cond_18

    #@24b
    .line 1895
    move-object/from16 v0, p0

    #@24d
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@24f
    move/from16 v18, v0

    #@251
    const/16 v19, 0x14

    #@253
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@256
    move-result v19

    #@257
    or-int v18, v18, v19

    #@259
    move/from16 v0, v18

    #@25b
    move-object/from16 v1, p0

    #@25d
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@25f
    .line 1898
    :cond_18
    if-ltz v15, :cond_1

    #@261
    .line 1899
    const/16 v18, 0x7d

    #@263
    move/from16 v0, v18

    #@265
    if-gt v15, v0, :cond_19

    #@267
    .line 1900
    aget-byte v16, v13, v15

    #@269
    .line 1901
    :cond_19
    add-int/lit8 v15, v15, -0x1

    #@26b
    goto/16 :goto_4

    #@26d
    .line 1905
    :cond_1a
    const/16 v18, 0x7

    #@26f
    move/from16 v0, v18

    #@271
    if-ne v5, v0, :cond_1

    #@273
    .line 1906
    move-object/from16 v0, p0

    #@275
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@277
    move/from16 v18, v0

    #@279
    move/from16 v0, v18

    #@27b
    if-ge v6, v0, :cond_1b

    #@27d
    const/16 v18, 0xd

    #@27f
    move/from16 v0, v17

    #@281
    move/from16 v1, v18

    #@283
    if-ne v0, v1, :cond_1b

    #@285
    move-object/from16 v0, p0

    #@287
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@289
    move-object/from16 v18, v0

    #@28b
    aget-char v18, v18, v6

    #@28d
    const/16 v19, 0xa

    #@28f
    move/from16 v0, v18

    #@291
    move/from16 v1, v19

    #@293
    if-eq v0, v1, :cond_1

    #@295
    .line 1908
    :cond_1b
    move-object/from16 v0, p0

    #@297
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@299
    move-object/from16 v18, v0

    #@29b
    move-object/from16 v0, p0

    #@29d
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@29f
    move/from16 v19, v0

    #@2a1
    add-int/lit8 v19, v19, -0x1

    #@2a3
    aput v6, v18, v19

    #@2a5
    .line 1909
    if-eqz v10, :cond_1c

    #@2a7
    const/16 v18, 0x1

    #@2a9
    move/from16 v0, v18

    #@2ab
    if-ne v12, v0, :cond_1c

    #@2ad
    .line 1910
    move-object/from16 v0, p0

    #@2af
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@2b1
    move-object/from16 v18, v0

    #@2b3
    move-object/from16 v0, p0

    #@2b5
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@2b7
    move/from16 v19, v0

    #@2b9
    add-int/lit8 v19, v19, -0x1

    #@2bb
    const/16 v20, 0x1

    #@2bd
    aput-byte v20, v18, v19

    #@2bf
    .line 1911
    :cond_1c
    move-object/from16 v0, p0

    #@2c1
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@2c3
    move/from16 v18, v0

    #@2c5
    and-int/lit8 v18, v18, 0x4

    #@2c7
    if-eqz v18, :cond_1d

    #@2c9
    .line 1914
    move-object/from16 v0, p0

    #@2cb
    iput v6, v0, Landroid/icu/text/Bidi;->length:I

    #@2cd
    .line 1915
    move-object/from16 v0, p0

    #@2cf
    iput v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@2d1
    .line 1917
    :cond_1d
    move-object/from16 v0, p0

    #@2d3
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@2d5
    move/from16 v18, v0

    #@2d7
    move/from16 v0, v18

    #@2d9
    if-ge v6, v0, :cond_1

    #@2db
    .line 1918
    move-object/from16 v0, p0

    #@2dd
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@2df
    move/from16 v18, v0

    #@2e1
    add-int/lit8 v18, v18, 0x1

    #@2e3
    move/from16 v0, v18

    #@2e5
    move-object/from16 v1, p0

    #@2e7
    iput v0, v1, Landroid/icu/text/Bidi;->paraCount:I

    #@2e9
    .line 1919
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->checkParaCount()V

    #@2ec
    .line 1920
    if-eqz v9, :cond_1e

    #@2ee
    .line 1921
    move-object/from16 v0, p0

    #@2f0
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@2f2
    move-object/from16 v18, v0

    #@2f4
    move-object/from16 v0, p0

    #@2f6
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@2f8
    move/from16 v19, v0

    #@2fa
    add-int/lit8 v19, v19, -0x1

    #@2fc
    aput-byte v4, v18, v19

    #@2fe
    .line 1922
    const/16 v16, 0x1

    #@300
    .line 1923
    .restart local v16    # "state":B
    move v12, v4

    #@301
    .line 1928
    :goto_7
    const/4 v15, -0x1

    #@302
    goto/16 :goto_4

    #@304
    .line 1925
    .end local v16    # "state":B
    :cond_1e
    move-object/from16 v0, p0

    #@306
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@308
    move-object/from16 v18, v0

    #@30a
    move-object/from16 v0, p0

    #@30c
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@30e
    move/from16 v19, v0

    #@310
    add-int/lit8 v19, v19, -0x1

    #@312
    move-object/from16 v0, p0

    #@314
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@316
    move/from16 v20, v0

    #@318
    aput-byte v20, v18, v19

    #@31a
    .line 1926
    const/16 v16, 0x0

    #@31c
    .restart local v16    # "state":B
    goto :goto_7

    #@31d
    .line 1934
    .end local v5    # "dirProp":B
    .end local v7    # "i0":I
    .end local v8    # "i1":I
    .end local v16    # "state":B
    .end local v17    # "uchar":I
    :cond_1f
    const/16 v18, 0x7d

    #@31f
    move/from16 v0, v18

    #@321
    if-le v15, v0, :cond_20

    #@323
    .line 1935
    const/16 v15, 0x7d

    #@325
    .line 1936
    const/16 v16, 0x2

    #@327
    .line 1939
    :cond_20
    :goto_8
    if-ltz v15, :cond_21

    #@329
    .line 1940
    const/16 v18, 0x2

    #@32b
    move/from16 v0, v16

    #@32d
    move/from16 v1, v18

    #@32f
    if-ne v0, v1, :cond_25

    #@331
    .line 1943
    move-object/from16 v0, p0

    #@333
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@335
    move/from16 v18, v0

    #@337
    const/16 v19, 0x14

    #@339
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@33c
    move-result v19

    #@33d
    or-int v18, v18, v19

    #@33f
    move/from16 v0, v18

    #@341
    move-object/from16 v1, p0

    #@343
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@345
    .line 1950
    :cond_21
    move-object/from16 v0, p0

    #@347
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@349
    move/from16 v18, v0

    #@34b
    and-int/lit8 v18, v18, 0x4

    #@34d
    if-eqz v18, :cond_26

    #@34f
    .line 1951
    move-object/from16 v0, p0

    #@351
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@353
    move/from16 v18, v0

    #@355
    move-object/from16 v0, p0

    #@357
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@359
    move/from16 v19, v0

    #@35b
    move/from16 v0, v18

    #@35d
    move/from16 v1, v19

    #@35f
    if-ge v0, v1, :cond_22

    #@361
    .line 1952
    move-object/from16 v0, p0

    #@363
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@365
    move/from16 v18, v0

    #@367
    add-int/lit8 v18, v18, -0x1

    #@369
    move/from16 v0, v18

    #@36b
    move-object/from16 v1, p0

    #@36d
    iput v0, v1, Landroid/icu/text/Bidi;->paraCount:I

    #@36f
    .line 1959
    :cond_22
    :goto_9
    if-eqz v10, :cond_23

    #@371
    const/16 v18, 0x1

    #@373
    move/from16 v0, v18

    #@375
    if-ne v12, v0, :cond_23

    #@377
    .line 1960
    move-object/from16 v0, p0

    #@379
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@37b
    move-object/from16 v18, v0

    #@37d
    move-object/from16 v0, p0

    #@37f
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@381
    move/from16 v19, v0

    #@383
    add-int/lit8 v19, v19, -0x1

    #@385
    const/16 v20, 0x1

    #@387
    aput-byte v20, v18, v19

    #@389
    .line 1962
    :cond_23
    if-eqz v9, :cond_24

    #@38b
    .line 1963
    move-object/from16 v0, p0

    #@38d
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@38f
    move-object/from16 v18, v0

    #@391
    const/16 v19, 0x0

    #@393
    aget-byte v18, v18, v19

    #@395
    move/from16 v0, v18

    #@397
    move-object/from16 v1, p0

    #@399
    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    #@39b
    .line 1967
    :cond_24
    const/4 v6, 0x0

    #@39c
    :goto_a
    move-object/from16 v0, p0

    #@39e
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@3a0
    move/from16 v18, v0

    #@3a2
    move/from16 v0, v18

    #@3a4
    if-ge v6, v0, :cond_27

    #@3a6
    .line 1968
    move-object/from16 v0, p0

    #@3a8
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@3aa
    move/from16 v18, v0

    #@3ac
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@3b0
    move-object/from16 v19, v0

    #@3b2
    aget-byte v19, v19, v6

    #@3b4
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@3b7
    move-result v19

    #@3b8
    or-int v18, v18, v19

    #@3ba
    move/from16 v0, v18

    #@3bc
    move-object/from16 v1, p0

    #@3be
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@3c0
    .line 1967
    add-int/lit8 v6, v6, 0x1

    #@3c2
    goto :goto_a

    #@3c3
    .line 1946
    :cond_25
    aget-byte v16, v13, v15

    #@3c5
    .line 1947
    .local v16, "state":B
    add-int/lit8 v15, v15, -0x1

    #@3c7
    goto/16 :goto_8

    #@3c9
    .line 1954
    .end local v16    # "state":B
    :cond_26
    move-object/from16 v0, p0

    #@3cb
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@3cd
    move-object/from16 v18, v0

    #@3cf
    move-object/from16 v0, p0

    #@3d1
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@3d3
    move/from16 v19, v0

    #@3d5
    add-int/lit8 v19, v19, -0x1

    #@3d7
    move-object/from16 v0, p0

    #@3d9
    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@3db
    move/from16 v20, v0

    #@3dd
    aput v20, v18, v19

    #@3df
    .line 1955
    move-object/from16 v0, p0

    #@3e1
    iput v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@3e3
    goto :goto_9

    #@3e4
    .line 1970
    :cond_27
    move-object/from16 v0, p0

    #@3e6
    iget-boolean v0, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@3e8
    move/from16 v18, v0

    #@3ea
    if-eqz v18, :cond_28

    #@3ec
    move-object/from16 v0, p0

    #@3ee
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@3f0
    move/from16 v18, v0

    #@3f2
    const/16 v19, 0x7

    #@3f4
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@3f7
    move-result v19

    #@3f8
    and-int v18, v18, v19

    #@3fa
    if-eqz v18, :cond_28

    #@3fc
    .line 1971
    move-object/from16 v0, p0

    #@3fe
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@400
    move/from16 v18, v0

    #@402
    const/16 v19, 0x0

    #@404
    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@407
    move-result v19

    #@408
    or-int v18, v18, v19

    #@40a
    move/from16 v0, v18

    #@40c
    move-object/from16 v1, p0

    #@40e
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@410
    .line 1764
    :cond_28
    return-void
.end method

.method private getDirPropsMemory(ZI)V
    .locals 7
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    #@0
    .prologue
    .line 1330
    const-string/jumbo v1, "DirProps"

    #@3
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    #@5
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@7
    move-object v0, p0

    #@8
    move v4, p1

    #@9
    move v5, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    .line 1331
    .local v6, "array":Ljava/lang/Object;
    check-cast v6, [B

    #@10
    .end local v6    # "array":Ljava/lang/Object;
    iput-object v6, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    #@12
    .line 1328
    return-void
.end method

.method private getInitialDirPropsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1364
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    #@4
    .line 1362
    return-void
.end method

.method private getInitialLevelsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1369
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    #@4
    .line 1367
    return-void
.end method

.method private getInitialRunsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1374
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    #@4
    .line 1372
    return-void
.end method

.method private getLevelsMemory(ZI)V
    .locals 7
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    #@0
    .prologue
    .line 1341
    const-string/jumbo v1, "Levels"

    #@3
    iget-object v2, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    #@5
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@7
    move-object v0, p0

    #@8
    move v4, p1

    #@9
    move v5, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    .line 1342
    .local v6, "array":Ljava/lang/Object;
    check-cast v6, [B

    #@10
    .end local v6    # "array":Ljava/lang/Object;
    iput-object v6, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    #@12
    .line 1339
    return-void
.end method

.method private getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "array"    # Ljava/lang/Object;
    .param p4, "mayAllocate"    # Z
    .param p5, "sizeNeeded"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 1302
    .local p3, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 1305
    .local v1, "len":I
    if-ne p5, v1, :cond_0

    #@6
    .line 1306
    return-object p2

    #@7
    .line 1308
    :cond_0
    if-nez p4, :cond_2

    #@9
    .line 1310
    if-gt p5, v1, :cond_1

    #@b
    .line 1311
    return-object p2

    #@c
    .line 1313
    :cond_1
    new-instance v2, Ljava/lang/OutOfMemoryError;

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Failed to allocate memory for "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 1320
    :cond_2
    :try_start_0
    invoke-static {p3, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result-object v2

    #@2a
    return-object v2

    #@2b
    .line 1321
    :catch_0
    move-exception v0

    #@2c
    .line 1322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/OutOfMemoryError;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v4, "Failed to allocate memory for "

    #@36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    #@45
    throw v2
.end method

.method private getRunsMemory(ZI)V
    .locals 7
    .param p1, "mayAllocate"    # Z
    .param p2, "len"    # I

    #@0
    .prologue
    .line 1352
    const-string/jumbo v1, "Runs"

    #@3
    iget-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@5
    const-class v3, Landroid/icu/text/BidiRun;

    #@7
    move-object v0, p0

    #@8
    move v4, p1

    #@9
    move v5, p2

    #@a
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    #@d
    move-result-object v6

    #@e
    .line 1353
    .local v6, "array":Ljava/lang/Object;
    check-cast v6, [Landroid/icu/text/BidiRun;

    #@10
    .end local v6    # "array":Ljava/lang/Object;
    iput-object v6, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@12
    .line 1350
    return-void
.end method

.method public static invertMap([I)[I
    .locals 1
    .param p0, "srcMap"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5126
    if-nez p0, :cond_0

    #@3
    .line 5127
    return-object v0

    #@4
    .line 5129
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->invertMap([I)[I

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private lastL_R_AL()B
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 3295
    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    .local v1, "i":I
    :cond_0
    if-lez v1, :cond_4

    #@b
    .line 3296
    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@d
    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointBefore(I)I

    #@10
    move-result v2

    #@11
    .line 3297
    .local v2, "uchar":I
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    #@14
    move-result v3

    #@15
    sub-int/2addr v1, v3

    #@16
    .line 3298
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    #@19
    move-result v3

    #@1a
    int-to-byte v0, v3

    #@1b
    .line 3299
    .local v0, "dirProp":B
    if-nez v0, :cond_1

    #@1d
    .line 3300
    return v4

    #@1e
    .line 3302
    :cond_1
    if-eq v0, v5, :cond_2

    #@20
    const/16 v3, 0xd

    #@22
    if-ne v0, v3, :cond_3

    #@24
    .line 3303
    :cond_2
    return v5

    #@25
    .line 3305
    :cond_3
    const/4 v3, 0x7

    #@26
    if-ne v0, v3, :cond_0

    #@28
    .line 3306
    return v6

    #@29
    .line 3309
    .end local v0    # "dirProp":B
    .end local v2    # "uchar":I
    :cond_4
    return v6
.end method

.method private processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V
    .locals 14
    .param p1, "levState"    # Landroid/icu/text/Bidi$LevState;
    .param p2, "_prop"    # S
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 3099
    iget-object v6, p1, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    #@2
    .line 3100
    .local v6, "impTab":[[B
    iget-object v5, p1, Landroid/icu/text/Bidi$LevState;->impAct:[S

    #@4
    .line 3105
    .local v5, "impAct":[S
    move/from16 v11, p3

    #@6
    .line 3106
    .local v11, "start0":I
    iget-short v10, p1, Landroid/icu/text/Bidi$LevState;->state:S

    #@8
    .line 3107
    .local v10, "oldStateSeq":S
    aget-object v12, v6, v10

    #@a
    aget-byte v4, v12, p2

    #@c
    .line 3108
    .local v4, "cell":B
    invoke-static {v4}, Landroid/icu/text/Bidi;->GetState(B)S

    #@f
    move-result v12

    #@10
    iput-short v12, p1, Landroid/icu/text/Bidi$LevState;->state:S

    #@12
    .line 3109
    invoke-static {v4}, Landroid/icu/text/Bidi;->GetAction(B)S

    #@15
    move-result v12

    #@16
    aget-short v2, v5, v12

    #@18
    .line 3110
    .local v2, "actionSeq":S
    iget-short v12, p1, Landroid/icu/text/Bidi$LevState;->state:S

    #@1a
    aget-object v12, v6, v12

    #@1c
    const/4 v13, 0x7

    #@1d
    aget-byte v3, v12, v13

    #@1f
    .line 3112
    .local v3, "addLevel":B
    if-eqz v2, :cond_0

    #@21
    .line 3113
    packed-switch v2, :pswitch_data_0

    #@24
    .line 3275
    new-instance v12, Ljava/lang/IllegalStateException;

    #@26
    const-string/jumbo v13, "Internal ICU error in processPropertySeq"

    #@29
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v12

    #@2d
    .line 3115
    :pswitch_0
    move/from16 v0, p3

    #@2f
    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@31
    .line 3278
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    #@33
    move/from16 v0, p3

    #@35
    if-ge v0, v11, :cond_14

    #@37
    .line 3279
    :cond_1
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@39
    add-int/2addr v12, v3

    #@3a
    int-to-byte v9, v12

    #@3b
    .line 3280
    .local v9, "level":B
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->runStart:I

    #@3d
    move/from16 v0, p3

    #@3f
    if-lt v0, v12, :cond_13

    #@41
    .line 3281
    move/from16 v7, p3

    #@43
    .local v7, "k":I
    :goto_1
    move/from16 v0, p4

    #@45
    if-ge v7, v0, :cond_14

    #@47
    .line 3282
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@49
    aput-byte v9, v12, v7

    #@4b
    .line 3281
    add-int/lit8 v7, v7, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 3119
    .end local v7    # "k":I
    .end local v9    # "level":B
    :pswitch_1
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@50
    move/from16 p3, v0

    #@52
    goto :goto_0

    #@53
    .line 3123
    :pswitch_2
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@55
    add-int/lit8 v12, v12, 0x1

    #@57
    int-to-byte v9, v12

    #@58
    .line 3124
    .restart local v9    # "level":B
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@5a
    move/from16 v0, p3

    #@5c
    invoke-direct {p0, v12, v0, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    #@5f
    goto :goto_0

    #@60
    .line 3128
    .end local v9    # "level":B
    :pswitch_3
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@62
    add-int/lit8 v12, v12, 0x2

    #@64
    int-to-byte v9, v12

    #@65
    .line 3129
    .restart local v9    # "level":B
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@67
    move/from16 v0, p3

    #@69
    invoke-direct {p0, v12, v0, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    #@6c
    goto :goto_0

    #@6d
    .line 3134
    .end local v9    # "level":B
    :pswitch_4
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@6f
    if-ltz v12, :cond_2

    #@71
    .line 3135
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@73
    const/4 v13, 0x1

    #@74
    invoke-direct {p0, v12, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@77
    .line 3137
    :cond_2
    const/4 v12, -0x1

    #@78
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@7a
    .line 3139
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@7c
    iget-object v12, v12, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@7e
    array-length v12, v12

    #@7f
    if-eqz v12, :cond_3

    #@81
    .line 3140
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@83
    iget v12, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@85
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@87
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@89
    if-gt v12, v13, :cond_5

    #@8b
    .line 3142
    :cond_3
    const/4 v12, -0x1

    #@8c
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@8e
    .line 3144
    aget-object v12, v6, v10

    #@90
    const/4 v13, 0x7

    #@91
    aget-byte v9, v12, v13

    #@93
    .line 3145
    .restart local v9    # "level":B
    and-int/lit8 v12, v9, 0x1

    #@95
    if-eqz v12, :cond_4

    #@97
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@99
    if-lez v12, :cond_4

    #@9b
    .line 3146
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@9d
    move/from16 p3, v0

    #@9f
    .line 3148
    :cond_4
    const/4 v12, 0x5

    #@a0
    move/from16 v0, p2

    #@a2
    if-ne v0, v12, :cond_0

    #@a4
    .line 3149
    const/4 v12, 0x1

    #@a5
    invoke-direct {p0, v11, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@a8
    .line 3150
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@aa
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@ac
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@ae
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@b0
    goto :goto_0

    #@b1
    .line 3155
    .end local v9    # "level":B
    :cond_5
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@b3
    add-int/lit8 v7, v12, 0x1

    #@b5
    .restart local v7    # "k":I
    :goto_2
    move/from16 v0, p3

    #@b7
    if-ge v7, v0, :cond_6

    #@b9
    .line 3157
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@bb
    iget-object v13, p0, Landroid/icu/text/Bidi;->levels:[B

    #@bd
    aget-byte v13, v13, v7

    #@bf
    add-int/lit8 v13, v13, -0x2

    #@c1
    and-int/lit8 v13, v13, -0x2

    #@c3
    int-to-byte v13, v13

    #@c4
    aput-byte v13, v12, v7

    #@c6
    .line 3155
    add-int/lit8 v7, v7, 0x1

    #@c8
    goto :goto_2

    #@c9
    .line 3160
    :cond_6
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@cb
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@cd
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@cf
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@d1
    .line 3161
    const/4 v12, -0x1

    #@d2
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@d4
    .line 3162
    const/4 v12, 0x5

    #@d5
    move/from16 v0, p2

    #@d7
    if-ne v0, v12, :cond_0

    #@d9
    .line 3163
    const/4 v12, 0x1

    #@da
    move/from16 v0, p3

    #@dc
    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@df
    .line 3164
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@e1
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@e3
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@e5
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@e7
    goto/16 :goto_0

    #@e9
    .line 3170
    .end local v7    # "k":I
    :pswitch_5
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@eb
    iget-object v12, v12, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    #@ed
    array-length v12, v12

    #@ee
    if-lez v12, :cond_7

    #@f0
    .line 3172
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@f2
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@f4
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@f6
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@f8
    .line 3173
    :cond_7
    const/4 v12, -0x1

    #@f9
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@fb
    .line 3174
    const/4 v12, -0x1

    #@fc
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@fe
    .line 3175
    add-int/lit8 v12, p4, -0x1

    #@100
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@102
    goto/16 :goto_0

    #@104
    .line 3180
    :pswitch_6
    const/4 v12, 0x3

    #@105
    move/from16 v0, p2

    #@107
    if-ne v0, v12, :cond_a

    #@109
    iget-object v12, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@10b
    aget-byte v12, v12, p3

    #@10d
    const/4 v13, 0x5

    #@10e
    if-ne v12, v13, :cond_a

    #@110
    .line 3181
    iget v12, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@112
    const/4 v13, 0x6

    #@113
    if-eq v12, v13, :cond_a

    #@115
    .line 3184
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@117
    const/4 v13, -0x1

    #@118
    if-ne v12, v13, :cond_8

    #@11a
    .line 3186
    add-int/lit8 v12, p4, -0x1

    #@11c
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@11e
    goto/16 :goto_0

    #@120
    .line 3189
    :cond_8
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@122
    if-ltz v12, :cond_9

    #@124
    .line 3190
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@126
    const/4 v13, 0x1

    #@127
    invoke-direct {p0, v12, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@12a
    .line 3191
    const/4 v12, -0x2

    #@12b
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@12d
    .line 3194
    :cond_9
    const/4 v12, 0x1

    #@12e
    move/from16 v0, p3

    #@130
    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@133
    goto/16 :goto_0

    #@135
    .line 3198
    :cond_a
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@137
    const/4 v13, -0x1

    #@138
    if-ne v12, v13, :cond_0

    #@13a
    .line 3199
    move/from16 v0, p3

    #@13c
    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@13e
    goto/16 :goto_0

    #@140
    .line 3204
    :pswitch_7
    add-int/lit8 v12, p4, -0x1

    #@142
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@144
    .line 3205
    const/4 v12, -0x1

    #@145
    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@147
    goto/16 :goto_0

    #@149
    .line 3210
    :pswitch_8
    add-int/lit8 v7, p3, -0x1

    #@14b
    .restart local v7    # "k":I
    :goto_3
    if-ltz v7, :cond_b

    #@14d
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@14f
    aget-byte v12, v12, v7

    #@151
    and-int/lit8 v12, v12, 0x1

    #@153
    if-nez v12, :cond_b

    #@155
    add-int/lit8 v7, v7, -0x1

    #@157
    goto :goto_3

    #@158
    .line 3212
    :cond_b
    if-ltz v7, :cond_c

    #@15a
    .line 3213
    const/4 v12, 0x4

    #@15b
    invoke-direct {p0, v7, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@15e
    .line 3214
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@160
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@162
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@164
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@166
    .line 3216
    :cond_c
    move/from16 v0, p3

    #@168
    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@16a
    goto/16 :goto_0

    #@16c
    .line 3222
    .end local v7    # "k":I
    :pswitch_9
    const/4 v12, 0x1

    #@16d
    move/from16 v0, p3

    #@16f
    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@172
    .line 3223
    const/4 v12, 0x2

    #@173
    move/from16 v0, p3

    #@175
    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@178
    goto/16 :goto_0

    #@17a
    .line 3228
    :pswitch_a
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@17c
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@17e
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@180
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@182
    .line 3229
    const/4 v12, 0x5

    #@183
    move/from16 v0, p2

    #@185
    if-ne v0, v12, :cond_0

    #@187
    .line 3230
    const/4 v12, 0x4

    #@188
    move/from16 v0, p3

    #@18a
    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@18d
    .line 3231
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@18f
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@191
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@193
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@195
    goto/16 :goto_0

    #@197
    .line 3236
    :pswitch_b
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@199
    add-int/2addr v12, v3

    #@19a
    int-to-byte v9, v12

    #@19b
    .line 3237
    .restart local v9    # "level":B
    iget v7, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@19d
    .restart local v7    # "k":I
    :goto_4
    move/from16 v0, p3

    #@19f
    if-ge v7, v0, :cond_e

    #@1a1
    .line 3238
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1a3
    aget-byte v12, v12, v7

    #@1a5
    if-ge v12, v9, :cond_d

    #@1a7
    .line 3239
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1a9
    aput-byte v9, v12, v7

    #@1ab
    .line 3237
    :cond_d
    add-int/lit8 v7, v7, 0x1

    #@1ad
    goto :goto_4

    #@1ae
    .line 3242
    :cond_e
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@1b0
    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@1b2
    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@1b4
    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@1b6
    .line 3243
    move/from16 v0, p3

    #@1b8
    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@1ba
    goto/16 :goto_0

    #@1bc
    .line 3247
    .end local v7    # "k":I
    .end local v9    # "level":B
    :pswitch_c
    iget-byte v9, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@1be
    .line 3248
    .restart local v9    # "level":B
    add-int/lit8 v7, p3, -0x1

    #@1c0
    .restart local v7    # "k":I
    :goto_5
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@1c2
    if-lt v7, v12, :cond_0

    #@1c4
    .line 3249
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1c6
    aget-byte v12, v12, v7

    #@1c8
    add-int/lit8 v13, v9, 0x3

    #@1ca
    if-ne v12, v13, :cond_10

    #@1cc
    .line 3250
    :goto_6
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1ce
    aget-byte v12, v12, v7

    #@1d0
    add-int/lit8 v13, v9, 0x3

    #@1d2
    if-ne v12, v13, :cond_f

    #@1d4
    .line 3251
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1d6
    add-int/lit8 v8, v7, -0x1

    #@1d8
    .end local v7    # "k":I
    .local v8, "k":I
    aget-byte v13, v12, v7

    #@1da
    add-int/lit8 v13, v13, -0x2

    #@1dc
    int-to-byte v13, v13

    #@1dd
    aput-byte v13, v12, v7

    #@1df
    move v7, v8

    #@1e0
    .end local v8    # "k":I
    .restart local v7    # "k":I
    goto :goto_6

    #@1e1
    .line 3253
    :cond_f
    :goto_7
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1e3
    aget-byte v12, v12, v7

    #@1e5
    if-ne v12, v9, :cond_10

    #@1e7
    .line 3254
    add-int/lit8 v7, v7, -0x1

    #@1e9
    goto :goto_7

    #@1ea
    .line 3257
    :cond_10
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1ec
    aget-byte v12, v12, v7

    #@1ee
    add-int/lit8 v13, v9, 0x2

    #@1f0
    if-ne v12, v13, :cond_11

    #@1f2
    .line 3258
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1f4
    aput-byte v9, v12, v7

    #@1f6
    .line 3248
    :goto_8
    add-int/lit8 v7, v7, -0x1

    #@1f8
    goto :goto_5

    #@1f9
    .line 3261
    :cond_11
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@1fb
    add-int/lit8 v13, v9, 0x1

    #@1fd
    int-to-byte v13, v13

    #@1fe
    aput-byte v13, v12, v7

    #@200
    goto :goto_8

    #@201
    .line 3266
    .end local v7    # "k":I
    .end local v9    # "level":B
    :pswitch_d
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@203
    add-int/lit8 v12, v12, 0x1

    #@205
    int-to-byte v9, v12

    #@206
    .line 3267
    .restart local v9    # "level":B
    add-int/lit8 v7, p3, -0x1

    #@208
    .restart local v7    # "k":I
    :goto_9
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    #@20a
    if-lt v7, v12, :cond_0

    #@20c
    .line 3268
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@20e
    aget-byte v12, v12, v7

    #@210
    if-le v12, v9, :cond_12

    #@212
    .line 3269
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    #@214
    aget-byte v13, v12, v7

    #@216
    add-int/lit8 v13, v13, -0x2

    #@218
    int-to-byte v13, v13

    #@219
    aput-byte v13, v12, v7

    #@21b
    .line 3267
    :cond_12
    add-int/lit8 v7, v7, -0x1

    #@21d
    goto :goto_9

    #@21e
    .line 3285
    .end local v7    # "k":I
    :cond_13
    move/from16 v0, p3

    #@220
    move/from16 v1, p4

    #@222
    invoke-direct {p0, v0, v1, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    #@225
    .line 3097
    .end local v9    # "level":B
    :cond_14
    return-void

    #@226
    .line 3113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static reorderLogical([B)[I
    .locals 1
    .param p0, "levels"    # [B

    #@0
    .prologue
    .line 5067
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderLogical([B)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static reorderVisual([B)[I
    .locals 1
    .param p0, "levels"    # [B

    #@0
    .prologue
    .line 5088
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderVisual([B)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 6
    .param p0, "levels"    # [B
    .param p1, "levelStart"    # I
    .param p2, "objects"    # [Ljava/lang/Object;
    .param p3, "objectStart"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 5549
    new-array v2, p4, [B

    #@3
    .line 5550
    .local v2, "reorderLevels":[B
    invoke-static {p0, p1, v2, v4, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6
    .line 5551
    invoke-static {v2}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    #@9
    move-result-object v1

    #@a
    .line 5552
    .local v1, "indexMap":[I
    new-array v3, p4, [Ljava/lang/Object;

    #@c
    .line 5553
    .local v3, "temp":[Ljava/lang/Object;
    invoke-static {p2, p3, v3, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@f
    .line 5554
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    #@12
    .line 5555
    add-int v4, p3, v0

    #@14
    aget v5, v1, v0

    #@16
    aget-object v5, v3, v5

    #@18
    aput-object v5, p2, v4

    #@1a
    .line 5554
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 5547
    :cond_0
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 6
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 5513
    const v0, 0xe022

    #@5
    .line 5519
    .local v0, "RTLMask":I
    move v1, p1

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@8
    .line 5520
    aget-char v2, p0, v1

    #@a
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    #@d
    move-result v2

    #@e
    shl-int v2, v5, v2

    #@10
    const v3, 0xe022

    #@13
    and-int/2addr v2, v3

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 5521
    return v5

    #@17
    .line 5519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 5524
    :cond_1
    return v4
.end method

.method private resolveExplicitLevels()B
    .locals 22

    #@0
    .prologue
    .line 2386
    const/4 v6, 0x0

    #@1
    .line 2388
    .local v6, "i":I
    const/16 v19, 0x0

    #@3
    move-object/from16 v0, p0

    #@5
    move/from16 v1, v19

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@a
    move-result v8

    #@b
    .line 2390
    .local v8, "level":B
    const/16 v19, 0x0

    #@d
    move/from16 v0, v19

    #@f
    move-object/from16 v1, p0

    #@11
    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    #@13
    .line 2393
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    #@16
    move-result v4

    #@17
    .line 2396
    .local v4, "dirct":B
    const/16 v19, 0x2

    #@19
    move/from16 v0, v19

    #@1b
    if-eq v4, v0, :cond_0

    #@1d
    .line 2398
    return v4

    #@1e
    .line 2400
    :cond_0
    move-object/from16 v0, p0

    #@20
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@22
    move/from16 v19, v0

    #@24
    const/16 v20, 0x1

    #@26
    move/from16 v0, v19

    #@28
    move/from16 v1, v20

    #@2a
    if-le v0, v1, :cond_4

    #@2c
    .line 2404
    const/4 v13, 0x0

    #@2d
    .local v13, "paraIndex":I
    :goto_0
    move-object/from16 v0, p0

    #@2f
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@31
    move/from16 v19, v0

    #@33
    move/from16 v0, v19

    #@35
    if-ge v13, v0, :cond_3

    #@37
    .line 2405
    if-nez v13, :cond_1

    #@39
    .line 2406
    const/16 v17, 0x0

    #@3b
    .line 2409
    .local v17, "start":I
    :goto_1
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@3f
    move-object/from16 v19, v0

    #@41
    aget v9, v19, v13

    #@43
    .line 2410
    .local v9, "limit":I
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@47
    move-object/from16 v19, v0

    #@49
    aget-byte v8, v19, v13

    #@4b
    .line 2411
    move/from16 v6, v17

    #@4d
    :goto_2
    if-ge v6, v9, :cond_2

    #@4f
    .line 2412
    move-object/from16 v0, p0

    #@51
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@53
    move-object/from16 v19, v0

    #@55
    aput-byte v8, v19, v6

    #@57
    .line 2411
    add-int/lit8 v6, v6, 0x1

    #@59
    goto :goto_2

    #@5a
    .line 2408
    .end local v9    # "limit":I
    .end local v17    # "start":I
    :cond_1
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@5e
    move-object/from16 v19, v0

    #@60
    add-int/lit8 v20, v13, -0x1

    #@62
    aget v17, v19, v20

    #@64
    .restart local v17    # "start":I
    goto :goto_1

    #@65
    .line 2404
    .restart local v9    # "limit":I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    #@67
    goto :goto_0

    #@68
    .line 2414
    .end local v9    # "limit":I
    .end local v17    # "start":I
    :cond_3
    return v4

    #@69
    .line 2416
    .end local v13    # "paraIndex":I
    :cond_4
    move-object/from16 v0, p0

    #@6b
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@6d
    move/from16 v19, v0

    #@6f
    sget v20, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    #@71
    sget v21, Landroid/icu/text/Bidi;->MASK_ISO:I

    #@73
    or-int v20, v20, v21

    #@75
    and-int v19, v19, v20

    #@77
    if-nez v19, :cond_c

    #@79
    .line 2420
    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    #@7b
    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    #@7e
    .line 2421
    .local v2, "bracketData":Landroid/icu/text/Bidi$BracketData;
    move-object/from16 v0, p0

    #@80
    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    #@83
    .line 2422
    const/4 v13, 0x0

    #@84
    .restart local v13    # "paraIndex":I
    :goto_3
    move-object/from16 v0, p0

    #@86
    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@88
    move/from16 v19, v0

    #@8a
    move/from16 v0, v19

    #@8c
    if-ge v13, v0, :cond_b

    #@8e
    .line 2423
    if-nez v13, :cond_6

    #@90
    .line 2424
    const/16 v17, 0x0

    #@92
    .line 2427
    .restart local v17    # "start":I
    :goto_4
    move-object/from16 v0, p0

    #@94
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@96
    move-object/from16 v19, v0

    #@98
    aget v9, v19, v13

    #@9a
    .line 2428
    .restart local v9    # "limit":I
    move-object/from16 v0, p0

    #@9c
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@9e
    move-object/from16 v19, v0

    #@a0
    aget-byte v8, v19, v13

    #@a2
    .line 2429
    move/from16 v6, v17

    #@a4
    :goto_5
    if-ge v6, v9, :cond_a

    #@a6
    .line 2430
    move-object/from16 v0, p0

    #@a8
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@aa
    move-object/from16 v19, v0

    #@ac
    aput-byte v8, v19, v6

    #@ae
    .line 2431
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@b2
    move-object/from16 v19, v0

    #@b4
    aget-byte v3, v19, v6

    #@b6
    .line 2432
    .local v3, "dirProp":B
    const/16 v19, 0x12

    #@b8
    move/from16 v0, v19

    #@ba
    if-ne v3, v0, :cond_7

    #@bc
    .line 2429
    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    #@be
    goto :goto_5

    #@bf
    .line 2426
    .end local v3    # "dirProp":B
    .end local v9    # "limit":I
    .end local v17    # "start":I
    :cond_6
    move-object/from16 v0, p0

    #@c1
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@c3
    move-object/from16 v19, v0

    #@c5
    add-int/lit8 v20, v13, -0x1

    #@c7
    aget v17, v19, v20

    #@c9
    .restart local v17    # "start":I
    goto :goto_4

    #@ca
    .line 2434
    .restart local v3    # "dirProp":B
    .restart local v9    # "limit":I
    :cond_7
    const/16 v19, 0x7

    #@cc
    move/from16 v0, v19

    #@ce
    if-ne v3, v0, :cond_9

    #@d0
    .line 2435
    add-int/lit8 v19, v6, 0x1

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@d6
    move/from16 v20, v0

    #@d8
    move/from16 v0, v19

    #@da
    move/from16 v1, v20

    #@dc
    if-ge v0, v1, :cond_5

    #@de
    .line 2436
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@e2
    move-object/from16 v19, v0

    #@e4
    aget-char v19, v19, v6

    #@e6
    const/16 v20, 0xd

    #@e8
    move/from16 v0, v19

    #@ea
    move/from16 v1, v20

    #@ec
    if-ne v0, v1, :cond_8

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@f2
    move-object/from16 v19, v0

    #@f4
    add-int/lit8 v20, v6, 0x1

    #@f6
    aget-char v19, v19, v20

    #@f8
    const/16 v20, 0xa

    #@fa
    move/from16 v0, v19

    #@fc
    move/from16 v1, v20

    #@fe
    if-eq v0, v1, :cond_5

    #@100
    .line 2438
    :cond_8
    move-object/from16 v0, p0

    #@102
    invoke-direct {v0, v2, v8}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    #@105
    goto :goto_6

    #@106
    .line 2442
    :cond_9
    move-object/from16 v0, p0

    #@108
    invoke-direct {v0, v2, v6}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    #@10b
    goto :goto_6

    #@10c
    .line 2422
    .end local v3    # "dirProp":B
    :cond_a
    add-int/lit8 v13, v13, 0x1

    #@10e
    goto/16 :goto_3

    #@110
    .line 2445
    .end local v9    # "limit":I
    .end local v17    # "start":I
    :cond_b
    return v4

    #@111
    .line 2451
    .end local v2    # "bracketData":Landroid/icu/text/Bidi$BracketData;
    .end local v13    # "paraIndex":I
    :cond_c
    move v5, v8

    #@112
    .line 2452
    .local v5, "embeddingLevel":B
    move v14, v8

    #@113
    .line 2453
    .local v14, "previousLevel":B
    const/4 v7, 0x0

    #@114
    .line 2457
    .local v7, "lastCcPos":I
    const/16 v19, 0x7f

    #@116
    move/from16 v0, v19

    #@118
    new-array v15, v0, [S

    #@11a
    .line 2459
    .local v15, "stack":[S
    const/16 v16, 0x0

    #@11c
    .line 2460
    .local v16, "stackLast":I
    const/4 v12, 0x0

    #@11d
    .line 2461
    .local v12, "overflowIsolateCount":I
    const/4 v11, 0x0

    #@11e
    .line 2462
    .local v11, "overflowEmbeddingCount":I
    const/16 v18, 0x0

    #@120
    .line 2463
    .local v18, "validIsolateCount":I
    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    #@122
    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    #@125
    .line 2464
    .restart local v2    # "bracketData":Landroid/icu/text/Bidi$BracketData;
    move-object/from16 v0, p0

    #@127
    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    #@12a
    .line 2465
    int-to-short v0, v8

    #@12b
    move/from16 v19, v0

    #@12d
    const/16 v20, 0x0

    #@12f
    aput-short v19, v15, v20

    #@131
    .line 2468
    const/16 v19, 0x0

    #@133
    move/from16 v0, v19

    #@135
    move-object/from16 v1, p0

    #@137
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@139
    .line 2470
    const/4 v6, 0x0

    #@13a
    :goto_7
    move-object/from16 v0, p0

    #@13c
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@13e
    move/from16 v19, v0

    #@140
    move/from16 v0, v19

    #@142
    if-ge v6, v0, :cond_1f

    #@144
    .line 2471
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@148
    move-object/from16 v19, v0

    #@14a
    aget-byte v3, v19, v6

    #@14c
    .line 2472
    .restart local v3    # "dirProp":B
    packed-switch v3, :pswitch_data_0

    #@14f
    .line 2608
    :pswitch_0
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@152
    move-result v19

    #@153
    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@156
    move-result v20

    #@157
    move/from16 v0, v19

    #@159
    move/from16 v1, v20

    #@15b
    if-eq v0, v1, :cond_d

    #@15d
    .line 2609
    move-object/from16 v0, p0

    #@15f
    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    #@162
    .line 2611
    move-object/from16 v0, p0

    #@164
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@166
    move/from16 v19, v0

    #@168
    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    #@16a
    or-int v19, v19, v20

    #@16c
    move/from16 v0, v19

    #@16e
    move-object/from16 v1, p0

    #@170
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@172
    .line 2612
    and-int/lit8 v19, v5, -0x80

    #@174
    if-eqz v19, :cond_1e

    #@176
    .line 2613
    move-object/from16 v0, p0

    #@178
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@17a
    move/from16 v19, v0

    #@17c
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    #@17f
    move-result v20

    #@180
    or-int v19, v19, v20

    #@182
    move/from16 v0, v19

    #@184
    move-object/from16 v1, p0

    #@186
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@188
    .line 2617
    :cond_d
    :goto_8
    move v14, v5

    #@189
    .line 2618
    move-object/from16 v0, p0

    #@18b
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@18d
    move-object/from16 v19, v0

    #@18f
    aput-byte v5, v19, v6

    #@191
    .line 2619
    move-object/from16 v0, p0

    #@193
    invoke-direct {v0, v2, v6}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    #@196
    .line 2621
    move-object/from16 v0, p0

    #@198
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@19a
    move/from16 v19, v0

    #@19c
    move-object/from16 v0, p0

    #@19e
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@1a0
    move-object/from16 v20, v0

    #@1a2
    aget-byte v20, v20, v6

    #@1a4
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1a7
    move-result v20

    #@1a8
    or-int v19, v19, v20

    #@1aa
    move/from16 v0, v19

    #@1ac
    move-object/from16 v1, p0

    #@1ae
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@1b0
    .line 2470
    :cond_e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    #@1b2
    goto :goto_7

    #@1b3
    .line 2478
    :pswitch_1
    move-object/from16 v0, p0

    #@1b5
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@1b7
    move/from16 v19, v0

    #@1b9
    const/16 v20, 0x12

    #@1bb
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1be
    move-result v20

    #@1bf
    or-int v19, v19, v20

    #@1c1
    move/from16 v0, v19

    #@1c3
    move-object/from16 v1, p0

    #@1c5
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@1c7
    .line 2479
    move-object/from16 v0, p0

    #@1c9
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@1cb
    move-object/from16 v19, v0

    #@1cd
    aput-byte v14, v19, v6

    #@1cf
    .line 2480
    const/16 v19, 0xb

    #@1d1
    move/from16 v0, v19

    #@1d3
    if-eq v3, v0, :cond_f

    #@1d5
    const/16 v19, 0xc

    #@1d7
    move/from16 v0, v19

    #@1d9
    if-ne v3, v0, :cond_12

    #@1db
    .line 2482
    :cond_f
    add-int/lit8 v19, v5, 0x2

    #@1dd
    and-int/lit8 v19, v19, 0x7e

    #@1df
    move/from16 v0, v19

    #@1e1
    int-to-byte v10, v0

    #@1e2
    .line 2486
    .local v10, "newLevel":B
    :goto_a
    const/16 v19, 0x7d

    #@1e4
    move/from16 v0, v19

    #@1e6
    if-gt v10, v0, :cond_13

    #@1e8
    if-nez v12, :cond_13

    #@1ea
    .line 2487
    if-nez v11, :cond_13

    #@1ec
    .line 2488
    move v7, v6

    #@1ed
    .line 2489
    move v5, v10

    #@1ee
    .line 2490
    const/16 v19, 0xc

    #@1f0
    move/from16 v0, v19

    #@1f2
    if-eq v3, v0, :cond_10

    #@1f4
    const/16 v19, 0xf

    #@1f6
    move/from16 v0, v19

    #@1f8
    if-ne v3, v0, :cond_11

    #@1fa
    .line 2491
    :cond_10
    or-int/lit8 v19, v5, -0x80

    #@1fc
    move/from16 v0, v19

    #@1fe
    int-to-byte v5, v0

    #@1ff
    .line 2492
    :cond_11
    add-int/lit8 v16, v16, 0x1

    #@201
    .line 2493
    int-to-short v0, v5

    #@202
    move/from16 v19, v0

    #@204
    aput-short v19, v15, v16

    #@206
    goto :goto_9

    #@207
    .line 2485
    .end local v10    # "newLevel":B
    :cond_12
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@20a
    move-result v19

    #@20b
    add-int/lit8 v19, v19, 0x1

    #@20d
    or-int/lit8 v19, v19, 0x1

    #@20f
    move/from16 v0, v19

    #@211
    int-to-byte v10, v0

    #@212
    .restart local v10    # "newLevel":B
    goto :goto_a

    #@213
    .line 2499
    :cond_13
    if-nez v12, :cond_e

    #@215
    .line 2500
    add-int/lit8 v11, v11, 0x1

    #@217
    goto :goto_9

    #@218
    .line 2505
    .end local v10    # "newLevel":B
    :pswitch_2
    move-object/from16 v0, p0

    #@21a
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@21c
    move/from16 v19, v0

    #@21e
    const/16 v20, 0x12

    #@220
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@223
    move-result v20

    #@224
    or-int v19, v19, v20

    #@226
    move/from16 v0, v19

    #@228
    move-object/from16 v1, p0

    #@22a
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@22c
    .line 2506
    move-object/from16 v0, p0

    #@22e
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@230
    move-object/from16 v19, v0

    #@232
    aput-byte v14, v19, v6

    #@234
    .line 2508
    if-gtz v12, :cond_e

    #@236
    .line 2511
    if-lez v11, :cond_14

    #@238
    .line 2512
    add-int/lit8 v11, v11, -0x1

    #@23a
    .line 2513
    goto/16 :goto_9

    #@23c
    .line 2515
    :cond_14
    if-lez v16, :cond_e

    #@23e
    aget-short v19, v15, v16

    #@240
    const/16 v20, 0x100

    #@242
    move/from16 v0, v19

    #@244
    move/from16 v1, v20

    #@246
    if-ge v0, v1, :cond_e

    #@248
    .line 2516
    move v7, v6

    #@249
    .line 2517
    add-int/lit8 v16, v16, -0x1

    #@24b
    .line 2518
    aget-short v19, v15, v16

    #@24d
    move/from16 v0, v19

    #@24f
    int-to-byte v5, v0

    #@250
    goto/16 :goto_9

    #@252
    .line 2523
    :pswitch_3
    move-object/from16 v0, p0

    #@254
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@256
    move/from16 v19, v0

    #@258
    const/16 v20, 0xa

    #@25a
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@25d
    move-result v20

    #@25e
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@261
    move-result v21

    #@262
    or-int v20, v20, v21

    #@264
    or-int v19, v19, v20

    #@266
    move/from16 v0, v19

    #@268
    move-object/from16 v1, p0

    #@26a
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@26c
    .line 2524
    move-object/from16 v0, p0

    #@26e
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@270
    move-object/from16 v19, v0

    #@272
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@275
    move-result v20

    #@276
    aput-byte v20, v19, v6

    #@278
    .line 2525
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@27b
    move-result v19

    #@27c
    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@27f
    move-result v20

    #@280
    move/from16 v0, v19

    #@282
    move/from16 v1, v20

    #@284
    if-eq v0, v1, :cond_15

    #@286
    .line 2526
    move-object/from16 v0, p0

    #@288
    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    #@28b
    .line 2528
    move-object/from16 v0, p0

    #@28d
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@28f
    move/from16 v19, v0

    #@291
    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    #@293
    or-int v19, v19, v20

    #@295
    move/from16 v0, v19

    #@297
    move-object/from16 v1, p0

    #@299
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@29b
    .line 2530
    :cond_15
    move v14, v5

    #@29c
    .line 2532
    const/16 v19, 0x14

    #@29e
    move/from16 v0, v19

    #@2a0
    if-ne v3, v0, :cond_17

    #@2a2
    .line 2534
    add-int/lit8 v19, v5, 0x2

    #@2a4
    and-int/lit8 v19, v19, 0x7e

    #@2a6
    move/from16 v0, v19

    #@2a8
    int-to-byte v10, v0

    #@2a9
    .line 2538
    .restart local v10    # "newLevel":B
    :goto_b
    const/16 v19, 0x7d

    #@2ab
    move/from16 v0, v19

    #@2ad
    if-gt v10, v0, :cond_18

    #@2af
    if-nez v12, :cond_18

    #@2b1
    .line 2539
    if-nez v11, :cond_18

    #@2b3
    .line 2540
    move-object/from16 v0, p0

    #@2b5
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@2b7
    move/from16 v19, v0

    #@2b9
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@2bc
    move-result v20

    #@2bd
    or-int v19, v19, v20

    #@2bf
    move/from16 v0, v19

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@2c5
    .line 2541
    move v7, v6

    #@2c6
    .line 2542
    add-int/lit8 v18, v18, 0x1

    #@2c8
    .line 2543
    move-object/from16 v0, p0

    #@2ca
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@2cc
    move/from16 v19, v0

    #@2ce
    move/from16 v0, v18

    #@2d0
    move/from16 v1, v19

    #@2d2
    if-le v0, v1, :cond_16

    #@2d4
    .line 2544
    move/from16 v0, v18

    #@2d6
    move-object/from16 v1, p0

    #@2d8
    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    #@2da
    .line 2545
    :cond_16
    move v5, v10

    #@2db
    .line 2548
    add-int/lit8 v16, v16, 0x1

    #@2dd
    .line 2549
    add-int/lit16 v0, v10, 0x100

    #@2df
    move/from16 v19, v0

    #@2e1
    move/from16 v0, v19

    #@2e3
    int-to-short v0, v0

    #@2e4
    move/from16 v19, v0

    #@2e6
    aput-short v19, v15, v16

    #@2e8
    .line 2550
    move-object/from16 v0, p0

    #@2ea
    invoke-direct {v0, v2, v5}, Landroid/icu/text/Bidi;->bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V

    #@2ed
    goto/16 :goto_9

    #@2ef
    .line 2537
    .end local v10    # "newLevel":B
    :cond_17
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@2f2
    move-result v19

    #@2f3
    add-int/lit8 v19, v19, 0x1

    #@2f5
    or-int/lit8 v19, v19, 0x1

    #@2f7
    move/from16 v0, v19

    #@2f9
    int-to-byte v10, v0

    #@2fa
    .restart local v10    # "newLevel":B
    goto :goto_b

    #@2fb
    .line 2553
    :cond_18
    move-object/from16 v0, p0

    #@2fd
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@2ff
    move-object/from16 v19, v0

    #@301
    const/16 v20, 0x9

    #@303
    aput-byte v20, v19, v6

    #@305
    .line 2554
    add-int/lit8 v12, v12, 0x1

    #@307
    goto/16 :goto_9

    #@309
    .line 2558
    .end local v10    # "newLevel":B
    :pswitch_4
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@30c
    move-result v19

    #@30d
    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@310
    move-result v20

    #@311
    move/from16 v0, v19

    #@313
    move/from16 v1, v20

    #@315
    if-eq v0, v1, :cond_19

    #@317
    .line 2559
    move-object/from16 v0, p0

    #@319
    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    #@31c
    .line 2561
    move-object/from16 v0, p0

    #@31e
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@320
    move/from16 v19, v0

    #@322
    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    #@324
    or-int v19, v19, v20

    #@326
    move/from16 v0, v19

    #@328
    move-object/from16 v1, p0

    #@32a
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@32c
    .line 2564
    :cond_19
    if-lez v12, :cond_1a

    #@32e
    .line 2565
    add-int/lit8 v12, v12, -0x1

    #@330
    .line 2567
    move-object/from16 v0, p0

    #@332
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@334
    move-object/from16 v19, v0

    #@336
    const/16 v20, 0x9

    #@338
    aput-byte v20, v19, v6

    #@33a
    .line 2581
    :goto_c
    aget-short v19, v15, v16

    #@33c
    move/from16 v0, v19

    #@33e
    and-int/lit16 v0, v0, -0x101

    #@340
    move/from16 v19, v0

    #@342
    move/from16 v0, v19

    #@344
    int-to-byte v5, v0

    #@345
    .line 2582
    move-object/from16 v0, p0

    #@347
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@349
    move/from16 v19, v0

    #@34b
    const/16 v20, 0xa

    #@34d
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@350
    move-result v20

    #@351
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@354
    move-result v21

    #@355
    or-int v20, v20, v21

    #@357
    or-int v19, v19, v20

    #@359
    move/from16 v0, v19

    #@35b
    move-object/from16 v1, p0

    #@35d
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@35f
    .line 2583
    move v14, v5

    #@360
    .line 2584
    move-object/from16 v0, p0

    #@362
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@364
    move-object/from16 v19, v0

    #@366
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@369
    move-result v20

    #@36a
    aput-byte v20, v19, v6

    #@36c
    goto/16 :goto_9

    #@36e
    .line 2569
    :cond_1a
    if-lez v18, :cond_1c

    #@370
    .line 2570
    move-object/from16 v0, p0

    #@372
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@374
    move/from16 v19, v0

    #@376
    const/16 v20, 0x16

    #@378
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@37b
    move-result v20

    #@37c
    or-int v19, v19, v20

    #@37e
    move/from16 v0, v19

    #@380
    move-object/from16 v1, p0

    #@382
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@384
    .line 2571
    move v7, v6

    #@385
    .line 2572
    const/4 v11, 0x0

    #@386
    .line 2573
    :goto_d
    aget-short v19, v15, v16

    #@388
    const/16 v20, 0x100

    #@38a
    move/from16 v0, v19

    #@38c
    move/from16 v1, v20

    #@38e
    if-ge v0, v1, :cond_1b

    #@390
    .line 2574
    add-int/lit8 v16, v16, -0x1

    #@392
    goto :goto_d

    #@393
    .line 2575
    :cond_1b
    add-int/lit8 v16, v16, -0x1

    #@395
    .line 2576
    add-int/lit8 v18, v18, -0x1

    #@397
    .line 2577
    move-object/from16 v0, p0

    #@399
    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V

    #@39c
    goto :goto_c

    #@39d
    .line 2580
    :cond_1c
    move-object/from16 v0, p0

    #@39f
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@3a1
    move-object/from16 v19, v0

    #@3a3
    const/16 v20, 0x9

    #@3a5
    aput-byte v20, v19, v6

    #@3a7
    goto :goto_c

    #@3a8
    .line 2587
    :pswitch_5
    move-object/from16 v0, p0

    #@3aa
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@3ac
    move/from16 v19, v0

    #@3ae
    const/16 v20, 0x7

    #@3b0
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@3b3
    move-result v20

    #@3b4
    or-int v19, v19, v20

    #@3b6
    move/from16 v0, v19

    #@3b8
    move-object/from16 v1, p0

    #@3ba
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@3bc
    .line 2588
    move-object/from16 v0, p0

    #@3be
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@3c0
    move-object/from16 v19, v0

    #@3c2
    move-object/from16 v0, p0

    #@3c4
    invoke-virtual {v0, v6}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@3c7
    move-result v20

    #@3c8
    aput-byte v20, v19, v6

    #@3ca
    .line 2589
    add-int/lit8 v19, v6, 0x1

    #@3cc
    move-object/from16 v0, p0

    #@3ce
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@3d0
    move/from16 v20, v0

    #@3d2
    move/from16 v0, v19

    #@3d4
    move/from16 v1, v20

    #@3d6
    if-ge v0, v1, :cond_e

    #@3d8
    .line 2590
    move-object/from16 v0, p0

    #@3da
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@3dc
    move-object/from16 v19, v0

    #@3de
    aget-char v19, v19, v6

    #@3e0
    const/16 v20, 0xd

    #@3e2
    move/from16 v0, v19

    #@3e4
    move/from16 v1, v20

    #@3e6
    if-ne v0, v1, :cond_1d

    #@3e8
    move-object/from16 v0, p0

    #@3ea
    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    #@3ec
    move-object/from16 v19, v0

    #@3ee
    add-int/lit8 v20, v6, 0x1

    #@3f0
    aget-char v19, v19, v20

    #@3f2
    const/16 v20, 0xa

    #@3f4
    move/from16 v0, v19

    #@3f6
    move/from16 v1, v20

    #@3f8
    if-eq v0, v1, :cond_e

    #@3fa
    .line 2592
    :cond_1d
    const/4 v12, 0x0

    #@3fb
    const/4 v11, 0x0

    #@3fc
    .line 2593
    const/16 v18, 0x0

    #@3fe
    .line 2594
    const/16 v16, 0x0

    #@400
    .line 2595
    add-int/lit8 v19, v6, 0x1

    #@402
    move-object/from16 v0, p0

    #@404
    move/from16 v1, v19

    #@406
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@409
    move-result v5

    #@40a
    move v14, v5

    #@40b
    .line 2596
    int-to-short v0, v5

    #@40c
    move/from16 v19, v0

    #@40e
    const/16 v20, 0x0

    #@410
    aput-short v19, v15, v20

    #@412
    .line 2597
    move-object/from16 v0, p0

    #@414
    invoke-direct {v0, v2, v5}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    #@417
    goto/16 :goto_9

    #@419
    .line 2603
    :pswitch_6
    move-object/from16 v0, p0

    #@41b
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@41d
    move-object/from16 v19, v0

    #@41f
    aput-byte v14, v19, v6

    #@421
    .line 2604
    move-object/from16 v0, p0

    #@423
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@425
    move/from16 v19, v0

    #@427
    const/16 v20, 0x12

    #@429
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@42c
    move-result v20

    #@42d
    or-int v19, v19, v20

    #@42f
    move/from16 v0, v19

    #@431
    move-object/from16 v1, p0

    #@433
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@435
    goto/16 :goto_9

    #@437
    .line 2615
    :cond_1e
    move-object/from16 v0, p0

    #@439
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@43b
    move/from16 v19, v0

    #@43d
    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    #@440
    move-result v20

    #@441
    or-int v19, v19, v20

    #@443
    move/from16 v0, v19

    #@445
    move-object/from16 v1, p0

    #@447
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@449
    goto/16 :goto_8

    #@44b
    .line 2625
    .end local v3    # "dirProp":B
    :cond_1f
    move-object/from16 v0, p0

    #@44d
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@44f
    move/from16 v19, v0

    #@451
    sget v20, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    #@453
    and-int v19, v19, v20

    #@455
    if-eqz v19, :cond_20

    #@457
    .line 2626
    move-object/from16 v0, p0

    #@459
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@45b
    move/from16 v19, v0

    #@45d
    move-object/from16 v0, p0

    #@45f
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@461
    move/from16 v20, v0

    #@463
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@466
    move-result v20

    #@467
    or-int v19, v19, v20

    #@469
    move/from16 v0, v19

    #@46b
    move-object/from16 v1, p0

    #@46d
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@46f
    .line 2628
    :cond_20
    move-object/from16 v0, p0

    #@471
    iget-boolean v0, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@473
    move/from16 v19, v0

    #@475
    if-eqz v19, :cond_21

    #@477
    move-object/from16 v0, p0

    #@479
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@47b
    move/from16 v19, v0

    #@47d
    const/16 v20, 0x7

    #@47f
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@482
    move-result v20

    #@483
    and-int v19, v19, v20

    #@485
    if-eqz v19, :cond_21

    #@487
    .line 2629
    move-object/from16 v0, p0

    #@489
    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    #@48b
    move/from16 v19, v0

    #@48d
    const/16 v20, 0x0

    #@48f
    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@492
    move-result v20

    #@493
    or-int v19, v19, v20

    #@495
    move/from16 v0, v19

    #@497
    move-object/from16 v1, p0

    #@499
    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    #@49b
    .line 2632
    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    #@49e
    move-result v4

    #@49f
    .line 2634
    return v4

    #@4a0
    .line 2472
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resolveImplicitLevels(IISS)V
    .locals 27
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "sor"    # S
    .param p4, "eor"    # S

    #@0
    .prologue
    .line 3340
    new-instance v14, Landroid/icu/text/Bidi$LevState;

    #@2
    const/16 v24, 0x0

    #@4
    move-object/from16 v0, v24

    #@6
    invoke-direct {v14, v0}, Landroid/icu/text/Bidi$LevState;-><init>(Landroid/icu/text/Bidi$LevState;)V

    #@9
    .line 3345
    .local v14, "levState":Landroid/icu/text/Bidi$LevState;
    const/16 v16, 0x1

    #@b
    .line 3346
    .local v16, "nextStrongProp":S
    const/4 v15, -0x1

    #@c
    .line 3355
    .local v15, "nextStrongPos":I
    move-object/from16 v0, p0

    #@e
    iget v0, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    #@10
    move/from16 v24, v0

    #@12
    move/from16 v0, p1

    #@14
    move/from16 v1, v24

    #@16
    if-ge v0, v1, :cond_3

    #@18
    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@1b
    move-result v24

    #@1c
    and-int/lit8 v24, v24, 0x1

    #@1e
    if-lez v24, :cond_3

    #@20
    .line 3356
    move-object/from16 v0, p0

    #@22
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@24
    move/from16 v24, v0

    #@26
    const/16 v25, 0x5

    #@28
    move/from16 v0, v24

    #@2a
    move/from16 v1, v25

    #@2c
    if-eq v0, v1, :cond_1

    #@2e
    .line 3357
    move-object/from16 v0, p0

    #@30
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@32
    move/from16 v24, v0

    #@34
    const/16 v25, 0x6

    #@36
    move/from16 v0, v24

    #@38
    move/from16 v1, v25

    #@3a
    if-ne v0, v1, :cond_2

    #@3c
    const/4 v10, 0x1

    #@3d
    .line 3359
    .local v10, "inverseRTL":Z
    :goto_0
    const/16 v24, -0x1

    #@3f
    move/from16 v0, v24

    #@41
    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    #@43
    .line 3360
    const/16 v24, -0x1

    #@45
    move/from16 v0, v24

    #@47
    iput v0, v14, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    #@49
    .line 3361
    move/from16 v0, p1

    #@4b
    iput v0, v14, Landroid/icu/text/Bidi$LevState;->runStart:I

    #@4d
    .line 3362
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    #@51
    move-object/from16 v24, v0

    #@53
    aget-byte v24, v24, p1

    #@55
    move/from16 v0, v24

    #@57
    iput-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@59
    .line 3363
    move-object/from16 v0, p0

    #@5b
    iget-object v0, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@5d
    move-object/from16 v24, v0

    #@5f
    move-object/from16 v0, v24

    #@61
    iget-object v0, v0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    #@63
    move-object/from16 v24, v0

    #@65
    iget-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@67
    move/from16 v25, v0

    #@69
    and-int/lit8 v25, v25, 0x1

    #@6b
    aget-object v24, v24, v25

    #@6d
    move-object/from16 v0, v24

    #@6f
    iput-object v0, v14, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    #@71
    .line 3364
    move-object/from16 v0, p0

    #@73
    iget-object v0, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@75
    move-object/from16 v24, v0

    #@77
    move-object/from16 v0, v24

    #@79
    iget-object v0, v0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    #@7b
    move-object/from16 v24, v0

    #@7d
    iget-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    #@7f
    move/from16 v25, v0

    #@81
    and-int/lit8 v25, v25, 0x1

    #@83
    aget-object v24, v24, v25

    #@85
    move-object/from16 v0, v24

    #@87
    iput-object v0, v14, Landroid/icu/text/Bidi$LevState;->impAct:[S

    #@89
    .line 3365
    if-nez p1, :cond_0

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@8f
    move-object/from16 v24, v0

    #@91
    if-eqz v24, :cond_0

    #@93
    .line 3366
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->lastL_R_AL()B

    #@96
    move-result v13

    #@97
    .line 3367
    .local v13, "lastStrong":B
    const/16 v24, 0x4

    #@99
    move/from16 v0, v24

    #@9b
    if-eq v13, v0, :cond_0

    #@9d
    .line 3368
    int-to-short v0, v13

    #@9e
    move/from16 p3, v0

    #@a0
    .line 3374
    .end local v13    # "lastStrong":B
    :cond_0
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@a4
    move-object/from16 v24, v0

    #@a6
    aget-byte v24, v24, p1

    #@a8
    const/16 v25, 0x16

    #@aa
    move/from16 v0, v24

    #@ac
    move/from16 v1, v25

    #@ae
    if-ne v0, v1, :cond_4

    #@b0
    .line 3375
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@b4
    move-object/from16 v24, v0

    #@b6
    move-object/from16 v0, p0

    #@b8
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@ba
    move/from16 v25, v0

    #@bc
    aget-object v24, v24, v25

    #@be
    move-object/from16 v0, v24

    #@c0
    iget v0, v0, Landroid/icu/text/Bidi$Isolate;->startON:I

    #@c2
    move/from16 v24, v0

    #@c4
    move/from16 v0, v24

    #@c6
    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    #@c8
    .line 3376
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@cc
    move-object/from16 v24, v0

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@d2
    move/from16 v25, v0

    #@d4
    aget-object v24, v24, v25

    #@d6
    move-object/from16 v0, v24

    #@d8
    iget v0, v0, Landroid/icu/text/Bidi$Isolate;->start1:I

    #@da
    move/from16 v21, v0

    #@dc
    .line 3377
    .local v21, "start1":I
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@e0
    move-object/from16 v24, v0

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@e6
    move/from16 v25, v0

    #@e8
    aget-object v24, v24, v25

    #@ea
    move-object/from16 v0, v24

    #@ec
    iget-short v0, v0, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    #@ee
    move/from16 v23, v0

    #@f0
    .line 3378
    .local v23, "stateImp":S
    move-object/from16 v0, p0

    #@f2
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@f4
    move-object/from16 v24, v0

    #@f6
    move-object/from16 v0, p0

    #@f8
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@fa
    move/from16 v25, v0

    #@fc
    aget-object v24, v24, v25

    #@fe
    move-object/from16 v0, v24

    #@100
    iget-short v0, v0, Landroid/icu/text/Bidi$Isolate;->state:S

    #@102
    move/from16 v24, v0

    #@104
    move/from16 v0, v24

    #@106
    iput-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    #@108
    .line 3379
    move-object/from16 v0, p0

    #@10a
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@10c
    move/from16 v24, v0

    #@10e
    add-int/lit8 v24, v24, -0x1

    #@110
    move/from16 v0, v24

    #@112
    move-object/from16 v1, p0

    #@114
    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    #@116
    .line 3390
    .end local v23    # "stateImp":S
    :goto_1
    move/from16 v22, p1

    #@118
    .line 3392
    .local v22, "start2":I
    move/from16 v9, p1

    #@11a
    .end local v16    # "nextStrongProp":S
    .local v9, "i":I
    :goto_2
    move/from16 v0, p2

    #@11c
    if-gt v9, v0, :cond_7

    #@11e
    .line 3393
    move/from16 v0, p2

    #@120
    if-lt v9, v0, :cond_b

    #@122
    .line 3395
    add-int/lit8 v12, p2, -0x1

    #@124
    .line 3396
    .local v12, "k":I
    :goto_3
    move/from16 v0, p1

    #@126
    if-le v12, v0, :cond_6

    #@128
    .line 3397
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@12c
    move-object/from16 v24, v0

    #@12e
    aget-byte v24, v24, v12

    #@130
    invoke-static/range {v24 .. v24}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@133
    move-result v24

    #@134
    sget v25, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@136
    and-int v24, v24, v25

    #@138
    if-eqz v24, :cond_6

    #@13a
    .line 3398
    add-int/lit8 v12, v12, -0x1

    #@13c
    goto :goto_3

    #@13d
    .line 3356
    .end local v9    # "i":I
    .end local v10    # "inverseRTL":Z
    .end local v12    # "k":I
    .end local v21    # "start1":I
    .end local v22    # "start2":I
    .restart local v16    # "nextStrongProp":S
    :cond_1
    const/4 v10, 0x1

    #@13e
    .restart local v10    # "inverseRTL":Z
    goto/16 :goto_0

    #@140
    .line 3357
    .end local v10    # "inverseRTL":Z
    :cond_2
    const/4 v10, 0x0

    #@141
    .restart local v10    # "inverseRTL":Z
    goto/16 :goto_0

    #@143
    .line 3355
    .end local v10    # "inverseRTL":Z
    :cond_3
    const/4 v10, 0x0

    #@144
    .restart local v10    # "inverseRTL":Z
    goto/16 :goto_0

    #@146
    .line 3381
    :cond_4
    const/16 v24, -0x1

    #@148
    move/from16 v0, v24

    #@14a
    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    #@14c
    .line 3382
    move/from16 v21, p1

    #@14e
    .line 3383
    .restart local v21    # "start1":I
    move-object/from16 v0, p0

    #@150
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@152
    move-object/from16 v24, v0

    #@154
    aget-byte v24, v24, p1

    #@156
    const/16 v25, 0x11

    #@158
    move/from16 v0, v24

    #@15a
    move/from16 v1, v25

    #@15c
    if-ne v0, v1, :cond_5

    #@15e
    .line 3384
    add-int/lit8 v24, p3, 0x1

    #@160
    move/from16 v0, v24

    #@162
    int-to-short v0, v0

    #@163
    move/from16 v23, v0

    #@165
    .line 3387
    :goto_4
    const/16 v24, 0x0

    #@167
    move/from16 v0, v24

    #@169
    iput-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    #@16b
    .line 3388
    move-object/from16 v0, p0

    #@16d
    move/from16 v1, p3

    #@16f
    move/from16 v2, p1

    #@171
    move/from16 v3, p1

    #@173
    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@176
    goto :goto_1

    #@177
    .line 3386
    :cond_5
    const/16 v23, 0x0

    #@179
    .local v23, "stateImp":S
    goto :goto_4

    #@17a
    .line 3399
    .end local v16    # "nextStrongProp":S
    .end local v23    # "stateImp":S
    .restart local v9    # "i":I
    .restart local v12    # "k":I
    .restart local v22    # "start2":I
    :cond_6
    move-object/from16 v0, p0

    #@17c
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@17e
    move-object/from16 v24, v0

    #@180
    aget-byte v6, v24, v12

    #@182
    .line 3400
    .local v6, "dirProp":B
    const/16 v24, 0x14

    #@184
    move/from16 v0, v24

    #@186
    if-eq v6, v0, :cond_7

    #@188
    const/16 v24, 0x15

    #@18a
    move/from16 v0, v24

    #@18c
    if-ne v6, v0, :cond_9

    #@18e
    .line 3469
    .end local v6    # "dirProp":B
    .end local v12    # "k":I
    :cond_7
    move-object/from16 v0, p0

    #@190
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@192
    move/from16 v24, v0

    #@194
    move/from16 v0, p2

    #@196
    move/from16 v1, v24

    #@198
    if-ne v0, v1, :cond_8

    #@19a
    move-object/from16 v0, p0

    #@19c
    iget-object v0, v0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    #@19e
    move-object/from16 v24, v0

    #@1a0
    if-eqz v24, :cond_8

    #@1a2
    .line 3470
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL_EN_AN()B

    #@1a5
    move-result v7

    #@1a6
    .line 3471
    .local v7, "firstStrong":B
    const/16 v24, 0x4

    #@1a8
    move/from16 v0, v24

    #@1aa
    if-eq v7, v0, :cond_8

    #@1ac
    .line 3472
    int-to-short v0, v7

    #@1ad
    move/from16 p4, v0

    #@1af
    .line 3477
    .end local v7    # "firstStrong":B
    :cond_8
    add-int/lit8 v9, p2, -0x1

    #@1b1
    .line 3478
    :goto_5
    move/from16 v0, p1

    #@1b3
    if-le v9, v0, :cond_13

    #@1b5
    .line 3479
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@1b9
    move-object/from16 v24, v0

    #@1bb
    aget-byte v24, v24, v9

    #@1bd
    invoke-static/range {v24 .. v24}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@1c0
    move-result v24

    #@1c1
    sget v25, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@1c3
    and-int v24, v24, v25

    #@1c5
    if-eqz v24, :cond_13

    #@1c7
    .line 3480
    add-int/lit8 v9, v9, -0x1

    #@1c9
    goto :goto_5

    #@1ca
    .line 3402
    .restart local v6    # "dirProp":B
    .restart local v12    # "k":I
    :cond_9
    move/from16 v8, p4

    #@1cc
    .line 3434
    .end local v6    # "dirProp":B
    .end local v12    # "k":I
    .local v8, "gprop":S
    :goto_6
    move/from16 v17, v23

    #@1ce
    .line 3435
    .local v17, "oldStateImp":S
    sget-object v24, Landroid/icu/text/Bidi;->impTabProps:[[S

    #@1d0
    aget-object v24, v24, v17

    #@1d2
    aget-short v5, v24, v8

    #@1d4
    .line 3436
    .local v5, "cell":S
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetStateProps(S)S

    #@1d7
    move-result v23

    #@1d8
    .line 3437
    .local v23, "stateImp":S
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetActionProps(S)S

    #@1db
    move-result v4

    #@1dc
    .line 3438
    .local v4, "actionImp":S
    move/from16 v0, p2

    #@1de
    if-ne v9, v0, :cond_a

    #@1e0
    if-nez v4, :cond_a

    #@1e2
    .line 3440
    const/4 v4, 0x1

    #@1e3
    .line 3442
    .end local v4    # "actionImp":S
    :cond_a
    if-eqz v4, :cond_12

    #@1e5
    .line 3443
    sget-object v24, Landroid/icu/text/Bidi;->impTabProps:[[S

    #@1e7
    aget-object v24, v24, v17

    #@1e9
    const/16 v25, 0xf

    #@1eb
    aget-short v20, v24, v25

    #@1ed
    .line 3444
    .local v20, "resProp":S
    packed-switch v4, :pswitch_data_0

    #@1f0
    .line 3463
    new-instance v24, Ljava/lang/IllegalStateException;

    #@1f2
    const-string/jumbo v25, "Internal ICU error in resolveImplicitLevels"

    #@1f5
    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f8
    throw v24

    #@1f9
    .line 3405
    .end local v5    # "cell":S
    .end local v8    # "gprop":S
    .end local v17    # "oldStateImp":S
    .end local v20    # "resProp":S
    .end local v23    # "stateImp":S
    :cond_b
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@1fd
    move-object/from16 v24, v0

    #@1ff
    aget-byte v18, v24, v9

    #@201
    .line 3406
    .local v18, "prop":B
    const/16 v24, 0x7

    #@203
    move/from16 v0, v18

    #@205
    move/from16 v1, v24

    #@207
    if-ne v0, v1, :cond_c

    #@209
    .line 3407
    const/16 v24, -0x1

    #@20b
    move/from16 v0, v24

    #@20d
    move-object/from16 v1, p0

    #@20f
    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    #@211
    .line 3408
    :cond_c
    if-eqz v10, :cond_d

    #@213
    .line 3409
    const/16 v24, 0xd

    #@215
    move/from16 v0, v18

    #@217
    move/from16 v1, v24

    #@219
    if-ne v0, v1, :cond_e

    #@21b
    .line 3411
    const/16 v18, 0x1

    #@21d
    .line 3432
    .end local v18    # "prop":B
    :cond_d
    :goto_7
    sget-object v24, Landroid/icu/text/Bidi;->groupProp:[S

    #@21f
    aget-short v8, v24, v18

    #@221
    .restart local v8    # "gprop":S
    goto :goto_6

    #@222
    .line 3412
    .end local v8    # "gprop":S
    .restart local v18    # "prop":B
    :cond_e
    const/16 v24, 0x2

    #@224
    move/from16 v0, v18

    #@226
    move/from16 v1, v24

    #@228
    if-ne v0, v1, :cond_d

    #@22a
    .line 3413
    if-gt v15, v9, :cond_10

    #@22c
    .line 3416
    const/16 v16, 0x1

    #@22e
    .line 3417
    .restart local v16    # "nextStrongProp":S
    move/from16 v15, p2

    #@230
    .line 3418
    add-int/lit8 v11, v9, 0x1

    #@232
    .local v11, "j":I
    :goto_8
    move/from16 v0, p2

    #@234
    if-ge v11, v0, :cond_10

    #@236
    .line 3419
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@23a
    move-object/from16 v24, v0

    #@23c
    aget-byte v19, v24, v11

    #@23e
    .line 3420
    .local v19, "prop1":B
    if-eqz v19, :cond_f

    #@240
    const/16 v24, 0x1

    #@242
    move/from16 v0, v19

    #@244
    move/from16 v1, v24

    #@246
    if-ne v0, v1, :cond_11

    #@248
    .line 3421
    :cond_f
    move/from16 v0, v19

    #@24a
    int-to-short v0, v0

    #@24b
    move/from16 v16, v0

    #@24d
    .line 3422
    .local v16, "nextStrongProp":S
    move v15, v11

    #@24e
    .line 3427
    .end local v11    # "j":I
    .end local v16    # "nextStrongProp":S
    .end local v19    # "prop1":B
    :cond_10
    const/16 v24, 0xd

    #@250
    move/from16 v0, v16

    #@252
    move/from16 v1, v24

    #@254
    if-ne v0, v1, :cond_d

    #@256
    .line 3428
    const/16 v18, 0x5

    #@258
    .local v18, "prop":B
    goto :goto_7

    #@259
    .line 3420
    .restart local v11    # "j":I
    .local v16, "nextStrongProp":S
    .local v18, "prop":B
    .restart local v19    # "prop1":B
    :cond_11
    const/16 v24, 0xd

    #@25b
    move/from16 v0, v19

    #@25d
    move/from16 v1, v24

    #@25f
    if-eq v0, v1, :cond_f

    #@261
    .line 3418
    add-int/lit8 v11, v11, 0x1

    #@263
    goto :goto_8

    #@264
    .line 3446
    .end local v11    # "j":I
    .end local v16    # "nextStrongProp":S
    .end local v18    # "prop":B
    .end local v19    # "prop1":B
    .restart local v5    # "cell":S
    .restart local v8    # "gprop":S
    .restart local v17    # "oldStateImp":S
    .restart local v20    # "resProp":S
    .restart local v23    # "stateImp":S
    :pswitch_0
    move-object/from16 v0, p0

    #@266
    move/from16 v1, v20

    #@268
    move/from16 v2, v21

    #@26a
    invoke-direct {v0, v14, v1, v2, v9}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@26d
    .line 3447
    move/from16 v21, v9

    #@26f
    .line 3392
    .end local v20    # "resProp":S
    :cond_12
    :goto_9
    add-int/lit8 v9, v9, 0x1

    #@271
    goto/16 :goto_2

    #@273
    .line 3450
    .restart local v20    # "resProp":S
    :pswitch_1
    move/from16 v22, v9

    #@275
    .line 3451
    goto :goto_9

    #@276
    .line 3453
    :pswitch_2
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v20

    #@27a
    move/from16 v2, v21

    #@27c
    move/from16 v3, v22

    #@27e
    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@281
    .line 3454
    const/16 v24, 0x4

    #@283
    move-object/from16 v0, p0

    #@285
    move/from16 v1, v24

    #@287
    move/from16 v2, v22

    #@289
    invoke-direct {v0, v14, v1, v2, v9}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@28c
    .line 3455
    move/from16 v21, v9

    #@28e
    .line 3456
    goto :goto_9

    #@28f
    .line 3458
    :pswitch_3
    move-object/from16 v0, p0

    #@291
    move/from16 v1, v20

    #@293
    move/from16 v2, v21

    #@295
    move/from16 v3, v22

    #@297
    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@29a
    .line 3459
    move/from16 v21, v22

    #@29c
    .line 3460
    move/from16 v22, v9

    #@29e
    .line 3461
    goto :goto_9

    #@29f
    .line 3481
    .end local v5    # "cell":S
    .end local v8    # "gprop":S
    .end local v17    # "oldStateImp":S
    .end local v20    # "resProp":S
    .end local v23    # "stateImp":S
    :cond_13
    move-object/from16 v0, p0

    #@2a1
    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@2a3
    move-object/from16 v24, v0

    #@2a5
    aget-byte v6, v24, v9

    #@2a7
    .line 3482
    .restart local v6    # "dirProp":B
    const/16 v24, 0x14

    #@2a9
    move/from16 v0, v24

    #@2ab
    if-eq v6, v0, :cond_14

    #@2ad
    const/16 v24, 0x15

    #@2af
    move/from16 v0, v24

    #@2b1
    if-ne v6, v0, :cond_16

    #@2b3
    :cond_14
    move-object/from16 v0, p0

    #@2b5
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@2b7
    move/from16 v24, v0

    #@2b9
    move/from16 v0, p2

    #@2bb
    move/from16 v1, v24

    #@2bd
    if-ge v0, v1, :cond_16

    #@2bf
    .line 3483
    move-object/from16 v0, p0

    #@2c1
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@2c3
    move/from16 v24, v0

    #@2c5
    add-int/lit8 v24, v24, 0x1

    #@2c7
    move/from16 v0, v24

    #@2c9
    move-object/from16 v1, p0

    #@2cb
    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    #@2cd
    .line 3484
    move-object/from16 v0, p0

    #@2cf
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@2d1
    move-object/from16 v24, v0

    #@2d3
    move-object/from16 v0, p0

    #@2d5
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@2d7
    move/from16 v25, v0

    #@2d9
    aget-object v24, v24, v25

    #@2db
    if-nez v24, :cond_15

    #@2dd
    .line 3485
    move-object/from16 v0, p0

    #@2df
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@2e1
    move-object/from16 v24, v0

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@2e7
    move/from16 v25, v0

    #@2e9
    new-instance v26, Landroid/icu/text/Bidi$Isolate;

    #@2eb
    invoke-direct/range {v26 .. v26}, Landroid/icu/text/Bidi$Isolate;-><init>()V

    #@2ee
    aput-object v26, v24, v25

    #@2f0
    .line 3486
    :cond_15
    move-object/from16 v0, p0

    #@2f2
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@2f4
    move-object/from16 v24, v0

    #@2f6
    move-object/from16 v0, p0

    #@2f8
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@2fa
    move/from16 v25, v0

    #@2fc
    aget-object v24, v24, v25

    #@2fe
    move/from16 v0, v23

    #@300
    move-object/from16 v1, v24

    #@302
    iput-short v0, v1, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    #@304
    .line 3487
    move-object/from16 v0, p0

    #@306
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@308
    move-object/from16 v24, v0

    #@30a
    move-object/from16 v0, p0

    #@30c
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@30e
    move/from16 v25, v0

    #@310
    aget-object v24, v24, v25

    #@312
    iget-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    #@314
    move/from16 v25, v0

    #@316
    move/from16 v0, v25

    #@318
    move-object/from16 v1, v24

    #@31a
    iput-short v0, v1, Landroid/icu/text/Bidi$Isolate;->state:S

    #@31c
    .line 3488
    move-object/from16 v0, p0

    #@31e
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@320
    move-object/from16 v24, v0

    #@322
    move-object/from16 v0, p0

    #@324
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@326
    move/from16 v25, v0

    #@328
    aget-object v24, v24, v25

    #@32a
    move/from16 v0, v21

    #@32c
    move-object/from16 v1, v24

    #@32e
    iput v0, v1, Landroid/icu/text/Bidi$Isolate;->start1:I

    #@330
    .line 3489
    move-object/from16 v0, p0

    #@332
    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@334
    move-object/from16 v24, v0

    #@336
    move-object/from16 v0, p0

    #@338
    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@33a
    move/from16 v25, v0

    #@33c
    aget-object v24, v24, v25

    #@33e
    iget v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    #@340
    move/from16 v25, v0

    #@342
    move/from16 v0, v25

    #@344
    move-object/from16 v1, v24

    #@346
    iput v0, v1, Landroid/icu/text/Bidi$Isolate;->startON:I

    #@348
    .line 3337
    :goto_a
    return-void

    #@349
    .line 3492
    :cond_16
    move-object/from16 v0, p0

    #@34b
    move/from16 v1, p4

    #@34d
    move/from16 v2, p2

    #@34f
    move/from16 v3, p2

    #@351
    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    #@354
    goto :goto_a

    #@355
    .line 3444
    nop

    #@356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLevelsOutsideIsolates(IIB)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "level"    # B

    #@0
    .prologue
    .line 3069
    const/4 v1, 0x0

    #@1
    .line 3070
    .local v1, "isolateCount":I
    move v2, p1

    #@2
    .local v2, "k":I
    :goto_0
    if-ge v2, p2, :cond_4

    #@4
    .line 3071
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@6
    aget-byte v0, v3, v2

    #@8
    .line 3072
    .local v0, "dirProp":B
    const/16 v3, 0x16

    #@a
    if-ne v0, v3, :cond_0

    #@c
    .line 3073
    add-int/lit8 v1, v1, -0x1

    #@e
    .line 3074
    :cond_0
    if-nez v1, :cond_1

    #@10
    .line 3075
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    #@12
    aput-byte p3, v3, v2

    #@14
    .line 3076
    :cond_1
    const/16 v3, 0x14

    #@16
    if-eq v0, v3, :cond_2

    #@18
    const/16 v3, 0x15

    #@1a
    if-ne v0, v3, :cond_3

    #@1c
    .line 3077
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@1e
    .line 3070
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@20
    goto :goto_0

    #@21
    .line 3066
    .end local v0    # "dirProp":B
    :cond_4
    return-void
.end method

.method private setParaSuccess()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3610
    iput-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@3
    .line 3611
    iput-object v0, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    #@5
    .line 3612
    iput-object p0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@7
    .line 3609
    return-void
.end method

.method public static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "options"    # I

    #@0
    .prologue
    .line 5665
    if-nez p0, :cond_0

    #@2
    .line 5666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 5669
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v0

    #@c
    if-lez v0, :cond_1

    #@e
    .line 5670
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 5673
    :cond_1
    const-string/jumbo v0, ""

    #@16
    return-object v0
.end method


# virtual methods
.method Bidi_Abs(I)I
    .locals 0
    .param p1, "x"    # I

    #@0
    .prologue
    .line 3620
    if-ltz p1, :cond_0

    #@2
    .end local p1    # "x":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "x":I
    :cond_0
    neg-int p1, p1

    #@4
    goto :goto_0
.end method

.method Bidi_Min(II)I
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 3616
    if-ge p1, p2, :cond_0

    #@2
    .end local p1    # "x":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "x":I
    :cond_0
    move p1, p2

    #@4
    goto :goto_0
.end method

.method GetParaLevelAt(I)B
    .locals 3
    .param p1, "pindex"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1978
    iget-byte v1, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@7
    aget v1, v1, v2

    #@9
    if-ge p1, v1, :cond_1

    #@b
    .line 1979
    :cond_0
    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@d
    return v1

    #@e
    .line 1981
    :cond_1
    const/4 v0, 0x1

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@11
    if-ge v0, v1, :cond_2

    #@13
    .line 1982
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@15
    aget v1, v1, v0

    #@17
    if-ge p1, v1, :cond_4

    #@19
    .line 1984
    :cond_2
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@1b
    if-lt v0, v1, :cond_3

    #@1d
    .line 1985
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@1f
    add-int/lit8 v0, v1, -0x1

    #@21
    .line 1986
    :cond_3
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    #@23
    aget-byte v1, v1, v0

    #@25
    return v1

    #@26
    .line 1981
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0
.end method

.method public baseIsLeftToRight()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5373
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public countParagraphs()I
    .locals 1

    #@0
    .prologue
    .line 4491
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4492
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@5
    return v0
.end method

.method public countRuns()I
    .locals 1

    #@0
    .prologue
    .line 4782
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4783
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@6
    .line 4784
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    return v0
.end method

.method public createLineBidi(II)Landroid/icu/text/Bidi;
    .locals 1
    .param p1, "lineStart"    # I
    .param p2, "lineLimit"    # I

    #@0
    .prologue
    .line 5315
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setLine(II)Landroid/icu/text/Bidi;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBaseLevel()I
    .locals 1

    #@0
    .prologue
    .line 5386
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCustomClassifier()Landroid/icu/text/BidiClassifier;
    .locals 1

    #@0
    .prologue
    .line 4617
    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    #@2
    return-object v0
.end method

.method public getCustomizedClass(I)I
    .locals 3
    .param p1, "c"    # I

    #@0
    .prologue
    const/16 v2, 0x17

    #@2
    .line 4636
    iget-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 4637
    iget-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    #@8
    invoke-virtual {v1, p1}, Landroid/icu/text/BidiClassifier;->classify(I)I

    #@b
    move-result v0

    #@c
    .local v0, "dir":I
    if-ne v0, v2, :cond_1

    #@e
    .line 4638
    .end local v0    # "dir":I
    :cond_0
    iget-object v1, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    #@10
    invoke-virtual {v1, p1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    #@13
    move-result v0

    #@14
    .line 4640
    .restart local v0    # "dir":I
    :cond_1
    if-lt v0, v2, :cond_2

    #@16
    .line 4641
    const/16 v0, 0xa

    #@18
    .line 4642
    :cond_2
    return v0
.end method

.method getDirPropsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1336
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    #@5
    .line 1334
    return-void
.end method

.method public getDirection()B
    .locals 1

    #@0
    .prologue
    .line 4325
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4326
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    #@5
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 4376
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4377
    iget v0, p0, Landroid/icu/text/Bidi;->originalLength:I

    #@5
    return v0
.end method

.method public getLevelAt(I)B
    .locals 2
    .param p1, "charIndex"    # I

    #@0
    .prologue
    .line 4711
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4712
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@9
    .line 4713
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLevelAt(Landroid/icu/text/Bidi;I)B

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getLevels()[B
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4730
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@4
    .line 4731
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 4732
    new-array v0, v1, [B

    #@a
    return-object v0

    #@b
    .line 4734
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLevels(Landroid/icu/text/Bidi;)[B

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method getLevelsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1347
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    #@5
    .line 1345
    return-void
.end method

.method public getLogicalIndex(I)I
    .locals 2
    .param p1, "visualIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4945
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@4
    .line 4946
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    #@6
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@9
    .line 4948
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@b
    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@d
    if-nez v0, :cond_1

    #@f
    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    #@11
    if-nez v0, :cond_1

    #@13
    .line 4949
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    #@15
    if-nez v0, :cond_0

    #@17
    .line 4950
    return p1

    #@18
    .line 4952
    :cond_0
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    #@1a
    const/4 v1, 0x1

    #@1b
    if-ne v0, v1, :cond_1

    #@1d
    .line 4953
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@1f
    sub-int/2addr v0, p1

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    return v0

    #@23
    .line 4956
    :cond_1
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@26
    .line 4957
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalIndex(Landroid/icu/text/Bidi;I)I

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public getLogicalMap()[I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5001
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    #@4
    .line 5002
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 5003
    new-array v0, v1, [I

    #@a
    return-object v0

    #@b
    .line 5005
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLogicalMap(Landroid/icu/text/Bidi;)[I

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getLogicalRun(I)Landroid/icu/text/BidiRun;
    .locals 2
    .param p1, "logicalPosition"    # I

    #@0
    .prologue
    .line 4762
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4763
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@9
    .line 4764
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method getLogicalToVisualRunsMap()V
    .locals 8

    #@0
    .prologue
    .line 5407
    iget-boolean v3, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 5408
    return-void

    #@5
    .line 5410
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    #@8
    move-result v0

    #@9
    .line 5411
    .local v0, "count":I
    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 5412
    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@f
    array-length v3, v3

    #@10
    if-ge v3, v0, :cond_2

    #@12
    .line 5413
    :cond_1
    new-array v3, v0, [I

    #@14
    iput-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@16
    .line 5416
    :cond_2
    new-array v2, v0, [J

    #@18
    .line 5417
    .local v2, "keys":[J
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@1b
    .line 5418
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1d
    aget-object v3, v3, v1

    #@1f
    iget v3, v3, Landroid/icu/text/BidiRun;->start:I

    #@21
    int-to-long v4, v3

    #@22
    const/16 v3, 0x20

    #@24
    shl-long/2addr v4, v3

    #@25
    int-to-long v6, v1

    #@26
    add-long/2addr v4, v6

    #@27
    aput-wide v4, v2, v1

    #@29
    .line 5417
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 5420
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    #@2f
    .line 5421
    const/4 v1, 0x0

    #@30
    :goto_1
    if-ge v1, v0, :cond_4

    #@32
    .line 5422
    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@34
    aget-wide v4, v2, v1

    #@36
    const-wide/16 v6, -0x1

    #@38
    and-long/2addr v4, v6

    #@39
    long-to-int v4, v4

    #@3a
    aput v4, v3, v1

    #@3c
    .line 5421
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 5424
    :cond_4
    const/4 v3, 0x1

    #@40
    iput-boolean v3, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    #@42
    .line 5405
    return-void
.end method

.method public getParaLevel()B
    .locals 1

    #@0
    .prologue
    .line 4477
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4478
    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@5
    return v0
.end method

.method public getParagraph(I)Landroid/icu/text/BidiRun;
    .locals 4
    .param p1, "charIndex"    # I

    #@0
    .prologue
    .line 4560
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4561
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@5
    .line 4562
    .local v0, "bidi":Landroid/icu/text/Bidi;
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@b
    .line 4564
    const/4 v1, 0x0

    #@c
    .local v1, "paraIndex":I
    :goto_0
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@e
    aget v2, v2, v1

    #@10
    if-lt p1, v2, :cond_0

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 4566
    :cond_0
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphByIndex(I)Landroid/icu/text/BidiRun;

    #@18
    move-result-object v2

    #@19
    return-object v2
.end method

.method public getParagraphByIndex(I)Landroid/icu/text/BidiRun;
    .locals 5
    .param p1, "paraIndex"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 4518
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@4
    .line 4519
    iget v3, p0, Landroid/icu/text/Bidi;->paraCount:I

    #@6
    invoke-virtual {p0, p1, v4, v3}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@9
    .line 4521
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@b
    .line 4523
    .local v0, "bidi":Landroid/icu/text/Bidi;
    if-nez p1, :cond_0

    #@d
    .line 4524
    const/4 v2, 0x0

    #@e
    .line 4528
    .local v2, "paraStart":I
    :goto_0
    new-instance v1, Landroid/icu/text/BidiRun;

    #@10
    invoke-direct {v1}, Landroid/icu/text/BidiRun;-><init>()V

    #@13
    .line 4529
    .local v1, "bidiRun":Landroid/icu/text/BidiRun;
    iput v2, v1, Landroid/icu/text/BidiRun;->start:I

    #@15
    .line 4530
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@17
    aget v3, v3, p1

    #@19
    iput v3, v1, Landroid/icu/text/BidiRun;->limit:I

    #@1b
    .line 4531
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@1e
    move-result v3

    #@1f
    iput-byte v3, v1, Landroid/icu/text/BidiRun;->level:B

    #@21
    .line 4532
    return-object v1

    #@22
    .line 4526
    .end local v1    # "bidiRun":Landroid/icu/text/BidiRun;
    .end local v2    # "paraStart":I
    :cond_0
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@24
    add-int/lit8 v4, p1, -0x1

    #@26
    aget v2, v3, v4

    #@28
    .restart local v2    # "paraStart":I
    goto :goto_0
.end method

.method public getParagraphIndex(I)I
    .locals 4
    .param p1, "charIndex"    # I

    #@0
    .prologue
    .line 4587
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4588
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@5
    .line 4589
    .local v0, "bidi":Landroid/icu/text/Bidi;
    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@b
    .line 4591
    const/4 v1, 0x0

    #@c
    .local v1, "paraIndex":I
    :goto_0
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@e
    aget v2, v2, v1

    #@10
    if-lt p1, v2, :cond_0

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 4593
    :cond_0
    return v1
.end method

.method public getProcessedLength()I
    .locals 1

    #@0
    .prologue
    .line 4420
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4421
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    return v0
.end method

.method public getReorderingMode()I
    .locals 1

    #@0
    .prologue
    .line 1626
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@2
    return v0
.end method

.method public getReorderingOptions()I
    .locals 1

    #@0
    .prologue
    .line 1660
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@2
    return v0
.end method

.method public getResultLength()I
    .locals 1

    #@0
    .prologue
    .line 4453
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4454
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    #@5
    return v0
.end method

.method public getRunCount()I
    .locals 1

    #@0
    .prologue
    .line 5399
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRunLevel(I)I
    .locals 2
    .param p1, "run"    # I

    #@0
    .prologue
    .line 5441
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 5442
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@6
    .line 5443
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@c
    .line 5444
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    #@f
    .line 5445
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@11
    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@13
    aget v1, v1, p1

    #@15
    aget-object v0, v0, v1

    #@17
    iget-byte v0, v0, Landroid/icu/text/BidiRun;->level:B

    #@19
    return v0
.end method

.method public getRunLimit(I)I
    .locals 5
    .param p1, "run"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 5486
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@4
    .line 5487
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@7
    .line 5488
    iget v2, p0, Landroid/icu/text/Bidi;->runCount:I

    #@9
    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@c
    .line 5489
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    #@f
    .line 5490
    iget-object v2, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@11
    aget v0, v2, p1

    #@13
    .line 5491
    .local v0, "idx":I
    if-nez v0, :cond_0

    #@15
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@17
    aget-object v2, v2, v0

    #@19
    iget v1, v2, Landroid/icu/text/BidiRun;->limit:I

    #@1b
    .line 5493
    .local v1, "len":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1d
    aget-object v2, v2, v0

    #@1f
    iget v2, v2, Landroid/icu/text/BidiRun;->start:I

    #@21
    add-int/2addr v2, v1

    #@22
    return v2

    #@23
    .line 5492
    .end local v1    # "len":I
    :cond_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@25
    aget-object v2, v2, v0

    #@27
    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    #@29
    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2b
    add-int/lit8 v4, v0, -0x1

    #@2d
    aget-object v3, v3, v4

    #@2f
    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    #@31
    sub-int v1, v2, v3

    #@33
    .restart local v1    # "len":I
    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 2
    .param p1, "run"    # I

    #@0
    .prologue
    .line 5463
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 5464
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@6
    .line 5465
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@c
    .line 5466
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    #@f
    .line 5467
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@11
    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    #@13
    aget v1, v1, p1

    #@15
    aget-object v0, v0, v1

    #@17
    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    #@19
    return v0
.end method

.method getRunsMemory(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 1358
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    #@2
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    #@5
    .line 1356
    return-void
.end method

.method public getText()[C
    .locals 1

    #@0
    .prologue
    .line 4361
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4362
    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    #@5
    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4343
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4344
    new-instance v0, Ljava/lang/String;

    #@5
    iget-object v1, p0, Landroid/icu/text/Bidi;->text:[C

    #@7
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    #@a
    return-object v0
.end method

.method public getVisualIndex(I)I
    .locals 2
    .param p1, "logicalIndex"    # I

    #@0
    .prologue
    .line 4901
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4902
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@9
    .line 4903
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualIndex(Landroid/icu/text/Bidi;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public getVisualMap()[I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5042
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    #@4
    .line 5043
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    #@6
    if-gtz v0, :cond_0

    #@8
    .line 5044
    new-array v0, v1, [I

    #@a
    return-object v0

    #@b
    .line 5046
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getVisualMap(Landroid/icu/text/Bidi;)[I

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getVisualRun(I)Landroid/icu/text/BidiRun;
    .locals 2
    .param p1, "runIndex"    # I

    #@0
    .prologue
    .line 4852
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 4853
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@6
    .line 4854
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@c
    .line 4855
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public isInverse()Z
    .locals 1

    #@0
    .prologue
    .line 1445
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    #@2
    return v0
.end method

.method public isLeftToRight()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5345
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@9
    and-int/lit8 v1, v1, 0x1

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isMixed()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5330
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public isOrderParagraphsLTR()Z
    .locals 1

    #@0
    .prologue
    .line 4305
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@2
    return v0
.end method

.method public isRightToLeft()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 5360
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    #@5
    move-result v2

    #@6
    if-ne v2, v0, :cond_0

    #@8
    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    #@a
    and-int/lit8 v2, v2, 0x1

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method public orderParagraphsLTR(Z)V
    .locals 0
    .param p1, "ordarParaLTR"    # Z

    #@0
    .prologue
    .line 4294
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    #@2
    .line 4293
    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prologue"    # Ljava/lang/String;
    .param p2, "epilogue"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3605
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    .end local p1    # "prologue":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    #@b
    .line 3606
    if-eqz p2, :cond_1

    #@d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@10
    move-result v1

    #@11
    if-lez v1, :cond_1

    #@13
    .end local p2    # "epilogue":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    #@15
    .line 3604
    return-void

    #@16
    .restart local p1    # "prologue":Ljava/lang/String;
    .restart local p2    # "epilogue":Ljava/lang/String;
    :cond_0
    move-object p1, v0

    #@17
    .line 3605
    goto :goto_0

    #@18
    .end local p1    # "prologue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    #@19
    .line 3606
    goto :goto_1
.end method

.method public setCustomClassifier(Landroid/icu/text/BidiClassifier;)V
    .locals 0
    .param p1, "classifier"    # Landroid/icu/text/BidiClassifier;

    #@0
    .prologue
    .line 4605
    iput-object p1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    #@2
    .line 4604
    return-void
.end method

.method public setInverse(Z)V
    .locals 1
    .param p1, "isInverse"    # Z

    #@0
    .prologue
    .line 1423
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->isInverse:Z

    #@2
    .line 1424
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x4

    #@5
    :goto_0
    iput v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@7
    .line 1422
    return-void

    #@8
    .line 1425
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public setLine(II)Landroid/icu/text/Bidi;
    .locals 2
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4685
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidPara()V

    #@4
    .line 4686
    invoke-virtual {p0, p1, v1, p2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@7
    .line 4687
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    invoke-virtual {p0, p2, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@e
    .line 4688
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    #@11
    move-result v0

    #@12
    add-int/lit8 v1, p2, -0x1

    #@14
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    #@17
    move-result v1

    #@18
    if-eq v0, v1, :cond_0

    #@1a
    .line 4690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1f
    throw v0

    #@20
    .line 4692
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/icu/text/BidiLine;->setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public setPara(Ljava/lang/String;B[B)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "paraLevel"    # B
    .param p3, "embeddingLevels"    # [B

    #@0
    .prologue
    .line 3853
    if-nez p1, :cond_0

    #@2
    .line 3854
    const/4 v0, 0x0

    #@3
    new-array v0, v0, [C

    #@5
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@8
    .line 3851
    :goto_0
    return-void

    #@9
    .line 3856
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@10
    goto :goto_0
.end method

.method public setPara(Ljava/text/AttributedCharacterIterator;)V
    .locals 14
    .param p1, "paragraph"    # Ljava/text/AttributedCharacterIterator;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 4236
    sget-object v11, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    #@3
    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@6
    move-result-object v8

    #@7
    check-cast v8, Ljava/lang/Boolean;

    #@9
    .line 4237
    .local v8, "runDirection":Ljava/lang/Boolean;
    if-nez v8, :cond_1

    #@b
    .line 4238
    const/16 v7, 0x7e

    #@d
    .line 4244
    .local v7, "paraLvl":B
    :goto_0
    const/4 v6, 0x0

    #@e
    .line 4245
    .local v6, "lvls":[B
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    #@11
    move-result v11

    #@12
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    #@15
    move-result v12

    #@16
    sub-int v4, v11, v12

    #@18
    .line 4246
    .local v4, "len":I
    new-array v2, v4, [B

    #@1a
    .line 4247
    .local v2, "embeddingLevels":[B
    new-array v10, v4, [C

    #@1c
    .line 4248
    .local v10, "txt":[C
    const/4 v3, 0x0

    #@1d
    .line 4249
    .local v3, "i":I
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    #@20
    move-result v0

    #@21
    .line 4250
    .end local v6    # "lvls":[B
    .local v0, "ch":C
    :goto_1
    const v11, 0xffff

    #@24
    if-eq v0, v11, :cond_5

    #@26
    .line 4251
    aput-char v0, v10, v3

    #@28
    .line 4252
    sget-object v11, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    #@2a
    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/Integer;

    #@30
    .line 4253
    .local v1, "embedding":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@32
    .line 4254
    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    #@35
    move-result v5

    #@36
    .line 4255
    .local v5, "level":B
    if-nez v5, :cond_3

    #@38
    .line 4265
    .end local v5    # "level":B
    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    #@3b
    move-result v0

    #@3c
    .line 4266
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 4240
    .end local v0    # "ch":C
    .end local v1    # "embedding":Ljava/lang/Integer;
    .end local v2    # "embeddingLevels":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v7    # "paraLvl":B
    .end local v10    # "txt":[C
    :cond_1
    sget-object v11, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    #@41
    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v11

    #@45
    if-eqz v11, :cond_2

    #@47
    .line 4241
    const/4 v7, 0x0

    #@48
    .restart local v7    # "paraLvl":B
    goto :goto_0

    #@49
    .end local v7    # "paraLvl":B
    :cond_2
    const/4 v7, 0x1

    #@4a
    .restart local v7    # "paraLvl":B
    goto :goto_0

    #@4b
    .line 4257
    .restart local v0    # "ch":C
    .restart local v1    # "embedding":Ljava/lang/Integer;
    .restart local v2    # "embeddingLevels":[B
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v5    # "level":B
    .restart local v10    # "txt":[C
    :cond_3
    if-gez v5, :cond_4

    #@4d
    .line 4258
    move-object v6, v2

    #@4e
    .line 4259
    .local v6, "lvls":[B
    rsub-int/lit8 v11, v5, 0x0

    #@50
    or-int/lit8 v11, v11, -0x80

    #@52
    int-to-byte v11, v11

    #@53
    aput-byte v11, v2, v3

    #@55
    goto :goto_2

    #@56
    .line 4261
    .end local v6    # "lvls":[B
    :cond_4
    move-object v6, v2

    #@57
    .line 4262
    .restart local v6    # "lvls":[B
    aput-byte v5, v2, v3

    #@59
    goto :goto_2

    #@5a
    .line 4269
    .end local v1    # "embedding":Ljava/lang/Integer;
    .end local v5    # "level":B
    .end local v6    # "lvls":[B
    :cond_5
    sget-object v11, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    #@5c
    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    #@5f
    move-result-object v9

    #@60
    check-cast v9, Ljava/awt/font/NumericShaper;

    #@62
    .line 4270
    .local v9, "shaper":Ljava/awt/font/NumericShaper;
    if-eqz v9, :cond_6

    #@64
    .line 4271
    invoke-virtual {v9, v10, v13, v4}, Ljava/awt/font/NumericShaper;->shape([CII)V

    #@67
    .line 4273
    :cond_6
    invoke-virtual {p0, v10, v7, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@6a
    .line 4233
    return-void
.end method

.method public setPara([CB[B)V
    .locals 17
    .param p1, "chars"    # [C
    .param p2, "paraLevel"    # B
    .param p3, "embeddingLevels"    # [B

    #@0
    .prologue
    .line 3937
    const/16 v13, 0x7e

    #@2
    move/from16 v0, p2

    #@4
    if-ge v0, v13, :cond_0

    #@6
    .line 3938
    const/4 v13, 0x0

    #@7
    const/16 v14, 0x7e

    #@9
    move-object/from16 v0, p0

    #@b
    move/from16 v1, p2

    #@d
    invoke-virtual {v0, v1, v13, v14}, Landroid/icu/text/Bidi;->verifyRange(III)V

    #@10
    .line 3940
    :cond_0
    if-nez p1, :cond_1

    #@12
    .line 3941
    const/4 v13, 0x0

    #@13
    new-array v0, v13, [C

    #@15
    move-object/from16 p1, v0

    #@17
    .line 3945
    :cond_1
    move-object/from16 v0, p0

    #@19
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@1b
    const/4 v14, 0x3

    #@1c
    if-ne v13, v14, :cond_2

    #@1e
    .line 3946
    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/Bidi;->setParaRunsOnly([CB)V

    #@21
    .line 3947
    return-void

    #@22
    .line 3951
    :cond_2
    const/4 v13, 0x0

    #@23
    move-object/from16 v0, p0

    #@25
    iput-object v13, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@27
    .line 3952
    move-object/from16 v0, p1

    #@29
    move-object/from16 v1, p0

    #@2b
    iput-object v0, v1, Landroid/icu/text/Bidi;->text:[C

    #@2d
    .line 3953
    move-object/from16 v0, p0

    #@2f
    iget-object v13, v0, Landroid/icu/text/Bidi;->text:[C

    #@31
    array-length v13, v13

    #@32
    move-object/from16 v0, p0

    #@34
    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@36
    move-object/from16 v0, p0

    #@38
    iput v13, v0, Landroid/icu/text/Bidi;->originalLength:I

    #@3a
    move-object/from16 v0, p0

    #@3c
    iput v13, v0, Landroid/icu/text/Bidi;->length:I

    #@3e
    .line 3954
    move/from16 v0, p2

    #@40
    move-object/from16 v1, p0

    #@42
    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    #@44
    .line 3955
    and-int/lit8 v13, p2, 0x1

    #@46
    int-to-byte v13, v13

    #@47
    move-object/from16 v0, p0

    #@49
    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    #@4b
    .line 3956
    const/4 v13, 0x1

    #@4c
    move-object/from16 v0, p0

    #@4e
    iput v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@50
    .line 3961
    const/4 v13, 0x0

    #@51
    new-array v13, v13, [B

    #@53
    move-object/from16 v0, p0

    #@55
    iput-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@57
    .line 3962
    const/4 v13, 0x0

    #@58
    new-array v13, v13, [B

    #@5a
    move-object/from16 v0, p0

    #@5c
    iput-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@5e
    .line 3963
    const/4 v13, 0x0

    #@5f
    new-array v13, v13, [Landroid/icu/text/BidiRun;

    #@61
    move-object/from16 v0, p0

    #@63
    iput-object v13, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@65
    .line 3964
    const/4 v13, 0x0

    #@66
    move-object/from16 v0, p0

    #@68
    iput-boolean v13, v0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    #@6a
    .line 3965
    move-object/from16 v0, p0

    #@6c
    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@6e
    const/4 v14, 0x0

    #@6f
    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@71
    .line 3966
    move-object/from16 v0, p0

    #@73
    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@75
    const/4 v14, 0x0

    #@76
    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    #@78
    .line 3971
    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    #@7b
    move-result v13

    #@7c
    if-eqz v13, :cond_4

    #@7e
    move/from16 v13, p2

    #@80
    :goto_0
    move-object/from16 v0, p0

    #@82
    iput-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    #@84
    .line 3973
    move-object/from16 v0, p0

    #@86
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@88
    if-nez v13, :cond_5

    #@8a
    .line 3979
    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    #@8d
    move-result v13

    #@8e
    if-eqz v13, :cond_3

    #@90
    .line 3980
    move-object/from16 v0, p0

    #@92
    iget-byte v13, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@94
    and-int/lit8 v13, v13, 0x1

    #@96
    int-to-byte v13, v13

    #@97
    move-object/from16 v0, p0

    #@99
    iput-byte v13, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@9b
    .line 3981
    const/4 v13, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    iput-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    #@a0
    .line 3983
    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    #@a3
    move-result v13

    #@a4
    move-object/from16 v0, p0

    #@a6
    iput v13, v0, Landroid/icu/text/Bidi;->flags:I

    #@a8
    .line 3984
    const/4 v13, 0x0

    #@a9
    move-object/from16 v0, p0

    #@ab
    iput v13, v0, Landroid/icu/text/Bidi;->runCount:I

    #@ad
    .line 3985
    const/4 v13, 0x0

    #@ae
    move-object/from16 v0, p0

    #@b0
    iput v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@b2
    .line 3986
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    #@b5
    .line 3987
    return-void

    #@b6
    .line 3971
    :cond_4
    const/4 v13, 0x0

    #@b7
    goto :goto_0

    #@b8
    .line 3990
    :cond_5
    const/4 v13, -0x1

    #@b9
    move-object/from16 v0, p0

    #@bb
    iput v13, v0, Landroid/icu/text/Bidi;->runCount:I

    #@bd
    .line 3997
    move-object/from16 v0, p0

    #@bf
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@c1
    move-object/from16 v0, p0

    #@c3
    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    #@c6
    .line 3998
    move-object/from16 v0, p0

    #@c8
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@ce
    .line 3999
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->getDirProps()V

    #@d1
    .line 4001
    move-object/from16 v0, p0

    #@d3
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@d9
    .line 4004
    if-nez p3, :cond_b

    #@db
    .line 4006
    move-object/from16 v0, p0

    #@dd
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@df
    move-object/from16 v0, p0

    #@e1
    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    #@e4
    .line 4007
    move-object/from16 v0, p0

    #@e6
    iget-object v13, v0, Landroid/icu/text/Bidi;->levelsMemory:[B

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@ec
    .line 4008
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->resolveExplicitLevels()B

    #@ef
    move-result v13

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    #@f4
    .line 4016
    :goto_1
    move-object/from16 v0, p0

    #@f6
    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@f8
    if-lez v13, :cond_7

    #@fa
    .line 4017
    move-object/from16 v0, p0

    #@fc
    iget-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@fe
    if-eqz v13, :cond_6

    #@100
    move-object/from16 v0, p0

    #@102
    iget-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@104
    array-length v13, v13

    #@105
    move-object/from16 v0, p0

    #@107
    iget v14, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@109
    if-ge v13, v14, :cond_7

    #@10b
    .line 4018
    :cond_6
    move-object/from16 v0, p0

    #@10d
    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@10f
    add-int/lit8 v13, v13, 0x3

    #@111
    new-array v13, v13, [Landroid/icu/text/Bidi$Isolate;

    #@113
    move-object/from16 v0, p0

    #@115
    iput-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    #@117
    .line 4020
    :cond_7
    const/4 v13, -0x1

    #@118
    move-object/from16 v0, p0

    #@11a
    iput v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    #@11c
    .line 4026
    move-object/from16 v0, p0

    #@11e
    iget-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    #@120
    packed-switch v13, :pswitch_data_0

    #@123
    .line 4039
    move-object/from16 v0, p0

    #@125
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@127
    packed-switch v13, :pswitch_data_1

    #@12a
    .line 4082
    :goto_2
    if-nez p3, :cond_e

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@130
    const/4 v14, 0x1

    #@131
    if-gt v13, v14, :cond_e

    #@133
    .line 4083
    move-object/from16 v0, p0

    #@135
    iget v13, v0, Landroid/icu/text/Bidi;->flags:I

    #@137
    sget v14, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    #@139
    and-int/2addr v13, v14

    #@13a
    if-nez v13, :cond_e

    #@13c
    .line 4084
    move-object/from16 v0, p0

    #@13e
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@140
    .line 4085
    const/4 v14, 0x0

    #@141
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v14}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@146
    move-result v14

    #@147
    invoke-static {v14}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@14a
    move-result v14

    #@14b
    int-to-short v14, v14

    #@14c
    .line 4086
    move-object/from16 v0, p0

    #@14e
    iget v15, v0, Landroid/icu/text/Bidi;->length:I

    #@150
    add-int/lit8 v15, v15, -0x1

    #@152
    move-object/from16 v0, p0

    #@154
    invoke-virtual {v0, v15}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@157
    move-result v15

    #@158
    invoke-static {v15}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@15b
    move-result v15

    #@15c
    int-to-short v15, v15

    #@15d
    .line 4084
    const/16 v16, 0x0

    #@15f
    move-object/from16 v0, p0

    #@161
    move/from16 v1, v16

    #@163
    invoke-direct {v0, v1, v13, v14, v15}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    #@166
    .line 4148
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->adjustWSLevels()V

    #@169
    .line 4155
    :goto_3
    move-object/from16 v0, p0

    #@16b
    iget-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    #@16d
    if-lez v13, :cond_1a

    #@16f
    .line 4156
    move-object/from16 v0, p0

    #@171
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@173
    and-int/lit8 v13, v13, 0x1

    #@175
    if-eqz v13, :cond_1a

    #@177
    .line 4157
    move-object/from16 v0, p0

    #@179
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@17b
    const/4 v14, 0x5

    #@17c
    if-eq v13, v14, :cond_9

    #@17e
    .line 4158
    move-object/from16 v0, p0

    #@180
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@182
    const/4 v14, 0x6

    #@183
    if-ne v13, v14, :cond_1a

    #@185
    .line 4162
    :cond_9
    const/4 v4, 0x0

    #@186
    .local v4, "i":I
    :goto_4
    move-object/from16 v0, p0

    #@188
    iget v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    #@18a
    if-ge v4, v13, :cond_1a

    #@18c
    .line 4163
    move-object/from16 v0, p0

    #@18e
    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@190
    aget v13, v13, v4

    #@192
    add-int/lit8 v6, v13, -0x1

    #@194
    .line 4164
    .local v6, "last":I
    move-object/from16 v0, p0

    #@196
    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_level:[B

    #@198
    aget-byte v7, v13, v4

    #@19a
    .line 4165
    .local v7, "level":B
    if-nez v7, :cond_16

    #@19c
    .line 4162
    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    #@19e
    goto :goto_4

    #@19f
    .line 4011
    .end local v4    # "i":I
    .end local v6    # "last":I
    .end local v7    # "level":B
    :cond_b
    move-object/from16 v0, p3

    #@1a1
    move-object/from16 v1, p0

    #@1a3
    iput-object v0, v1, Landroid/icu/text/Bidi;->levels:[B

    #@1a5
    .line 4012
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->checkExplicitLevels()B

    #@1a8
    move-result v13

    #@1a9
    move-object/from16 v0, p0

    #@1ab
    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    #@1ad
    goto/16 :goto_1

    #@1af
    .line 4029
    :pswitch_0
    const/4 v13, 0x0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@1b4
    goto :goto_3

    #@1b5
    .line 4033
    :pswitch_1
    const/4 v13, 0x0

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@1ba
    goto :goto_3

    #@1bb
    .line 4041
    :pswitch_2
    sget-object v13, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1c1
    goto/16 :goto_2

    #@1c3
    .line 4044
    :pswitch_3
    sget-object v13, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    #@1c5
    move-object/from16 v0, p0

    #@1c7
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1c9
    goto/16 :goto_2

    #@1cb
    .line 4047
    :pswitch_4
    sget-object v13, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    #@1cd
    move-object/from16 v0, p0

    #@1cf
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1d1
    goto/16 :goto_2

    #@1d3
    .line 4051
    :pswitch_5
    new-instance v13, Ljava/lang/InternalError;

    #@1d5
    const-string/jumbo v14, "Internal ICU error in setPara"

    #@1d8
    invoke-direct {v13, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@1db
    throw v13

    #@1dc
    .line 4054
    :pswitch_6
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    #@1de
    move-object/from16 v0, p0

    #@1e0
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1e2
    goto/16 :goto_2

    #@1e4
    .line 4057
    :pswitch_7
    move-object/from16 v0, p0

    #@1e6
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@1e8
    and-int/lit8 v13, v13, 0x1

    #@1ea
    if-eqz v13, :cond_c

    #@1ec
    .line 4058
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1f2
    goto/16 :goto_2

    #@1f4
    .line 4060
    :cond_c
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@1fa
    goto/16 :goto_2

    #@1fc
    .line 4064
    :pswitch_8
    move-object/from16 v0, p0

    #@1fe
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@200
    and-int/lit8 v13, v13, 0x1

    #@202
    if-eqz v13, :cond_d

    #@204
    .line 4065
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    #@206
    move-object/from16 v0, p0

    #@208
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@20a
    goto/16 :goto_2

    #@20c
    .line 4067
    :cond_d
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    #@20e
    move-object/from16 v0, p0

    #@210
    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    #@212
    goto/16 :goto_2

    #@214
    .line 4089
    :cond_e
    const/4 v8, 0x0

    #@215
    .line 4094
    .local v8, "limit":I
    const/4 v13, 0x0

    #@216
    move-object/from16 v0, p0

    #@218
    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@21b
    move-result v7

    #@21c
    .line 4095
    .restart local v7    # "level":B
    move-object/from16 v0, p0

    #@21e
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@220
    const/4 v14, 0x0

    #@221
    aget-byte v9, v13, v14

    #@223
    .line 4096
    .local v9, "nextLevel":B
    if-ge v7, v9, :cond_11

    #@225
    .line 4097
    invoke-static {v9}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@228
    move-result v13

    #@229
    int-to-short v3, v13

    #@22a
    .line 4106
    .local v3, "eor":S
    :goto_6
    move v11, v8

    #@22b
    .line 4107
    .local v11, "start":I
    move v7, v9

    #@22c
    .line 4108
    if-lez v8, :cond_12

    #@22e
    move-object/from16 v0, p0

    #@230
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@232
    add-int/lit8 v14, v11, -0x1

    #@234
    aget-byte v13, v13, v14

    #@236
    const/4 v14, 0x7

    #@237
    if-ne v13, v14, :cond_12

    #@239
    .line 4110
    move-object/from16 v0, p0

    #@23b
    invoke-virtual {v0, v11}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@23e
    move-result v13

    #@23f
    invoke-static {v13}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@242
    move-result v13

    #@243
    int-to-short v10, v13

    #@244
    .line 4116
    .local v10, "sor":S
    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1

    #@246
    move-object/from16 v0, p0

    #@248
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@24a
    if-ge v8, v13, :cond_10

    #@24c
    .line 4117
    move-object/from16 v0, p0

    #@24e
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@250
    aget-byte v13, v13, v8

    #@252
    if-eq v13, v7, :cond_f

    #@254
    .line 4118
    move-object/from16 v0, p0

    #@256
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@258
    aget-byte v13, v13, v8

    #@25a
    invoke-static {v13}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@25d
    move-result v13

    #@25e
    sget v14, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    #@260
    and-int/2addr v13, v14

    #@261
    if-nez v13, :cond_f

    #@263
    .line 4121
    :cond_10
    move-object/from16 v0, p0

    #@265
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@267
    if-ge v8, v13, :cond_13

    #@269
    .line 4122
    move-object/from16 v0, p0

    #@26b
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@26d
    aget-byte v9, v13, v8

    #@26f
    .line 4128
    :goto_8
    invoke-static {v7}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@272
    move-result v13

    #@273
    invoke-static {v9}, Landroid/icu/text/Bidi;->NoOverride(B)B

    #@276
    move-result v14

    #@277
    if-ge v13, v14, :cond_14

    #@279
    .line 4129
    invoke-static {v9}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@27c
    move-result v13

    #@27d
    int-to-short v3, v13

    #@27e
    .line 4136
    :goto_9
    and-int/lit8 v13, v7, -0x80

    #@280
    if-nez v13, :cond_15

    #@282
    .line 4137
    move-object/from16 v0, p0

    #@284
    invoke-direct {v0, v11, v8, v10, v3}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    #@287
    .line 4144
    :goto_a
    move-object/from16 v0, p0

    #@289
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@28b
    if-ge v8, v13, :cond_8

    #@28d
    goto :goto_6

    #@28e
    .line 4099
    .end local v3    # "eor":S
    .end local v10    # "sor":S
    .end local v11    # "start":I
    :cond_11
    invoke-static {v7}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@291
    move-result v13

    #@292
    int-to-short v3, v13

    #@293
    .restart local v3    # "eor":S
    goto :goto_6

    #@294
    .line 4112
    .restart local v11    # "start":I
    :cond_12
    move v10, v3

    #@295
    .restart local v10    # "sor":S
    goto :goto_7

    #@296
    .line 4124
    :cond_13
    move-object/from16 v0, p0

    #@298
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    #@29a
    add-int/lit8 v13, v13, -0x1

    #@29c
    move-object/from16 v0, p0

    #@29e
    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    #@2a1
    move-result v9

    #@2a2
    goto :goto_8

    #@2a3
    .line 4131
    :cond_14
    invoke-static {v7}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    #@2a6
    move-result v13

    #@2a7
    int-to-short v3, v13

    #@2a8
    goto :goto_9

    #@2a9
    .line 4141
    :cond_15
    :goto_b
    move-object/from16 v0, p0

    #@2ab
    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    #@2ad
    add-int/lit8 v12, v11, 0x1

    #@2af
    .end local v11    # "start":I
    .local v12, "start":I
    aget-byte v14, v13, v11

    #@2b1
    and-int/lit8 v14, v14, 0x7f

    #@2b3
    int-to-byte v14, v14

    #@2b4
    aput-byte v14, v13, v11

    #@2b6
    .line 4142
    if-ge v12, v8, :cond_1c

    #@2b8
    move v11, v12

    #@2b9
    .end local v12    # "start":I
    .restart local v11    # "start":I
    goto :goto_b

    #@2ba
    .line 4167
    .end local v3    # "eor":S
    .end local v8    # "limit":I
    .end local v9    # "nextLevel":B
    .end local v10    # "sor":S
    .end local v11    # "start":I
    .restart local v4    # "i":I
    .restart local v6    # "last":I
    :cond_16
    if-nez v4, :cond_17

    #@2bc
    const/4 v11, 0x0

    #@2bd
    .line 4168
    .restart local v11    # "start":I
    :goto_c
    move v5, v6

    #@2be
    .local v5, "j":I
    :goto_d
    if-lt v5, v11, :cond_a

    #@2c0
    .line 4169
    move-object/from16 v0, p0

    #@2c2
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@2c4
    aget-byte v2, v13, v5

    #@2c6
    .line 4170
    .local v2, "dirProp":B
    if-nez v2, :cond_19

    #@2c8
    .line 4171
    if-ge v5, v6, :cond_18

    #@2ca
    .line 4172
    :goto_e
    move-object/from16 v0, p0

    #@2cc
    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    #@2ce
    aget-byte v13, v13, v6

    #@2d0
    const/4 v14, 0x7

    #@2d1
    if-ne v13, v14, :cond_18

    #@2d3
    .line 4173
    add-int/lit8 v6, v6, -0x1

    #@2d5
    goto :goto_e

    #@2d6
    .line 4167
    .end local v2    # "dirProp":B
    .end local v5    # "j":I
    .end local v11    # "start":I
    :cond_17
    move-object/from16 v0, p0

    #@2d8
    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    #@2da
    add-int/lit8 v14, v4, -0x1

    #@2dc
    aget v11, v13, v14

    #@2de
    .restart local v11    # "start":I
    goto :goto_c

    #@2df
    .line 4176
    .restart local v2    # "dirProp":B
    .restart local v5    # "j":I
    :cond_18
    const/4 v13, 0x4

    #@2e0
    move-object/from16 v0, p0

    #@2e2
    invoke-direct {v0, v6, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    #@2e5
    goto/16 :goto_5

    #@2e7
    .line 4179
    :cond_19
    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@2ea
    move-result v13

    #@2eb
    sget v14, Landroid/icu/text/Bidi;->MASK_R_AL:I

    #@2ed
    and-int/2addr v13, v14

    #@2ee
    if-nez v13, :cond_a

    #@2f0
    .line 4168
    add-int/lit8 v5, v5, -0x1

    #@2f2
    goto :goto_d

    #@2f3
    .line 4186
    .end local v2    # "dirProp":B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "last":I
    .end local v7    # "level":B
    .end local v11    # "start":I
    :cond_1a
    move-object/from16 v0, p0

    #@2f5
    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@2f7
    and-int/lit8 v13, v13, 0x2

    #@2f9
    if-eqz v13, :cond_1b

    #@2fb
    .line 4187
    move-object/from16 v0, p0

    #@2fd
    iget v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@2ff
    move-object/from16 v0, p0

    #@301
    iget v14, v0, Landroid/icu/text/Bidi;->controlCount:I

    #@303
    sub-int/2addr v13, v14

    #@304
    move-object/from16 v0, p0

    #@306
    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@308
    .line 4191
    :goto_f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    #@30b
    .line 3934
    return-void

    #@30c
    .line 4189
    :cond_1b
    move-object/from16 v0, p0

    #@30e
    iget v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@310
    move-object/from16 v0, p0

    #@312
    iget-object v14, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    #@314
    iget v14, v14, Landroid/icu/text/Bidi$InsertPoints;->size:I

    #@316
    add-int/2addr v13, v14

    #@317
    move-object/from16 v0, p0

    #@319
    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    #@31b
    goto :goto_f

    #@31c
    .restart local v3    # "eor":S
    .restart local v7    # "level":B
    .restart local v8    # "limit":I
    .restart local v9    # "nextLevel":B
    .restart local v10    # "sor":S
    .restart local v12    # "start":I
    :cond_1c
    move v11, v12

    #@31d
    .end local v12    # "start":I
    .restart local v11    # "start":I
    goto/16 :goto_a

    #@31f
    .line 4026
    nop

    #@320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@328
    .line 4039
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method setParaRunsOnly([CB)V
    .locals 34
    .param p1, "parmText"    # [C
    .param p2, "parmParaLevel"    # B

    #@0
    .prologue
    .line 3635
    const/16 v29, 0x0

    #@2
    move/from16 v0, v29

    #@4
    move-object/from16 v1, p0

    #@6
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    #@8
    .line 3636
    move-object/from16 v0, p1

    #@a
    array-length v0, v0

    #@b
    move/from16 v17, v0

    #@d
    .line 3637
    .local v17, "parmLength":I
    if-nez v17, :cond_0

    #@f
    .line 3638
    const/16 v29, 0x0

    #@11
    move-object/from16 v0, p0

    #@13
    move-object/from16 v1, p1

    #@15
    move/from16 v2, p2

    #@17
    move-object/from16 v3, v29

    #@19
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@1c
    .line 3639
    const/16 v29, 0x3

    #@1e
    move/from16 v0, v29

    #@20
    move-object/from16 v1, p0

    #@22
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    #@24
    .line 3640
    return-void

    #@25
    .line 3643
    :cond_0
    move-object/from16 v0, p0

    #@27
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@29
    move/from16 v22, v0

    #@2b
    .line 3644
    .local v22, "saveOptions":I
    and-int/lit8 v29, v22, 0x1

    #@2d
    if-lez v29, :cond_1

    #@2f
    .line 3645
    move-object/from16 v0, p0

    #@31
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@33
    move/from16 v29, v0

    #@35
    and-int/lit8 v29, v29, -0x2

    #@37
    move/from16 v0, v29

    #@39
    move-object/from16 v1, p0

    #@3b
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@3d
    .line 3646
    move-object/from16 v0, p0

    #@3f
    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@41
    move/from16 v29, v0

    #@43
    or-int/lit8 v29, v29, 0x2

    #@45
    move/from16 v0, v29

    #@47
    move-object/from16 v1, p0

    #@49
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@4b
    .line 3648
    :cond_1
    and-int/lit8 v29, p2, 0x1

    #@4d
    move/from16 v0, v29

    #@4f
    int-to-byte v0, v0

    #@50
    move/from16 p2, v0

    #@52
    .line 3649
    const/16 v29, 0x0

    #@54
    move-object/from16 v0, p0

    #@56
    move-object/from16 v1, p1

    #@58
    move/from16 v2, p2

    #@5a
    move-object/from16 v3, v29

    #@5c
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    #@5f
    .line 3653
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@63
    move/from16 v29, v0

    #@65
    move/from16 v0, v29

    #@67
    new-array v0, v0, [B

    #@69
    move-object/from16 v21, v0

    #@6b
    .line 3654
    .local v21, "saveLevels":[B
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getLevels()[B

    #@6e
    move-result-object v29

    #@6f
    move-object/from16 v0, p0

    #@71
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@73
    move/from16 v30, v0

    #@75
    const/16 v31, 0x0

    #@77
    const/16 v32, 0x0

    #@79
    move-object/from16 v0, v29

    #@7b
    move/from16 v1, v31

    #@7d
    move-object/from16 v2, v21

    #@7f
    move/from16 v3, v32

    #@81
    move/from16 v4, v30

    #@83
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@86
    .line 3655
    move-object/from16 v0, p0

    #@88
    iget v0, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@8a
    move/from16 v23, v0

    #@8c
    .line 3663
    .local v23, "saveTrailingWSStart":I
    const/16 v29, 0x2

    #@8e
    move-object/from16 v0, p0

    #@90
    move/from16 v1, v29

    #@92
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    #@95
    move-result-object v28

    #@96
    .line 3664
    .local v28, "visualText":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getVisualMap()[I

    #@99
    move-result-object v26

    #@9a
    .line 3665
    .local v26, "visualMap":[I
    move/from16 v0, v22

    #@9c
    move-object/from16 v1, p0

    #@9e
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@a0
    .line 3666
    move-object/from16 v0, p0

    #@a2
    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    #@a4
    move/from16 v20, v0

    #@a6
    .line 3667
    .local v20, "saveLength":I
    move-object/from16 v0, p0

    #@a8
    iget-byte v0, v0, Landroid/icu/text/Bidi;->direction:B

    #@aa
    move/from16 v19, v0

    #@ac
    .line 3669
    .local v19, "saveDirection":B
    const/16 v29, 0x5

    #@ae
    move/from16 v0, v29

    #@b0
    move-object/from16 v1, p0

    #@b2
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    #@b4
    .line 3670
    xor-int/lit8 v29, p2, 0x1

    #@b6
    move/from16 v0, v29

    #@b8
    int-to-byte v0, v0

    #@b9
    move/from16 p2, v0

    #@bb
    .line 3671
    const/16 v29, 0x0

    #@bd
    move-object/from16 v0, p0

    #@bf
    move-object/from16 v1, v28

    #@c1
    move/from16 v2, p2

    #@c3
    move-object/from16 v3, v29

    #@c5
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    #@c8
    .line 3672
    invoke-static/range {p0 .. p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    #@cb
    .line 3674
    const/4 v5, 0x0

    #@cc
    .line 3675
    .local v5, "addedRuns":I
    move-object/from16 v0, p0

    #@ce
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@d0
    move/from16 v16, v0

    #@d2
    .line 3676
    .local v16, "oldRunCount":I
    const/16 v27, 0x0

    #@d4
    .line 3677
    .local v27, "visualStart":I
    const/4 v6, 0x0

    #@d5
    .local v6, "i":I
    :goto_0
    move/from16 v0, v16

    #@d7
    if-ge v6, v0, :cond_6

    #@d9
    .line 3678
    move-object/from16 v0, p0

    #@db
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@dd
    move-object/from16 v29, v0

    #@df
    aget-object v29, v29, v6

    #@e1
    move-object/from16 v0, v29

    #@e3
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@e5
    move/from16 v29, v0

    #@e7
    sub-int v18, v29, v27

    #@e9
    .line 3679
    .local v18, "runLength":I
    const/16 v29, 0x2

    #@eb
    move/from16 v0, v18

    #@ed
    move/from16 v1, v29

    #@ef
    if-ge v0, v1, :cond_3

    #@f1
    .line 3677
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@f3
    add-int v27, v27, v18

    #@f5
    goto :goto_0

    #@f6
    .line 3682
    :cond_3
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@fa
    move-object/from16 v29, v0

    #@fc
    aget-object v29, v29, v6

    #@fe
    move-object/from16 v0, v29

    #@100
    iget v14, v0, Landroid/icu/text/BidiRun;->start:I

    #@102
    .line 3683
    .local v14, "logicalStart":I
    add-int/lit8 v11, v14, 0x1

    #@104
    .local v11, "j":I
    :goto_1
    add-int v29, v14, v18

    #@106
    move/from16 v0, v29

    #@108
    if-ge v11, v0, :cond_2

    #@10a
    .line 3684
    aget v7, v26, v11

    #@10c
    .line 3685
    .local v7, "index":I
    add-int/lit8 v29, v11, -0x1

    #@10e
    aget v8, v26, v29

    #@110
    .line 3686
    .local v8, "index1":I
    sub-int v29, v7, v8

    #@112
    move-object/from16 v0, p0

    #@114
    move/from16 v1, v29

    #@116
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    #@119
    move-result v29

    #@11a
    const/16 v30, 0x1

    #@11c
    move/from16 v0, v29

    #@11e
    move/from16 v1, v30

    #@120
    if-ne v0, v1, :cond_4

    #@122
    aget-byte v29, v21, v7

    #@124
    aget-byte v30, v21, v8

    #@126
    move/from16 v0, v29

    #@128
    move/from16 v1, v30

    #@12a
    if-eq v0, v1, :cond_5

    #@12c
    .line 3687
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@12e
    .line 3683
    :cond_5
    add-int/lit8 v11, v11, 0x1

    #@130
    goto :goto_1

    #@131
    .line 3691
    .end local v7    # "index":I
    .end local v8    # "index1":I
    .end local v11    # "j":I
    .end local v14    # "logicalStart":I
    .end local v18    # "runLength":I
    :cond_6
    if-lez v5, :cond_9

    #@133
    .line 3692
    add-int v29, v16, v5

    #@135
    move-object/from16 v0, p0

    #@137
    move/from16 v1, v29

    #@139
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    #@13c
    .line 3693
    move-object/from16 v0, p0

    #@13e
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@140
    move/from16 v29, v0

    #@142
    const/16 v30, 0x1

    #@144
    move/from16 v0, v29

    #@146
    move/from16 v1, v30

    #@148
    if-ne v0, v1, :cond_8

    #@14a
    .line 3695
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@14e
    move-object/from16 v29, v0

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@154
    move-object/from16 v30, v0

    #@156
    const/16 v31, 0x0

    #@158
    aget-object v30, v30, v31

    #@15a
    const/16 v31, 0x0

    #@15c
    aput-object v30, v29, v31

    #@15e
    .line 3699
    :goto_2
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@162
    move-object/from16 v29, v0

    #@164
    move-object/from16 v0, v29

    #@166
    move-object/from16 v1, p0

    #@168
    iput-object v0, v1, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@16a
    .line 3700
    move-object/from16 v0, p0

    #@16c
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@16e
    move/from16 v29, v0

    #@170
    add-int v29, v29, v5

    #@172
    move/from16 v0, v29

    #@174
    move-object/from16 v1, p0

    #@176
    iput v0, v1, Landroid/icu/text/Bidi;->runCount:I

    #@178
    .line 3701
    move/from16 v6, v16

    #@17a
    :goto_3
    move-object/from16 v0, p0

    #@17c
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@17e
    move/from16 v29, v0

    #@180
    move/from16 v0, v29

    #@182
    if-ge v6, v0, :cond_9

    #@184
    .line 3702
    move-object/from16 v0, p0

    #@186
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@188
    move-object/from16 v29, v0

    #@18a
    aget-object v29, v29, v6

    #@18c
    if-nez v29, :cond_7

    #@18e
    .line 3703
    move-object/from16 v0, p0

    #@190
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@192
    move-object/from16 v29, v0

    #@194
    new-instance v30, Landroid/icu/text/BidiRun;

    #@196
    const/16 v31, 0x0

    #@198
    const/16 v32, 0x0

    #@19a
    const/16 v33, 0x0

    #@19c
    invoke-direct/range {v30 .. v33}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    #@19f
    aput-object v30, v29, v6

    #@1a1
    .line 3701
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@1a3
    goto :goto_3

    #@1a4
    .line 3697
    :cond_8
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1a8
    move-object/from16 v29, v0

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    #@1ae
    move-object/from16 v30, v0

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@1b4
    move/from16 v31, v0

    #@1b6
    const/16 v32, 0x0

    #@1b8
    const/16 v33, 0x0

    #@1ba
    move-object/from16 v0, v29

    #@1bc
    move/from16 v1, v32

    #@1be
    move-object/from16 v2, v30

    #@1c0
    move/from16 v3, v33

    #@1c2
    move/from16 v4, v31

    #@1c4
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c7
    goto :goto_2

    #@1c8
    .line 3709
    :cond_9
    add-int/lit8 v6, v16, -0x1

    #@1ca
    :goto_4
    if-ltz v6, :cond_12

    #@1cc
    .line 3710
    add-int v15, v6, v5

    #@1ce
    .line 3711
    .local v15, "newI":I
    if-nez v6, :cond_b

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1d4
    move-object/from16 v29, v0

    #@1d6
    const/16 v30, 0x0

    #@1d8
    aget-object v29, v29, v30

    #@1da
    move-object/from16 v0, v29

    #@1dc
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@1de
    move/from16 v18, v0

    #@1e0
    .line 3713
    .restart local v18    # "runLength":I
    :goto_5
    move-object/from16 v0, p0

    #@1e2
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1e4
    move-object/from16 v29, v0

    #@1e6
    aget-object v29, v29, v6

    #@1e8
    move-object/from16 v0, v29

    #@1ea
    iget v14, v0, Landroid/icu/text/BidiRun;->start:I

    #@1ec
    .line 3714
    .restart local v14    # "logicalStart":I
    move-object/from16 v0, p0

    #@1ee
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@1f0
    move-object/from16 v29, v0

    #@1f2
    aget-object v29, v29, v6

    #@1f4
    move-object/from16 v0, v29

    #@1f6
    iget-byte v0, v0, Landroid/icu/text/BidiRun;->level:B

    #@1f8
    move/from16 v29, v0

    #@1fa
    and-int/lit8 v9, v29, 0x1

    #@1fc
    .line 3715
    .local v9, "indexOddBit":I
    const/16 v29, 0x2

    #@1fe
    move/from16 v0, v18

    #@200
    move/from16 v1, v29

    #@202
    if-ge v0, v1, :cond_c

    #@204
    .line 3716
    if-lez v5, :cond_a

    #@206
    .line 3717
    move-object/from16 v0, p0

    #@208
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@20a
    move-object/from16 v29, v0

    #@20c
    aget-object v29, v29, v15

    #@20e
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@212
    move-object/from16 v30, v0

    #@214
    aget-object v30, v30, v6

    #@216
    invoke-virtual/range {v29 .. v30}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    #@219
    .line 3719
    :cond_a
    aget v13, v26, v14

    #@21b
    .line 3720
    .local v13, "logicalPos":I
    move-object/from16 v0, p0

    #@21d
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@21f
    move-object/from16 v29, v0

    #@221
    aget-object v29, v29, v15

    #@223
    move-object/from16 v0, v29

    #@225
    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    #@227
    .line 3721
    move-object/from16 v0, p0

    #@229
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@22b
    move-object/from16 v29, v0

    #@22d
    aget-object v29, v29, v15

    #@22f
    aget-byte v30, v21, v13

    #@231
    xor-int v30, v30, v9

    #@233
    move/from16 v0, v30

    #@235
    int-to-byte v0, v0

    #@236
    move/from16 v30, v0

    #@238
    move/from16 v0, v30

    #@23a
    move-object/from16 v1, v29

    #@23c
    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    #@23e
    .line 3709
    :goto_6
    add-int/lit8 v6, v6, -0x1

    #@240
    goto :goto_4

    #@241
    .line 3712
    .end local v9    # "indexOddBit":I
    .end local v13    # "logicalPos":I
    .end local v14    # "logicalStart":I
    .end local v18    # "runLength":I
    :cond_b
    move-object/from16 v0, p0

    #@243
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@245
    move-object/from16 v29, v0

    #@247
    aget-object v29, v29, v6

    #@249
    move-object/from16 v0, v29

    #@24b
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@24d
    move/from16 v29, v0

    #@24f
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@253
    move-object/from16 v30, v0

    #@255
    add-int/lit8 v31, v6, -0x1

    #@257
    aget-object v30, v30, v31

    #@259
    move-object/from16 v0, v30

    #@25b
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@25d
    move/from16 v30, v0

    #@25f
    sub-int v18, v29, v30

    #@261
    .restart local v18    # "runLength":I
    goto/16 :goto_5

    #@263
    .line 3724
    .restart local v9    # "indexOddBit":I
    .restart local v14    # "logicalStart":I
    :cond_c
    if-lez v9, :cond_f

    #@265
    .line 3725
    move/from16 v24, v14

    #@267
    .line 3726
    .local v24, "start":I
    add-int v29, v14, v18

    #@269
    add-int/lit8 v12, v29, -0x1

    #@26b
    .line 3727
    .local v12, "limit":I
    const/16 v25, 0x1

    #@26d
    .line 3733
    .local v25, "step":I
    :goto_7
    move/from16 v11, v24

    #@26f
    .restart local v11    # "j":I
    :goto_8
    if-eq v11, v12, :cond_10

    #@271
    .line 3734
    aget v7, v26, v11

    #@273
    .line 3735
    .restart local v7    # "index":I
    add-int v29, v11, v25

    #@275
    aget v8, v26, v29

    #@277
    .line 3736
    .restart local v8    # "index1":I
    sub-int v29, v7, v8

    #@279
    move-object/from16 v0, p0

    #@27b
    move/from16 v1, v29

    #@27d
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    #@280
    move-result v29

    #@281
    const/16 v30, 0x1

    #@283
    move/from16 v0, v29

    #@285
    move/from16 v1, v30

    #@287
    if-ne v0, v1, :cond_d

    #@289
    aget-byte v29, v21, v7

    #@28b
    aget-byte v30, v21, v8

    #@28d
    move/from16 v0, v29

    #@28f
    move/from16 v1, v30

    #@291
    if-eq v0, v1, :cond_e

    #@293
    .line 3737
    :cond_d
    aget v29, v26, v24

    #@295
    move-object/from16 v0, p0

    #@297
    move/from16 v1, v29

    #@299
    invoke-virtual {v0, v1, v7}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    #@29c
    move-result v13

    #@29d
    .line 3738
    .restart local v13    # "logicalPos":I
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2a1
    move-object/from16 v29, v0

    #@2a3
    aget-object v29, v29, v15

    #@2a5
    move-object/from16 v0, v29

    #@2a7
    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    #@2a9
    .line 3739
    move-object/from16 v0, p0

    #@2ab
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2ad
    move-object/from16 v29, v0

    #@2af
    aget-object v29, v29, v15

    #@2b1
    aget-byte v30, v21, v13

    #@2b3
    xor-int v30, v30, v9

    #@2b5
    move/from16 v0, v30

    #@2b7
    int-to-byte v0, v0

    #@2b8
    move/from16 v30, v0

    #@2ba
    move/from16 v0, v30

    #@2bc
    move-object/from16 v1, v29

    #@2be
    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    #@2c0
    .line 3740
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2c4
    move-object/from16 v29, v0

    #@2c6
    aget-object v29, v29, v15

    #@2c8
    move-object/from16 v0, p0

    #@2ca
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2cc
    move-object/from16 v30, v0

    #@2ce
    aget-object v30, v30, v6

    #@2d0
    move-object/from16 v0, v30

    #@2d2
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@2d4
    move/from16 v30, v0

    #@2d6
    move/from16 v0, v30

    #@2d8
    move-object/from16 v1, v29

    #@2da
    iput v0, v1, Landroid/icu/text/BidiRun;->limit:I

    #@2dc
    .line 3741
    move-object/from16 v0, p0

    #@2de
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@2e0
    move-object/from16 v29, v0

    #@2e2
    aget-object v29, v29, v6

    #@2e4
    move-object/from16 v0, v29

    #@2e6
    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    #@2e8
    move/from16 v30, v0

    #@2ea
    sub-int v31, v11, v24

    #@2ec
    move-object/from16 v0, p0

    #@2ee
    move/from16 v1, v31

    #@2f0
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    #@2f3
    move-result v31

    #@2f4
    add-int/lit8 v31, v31, 0x1

    #@2f6
    sub-int v30, v30, v31

    #@2f8
    move/from16 v0, v30

    #@2fa
    move-object/from16 v1, v29

    #@2fc
    iput v0, v1, Landroid/icu/text/BidiRun;->limit:I

    #@2fe
    .line 3742
    move-object/from16 v0, p0

    #@300
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@302
    move-object/from16 v29, v0

    #@304
    aget-object v29, v29, v6

    #@306
    move-object/from16 v0, v29

    #@308
    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@30a
    move/from16 v29, v0

    #@30c
    and-int/lit8 v10, v29, 0xa

    #@30e
    .line 3743
    .local v10, "insertRemove":I
    move-object/from16 v0, p0

    #@310
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@312
    move-object/from16 v29, v0

    #@314
    aget-object v29, v29, v15

    #@316
    move-object/from16 v0, v29

    #@318
    iput v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@31a
    .line 3744
    move-object/from16 v0, p0

    #@31c
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@31e
    move-object/from16 v29, v0

    #@320
    aget-object v29, v29, v6

    #@322
    move-object/from16 v0, v29

    #@324
    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    #@326
    move/from16 v30, v0

    #@328
    not-int v0, v10

    #@329
    move/from16 v31, v0

    #@32b
    and-int v30, v30, v31

    #@32d
    move/from16 v0, v30

    #@32f
    move-object/from16 v1, v29

    #@331
    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    #@333
    .line 3745
    add-int v24, v11, v25

    #@335
    .line 3746
    add-int/lit8 v5, v5, -0x1

    #@337
    .line 3747
    add-int/lit8 v15, v15, -0x1

    #@339
    .line 3733
    .end local v10    # "insertRemove":I
    .end local v13    # "logicalPos":I
    :cond_e
    add-int v11, v11, v25

    #@33b
    goto/16 :goto_8

    #@33d
    .line 3729
    .end local v7    # "index":I
    .end local v8    # "index1":I
    .end local v11    # "j":I
    .end local v12    # "limit":I
    .end local v24    # "start":I
    .end local v25    # "step":I
    :cond_f
    add-int v29, v14, v18

    #@33f
    add-int/lit8 v24, v29, -0x1

    #@341
    .line 3730
    .restart local v24    # "start":I
    move v12, v14

    #@342
    .line 3731
    .restart local v12    # "limit":I
    const/16 v25, -0x1

    #@344
    .restart local v25    # "step":I
    goto/16 :goto_7

    #@346
    .line 3750
    .restart local v11    # "j":I
    :cond_10
    if-lez v5, :cond_11

    #@348
    .line 3751
    move-object/from16 v0, p0

    #@34a
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@34c
    move-object/from16 v29, v0

    #@34e
    aget-object v29, v29, v15

    #@350
    move-object/from16 v0, p0

    #@352
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@354
    move-object/from16 v30, v0

    #@356
    aget-object v30, v30, v6

    #@358
    invoke-virtual/range {v29 .. v30}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    #@35b
    .line 3753
    :cond_11
    aget v29, v26, v24

    #@35d
    aget v30, v26, v12

    #@35f
    move-object/from16 v0, p0

    #@361
    move/from16 v1, v29

    #@363
    move/from16 v2, v30

    #@365
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    #@368
    move-result v13

    #@369
    .line 3754
    .restart local v13    # "logicalPos":I
    move-object/from16 v0, p0

    #@36b
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@36d
    move-object/from16 v29, v0

    #@36f
    aget-object v29, v29, v15

    #@371
    move-object/from16 v0, v29

    #@373
    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    #@375
    .line 3755
    move-object/from16 v0, p0

    #@377
    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    #@379
    move-object/from16 v29, v0

    #@37b
    aget-object v29, v29, v15

    #@37d
    aget-byte v30, v21, v13

    #@37f
    xor-int v30, v30, v9

    #@381
    move/from16 v0, v30

    #@383
    int-to-byte v0, v0

    #@384
    move/from16 v30, v0

    #@386
    move/from16 v0, v30

    #@388
    move-object/from16 v1, v29

    #@38a
    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    #@38c
    goto/16 :goto_6

    #@38e
    .line 3760
    .end local v9    # "indexOddBit":I
    .end local v11    # "j":I
    .end local v12    # "limit":I
    .end local v13    # "logicalPos":I
    .end local v14    # "logicalStart":I
    .end local v15    # "newI":I
    .end local v18    # "runLength":I
    .end local v24    # "start":I
    .end local v25    # "step":I
    :cond_12
    move-object/from16 v0, p0

    #@390
    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    #@392
    move/from16 v29, v0

    #@394
    xor-int/lit8 v29, v29, 0x1

    #@396
    move/from16 v0, v29

    #@398
    int-to-byte v0, v0

    #@399
    move/from16 v29, v0

    #@39b
    move/from16 v0, v29

    #@39d
    move-object/from16 v1, p0

    #@39f
    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    #@3a1
    .line 3763
    move-object/from16 v0, p1

    #@3a3
    move-object/from16 v1, p0

    #@3a5
    iput-object v0, v1, Landroid/icu/text/Bidi;->text:[C

    #@3a7
    .line 3764
    move/from16 v0, v20

    #@3a9
    move-object/from16 v1, p0

    #@3ab
    iput v0, v1, Landroid/icu/text/Bidi;->length:I

    #@3ad
    .line 3765
    move/from16 v0, v17

    #@3af
    move-object/from16 v1, p0

    #@3b1
    iput v0, v1, Landroid/icu/text/Bidi;->originalLength:I

    #@3b3
    .line 3766
    move/from16 v0, v19

    #@3b5
    move-object/from16 v1, p0

    #@3b7
    iput-byte v0, v1, Landroid/icu/text/Bidi;->direction:B

    #@3b9
    .line 3767
    move-object/from16 v0, v21

    #@3bb
    move-object/from16 v1, p0

    #@3bd
    iput-object v0, v1, Landroid/icu/text/Bidi;->levels:[B

    #@3bf
    .line 3768
    move/from16 v0, v23

    #@3c1
    move-object/from16 v1, p0

    #@3c3
    iput v0, v1, Landroid/icu/text/Bidi;->trailingWSStart:I

    #@3c5
    .line 3769
    move-object/from16 v0, p0

    #@3c7
    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    #@3c9
    move/from16 v29, v0

    #@3cb
    const/16 v30, 0x1

    #@3cd
    move/from16 v0, v29

    #@3cf
    move/from16 v1, v30

    #@3d1
    if-le v0, v1, :cond_13

    #@3d3
    .line 3770
    const/16 v29, 0x2

    #@3d5
    move/from16 v0, v29

    #@3d7
    move-object/from16 v1, p0

    #@3d9
    iput-byte v0, v1, Landroid/icu/text/Bidi;->direction:B

    #@3db
    .line 3773
    :cond_13
    const/16 v29, 0x3

    #@3dd
    move/from16 v0, v29

    #@3df
    move-object/from16 v1, p0

    #@3e1
    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    #@3e3
    .line 3623
    return-void
.end method

.method public setReorderingMode(I)V
    .locals 2
    .param p1, "reorderingMode"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1610
    if-ltz p1, :cond_0

    #@3
    .line 1611
    const/4 v1, 0x7

    #@4
    if-lt p1, v1, :cond_1

    #@6
    .line 1612
    :cond_0
    return-void

    #@7
    .line 1613
    :cond_1
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    #@9
    .line 1615
    const/4 v1, 0x4

    #@a
    if-ne p1, v1, :cond_2

    #@c
    const/4 v0, 0x1

    #@d
    .line 1614
    :cond_2
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    #@f
    .line 1609
    return-void
.end method

.method public setReorderingOptions(I)V
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 1645
    and-int/lit8 v0, p1, 0x2

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1646
    and-int/lit8 v0, p1, -0x2

    #@6
    iput v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@8
    .line 1644
    :goto_0
    return-void

    #@9
    .line 1648
    :cond_0
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    #@b
    goto :goto_0
.end method

.method testDirPropFlagAt(II)Z
    .locals 2
    .param p1, "flag"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1107
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    #@3
    aget-byte v1, v1, p2

    #@5
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    #@8
    move-result v1

    #@9
    and-int/2addr v1, p1

    #@a
    if-eqz v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :cond_0
    return v0
.end method

.method verifyRange(III)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "start"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 1196
    if-lt p1, p2, :cond_0

    #@2
    if-lt p1, p3, :cond_1

    #@4
    .line 1197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Value "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 1198
    const-string/jumbo v2, " is out of range "

    #@19
    .line 1197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 1198
    const-string/jumbo v2, " to "

    #@24
    .line 1197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1194
    :cond_1
    return-void
.end method

.method verifyValidPara()V
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 1177
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1174
    :cond_0
    return-void
.end method

.method verifyValidParaOrLine()V
    .locals 2

    #@0
    .prologue
    .line 1183
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@2
    .line 1185
    .local v0, "para":Landroid/icu/text/Bidi;
    if-ne p0, v0, :cond_0

    #@4
    .line 1186
    return-void

    #@5
    .line 1189
    :cond_0
    if-eqz v0, :cond_1

    #@7
    iget-object v1, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 1190
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    #@10
    throw v1

    #@11
    .line 1181
    :cond_2
    return-void
.end method

.method public writeReordered(I)Ljava/lang/String;
    .locals 1
    .param p1, "options"    # I

    #@0
    .prologue
    .line 5618
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    #@3
    .line 5619
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 5621
    const-string/jumbo v0, ""

    #@a
    return-object v0

    #@b
    .line 5623
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
