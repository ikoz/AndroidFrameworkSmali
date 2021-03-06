.class public Landroid/icu/text/RuleBasedBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final RBBI_DEBUG_ARG:Ljava/lang/String; = "rbbi"

.field private static final RBBI_END:I = 0x2

.field private static final RBBI_RUN:I = 0x1

.field private static final RBBI_START:I = 0x0

.field private static final START_STATE:I = 0x1

.field private static final STOP_STATE:I

.field private static final TRACE:Z

.field static final fDebugEnv:Ljava/lang/String;


# instance fields
.field private final fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private fBreakType:I

.field private fCachedBreakPositions:[I

.field private fDictionaryCharCount:I

.field private fLastRuleStatusIndex:I

.field private fLastStatusIndexValid:Z

.field private fPositionInCache:I

.field fRData:Landroid/icu/text/RBBIDataWrapper;

.field private fText:Ljava/text/CharacterIterator;

.field private final fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    #@d
    .line 239
    const-string/jumbo v0, "rbbi"

    #@10
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 240
    const-string/jumbo v0, "rbbi"

    #@19
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v3, "trace"

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    if-ltz v0, :cond_0

    #@26
    move v1, v2

    #@27
    .line 239
    :cond_0
    sput-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@29
    .line 1060
    const-string/jumbo v0, "rbbi"

    #@2c
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_2

    #@32
    .line 1061
    const-string/jumbo v0, "rbbi"

    #@35
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1060
    :goto_1
    sput-object v0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    #@3b
    .line 39
    return-void

    #@3c
    :cond_1
    move v0, v2

    #@3d
    goto :goto_0

    #@3e
    .line 1061
    :cond_2
    const/4 v0, 0x0

    #@3f
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    #@3
    .line 203
    new-instance v0, Ljava/text/StringCharacterIterator;

    #@5
    const-string/jumbo v1, ""

    #@8
    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@b
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@d
    .line 246
    const/4 v0, 0x2

    #@e
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    #@10
    .line 253
    new-instance v0, Landroid/icu/text/UnhandledBreakEngine;

    #@12
    invoke-direct {v0}, Landroid/icu/text/UnhandledBreakEngine;-><init>()V

    #@15
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@17
    .line 271
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1c
    .line 270
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    #@1e
    .line 48
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@21
    .line 49
    const/4 v0, 0x0

    #@22
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@24
    .line 50
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    #@26
    const/4 v1, -0x1

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@2d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    #@3
    .line 103
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 104
    .local v2, "ruleOS":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@b
    .line 105
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@e
    move-result-object v3

    #@f
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@12
    move-result-object v3

    #@13
    invoke-static {v3}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    #@16
    move-result-object v3

    #@17
    iput-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 100
    return-void

    #@1a
    .line 106
    .end local v2    # "ruleOS":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    #@1b
    .line 110
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, "RuleBasedBreakIterator rule compilation internal error: "

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    .line 112
    .local v1, "rte":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private checkDictionary(IIZ)I
    .locals 15
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "reverse"    # Z

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    #@3
    .line 424
    sub-int v2, p2, p1

    #@5
    const/4 v5, 0x1

    #@6
    if-gt v2, v5, :cond_1

    #@8
    .line 425
    if-eqz p3, :cond_0

    #@a
    .end local p1    # "startPos":I
    :goto_0
    return p1

    #@b
    .restart local p1    # "startPos":I
    :cond_0
    move/from16 p1, p2

    #@d
    goto :goto_0

    #@e
    .line 431
    :cond_1
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@10
    if-eqz p3, :cond_7

    #@12
    move/from16 v2, p2

    #@14
    :goto_1
    invoke-interface {v5, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@17
    .line 432
    if-eqz p3, :cond_2

    #@19
    .line 433
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1b
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@1e
    .line 436
    :cond_2
    move/from16 v3, p1

    #@20
    .line 437
    .local v3, "rangeStart":I
    move/from16 v4, p2

    #@22
    .line 441
    .local v4, "rangeEnd":I
    new-instance v7, Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@24
    invoke-direct {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    #@27
    .line 442
    .local v7, "breaks":Landroid/icu/text/DictionaryBreakEngine$DequeI;
    const/4 v11, 0x0

    #@28
    .line 443
    .local v11, "foundBreakCount":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2a
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@2d
    move-result v8

    #@2e
    .line 444
    .local v8, "c":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@30
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@32
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@35
    move-result v2

    #@36
    int-to-short v9, v2

    #@37
    .line 451
    .local v9, "category":I
    and-int/lit16 v2, v9, 0x4000

    #@39
    if-eqz v2, :cond_5

    #@3b
    .line 452
    if-eqz p3, :cond_9

    #@3d
    .line 454
    :cond_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@3f
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@42
    .line 455
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@44
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@47
    move-result v8

    #@48
    .line 456
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@4a
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@4c
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@4f
    move-result v2

    #@50
    int-to-short v9, v2

    #@51
    .line 457
    const v2, 0x7fffffff

    #@54
    if-eq v8, v2, :cond_4

    #@56
    and-int/lit16 v2, v9, 0x4000

    #@58
    if-nez v2, :cond_3

    #@5a
    .line 460
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@5c
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@5f
    move-result v4

    #@60
    .line 461
    const v2, 0x7fffffff

    #@63
    if-ne v8, v2, :cond_8

    #@65
    .line 464
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@67
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@6a
    move-result v8

    #@6b
    .line 487
    :goto_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@6d
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@6f
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@72
    move-result v2

    #@73
    int-to-short v9, v2

    #@74
    .line 496
    :cond_5
    if-eqz p3, :cond_6

    #@76
    .line 497
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@78
    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@7b
    .line 498
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@7d
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@80
    move-result v8

    #@81
    .line 499
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@83
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@85
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@88
    move-result v2

    #@89
    int-to-short v9, v2

    #@8a
    .line 501
    :cond_6
    const/4 v1, 0x0

    #@8b
    .line 503
    :goto_3
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@8d
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@90
    move-result v10

    #@91
    .local v10, "current":I
    if-ge v10, v4, :cond_c

    #@93
    and-int/lit16 v2, v9, 0x4000

    #@95
    if-nez v2, :cond_c

    #@97
    .line 504
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@99
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@9c
    .line 505
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@9e
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@a1
    move-result v8

    #@a2
    .line 506
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@a4
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@a6
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@a9
    move-result v2

    #@aa
    int-to-short v9, v2

    #@ab
    goto :goto_3

    #@ac
    .end local v3    # "rangeStart":I
    .end local v4    # "rangeEnd":I
    .end local v7    # "breaks":Landroid/icu/text/DictionaryBreakEngine$DequeI;
    .end local v8    # "c":I
    .end local v9    # "category":I
    .end local v10    # "current":I
    .end local v11    # "foundBreakCount":I
    :cond_7
    move/from16 v2, p1

    #@ae
    .line 431
    goto/16 :goto_1

    #@b0
    .line 467
    .restart local v3    # "rangeStart":I
    .restart local v4    # "rangeEnd":I
    .restart local v7    # "breaks":Landroid/icu/text/DictionaryBreakEngine$DequeI;
    .restart local v8    # "c":I
    .restart local v9    # "category":I
    .restart local v11    # "foundBreakCount":I
    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@b2
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@b5
    move-result v8

    #@b6
    goto :goto_2

    #@b7
    .line 472
    :cond_9
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@b9
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@bc
    move-result v8

    #@bd
    .line 473
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@bf
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@c1
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@c4
    move-result v2

    #@c5
    int-to-short v9, v2

    #@c6
    .line 475
    const v2, 0x7fffffff

    #@c9
    if-eq v8, v2, :cond_a

    #@cb
    and-int/lit16 v2, v9, 0x4000

    #@cd
    if-nez v2, :cond_9

    #@cf
    .line 477
    :cond_a
    const v2, 0x7fffffff

    #@d2
    if-ne v8, v2, :cond_b

    #@d4
    .line 479
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@d6
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@d9
    move-result v8

    #@da
    .line 485
    :goto_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@dc
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@df
    move-result v3

    #@e0
    goto :goto_2

    #@e1
    .line 482
    :cond_b
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@e3
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@e6
    .line 483
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@e8
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@eb
    move-result v8

    #@ec
    goto :goto_4

    #@ed
    .line 508
    .restart local v10    # "current":I
    :cond_c
    if-lt v10, v4, :cond_e

    #@ef
    .line 531
    if-lez v11, :cond_17

    #@f1
    .line 532
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@f4
    move-result v2

    #@f5
    if-eq v11, v2, :cond_d

    #@f7
    .line 533
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f9
    new-instance v5, Ljava/lang/StringBuilder;

    #@fb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@fe
    const-string/jumbo v6, "oops, foundBreakCount != breaks.size().  LBE = "

    #@101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v5

    #@105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@108
    move-result-object v6

    #@109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v5

    #@10d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v5

    #@111
    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@114
    .line 535
    :cond_d
    sget-boolean v2, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    #@116
    if-nez v2, :cond_12

    #@118
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@11b
    move-result v2

    #@11c
    if-ne v11, v2, :cond_11

    #@11e
    const/4 v2, 0x1

    #@11f
    :goto_5
    if-nez v2, :cond_12

    #@121
    new-instance v2, Ljava/lang/AssertionError;

    #@123
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@126
    throw v2

    #@127
    .line 514
    :cond_e
    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;

    #@12a
    move-result-object v1

    #@12b
    .line 518
    .local v1, "lbe":Landroid/icu/text/LanguageBreakEngine;
    if-eqz v1, :cond_10

    #@12d
    .line 519
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@12f
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@132
    move-result v14

    #@133
    .line 520
    .local v14, "startingIdx":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@135
    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    #@137
    const/4 v5, 0x0

    #@138
    invoke-interface/range {v1 .. v7}, Landroid/icu/text/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    #@13b
    move-result v2

    #@13c
    add-int/2addr v11, v2

    #@13d
    .line 521
    sget-boolean v2, Landroid/icu/text/RuleBasedBreakIterator;->-assertionsDisabled:Z

    #@13f
    if-nez v2, :cond_10

    #@141
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@143
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@146
    move-result v2

    #@147
    if-le v2, v14, :cond_f

    #@149
    const/4 v2, 0x1

    #@14a
    :goto_6
    if-nez v2, :cond_10

    #@14c
    new-instance v2, Ljava/lang/AssertionError;

    #@14e
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@151
    throw v2

    #@152
    :cond_f
    const/4 v2, 0x0

    #@153
    goto :goto_6

    #@154
    .line 525
    .end local v14    # "startingIdx":I
    :cond_10
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@156
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@159
    move-result v8

    #@15a
    .line 526
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@15c
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@15e
    invoke-virtual {v2, v8}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@161
    move-result v2

    #@162
    int-to-short v9, v2

    #@163
    goto/16 :goto_3

    #@165
    .line 535
    .end local v1    # "lbe":Landroid/icu/text/LanguageBreakEngine;
    :cond_11
    const/4 v2, 0x0

    #@166
    goto :goto_5

    #@167
    .line 536
    :cond_12
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peekLast()I

    #@16a
    move-result v2

    #@16b
    move/from16 v0, p1

    #@16d
    if-ge v0, v2, :cond_13

    #@16f
    .line 537
    move/from16 v0, p1

    #@171
    invoke-virtual {v7, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->offer(I)V

    #@174
    .line 539
    :cond_13
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@177
    move-result v2

    #@178
    move/from16 v0, p2

    #@17a
    if-le v0, v2, :cond_14

    #@17c
    .line 540
    move/from16 v0, p2

    #@17e
    invoke-virtual {v7, v0}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    #@181
    .line 544
    :cond_14
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@184
    move-result v2

    #@185
    new-array v2, v2, [I

    #@187
    iput-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@189
    .line 546
    const/4 v12, 0x0

    #@18a
    .line 547
    .local v12, "i":I
    :goto_7
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@18d
    move-result v2

    #@18e
    if-lez v2, :cond_15

    #@190
    .line 548
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@192
    add-int/lit8 v13, v12, 0x1

    #@194
    .end local v12    # "i":I
    .local v13, "i":I
    invoke-virtual {v7}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pollLast()I

    #@197
    move-result v5

    #@198
    aput v5, v2, v12

    #@19a
    move v12, v13

    #@19b
    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_7

    #@19c
    .line 554
    :cond_15
    if-eqz p3, :cond_16

    #@19e
    .line 555
    move/from16 v0, p2

    #@1a0
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->preceding(I)I

    #@1a3
    move-result v2

    #@1a4
    return v2

    #@1a5
    .line 558
    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/RuleBasedBreakIterator;->following(I)I

    #@1a8
    move-result v2

    #@1a9
    return v2

    #@1aa
    .line 564
    .end local v12    # "i":I
    :cond_17
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1ac
    if-eqz p3, :cond_18

    #@1ae
    move/from16 v2, p1

    #@1b0
    :goto_8
    invoke-interface {v5, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1b3
    .line 565
    if-eqz p3, :cond_19

    #@1b5
    .end local p1    # "startPos":I
    :goto_9
    return p1

    #@1b6
    .restart local p1    # "startPos":I
    :cond_18
    move/from16 v2, p2

    #@1b8
    .line 564
    goto :goto_8

    #@1b9
    :cond_19
    move/from16 p1, p2

    #@1bb
    .line 565
    goto :goto_9
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 878
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@3
    move-result v0

    #@4
    if-lt p0, v0, :cond_0

    #@6
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@9
    move-result v0

    #@a
    if-le p0, v0, :cond_1

    #@c
    .line 879
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "offset out of bounds"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 877
    :cond_1
    return-void
.end method

.method public static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "rules"    # Ljava/lang/String;
    .param p1, "ruleBinary"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 309
    invoke-static {p0, p1}, Landroid/icu/text/RBBIRuleBuilder;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@3
    .line 308
    return-void
.end method

.method public static getInstanceFromCompiledRules(Ljava/io/InputStream;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    #@2
    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    #@5
    .line 69
    .local v0, "This":Landroid/icu/text/RuleBasedBreakIterator;
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    #@8
    move-result-object v1

    #@9
    invoke-static {v1}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    #@c
    move-result-object v1

    #@d
    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@f
    .line 70
    return-object v0
.end method

.method public static getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    .locals 2
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 91
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    #@2
    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    #@5
    .line 92
    .local v0, "This":Landroid/icu/text/RuleBasedBreakIterator;
    invoke-static {p0}, Landroid/icu/text/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/text/RBBIDataWrapper;

    #@8
    move-result-object v1

    #@9
    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@b
    .line 93
    return-object v0
.end method

.method private getLanguageBreakEngine(I)Landroid/icu/text/LanguageBreakEngine;
    .locals 9
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 1068
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    #@6
    move-result-object v6

    #@7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "candidate$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/icu/text/LanguageBreakEngine;

    #@17
    .line 1069
    .local v0, "candidate":Landroid/icu/text/LanguageBreakEngine;
    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    #@19
    invoke-interface {v0, p1, v6}, Landroid/icu/text/LanguageBreakEngine;->handles(II)Z

    #@1c
    move-result v6

    #@1d
    if-eqz v6, :cond_0

    #@1f
    .line 1070
    return-object v0

    #@20
    .line 1075
    .end local v0    # "candidate":Landroid/icu/text/LanguageBreakEngine;
    :cond_1
    const/16 v6, 0x100a

    #@22
    invoke-static {p1, v6}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@25
    move-result v5

    #@26
    .line 1076
    .local v5, "script":I
    const/16 v6, 0x16

    #@28
    if-eq v5, v6, :cond_2

    #@2a
    const/16 v6, 0x14

    #@2c
    if-ne v5, v6, :cond_3

    #@2e
    .line 1079
    :cond_2
    const/16 v5, 0x11

    #@30
    .line 1082
    :cond_3
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    #@32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Landroid/icu/text/LanguageBreakEngine;

    #@3c
    .line 1089
    .local v3, "eng":Landroid/icu/text/LanguageBreakEngine;
    sparse-switch v5, :sswitch_data_0

    #@3f
    .line 1120
    :try_start_0
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@41
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    #@44
    move-result v7

    #@45
    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    #@48
    .line 1121
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 1129
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    :goto_0
    if-eqz v3, :cond_4

    #@4c
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@4e
    if-eq v3, v6, :cond_4

    #@50
    .line 1130
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakEngines:Ljava/util/concurrent/ConcurrentHashMap;

    #@52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v6, v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    move-result-object v4

    #@5a
    check-cast v4, Landroid/icu/text/LanguageBreakEngine;

    #@5c
    .line 1131
    .local v4, "existingEngine":Landroid/icu/text/LanguageBreakEngine;
    if-eqz v4, :cond_4

    #@5e
    .line 1134
    move-object v3, v4

    #@5f
    .line 1138
    .end local v4    # "existingEngine":Landroid/icu/text/LanguageBreakEngine;
    :cond_4
    return-object v3

    #@60
    .line 1091
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    :sswitch_0
    :try_start_1
    new-instance v3, Landroid/icu/text/ThaiBreakEngine;

    #@62
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    invoke-direct {v3}, Landroid/icu/text/ThaiBreakEngine;-><init>()V

    #@65
    .line 1092
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@66
    .line 1094
    :sswitch_1
    new-instance v3, Landroid/icu/text/LaoBreakEngine;

    #@68
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    invoke-direct {v3}, Landroid/icu/text/LaoBreakEngine;-><init>()V

    #@6b
    .line 1095
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@6c
    .line 1097
    :sswitch_2
    new-instance v3, Landroid/icu/text/BurmeseBreakEngine;

    #@6e
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    invoke-direct {v3}, Landroid/icu/text/BurmeseBreakEngine;-><init>()V

    #@71
    .line 1098
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@72
    .line 1100
    :sswitch_3
    new-instance v3, Landroid/icu/text/KhmerBreakEngine;

    #@74
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    invoke-direct {v3}, Landroid/icu/text/KhmerBreakEngine;-><init>()V

    #@77
    .line 1101
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@78
    .line 1103
    :sswitch_4
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    #@7b
    move-result v6

    #@7c
    if-ne v6, v8, :cond_5

    #@7e
    .line 1104
    new-instance v3, Landroid/icu/text/CjkBreakEngine;

    #@80
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    const/4 v6, 0x0

    #@81
    invoke-direct {v3, v6}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    #@84
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@85
    .line 1107
    :cond_5
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@87
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    #@8a
    move-result v7

    #@8b
    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    #@8e
    .line 1108
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@90
    goto :goto_0

    #@91
    .line 1112
    :sswitch_5
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    #@94
    move-result v6

    #@95
    if-ne v6, v8, :cond_6

    #@97
    .line 1113
    new-instance v3, Landroid/icu/text/CjkBreakEngine;

    #@99
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    const/4 v6, 0x1

    #@9a
    invoke-direct {v3, v6}, Landroid/icu/text/CjkBreakEngine;-><init>(Z)V

    #@9d
    .restart local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@9e
    .line 1115
    :cond_6
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;

    #@a0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getBreakType()I

    #@a3
    move-result v7

    #@a4
    invoke-virtual {v6, p1, v7}, Landroid/icu/text/UnhandledBreakEngine;->handleChar(II)V

    #@a7
    .line 1116
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fUnhandledBreakEngine:Landroid/icu/text/UnhandledBreakEngine;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@a9
    goto :goto_0

    #@aa
    .line 1124
    .end local v3    # "eng":Landroid/icu/text/LanguageBreakEngine;
    :catch_0
    move-exception v2

    #@ab
    .line 1125
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    #@ac
    .local v3, "eng":Landroid/icu/text/LanguageBreakEngine;
    goto :goto_0

    #@ad
    .line 1089
    nop

    #@ae
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x17 -> :sswitch_3
        0x18 -> :sswitch_1
        0x1c -> :sswitch_2
        0x26 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleNext([S)I
    .locals 18
    .param p1, "stateTable"    # [S

    #@0
    .prologue
    .line 1159
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@2
    if-eqz v14, :cond_0

    #@4
    .line 1160
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    const-string/jumbo v15, "Handle Next   pos      char  state category"

    #@9
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@c
    .line 1164
    :cond_0
    const/4 v14, 0x1

    #@d
    move-object/from16 v0, p0

    #@f
    iput-boolean v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@11
    .line 1165
    const/4 v14, 0x0

    #@12
    move-object/from16 v0, p0

    #@14
    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@16
    .line 1168
    move-object/from16 v0, p0

    #@18
    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1a
    .line 1169
    .local v12, "text":Ljava/text/CharacterIterator;
    move-object/from16 v0, p0

    #@1c
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@1e
    iget-object v13, v14, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@20
    .line 1172
    .local v13, "trie":Landroid/icu/impl/CharTrie;
    invoke-interface {v12}, Ljava/text/CharacterIterator;->current()C

    #@23
    move-result v1

    #@24
    .line 1173
    .local v1, "c":I
    const v14, 0xd800

    #@27
    if-lt v1, v14, :cond_1

    #@29
    .line 1174
    invoke-static {v12, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    #@2c
    move-result v1

    #@2d
    .line 1175
    const v14, 0x7fffffff

    #@30
    if-ne v1, v14, :cond_1

    #@32
    .line 1176
    const/4 v14, -0x1

    #@33
    return v14

    #@34
    .line 1179
    :cond_1
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@37
    move-result v4

    #@38
    .line 1180
    .local v4, "initialPosition":I
    move v9, v4

    #@39
    .line 1183
    .local v9, "result":I
    const/4 v11, 0x1

    #@3a
    .line 1184
    .local v11, "state":I
    move-object/from16 v0, p0

    #@3c
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@3e
    invoke-virtual {v14, v11}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@41
    move-result v10

    #@42
    .line 1185
    .local v10, "row":I
    const/4 v2, 0x3

    #@43
    .line 1186
    .local v2, "category":S
    move-object/from16 v0, p0

    #@45
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@47
    move-object/from16 v0, p1

    #@49
    invoke-virtual {v14, v0}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    #@4c
    move-result v3

    #@4d
    .line 1187
    .local v3, "flagsState":I
    const/4 v8, 0x1

    #@4e
    .line 1188
    .local v8, "mode":I
    and-int/lit8 v14, v3, 0x2

    #@50
    if-eqz v14, :cond_2

    #@52
    .line 1189
    const/4 v2, 0x2

    #@53
    .line 1190
    const/4 v8, 0x0

    #@54
    .line 1191
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@56
    if-eqz v14, :cond_2

    #@58
    .line 1192
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5a
    new-instance v15, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v16, "            "

    #@62
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@69
    move-result v16

    #@6a
    const/16 v17, 0x5

    #@6c
    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@6f
    move-result-object v16

    #@70
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v15

    #@74
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v15

    #@78
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7b
    .line 1193
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7d
    const/16 v15, 0xa

    #@7f
    invoke-static {v1, v15}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    #@82
    move-result-object v15

    #@83
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@86
    .line 1194
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@88
    new-instance v15, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const/16 v16, 0x7

    #@8f
    move/from16 v0, v16

    #@91
    invoke-static {v11, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@94
    move-result-object v16

    #@95
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v15

    #@99
    const/16 v16, 0x2

    #@9b
    const/16 v17, 0x6

    #@9d
    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@a0
    move-result-object v16

    #@a1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v15

    #@a9
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ac
    .line 1197
    :cond_2
    const/4 v6, 0x0

    #@ad
    .line 1198
    .local v6, "lookaheadStatus":I
    const/4 v7, 0x0

    #@ae
    .line 1199
    .local v7, "lookaheadTagIdx":I
    const/4 v5, 0x0

    #@af
    .line 1202
    .end local v2    # "category":S
    .local v5, "lookaheadResult":I
    :cond_3
    :goto_0
    if-eqz v11, :cond_4

    #@b1
    .line 1203
    const v14, 0x7fffffff

    #@b4
    if-ne v1, v14, :cond_b

    #@b6
    .line 1205
    const/4 v14, 0x2

    #@b7
    if-ne v8, v14, :cond_7

    #@b9
    .line 1210
    if-le v5, v9, :cond_4

    #@bb
    .line 1216
    move v9, v5

    #@bc
    .line 1217
    move-object/from16 v0, p0

    #@be
    iput v7, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@c0
    .line 1324
    :cond_4
    if-ne v9, v4, :cond_12

    #@c2
    .line 1325
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@c4
    if-eqz v14, :cond_5

    #@c6
    .line 1326
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c8
    const-string/jumbo v15, "Iterator did not move. Advancing by 1."

    #@cb
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ce
    .line 1328
    :cond_5
    invoke-interface {v12, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@d1
    .line 1329
    invoke-static {v12}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@d4
    .line 1330
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@d7
    move-result v9

    #@d8
    .line 1338
    :goto_1
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@da
    if-eqz v14, :cond_6

    #@dc
    .line 1339
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@de
    new-instance v15, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v16, "result = "

    #@e6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v15

    #@ea
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v15

    #@ee
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v15

    #@f2
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f5
    .line 1341
    :cond_6
    return v9

    #@f6
    .line 1222
    :cond_7
    const/4 v8, 0x2

    #@f7
    .line 1223
    const/4 v2, 0x1

    #@f8
    .line 1266
    :cond_8
    :goto_2
    add-int/lit8 v14, v10, 0x4

    #@fa
    add-int/2addr v14, v2

    #@fb
    aget-short v11, p1, v14

    #@fd
    .line 1267
    move-object/from16 v0, p0

    #@ff
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@101
    invoke-virtual {v14, v11}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@104
    move-result v10

    #@105
    .line 1269
    add-int/lit8 v14, v10, 0x0

    #@107
    aget-short v14, p1, v14

    #@109
    const/4 v15, -0x1

    #@10a
    if-ne v14, v15, :cond_a

    #@10c
    .line 1271
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@10f
    move-result v9

    #@110
    .line 1272
    const/high16 v14, 0x10000

    #@112
    if-lt v1, v14, :cond_9

    #@114
    const v14, 0x10ffff

    #@117
    if-gt v1, v14, :cond_9

    #@119
    .line 1275
    add-int/lit8 v9, v9, -0x1

    #@11b
    .line 1279
    :cond_9
    add-int/lit8 v14, v10, 0x2

    #@11d
    aget-short v14, p1, v14

    #@11f
    move-object/from16 v0, p0

    #@121
    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@123
    .line 1282
    :cond_a
    add-int/lit8 v14, v10, 0x1

    #@125
    aget-short v14, p1, v14

    #@127
    if-eqz v14, :cond_11

    #@129
    .line 1283
    if-eqz v6, :cond_f

    #@12b
    .line 1284
    add-int/lit8 v14, v10, 0x0

    #@12d
    aget-short v14, p1, v14

    #@12f
    if-ne v14, v6, :cond_f

    #@131
    .line 1287
    move v9, v5

    #@132
    .line 1288
    move-object/from16 v0, p0

    #@134
    iput v7, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@136
    .line 1289
    const/4 v6, 0x0

    #@137
    .line 1291
    and-int/lit8 v14, v3, 0x1

    #@139
    if-eqz v14, :cond_3

    #@13b
    .line 1292
    invoke-interface {v12, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@13e
    .line 1293
    return v9

    #@13f
    .line 1225
    :cond_b
    const/4 v14, 0x1

    #@140
    if-ne v8, v14, :cond_e

    #@142
    .line 1234
    invoke-virtual {v13, v1}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@145
    move-result v14

    #@146
    int-to-short v2, v14

    #@147
    .line 1241
    .local v2, "category":S
    and-int/lit16 v14, v2, 0x4000

    #@149
    if-eqz v14, :cond_c

    #@14b
    .line 1242
    move-object/from16 v0, p0

    #@14d
    iget v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@14f
    add-int/lit8 v14, v14, 0x1

    #@151
    move-object/from16 v0, p0

    #@153
    iput v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@155
    .line 1244
    and-int/lit16 v14, v2, -0x4001

    #@157
    int-to-short v2, v14

    #@158
    .line 1247
    :cond_c
    sget-boolean v14, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@15a
    if-eqz v14, :cond_d

    #@15c
    .line 1248
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@15e
    new-instance v15, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v16, "            "

    #@166
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v15

    #@16a
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@16d
    move-result v16

    #@16e
    const/16 v17, 0x5

    #@170
    invoke-static/range {v16 .. v17}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@173
    move-result-object v16

    #@174
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v15

    #@178
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17b
    move-result-object v15

    #@17c
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17f
    .line 1249
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@181
    const/16 v15, 0xa

    #@183
    invoke-static {v1, v15}, Landroid/icu/text/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    #@186
    move-result-object v15

    #@187
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@18a
    .line 1250
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@18c
    new-instance v15, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const/16 v16, 0x7

    #@193
    move/from16 v0, v16

    #@195
    invoke-static {v11, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@198
    move-result-object v16

    #@199
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19c
    move-result-object v15

    #@19d
    const/16 v16, 0x6

    #@19f
    move/from16 v0, v16

    #@1a1
    invoke-static {v2, v0}, Landroid/icu/text/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    #@1a4
    move-result-object v16

    #@1a5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v15

    #@1a9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v15

    #@1ad
    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b0
    .line 1256
    :cond_d
    invoke-interface {v12}, Ljava/text/CharacterIterator;->next()C

    #@1b3
    move-result v1

    #@1b4
    .line 1257
    const v14, 0xd800

    #@1b7
    if-lt v1, v14, :cond_8

    #@1b9
    .line 1258
    invoke-static {v12, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    #@1bc
    move-result v1

    #@1bd
    goto/16 :goto_2

    #@1bf
    .line 1262
    .end local v2    # "category":S
    :cond_e
    const/4 v8, 0x1

    #@1c0
    goto/16 :goto_2

    #@1c2
    .line 1300
    :cond_f
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@1c5
    move-result v5

    #@1c6
    .line 1301
    const/high16 v14, 0x10000

    #@1c8
    if-lt v1, v14, :cond_10

    #@1ca
    const v14, 0x10ffff

    #@1cd
    if-gt v1, v14, :cond_10

    #@1cf
    .line 1304
    add-int/lit8 v5, v5, -0x1

    #@1d1
    .line 1306
    :cond_10
    add-int/lit8 v14, v10, 0x1

    #@1d3
    aget-short v6, p1, v14

    #@1d5
    .line 1307
    add-int/lit8 v14, v10, 0x2

    #@1d7
    aget-short v7, p1, v14

    #@1d9
    .line 1308
    goto/16 :goto_0

    #@1db
    .line 1311
    :cond_11
    add-int/lit8 v14, v10, 0x0

    #@1dd
    aget-short v14, p1, v14

    #@1df
    if-eqz v14, :cond_3

    #@1e1
    .line 1314
    const/4 v6, 0x0

    #@1e2
    goto/16 :goto_0

    #@1e4
    .line 1336
    :cond_12
    invoke-interface {v12, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1e7
    goto/16 :goto_1
.end method

.method private handlePrevious([S)I
    .locals 14
    .param p1, "stateTable"    # [S

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1345
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@4
    if-eqz v10, :cond_0

    #@6
    if-nez p1, :cond_1

    #@8
    .line 1346
    :cond_0
    return v11

    #@9
    .line 1350
    :cond_1
    const/4 v1, 0x0

    #@a
    .line 1354
    .local v1, "category":I
    const/4 v5, 0x0

    #@b
    .line 1355
    .local v5, "lookaheadStatus":I
    const/4 v7, 0x0

    #@c
    .line 1356
    .local v7, "result":I
    const/4 v2, 0x0

    #@d
    .line 1357
    .local v2, "initialPosition":I
    const/4 v4, 0x0

    #@e
    .line 1359
    .local v4, "lookaheadResult":I
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@10
    invoke-virtual {v10, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    #@13
    move-result v10

    #@14
    and-int/lit8 v10, v10, 0x1

    #@16
    if-eqz v10, :cond_8

    #@18
    const/4 v3, 0x1

    #@19
    .line 1365
    .local v3, "lookAheadHardBreak":Z
    :goto_0
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@1b
    .line 1366
    iput v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@1d
    .line 1369
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1f
    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    #@22
    move-result v2

    #@23
    .line 1370
    move v7, v2

    #@24
    .line 1371
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@26
    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@29
    move-result v0

    #@2a
    .line 1374
    .local v0, "c":I
    const/4 v9, 0x1

    #@2b
    .line 1375
    .local v9, "state":I
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@2d
    invoke-virtual {v10, v9}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@30
    move-result v8

    #@31
    .line 1376
    .local v8, "row":I
    const/4 v1, 0x3

    #@32
    .line 1377
    const/4 v6, 0x1

    #@33
    .line 1378
    .local v6, "mode":I
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@35
    invoke-virtual {v10, p1}, Landroid/icu/text/RBBIDataWrapper;->getStateTableFlags([S)I

    #@38
    move-result v10

    #@39
    and-int/lit8 v10, v10, 0x2

    #@3b
    if-eqz v10, :cond_2

    #@3d
    .line 1379
    const/4 v1, 0x2

    #@3e
    .line 1380
    const/4 v6, 0x0

    #@3f
    .line 1383
    :cond_2
    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@41
    if-eqz v10, :cond_3

    #@43
    .line 1384
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@45
    const-string/jumbo v11, "Handle Prev   pos   char  state category "

    #@48
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 1391
    :cond_3
    :goto_1
    const v10, 0x7fffffff

    #@4e
    if-ne v0, v10, :cond_b

    #@50
    .line 1393
    const/4 v10, 0x2

    #@51
    if-eq v6, v10, :cond_4

    #@53
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@55
    iget-object v10, v10, Landroid/icu/text/RBBIDataWrapper;->fHeader:Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;

    #@57
    iget v10, v10, Landroid/icu/text/RBBIDataWrapper$RBBIDataHeader;->fVersion:I

    #@59
    if-ne v10, v13, :cond_a

    #@5b
    .line 1398
    :cond_4
    if-ge v4, v7, :cond_9

    #@5d
    .line 1402
    move v7, v4

    #@5e
    .line 1403
    const/4 v5, 0x0

    #@5f
    .line 1523
    :cond_5
    :goto_2
    if-ne v7, v2, :cond_6

    #@61
    .line 1524
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@63
    invoke-interface {v10, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@66
    move-result v7

    #@67
    .line 1525
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@69
    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@6c
    .line 1526
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@6e
    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    #@71
    move-result v7

    #@72
    .line 1529
    :cond_6
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@74
    invoke-interface {v10, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@77
    .line 1530
    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@79
    if-eqz v10, :cond_7

    #@7b
    .line 1531
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7d
    new-instance v11, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v12, "Result = "

    #@85
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v11

    #@89
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v11

    #@8d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v11

    #@91
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@94
    .line 1534
    :cond_7
    return v7

    #@95
    .line 1359
    .end local v0    # "c":I
    .end local v3    # "lookAheadHardBreak":Z
    .end local v6    # "mode":I
    .end local v8    # "row":I
    .end local v9    # "state":I
    :cond_8
    const/4 v3, 0x0

    #@96
    .restart local v3    # "lookAheadHardBreak":Z
    goto :goto_0

    #@97
    .line 1404
    .restart local v0    # "c":I
    .restart local v6    # "mode":I
    .restart local v8    # "row":I
    .restart local v9    # "state":I
    :cond_9
    if-ne v7, v2, :cond_5

    #@99
    .line 1407
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@9b
    invoke-interface {v10, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@9e
    .line 1408
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@a0
    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@a3
    goto :goto_2

    #@a4
    .line 1412
    :cond_a
    const/4 v6, 0x2

    #@a5
    .line 1413
    const/4 v1, 0x1

    #@a6
    .line 1416
    :cond_b
    if-ne v6, v13, :cond_c

    #@a8
    .line 1420
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@aa
    iget-object v10, v10, Landroid/icu/text/RBBIDataWrapper;->fTrie:Landroid/icu/impl/CharTrie;

    #@ac
    invoke-virtual {v10, v0}, Landroid/icu/impl/CharTrie;->getCodePointValue(I)C

    #@af
    move-result v10

    #@b0
    int-to-short v1, v10

    #@b1
    .line 1427
    and-int/lit16 v10, v1, 0x4000

    #@b3
    if-eqz v10, :cond_c

    #@b5
    .line 1428
    iget v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@b7
    add-int/lit8 v10, v10, 0x1

    #@b9
    iput v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@bb
    .line 1430
    and-int/lit16 v1, v1, -0x4001

    #@bd
    .line 1435
    :cond_c
    sget-boolean v10, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    #@bf
    if-eqz v10, :cond_d

    #@c1
    .line 1436
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c3
    new-instance v11, Ljava/lang/StringBuilder;

    #@c5
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@c8
    const-string/jumbo v12, "             "

    #@cb
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v11

    #@cf
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@d1
    invoke-interface {v12}, Ljava/text/CharacterIterator;->getIndex()I

    #@d4
    move-result v12

    #@d5
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v11

    #@d9
    const-string/jumbo v12, "   "

    #@dc
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v11

    #@e0
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v11

    #@e4
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@e7
    .line 1437
    const/16 v10, 0x20

    #@e9
    if-gt v10, v0, :cond_10

    #@eb
    const/16 v10, 0x7f

    #@ed
    if-ge v0, v10, :cond_10

    #@ef
    .line 1438
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@f1
    new-instance v11, Ljava/lang/StringBuilder;

    #@f3
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@f6
    const-string/jumbo v12, "  "

    #@f9
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v11

    #@fd
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@100
    move-result-object v11

    #@101
    const-string/jumbo v12, "  "

    #@104
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v11

    #@108
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v11

    #@10c
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@10f
    .line 1442
    :goto_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@111
    new-instance v11, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    const-string/jumbo v12, " "

    #@119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v11

    #@11d
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v11

    #@121
    const-string/jumbo v12, "  "

    #@124
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v11

    #@128
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v11

    #@12c
    const-string/jumbo v12, " "

    #@12f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v11

    #@133
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v11

    #@137
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@13a
    .line 1447
    :cond_d
    add-int/lit8 v10, v8, 0x4

    #@13c
    add-int/2addr v10, v1

    #@13d
    aget-short v9, p1, v10

    #@13f
    .line 1448
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@141
    invoke-virtual {v10, v9}, Landroid/icu/text/RBBIDataWrapper;->getRowIndex(I)I

    #@144
    move-result v8

    #@145
    .line 1450
    add-int/lit8 v10, v8, 0x0

    #@147
    aget-short v10, p1, v10

    #@149
    const/4 v11, -0x1

    #@14a
    if-ne v10, v11, :cond_e

    #@14c
    .line 1453
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@14e
    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    #@151
    move-result v7

    #@152
    .line 1456
    :cond_e
    add-int/lit8 v10, v8, 0x1

    #@154
    aget-short v10, p1, v10

    #@156
    if-eqz v10, :cond_12

    #@158
    .line 1457
    if-eqz v5, :cond_11

    #@15a
    .line 1458
    add-int/lit8 v10, v8, 0x0

    #@15c
    aget-short v10, p1, v10

    #@15e
    if-ne v10, v5, :cond_11

    #@160
    .line 1463
    move v7, v4

    #@161
    .line 1464
    const/4 v5, 0x0

    #@162
    .line 1467
    if-nez v3, :cond_5

    #@164
    .line 1500
    :cond_f
    :goto_4
    if-eqz v9, :cond_5

    #@166
    .line 1507
    if-ne v6, v13, :cond_13

    #@168
    .line 1508
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@16a
    invoke-static {v10}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@16d
    move-result v0

    #@16e
    goto/16 :goto_1

    #@170
    .line 1440
    :cond_10
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@172
    new-instance v11, Ljava/lang/StringBuilder;

    #@174
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@177
    const-string/jumbo v12, " "

    #@17a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v11

    #@17e
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@181
    move-result-object v12

    #@182
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v11

    #@186
    const-string/jumbo v12, " "

    #@189
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v11

    #@18d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@190
    move-result-object v11

    #@191
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@194
    goto/16 :goto_3

    #@196
    .line 1477
    :cond_11
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@198
    invoke-interface {v10}, Ljava/text/CharacterIterator;->getIndex()I

    #@19b
    move-result v4

    #@19c
    .line 1478
    add-int/lit8 v10, v8, 0x1

    #@19e
    aget-short v5, p1, v10

    #@1a0
    .line 1479
    goto :goto_4

    #@1a1
    .line 1483
    :cond_12
    add-int/lit8 v10, v8, 0x0

    #@1a3
    aget-short v10, p1, v10

    #@1a5
    if-eqz v10, :cond_f

    #@1a7
    .line 1485
    if-nez v3, :cond_f

    #@1a9
    .line 1493
    const/4 v5, 0x0

    #@1aa
    goto :goto_4

    #@1ab
    .line 1510
    :cond_13
    if-nez v6, :cond_3

    #@1ad
    .line 1511
    const/4 v6, 0x1

    #@1ae
    goto/16 :goto_1
.end method

.method private makeRuleStatusValid()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 928
    iget-boolean v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@4
    if-nez v3, :cond_2

    #@6
    .line 930
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@9
    move-result v0

    #@a
    .line 931
    .local v0, "curr":I
    const/4 v3, -0x1

    #@b
    if-eq v0, v3, :cond_0

    #@d
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@f
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@12
    move-result v3

    #@13
    if-ne v0, v3, :cond_3

    #@15
    .line 933
    :cond_0
    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@17
    .line 934
    iput-boolean v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@19
    .line 945
    :goto_0
    iget-boolean v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@1b
    if-eqz v3, :cond_6

    #@1d
    move v3, v4

    #@1e
    :goto_1
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@21
    .line 946
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@23
    if-ltz v3, :cond_1

    #@25
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@27
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@29
    iget-object v6, v6, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@2b
    array-length v6, v6

    #@2c
    if-ge v3, v6, :cond_1

    #@2e
    move v5, v4

    #@2f
    :cond_1
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@32
    .line 927
    .end local v0    # "curr":I
    :cond_2
    return-void

    #@33
    .line 937
    .restart local v0    # "curr":I
    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@35
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    #@38
    move-result v1

    #@39
    .line 938
    .local v1, "pa":I
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    #@3c
    .line 939
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@3f
    move-result v2

    #@40
    .line 940
    .local v2, "pb":I
    :goto_2
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@42
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getIndex()I

    #@45
    move-result v3

    #@46
    if-ge v3, v1, :cond_4

    #@48
    .line 941
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@4b
    move-result v2

    #@4c
    goto :goto_2

    #@4d
    .line 943
    :cond_4
    if-ne v1, v2, :cond_5

    #@4f
    move v3, v4

    #@50
    :goto_3
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@53
    goto :goto_0

    #@54
    :cond_5
    move v3, v5

    #@55
    goto :goto_3

    #@56
    .end local v1    # "pa":I
    .end local v2    # "pb":I
    :cond_6
    move v3, v5

    #@57
    .line 945
    goto :goto_1
.end method

.method private reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 277
    const/4 v0, 0x0

    #@2
    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@4
    .line 279
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@6
    .line 280
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@8
    .line 276
    return-void
.end method

.method private rulesFollowing(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 701
    const/4 v2, 0x0

    #@1
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@3
    .line 702
    const/4 v2, 0x1

    #@4
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@6
    .line 703
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@c
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@f
    move-result v2

    #@10
    if-lt p1, v2, :cond_1

    #@12
    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    #@15
    .line 705
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 707
    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1c
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@1f
    move-result v2

    #@20
    if-ge p1, v2, :cond_2

    #@22
    .line 708
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    #@25
    move-result v2

    #@26
    return v2

    #@27
    .line 715
    :cond_2
    const/4 v1, 0x0

    #@28
    .line 717
    .local v1, "result":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@2a
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@2c
    if-eqz v2, :cond_4

    #@2e
    .line 720
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@30
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@33
    .line 724
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@35
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@38
    .line 726
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@3a
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@3c
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    #@3f
    .line 727
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@42
    move-result v1

    #@43
    .line 728
    :goto_0
    if-gt v1, p1, :cond_3

    #@45
    .line 729
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@48
    move-result v1

    #@49
    goto :goto_0

    #@4a
    .line 731
    :cond_3
    return v1

    #@4b
    .line 733
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@4d
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@4f
    if-eqz v2, :cond_8

    #@51
    .line 736
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@53
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@56
    .line 737
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@58
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@5b
    .line 739
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@5d
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@5f
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    #@62
    .line 743
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@65
    move-result v0

    #@66
    .line 744
    .local v0, "oldresult":I
    :goto_1
    if-le v0, p1, :cond_6

    #@68
    .line 745
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@6b
    move-result v1

    #@6c
    .line 746
    if-gt v1, p1, :cond_5

    #@6e
    .line 747
    return v0

    #@6f
    .line 749
    :cond_5
    move v0, v1

    #@70
    goto :goto_1

    #@71
    .line 751
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@74
    move-result v1

    #@75
    .line 752
    if-gt v1, p1, :cond_7

    #@77
    .line 753
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@7a
    move-result v2

    #@7b
    return v2

    #@7c
    .line 755
    :cond_7
    return v1

    #@7d
    .line 766
    .end local v0    # "oldresult":I
    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@7f
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@82
    .line 767
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@84
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@87
    move-result v2

    #@88
    if-ne p1, v2, :cond_9

    #@8a
    .line 768
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@8d
    move-result v2

    #@8e
    return v2

    #@8f
    .line 770
    :cond_9
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@92
    move-result v1

    #@93
    .line 772
    :goto_2
    const/4 v2, -0x1

    #@94
    if-eq v1, v2, :cond_a

    #@96
    if-gt v1, p1, :cond_a

    #@98
    .line 773
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@9b
    move-result v1

    #@9c
    goto :goto_2

    #@9d
    .line 776
    :cond_a
    return v1
.end method

.method private rulesPreceding(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 816
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@6
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@9
    move-result v2

    #@a
    if-le p1, v2, :cond_1

    #@c
    .line 818
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 820
    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@13
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@16
    move-result v2

    #@17
    if-ge p1, v2, :cond_2

    #@19
    .line 821
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    #@1c
    move-result v2

    #@1d
    return v2

    #@1e
    .line 829
    :cond_2
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@20
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@22
    if-eqz v2, :cond_4

    #@24
    .line 832
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@26
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@29
    .line 836
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2b
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@2e
    .line 837
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@30
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@32
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    #@35
    .line 838
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@38
    move-result v1

    #@39
    .line 839
    .local v1, "result":I
    :goto_0
    if-lt v1, p1, :cond_3

    #@3b
    .line 840
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@3e
    move-result v1

    #@3f
    goto :goto_0

    #@40
    .line 842
    :cond_3
    return v1

    #@41
    .line 844
    .end local v1    # "result":I
    :cond_4
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@43
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@45
    if-eqz v2, :cond_8

    #@47
    .line 846
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@49
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@4c
    .line 847
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@4e
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@51
    .line 849
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@53
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@55
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    #@58
    .line 854
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@5b
    move-result v0

    #@5c
    .line 855
    .local v0, "oldresult":I
    :goto_1
    if-ge v0, p1, :cond_6

    #@5e
    .line 856
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@61
    move-result v1

    #@62
    .line 857
    .restart local v1    # "result":I
    if-lt v1, p1, :cond_5

    #@64
    .line 858
    return v0

    #@65
    .line 860
    :cond_5
    move v0, v1

    #@66
    goto :goto_1

    #@67
    .line 862
    .end local v1    # "result":I
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@6a
    move-result v1

    #@6b
    .line 863
    .restart local v1    # "result":I
    if-lt v1, p1, :cond_7

    #@6d
    .line 864
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@70
    move-result v2

    #@71
    return v2

    #@72
    .line 866
    :cond_7
    return v1

    #@73
    .line 870
    .end local v0    # "oldresult":I
    .end local v1    # "result":I
    :cond_8
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@75
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@78
    .line 871
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@7b
    move-result v2

    #@7c
    return v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 128
    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    #@6
    .line 129
    .local v0, "result":Landroid/icu/text/RuleBasedBreakIterator;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 130
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@c
    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/text/CharacterIterator;

    #@12
    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@14
    .line 132
    :cond_0
    return-object v0
.end method

.method public current()I
    .locals 1

    #@0
    .prologue
    .line 924
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@6
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, -0x1

    #@c
    goto :goto_0
.end method

.method public dump()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/RBBIDataWrapper;->dump()V

    #@5
    .line 290
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 140
    if-nez p1, :cond_0

    #@4
    .line 141
    return v5

    #@5
    .line 143
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 144
    return v6

    #@8
    .line 147
    :cond_1
    :try_start_0
    move-object v0, p1

    #@9
    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    #@b
    move-object v2, v0

    #@c
    .line 148
    .local v2, "other":Landroid/icu/text/RuleBasedBreakIterator;
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@e
    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@10
    if-eq v3, v4, :cond_3

    #@12
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@14
    if-eqz v3, :cond_2

    #@16
    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@18
    if-nez v3, :cond_3

    #@1a
    .line 149
    :cond_2
    return v5

    #@1b
    .line 151
    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@1d
    if-eqz v3, :cond_4

    #@1f
    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@21
    if-eqz v3, :cond_4

    #@23
    .line 152
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@25
    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@27
    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@29
    iget-object v4, v4, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_5

    #@31
    .line 155
    :cond_4
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@33
    if-nez v3, :cond_6

    #@35
    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@37
    if-nez v3, :cond_6

    #@39
    .line 156
    return v6

    #@3a
    .line 153
    :cond_5
    return v5

    #@3b
    .line 158
    :cond_6
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@3d
    if-eqz v3, :cond_7

    #@3f
    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@41
    if-nez v3, :cond_8

    #@43
    .line 159
    :cond_7
    return v5

    #@44
    .line 161
    :cond_8
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@46
    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result v3

    #@4c
    return v3

    #@4d
    .line 163
    .end local v2    # "other":Landroid/icu/text/RuleBasedBreakIterator;
    :catch_0
    move-exception v1

    #@4e
    .line 164
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public first()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 322
    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@4
    .line 323
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@6
    .line 324
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@8
    .line 325
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@a
    .line 326
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@d
    .line 327
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@f
    if-nez v0, :cond_0

    #@11
    .line 328
    const/4 v0, -0x1

    #@12
    return v0

    #@13
    .line 330
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@15
    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    #@18
    .line 331
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1a
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public following(I)I
    .locals 5
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 672
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    #@5
    move-result-object v0

    #@6
    .line 678
    .local v0, "text":Ljava/text/CharacterIterator;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@c
    aget v1, v1, v3

    #@e
    if-ge p1, v1, :cond_1

    #@10
    .line 680
    :cond_0
    iput-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@12
    .line 681
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->rulesFollowing(I)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 679
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@19
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@1b
    array-length v2, v2

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    aget v1, v1, v2

    #@20
    if-ge p1, v1, :cond_0

    #@22
    .line 688
    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@24
    .line 689
    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@26
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@28
    array-length v2, v2

    #@29
    if-ge v1, v2, :cond_2

    #@2b
    .line 690
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@2d
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@2f
    aget v1, v1, v2

    #@31
    if-lt p1, v1, :cond_2

    #@33
    .line 691
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@39
    goto :goto_0

    #@3a
    .line 692
    :cond_2
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@3c
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@3e
    aget v1, v1, v2

    #@40
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@43
    .line 693
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@46
    move-result v1

    #@47
    return v1
.end method

.method getBreakType()I
    .locals 1

    #@0
    .prologue
    .line 1053
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    #@2
    return v0
.end method

.method public getRuleStatus()I
    .locals 5

    #@0
    .prologue
    .line 973
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->makeRuleStatusValid()V

    #@3
    .line 982
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@5
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@7
    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@9
    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@b
    aget v3, v3, v4

    #@d
    add-int v0, v2, v3

    #@f
    .line 983
    .local v0, "idx":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@11
    iget-object v2, v2, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@13
    aget v1, v2, v0

    #@15
    .line 984
    .local v1, "tagVal":I
    return v1
.end method

.method public getRuleStatusVec([I)I
    .locals 5
    .param p1, "fillInArray"    # [I

    #@0
    .prologue
    .line 1009
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->makeRuleStatusValid()V

    #@3
    .line 1010
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@5
    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@7
    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@9
    aget v1, v3, v4

    #@b
    .line 1011
    .local v1, "numStatusVals":I
    if-eqz p1, :cond_0

    #@d
    .line 1012
    array-length v3, p1

    #@e
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    #@11
    move-result v2

    #@12
    .line 1013
    .local v2, "numToCopy":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@15
    .line 1014
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@17
    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fStatusTable:[I

    #@19
    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@1b
    add-int/2addr v4, v0

    #@1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    aget v3, v3, v4

    #@20
    aput v3, p1, v0

    #@22
    .line 1013
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 1017
    .end local v0    # "i":I
    .end local v2    # "numToCopy":I
    :cond_0
    return v1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 1028
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@2
    iget-object v0, v0, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isBoundary(I)Z
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 892
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@3
    invoke-static {p1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->checkOffset(ILjava/text/CharacterIterator;)V

    #@6
    .line 895
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@b
    move-result v2

    #@c
    if-ne p1, v2, :cond_0

    #@e
    .line 896
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    #@11
    .line 897
    return v1

    #@12
    .line 900
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@14
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@17
    move-result v2

    #@18
    if-ne p1, v2, :cond_1

    #@1a
    .line 901
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    #@1d
    .line 902
    return v1

    #@1e
    .line 912
    :cond_1
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@20
    invoke-interface {v2, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@23
    .line 913
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@25
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@28
    .line 914
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2a
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@2d
    move-result v0

    #@2e
    .line 915
    .local v0, "pos":I
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->following(I)I

    #@31
    move-result v2

    #@32
    if-ne v2, p1, :cond_2

    #@34
    .line 916
    .local v1, "result":Z
    :goto_0
    return v1

    #@35
    .line 915
    .end local v1    # "result":Z
    :cond_2
    const/4 v1, 0x0

    #@36
    goto :goto_0
.end method

.method public last()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 340
    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@4
    .line 341
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@6
    .line 342
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@8
    .line 344
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 345
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@e
    .line 346
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@11
    .line 347
    const/4 v1, -0x1

    #@12
    return v1

    #@13
    .line 354
    :cond_0
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@15
    .line 355
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@17
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@1a
    move-result v0

    #@1b
    .line 356
    .local v0, "pos":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1d
    invoke-interface {v1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@20
    .line 357
    return v0
.end method

.method public next()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 389
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 390
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@7
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@9
    array-length v4, v4

    #@a
    add-int/lit8 v4, v4, -0x1

    #@c
    if-ge v3, v4, :cond_0

    #@e
    .line 391
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@10
    add-int/lit8 v3, v3, 0x1

    #@12
    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@14
    .line 392
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@16
    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@18
    aget v0, v3, v4

    #@1a
    .line 393
    .local v0, "pos":I
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@1c
    invoke-interface {v3, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1f
    .line 394
    return v0

    #@20
    .line 397
    .end local v0    # "pos":I
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    #@23
    .line 401
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@26
    move-result v2

    #@27
    .line 402
    .local v2, "startPos":I
    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@29
    .line 403
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@2b
    iget-object v3, v3, Landroid/icu/text/RBBIDataWrapper;->fFTable:[S

    #@2d
    invoke-direct {p0, v3}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext([S)I

    #@30
    move-result v1

    #@31
    .line 404
    .local v1, "result":I
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@33
    if-lez v3, :cond_2

    #@35
    .line 405
    invoke-direct {p0, v2, v1, v5}, Landroid/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    #@38
    move-result v1

    #@39
    .line 407
    :cond_2
    return v1
.end method

.method public next(I)I
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@3
    move-result v0

    #@4
    .line 371
    .local v0, "result":I
    :goto_0
    if-lez p1, :cond_0

    #@6
    .line 372
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@9
    move-result v0

    #@a
    .line 373
    add-int/lit8 p1, p1, -0x1

    #@c
    goto :goto_0

    #@d
    .line 375
    :cond_0
    :goto_1
    if-gez p1, :cond_1

    #@f
    .line 376
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    #@12
    move-result v0

    #@13
    .line 377
    add-int/lit8 p1, p1, 0x1

    #@15
    goto :goto_1

    #@16
    .line 379
    :cond_1
    return v0
.end method

.method public preceding(I)I
    .locals 5
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 785
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    #@5
    move-result-object v0

    #@6
    .line 791
    .local v0, "text":Ljava/text/CharacterIterator;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@c
    aget v1, v1, v3

    #@e
    if-gt p1, v1, :cond_1

    #@10
    .line 793
    :cond_0
    iput-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@12
    .line 794
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->rulesPreceding(I)I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 792
    :cond_1
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@19
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@1b
    array-length v2, v2

    #@1c
    add-int/lit8 v2, v2, -0x1

    #@1e
    aget v1, v1, v2

    #@20
    if-gt p1, v1, :cond_0

    #@22
    .line 801
    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@24
    .line 802
    :goto_0
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@26
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@28
    array-length v2, v2

    #@29
    if-ge v1, v2, :cond_2

    #@2b
    .line 803
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@2d
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@2f
    aget v1, v1, v2

    #@31
    if-le p1, v1, :cond_2

    #@33
    .line 804
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@39
    goto :goto_0

    #@3a
    .line 805
    :cond_2
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@3c
    add-int/lit8 v1, v1, -0x1

    #@3e
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@40
    .line 806
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@42
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@44
    aget v1, v1, v2

    #@46
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@49
    .line 807
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@4c
    move-result v1

    #@4d
    return v1
.end method

.method public previous()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 578
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getText()Ljava/text/CharacterIterator;

    #@6
    move-result-object v7

    #@7
    .line 580
    .local v7, "text":Ljava/text/CharacterIterator;
    iput-boolean v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@9
    .line 584
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@b
    if-eqz v8, :cond_2

    #@d
    .line 585
    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@f
    if-lez v8, :cond_1

    #@11
    .line 586
    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@13
    add-int/lit8 v8, v8, -0x1

    #@15
    iput v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@17
    .line 589
    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@19
    if-gtz v8, :cond_0

    #@1b
    .line 590
    iput-boolean v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@1d
    .line 592
    :cond_0
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fCachedBreakPositions:[I

    #@1f
    iget v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPositionInCache:I

    #@21
    aget v3, v8, v9

    #@23
    .line 593
    .local v3, "pos":I
    invoke-interface {v7, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@26
    .line 594
    return v3

    #@27
    .line 596
    .end local v3    # "pos":I
    :cond_1
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->reset()V

    #@2a
    .line 601
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@2d
    move-result v6

    #@2e
    .line 602
    .local v6, "startPos":I
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@30
    if-eqz v8, :cond_3

    #@32
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@34
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@37
    move-result v8

    #@38
    if-ne v6, v8, :cond_4

    #@3a
    .line 603
    :cond_3
    iput v9, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@3c
    .line 604
    iput-boolean v11, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@3e
    .line 605
    return v10

    #@3f
    .line 609
    :cond_4
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@41
    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fSRTable:[S

    #@43
    if-nez v8, :cond_5

    #@45
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@47
    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fSFTable:[S

    #@49
    if-eqz v8, :cond_7

    #@4b
    .line 610
    :cond_5
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@4d
    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@4f
    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    #@52
    move-result v4

    #@53
    .line 611
    .local v4, "result":I
    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    #@55
    if-lez v8, :cond_6

    #@57
    .line 612
    invoke-direct {p0, v4, v6, v11}, Landroid/icu/text/RuleBasedBreakIterator;->checkDictionary(IIZ)I

    #@5a
    move-result v4

    #@5b
    .line 614
    :cond_6
    return v4

    #@5c
    .line 624
    .end local v4    # "result":I
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    #@5f
    move-result v5

    #@60
    .line 626
    .local v5, "start":I
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@62
    invoke-static {v8}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@65
    .line 627
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@67
    iget-object v8, v8, Landroid/icu/text/RBBIDataWrapper;->fRTable:[S

    #@69
    invoke-direct {p0, v8}, Landroid/icu/text/RuleBasedBreakIterator;->handlePrevious([S)I

    #@6c
    move-result v1

    #@6d
    .line 628
    .local v1, "lastResult":I
    if-ne v1, v10, :cond_8

    #@6f
    .line 629
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@71
    invoke-interface {v8}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@74
    move-result v1

    #@75
    .line 630
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@77
    invoke-interface {v8, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@7a
    .line 632
    :cond_8
    move v4, v1

    #@7b
    .line 633
    .restart local v4    # "result":I
    const/4 v2, 0x0

    #@7c
    .line 634
    .local v2, "lastTag":I
    const/4 v0, 0x0

    #@7d
    .line 641
    .local v0, "breakTagValid":Z
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    #@80
    move-result v4

    #@81
    .line 642
    if-eq v4, v10, :cond_9

    #@83
    if-lt v4, v5, :cond_a

    #@85
    .line 659
    :cond_9
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@87
    invoke-interface {v8, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@8a
    .line 660
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@8c
    .line 661
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastStatusIndexValid:Z

    #@8e
    .line 662
    return v1

    #@8f
    .line 645
    :cond_a
    move v1, v4

    #@90
    .line 646
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLastRuleStatusIndex:I

    #@92
    .line 647
    const/4 v0, 0x1

    #@93
    goto :goto_0
.end method

.method setBreakType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 1046
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakType:I

    #@2
    .line 1045
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 1037
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    #@2
    .line 1039
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    #@5
    .line 1036
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 173
    const-string/jumbo v0, ""

    #@3
    .line 174
    .local v0, "retStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 175
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/text/RBBIDataWrapper;

    #@9
    iget-object v0, v1, Landroid/icu/text/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    #@b
    .line 177
    :cond_0
    return-object v0
.end method
