.class public Landroid/icu/util/RuleBasedTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "initialRule"    # Landroid/icu/util/InitialTimeZoneRule;

    #@0
    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 738
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    #@6
    .line 44
    iput-object p2, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@8
    .line 42
    return-void
.end method

.method private complete()V
    .locals 30

    #@0
    .prologue
    .line 472
    move-object/from16 v0, p0

    #@2
    iget-boolean v10, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 474
    return-void

    #@7
    .line 479
    :cond_0
    move-object/from16 v0, p0

    #@9
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@b
    if-eqz v10, :cond_1

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@11
    const/4 v11, 0x1

    #@12
    aget-object v10, v10, v11

    #@14
    if-nez v10, :cond_1

    #@16
    .line 480
    new-instance v10, Ljava/lang/IllegalStateException;

    #@18
    const-string/jumbo v11, "Incomplete final rules"

    #@1b
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v10

    #@1f
    .line 484
    :cond_1
    move-object/from16 v0, p0

    #@21
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@23
    if-nez v10, :cond_2

    #@25
    move-object/from16 v0, p0

    #@27
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@29
    if-eqz v10, :cond_b

    #@2b
    .line 485
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@2f
    move-object/from16 v17, v0

    #@31
    .line 486
    .local v17, "curRule":Landroid/icu/util/TimeZoneRule;
    const-wide v6, -0x28ec76c40e65000L

    #@36
    .line 490
    .local v6, "lastTransitionTime":J
    move-object/from16 v0, p0

    #@38
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@3a
    if-eqz v10, :cond_9

    #@3c
    .line 491
    new-instance v21, Ljava/util/BitSet;

    #@3e
    move-object/from16 v0, p0

    #@40
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@42
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@45
    move-result v10

    #@46
    move-object/from16 v0, v21

    #@48
    invoke-direct {v0, v10}, Ljava/util/BitSet;-><init>(I)V

    #@4b
    .line 494
    .local v21, "done":Ljava/util/BitSet;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@4e
    move-result v8

    #@4f
    .line 495
    .local v8, "curStdOffset":I
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@52
    move-result v9

    #@53
    .line 496
    .local v9, "curDstSavings":I
    const-wide v26, 0x28d47dbbf19b000L

    #@58
    .line 497
    .local v26, "nextTransitionTime":J
    const/16 v24, 0x0

    #@5a
    .line 501
    .local v24, "nextRule":Landroid/icu/util/TimeZoneRule;
    const/16 v22, 0x0

    #@5c
    .end local v24    # "nextRule":Landroid/icu/util/TimeZoneRule;
    .local v22, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@5e
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@60
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@63
    move-result v10

    #@64
    move/from16 v0, v22

    #@66
    if-ge v0, v10, :cond_7

    #@68
    .line 502
    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->get(I)Z

    #@6b
    move-result v10

    #@6c
    if-eqz v10, :cond_4

    #@6e
    .line 501
    :cond_3
    :goto_2
    add-int/lit8 v22, v22, 0x1

    #@70
    goto :goto_1

    #@71
    .line 505
    :cond_4
    move-object/from16 v0, p0

    #@73
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@75
    move/from16 v0, v22

    #@77
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7a
    move-result-object v5

    #@7b
    check-cast v5, Landroid/icu/util/TimeZoneRule;

    #@7d
    .line 506
    .local v5, "r":Landroid/icu/util/TimeZoneRule;
    const/4 v10, 0x0

    #@7e
    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@81
    move-result-object v18

    #@82
    .line 507
    .local v18, "d":Ljava/util/Date;
    if-nez v18, :cond_5

    #@84
    .line 509
    invoke-virtual/range {v21 .. v22}, Ljava/util/BitSet;->set(I)V

    #@87
    goto :goto_2

    #@88
    .line 511
    :cond_5
    move-object/from16 v0, v17

    #@8a
    if-eq v5, v0, :cond_3

    #@8c
    .line 512
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@8f
    move-result-object v10

    #@90
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@93
    move-result-object v11

    #@94
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v10

    #@98
    if-eqz v10, :cond_6

    #@9a
    .line 513
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@9d
    move-result v10

    #@9e
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@a1
    move-result v11

    #@a2
    if-ne v10, v11, :cond_6

    #@a4
    .line 514
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@a7
    move-result v10

    #@a8
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@ab
    move-result v11

    #@ac
    if-eq v10, v11, :cond_3

    #@ae
    .line 517
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    #@b1
    move-result-wide v28

    #@b2
    .line 518
    .local v28, "tt":J
    cmp-long v10, v28, v26

    #@b4
    if-gez v10, :cond_3

    #@b6
    .line 519
    move-wide/from16 v26, v28

    #@b8
    .line 520
    move-object/from16 v24, v5

    #@ba
    .local v24, "nextRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_2

    #@bb
    .line 525
    .end local v5    # "r":Landroid/icu/util/TimeZoneRule;
    .end local v18    # "d":Ljava/util/Date;
    .end local v24    # "nextRule":Landroid/icu/util/TimeZoneRule;
    .end local v28    # "tt":J
    :cond_7
    if-nez v24, :cond_d

    #@bd
    .line 527
    const/4 v4, 0x1

    #@be
    .line 528
    .local v4, "bDoneAll":Z
    const/16 v23, 0x0

    #@c0
    .local v23, "j":I
    :goto_3
    move-object/from16 v0, p0

    #@c2
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@c4
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@c7
    move-result v10

    #@c8
    move/from16 v0, v23

    #@ca
    if-ge v0, v10, :cond_8

    #@cc
    .line 529
    move-object/from16 v0, v21

    #@ce
    move/from16 v1, v23

    #@d0
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@d3
    move-result v10

    #@d4
    if-nez v10, :cond_c

    #@d6
    .line 530
    const/4 v4, 0x0

    #@d7
    .line 534
    :cond_8
    if-eqz v4, :cond_d

    #@d9
    .line 569
    .end local v4    # "bDoneAll":Z
    .end local v8    # "curStdOffset":I
    .end local v9    # "curDstSavings":I
    .end local v21    # "done":Ljava/util/BitSet;
    .end local v22    # "i":I
    .end local v23    # "j":I
    .end local v26    # "nextTransitionTime":J
    :cond_9
    move-object/from16 v0, p0

    #@db
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@dd
    if-eqz v10, :cond_b

    #@df
    .line 570
    move-object/from16 v0, p0

    #@e1
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@e3
    if-nez v10, :cond_a

    #@e5
    .line 571
    new-instance v10, Ljava/util/ArrayList;

    #@e7
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@ea
    move-object/from16 v0, p0

    #@ec
    iput-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@ee
    .line 574
    :cond_a
    move-object/from16 v0, p0

    #@f0
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@f2
    const/4 v11, 0x0

    #@f3
    aget-object v11, v10, v11

    #@f5
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@f8
    move-result v14

    #@f9
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@fc
    move-result v15

    #@fd
    const/16 v16, 0x0

    #@ff
    move-wide v12, v6

    #@100
    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@103
    move-result-object v19

    #@104
    .line 575
    .local v19, "d0":Ljava/util/Date;
    move-object/from16 v0, p0

    #@106
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@108
    const/4 v11, 0x1

    #@109
    aget-object v11, v10, v11

    #@10b
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@10e
    move-result v14

    #@10f
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@112
    move-result v15

    #@113
    const/16 v16, 0x0

    #@115
    move-wide v12, v6

    #@116
    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@119
    move-result-object v20

    #@11a
    .line 576
    .local v20, "d1":Ljava/util/Date;
    move-object/from16 v0, v20

    #@11c
    move-object/from16 v1, v19

    #@11e
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@121
    move-result v10

    #@122
    if-eqz v10, :cond_12

    #@124
    .line 577
    move-object/from16 v0, p0

    #@126
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@128
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@12a
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    #@12d
    move-result-wide v12

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@132
    const/4 v15, 0x0

    #@133
    aget-object v14, v14, v15

    #@135
    move-object/from16 v0, v17

    #@137
    invoke-direct {v11, v12, v13, v0, v14}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@13a
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13d
    .line 578
    move-object/from16 v0, p0

    #@13f
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@141
    const/4 v11, 0x1

    #@142
    aget-object v11, v10, v11

    #@144
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    #@147
    move-result-wide v12

    #@148
    move-object/from16 v0, p0

    #@14a
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@14c
    const/4 v14, 0x0

    #@14d
    aget-object v10, v10, v14

    #@14f
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@152
    move-result v14

    #@153
    move-object/from16 v0, p0

    #@155
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@157
    const/4 v15, 0x0

    #@158
    aget-object v10, v10, v15

    #@15a
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@15d
    move-result v15

    #@15e
    const/16 v16, 0x0

    #@160
    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@163
    move-result-object v20

    #@164
    .line 579
    move-object/from16 v0, p0

    #@166
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@168
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@16a
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    #@16d
    move-result-wide v12

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@172
    const/4 v15, 0x0

    #@173
    aget-object v14, v14, v15

    #@175
    move-object/from16 v0, p0

    #@177
    iget-object v15, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@179
    const/16 v16, 0x1

    #@17b
    aget-object v15, v15, v16

    #@17d
    invoke-direct {v11, v12, v13, v14, v15}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@180
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@183
    .line 587
    .end local v6    # "lastTransitionTime":J
    .end local v17    # "curRule":Landroid/icu/util/TimeZoneRule;
    .end local v19    # "d0":Ljava/util/Date;
    .end local v20    # "d1":Ljava/util/Date;
    :cond_b
    :goto_4
    const/4 v10, 0x1

    #@184
    move-object/from16 v0, p0

    #@186
    iput-boolean v10, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    #@188
    .line 471
    return-void

    #@189
    .line 528
    .restart local v4    # "bDoneAll":Z
    .restart local v6    # "lastTransitionTime":J
    .restart local v8    # "curStdOffset":I
    .restart local v9    # "curDstSavings":I
    .restart local v17    # "curRule":Landroid/icu/util/TimeZoneRule;
    .restart local v21    # "done":Ljava/util/BitSet;
    .restart local v22    # "i":I
    .restart local v23    # "j":I
    .restart local v26    # "nextTransitionTime":J
    :cond_c
    add-int/lit8 v23, v23, 0x1

    #@18b
    goto/16 :goto_3

    #@18d
    .line 539
    .end local v4    # "bDoneAll":Z
    .end local v23    # "j":I
    :cond_d
    move-object/from16 v0, p0

    #@18f
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@191
    if-eqz v10, :cond_10

    #@193
    .line 541
    const/16 v22, 0x0

    #@195
    :goto_5
    const/4 v10, 0x2

    #@196
    move/from16 v0, v22

    #@198
    if-ge v0, v10, :cond_10

    #@19a
    .line 542
    move-object/from16 v0, p0

    #@19c
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@19e
    aget-object v10, v10, v22

    #@1a0
    move-object/from16 v0, v17

    #@1a2
    if-ne v10, v0, :cond_f

    #@1a4
    .line 541
    :cond_e
    :goto_6
    add-int/lit8 v22, v22, 0x1

    #@1a6
    goto :goto_5

    #@1a7
    .line 545
    :cond_f
    move-object/from16 v0, p0

    #@1a9
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@1ab
    aget-object v11, v10, v22

    #@1ad
    const/16 v16, 0x0

    #@1af
    move-wide v12, v6

    #@1b0
    move v14, v8

    #@1b1
    move v15, v9

    #@1b2
    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@1b5
    move-result-object v18

    #@1b6
    .line 546
    .restart local v18    # "d":Ljava/util/Date;
    if-eqz v18, :cond_e

    #@1b8
    .line 547
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    #@1bb
    move-result-wide v28

    #@1bc
    .line 548
    .restart local v28    # "tt":J
    cmp-long v10, v28, v26

    #@1be
    if-gez v10, :cond_e

    #@1c0
    .line 549
    move-wide/from16 v26, v28

    #@1c2
    .line 550
    move-object/from16 v0, p0

    #@1c4
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@1c6
    aget-object v24, v10, v22

    #@1c8
    .restart local v24    # "nextRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_6

    #@1c9
    .line 556
    .end local v18    # "d":Ljava/util/Date;
    .end local v24    # "nextRule":Landroid/icu/util/TimeZoneRule;
    .end local v28    # "tt":J
    :cond_10
    if-eqz v24, :cond_9

    #@1cb
    .line 561
    move-object/from16 v0, p0

    #@1cd
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@1cf
    if-nez v10, :cond_11

    #@1d1
    .line 562
    new-instance v10, Ljava/util/ArrayList;

    #@1d3
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    iput-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@1da
    .line 564
    :cond_11
    move-object/from16 v0, p0

    #@1dc
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@1de
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@1e0
    move-wide/from16 v0, v26

    #@1e2
    move-object/from16 v2, v17

    #@1e4
    move-object/from16 v3, v24

    #@1e6
    invoke-direct {v11, v0, v1, v2, v3}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@1e9
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1ec
    .line 565
    move-wide/from16 v6, v26

    #@1ee
    .line 566
    move-object/from16 v17, v24

    #@1f0
    goto/16 :goto_0

    #@1f2
    .line 581
    .end local v8    # "curStdOffset":I
    .end local v9    # "curDstSavings":I
    .end local v21    # "done":Ljava/util/BitSet;
    .end local v22    # "i":I
    .end local v26    # "nextTransitionTime":J
    .restart local v19    # "d0":Ljava/util/Date;
    .restart local v20    # "d1":Ljava/util/Date;
    :cond_12
    move-object/from16 v0, p0

    #@1f4
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@1f6
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@1f8
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    #@1fb
    move-result-wide v12

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@200
    const/4 v15, 0x1

    #@201
    aget-object v14, v14, v15

    #@203
    move-object/from16 v0, v17

    #@205
    invoke-direct {v11, v12, v13, v0, v14}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@208
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20b
    .line 582
    move-object/from16 v0, p0

    #@20d
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@20f
    const/4 v11, 0x0

    #@210
    aget-object v11, v10, v11

    #@212
    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    #@215
    move-result-wide v12

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@21a
    const/4 v14, 0x1

    #@21b
    aget-object v10, v10, v14

    #@21d
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@220
    move-result v14

    #@221
    move-object/from16 v0, p0

    #@223
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@225
    const/4 v15, 0x1

    #@226
    aget-object v10, v10, v15

    #@228
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@22b
    move-result v15

    #@22c
    const/16 v16, 0x0

    #@22e
    invoke-virtual/range {v11 .. v16}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@231
    move-result-object v19

    #@232
    .line 583
    move-object/from16 v0, p0

    #@234
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@236
    new-instance v11, Landroid/icu/util/TimeZoneTransition;

    #@238
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    #@23b
    move-result-wide v12

    #@23c
    move-object/from16 v0, p0

    #@23e
    iget-object v14, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@240
    const/4 v15, 0x1

    #@241
    aget-object v14, v14, v15

    #@243
    move-object/from16 v0, p0

    #@245
    iget-object v15, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@247
    const/16 v16, 0x0

    #@249
    aget-object v15, v15, v16

    #@24b
    invoke-direct {v11, v12, v13, v14, v15}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@24e
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@251
    goto/16 :goto_4
.end method

.method private findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;
    .locals 13
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@6
    array-length v0, v0

    #@7
    const/4 v1, 0x2

    #@8
    if-eq v0, v1, :cond_1

    #@a
    .line 638
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 637
    :cond_1
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@e
    const/4 v1, 0x0

    #@f
    aget-object v0, v0, v1

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@15
    const/4 v1, 0x1

    #@16
    aget-object v0, v0, v1

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 645
    move-wide v2, p1

    #@1b
    .line 646
    .local v2, "base":J
    if-eqz p3, :cond_2

    #@1d
    .line 647
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@1f
    const/4 v1, 0x1

    #@20
    aget-object v0, v0, v1

    #@22
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@25
    move-result v0

    #@26
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@28
    const/4 v4, 0x1

    #@29
    aget-object v1, v1, v4

    #@2b
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@2e
    move-result v1

    #@2f
    .line 648
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@31
    const/4 v5, 0x0

    #@32
    aget-object v4, v4, v5

    #@34
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@37
    move-result v2

    #@38
    .end local v2    # "base":J
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@3a
    const/4 v5, 0x0

    #@3b
    aget-object v4, v4, v5

    #@3d
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@40
    move-result v3

    #@41
    move/from16 v4, p4

    #@43
    move/from16 v5, p5

    #@45
    .line 647
    invoke-static/range {v0 .. v5}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    #@48
    move-result v10

    #@49
    .line 650
    .local v10, "localDelta":I
    int-to-long v0, v10

    #@4a
    sub-long v2, p1, v0

    #@4c
    .line 652
    .end local v10    # "localDelta":I
    .restart local v2    # "base":J
    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@4e
    const/4 v1, 0x0

    #@4f
    aget-object v1, v0, v1

    #@51
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@53
    const/4 v4, 0x1

    #@54
    aget-object v0, v0, v4

    #@56
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@59
    move-result v4

    #@5a
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@5c
    const/4 v5, 0x1

    #@5d
    aget-object v0, v0, v5

    #@5f
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@62
    move-result v5

    #@63
    const/4 v6, 0x1

    #@64
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@67
    move-result-object v11

    #@68
    .line 654
    .local v11, "start0":Ljava/util/Date;
    move-wide v2, p1

    #@69
    .line 655
    if-eqz p3, :cond_3

    #@6b
    .line 656
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@6d
    const/4 v1, 0x0

    #@6e
    aget-object v0, v0, v1

    #@70
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@73
    move-result v4

    #@74
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@76
    const/4 v1, 0x0

    #@77
    aget-object v0, v0, v1

    #@79
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@7c
    move-result v5

    #@7d
    .line 657
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@7f
    const/4 v1, 0x1

    #@80
    aget-object v0, v0, v1

    #@82
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@85
    move-result v6

    #@86
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@88
    const/4 v1, 0x1

    #@89
    aget-object v0, v0, v1

    #@8b
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@8e
    move-result v7

    #@8f
    move/from16 v8, p4

    #@91
    move/from16 v9, p5

    #@93
    .line 656
    invoke-static/range {v4 .. v9}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    #@96
    move-result v10

    #@97
    .line 659
    .restart local v10    # "localDelta":I
    int-to-long v0, v10

    #@98
    sub-long v2, p1, v0

    #@9a
    .line 661
    .end local v10    # "localDelta":I
    :cond_3
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@9c
    const/4 v1, 0x1

    #@9d
    aget-object v1, v0, v1

    #@9f
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@a1
    const/4 v4, 0x0

    #@a2
    aget-object v0, v0, v4

    #@a4
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@a7
    move-result v4

    #@a8
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@aa
    const/4 v5, 0x0

    #@ab
    aget-object v0, v0, v5

    #@ad
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@b0
    move-result v5

    #@b1
    const/4 v6, 0x1

    #@b2
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@b5
    move-result-object v12

    #@b6
    .line 663
    .local v12, "start1":Ljava/util/Date;
    if-eqz v11, :cond_4

    #@b8
    if-nez v12, :cond_7

    #@ba
    .line 664
    :cond_4
    if-eqz v11, :cond_5

    #@bc
    .line 665
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@be
    const/4 v1, 0x0

    #@bf
    aget-object v0, v0, v1

    #@c1
    return-object v0

    #@c2
    .line 666
    :cond_5
    if-eqz v12, :cond_6

    #@c4
    .line 667
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@c6
    const/4 v1, 0x1

    #@c7
    aget-object v0, v0, v1

    #@c9
    return-object v0

    #@ca
    .line 670
    :cond_6
    const/4 v0, 0x0

    #@cb
    return-object v0

    #@cc
    .line 673
    :cond_7
    invoke-virtual {v11, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@cf
    move-result v0

    #@d0
    if-eqz v0, :cond_8

    #@d2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@d4
    const/4 v1, 0x0

    #@d5
    aget-object v0, v0, v1

    #@d7
    :goto_0
    return-object v0

    #@d8
    :cond_8
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@da
    const/4 v1, 0x1

    #@db
    aget-object v0, v0, v1

    #@dd
    goto :goto_0
.end method

.method private static getLocalDelta(IIIIII)I
    .locals 8
    .param p0, "rawBefore"    # I
    .param p1, "dstBefore"    # I
    .param p2, "rawAfter"    # I
    .param p3, "dstAfter"    # I
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x1

    #@2
    .line 695
    const/4 v0, 0x0

    #@3
    .line 697
    .local v0, "delta":I
    add-int v3, p0, p1

    #@5
    .line 698
    .local v3, "offsetBefore":I
    add-int v2, p2, p3

    #@7
    .line 700
    .local v2, "offsetAfter":I
    if-eqz p1, :cond_2

    #@9
    if-nez p3, :cond_2

    #@b
    const/4 v1, 0x1

    #@c
    .line 701
    .local v1, "dstToStd":Z
    :goto_0
    if-nez p1, :cond_3

    #@e
    if-eqz p3, :cond_3

    #@10
    const/4 v4, 0x1

    #@11
    .line 703
    .local v4, "stdToDst":Z
    :goto_1
    sub-int v5, v2, v3

    #@13
    if-ltz v5, :cond_9

    #@15
    .line 705
    and-int/lit8 v5, p4, 0x3

    #@17
    if-ne v5, v6, :cond_0

    #@19
    if-nez v1, :cond_1

    #@1b
    .line 706
    :cond_0
    and-int/lit8 v5, p4, 0x3

    #@1d
    if-ne v5, v7, :cond_4

    #@1f
    .line 705
    if-eqz v4, :cond_4

    #@21
    .line 707
    :cond_1
    move v0, v3

    #@22
    .line 734
    :goto_2
    return v0

    #@23
    .line 700
    .end local v1    # "dstToStd":Z
    .end local v4    # "stdToDst":Z
    :cond_2
    const/4 v1, 0x0

    #@24
    .restart local v1    # "dstToStd":Z
    goto :goto_0

    #@25
    .line 701
    :cond_3
    const/4 v4, 0x0

    #@26
    .restart local v4    # "stdToDst":Z
    goto :goto_1

    #@27
    .line 708
    :cond_4
    and-int/lit8 v5, p4, 0x3

    #@29
    if-ne v5, v6, :cond_5

    #@2b
    if-nez v4, :cond_6

    #@2d
    .line 709
    :cond_5
    and-int/lit8 v5, p4, 0x3

    #@2f
    if-ne v5, v7, :cond_7

    #@31
    .line 708
    if-eqz v1, :cond_7

    #@33
    .line 710
    :cond_6
    move v0, v2

    #@34
    goto :goto_2

    #@35
    .line 711
    :cond_7
    and-int/lit8 v5, p4, 0xc

    #@37
    const/16 v6, 0xc

    #@39
    if-ne v5, v6, :cond_8

    #@3b
    .line 712
    move v0, v3

    #@3c
    goto :goto_2

    #@3d
    .line 716
    :cond_8
    move v0, v2

    #@3e
    goto :goto_2

    #@3f
    .line 720
    :cond_9
    and-int/lit8 v5, p5, 0x3

    #@41
    if-ne v5, v6, :cond_a

    #@43
    if-nez v1, :cond_b

    #@45
    .line 721
    :cond_a
    and-int/lit8 v5, p5, 0x3

    #@47
    if-ne v5, v7, :cond_c

    #@49
    .line 720
    if-eqz v4, :cond_c

    #@4b
    .line 722
    :cond_b
    move v0, v2

    #@4c
    goto :goto_2

    #@4d
    .line 723
    :cond_c
    and-int/lit8 v5, p5, 0x3

    #@4f
    if-ne v5, v6, :cond_d

    #@51
    if-nez v4, :cond_e

    #@53
    .line 724
    :cond_d
    and-int/lit8 v5, p5, 0x3

    #@55
    if-ne v5, v7, :cond_f

    #@57
    .line 723
    if-eqz v1, :cond_f

    #@59
    .line 725
    :cond_e
    move v0, v3

    #@5a
    goto :goto_2

    #@5b
    .line 726
    :cond_f
    and-int/lit8 v5, p5, 0xc

    #@5d
    const/4 v6, 0x4

    #@5e
    if-ne v5, v6, :cond_10

    #@60
    .line 727
    move v0, v3

    #@61
    goto :goto_2

    #@62
    .line 731
    :cond_10
    move v0, v2

    #@63
    goto :goto_2
.end method

.method private getOffset(JZII[I)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "NonExistingTimeOpt"    # I
    .param p5, "DuplicatedTimeOpt"    # I
    .param p6, "offsets"    # [I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 594
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    #@4
    .line 595
    const/4 v1, 0x0

    #@5
    .line 596
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@7
    if-nez v6, :cond_1

    #@9
    .line 597
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@b
    .line 629
    .end local v1    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@e
    move-result v6

    #@f
    aput v6, p6, v8

    #@11
    .line 630
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@14
    move-result v6

    #@15
    const/4 v7, 0x1

    #@16
    aput v6, p6, v7

    #@18
    .line 593
    return-void

    #@19
    .line 599
    .restart local v1    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_1
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@1b
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    #@21
    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    #@24
    move-result-wide v4

    #@25
    .line 601
    .local v4, "tstart":J
    cmp-long v6, p1, v4

    #@27
    if-gez v6, :cond_2

    #@29
    .line 602
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@2b
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_0

    #@2c
    .line 604
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    :cond_2
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@2e
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@31
    move-result v6

    #@32
    add-int/lit8 v0, v6, -0x1

    #@34
    .line 605
    .local v0, "idx":I
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@36
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@39
    move-result-object v6

    #@3a
    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    #@3c
    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    #@3f
    move-result-wide v2

    #@40
    .line 607
    .local v2, "tend":J
    cmp-long v6, p1, v2

    #@42
    if-lez v6, :cond_5

    #@44
    .line 608
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@46
    if-eqz v6, :cond_3

    #@48
    .line 609
    invoke-direct/range {p0 .. p5}, Landroid/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;

    #@4b
    move-result-object v1

    #@4c
    .line 611
    .end local v1    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_3
    if-nez v1, :cond_0

    #@4e
    .line 614
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@50
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v6

    #@54
    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    #@56
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@59
    move-result-object v1

    #@5a
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_0

    #@5b
    .line 623
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    #@5d
    .line 618
    :cond_5
    if-ltz v0, :cond_6

    #@5f
    .line 619
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@61
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v6

    #@65
    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    #@67
    invoke-static {v6, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    #@6a
    move-result-wide v6

    #@6b
    cmp-long v6, p1, v6

    #@6d
    if-ltz v6, :cond_4

    #@6f
    .line 625
    :cond_6
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@71
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v6

    #@75
    check-cast v6, Landroid/icu/util/TimeZoneTransition;

    #@77
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@7a
    move-result-object v1

    #@7b
    .local v1, "rule":Landroid/icu/util/TimeZoneRule;
    goto :goto_0
.end method

.method private static getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J
    .locals 8
    .param p0, "tzt"    # Landroid/icu/util/TimeZoneTransition;
    .param p1, "local"    # Z
    .param p2, "NonExistingTimeOpt"    # I
    .param p3, "DuplicatedTimeOpt"    # I

    #@0
    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@3
    move-result-wide v6

    #@4
    .line 682
    .local v6, "time":J
    if-eqz p1, :cond_0

    #@6
    .line 683
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@15
    move-result v1

    #@16
    .line 684
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@25
    move-result v3

    #@26
    move v4, p2

    #@27
    move v5, p3

    #@28
    .line 683
    invoke-static/range {v0 .. v5}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    #@2b
    move-result v0

    #@2c
    int-to-long v0, v0

    #@2d
    add-long/2addr v6, v0

    #@2e
    .line 687
    :cond_0
    return-wide v6
.end method


# virtual methods
.method public addTransitionRule(Landroid/icu/util/TimeZoneRule;)V
    .locals 4
    .param p1, "rule"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 56
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@a
    const-string/jumbo v1, "Attempt to modify a frozen RuleBasedTimeZone instance."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->isTransitionRule()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v1, "Rule must be a transition rule"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 62
    :cond_1
    instance-of v0, p1, Landroid/icu/util/AnnualTimeZoneRule;

    #@22
    if-eqz v0, :cond_4

    #@24
    move-object v0, p1

    #@25
    .line 63
    nop

    #@26
    nop

    #@27
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@2a
    move-result v0

    #@2b
    const v1, 0x7fffffff

    #@2e
    if-ne v0, v1, :cond_4

    #@30
    .line 65
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@32
    if-nez v0, :cond_2

    #@34
    .line 66
    const/4 v0, 0x2

    #@35
    new-array v0, v0, [Landroid/icu/util/AnnualTimeZoneRule;

    #@37
    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@39
    .line 67
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@3b
    nop

    #@3c
    nop

    #@3d
    .end local p1    # "rule":Landroid/icu/util/TimeZoneRule;
    aput-object p1, v0, v2

    #@3f
    .line 83
    :goto_0
    iput-boolean v2, p0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    #@41
    .line 55
    return-void

    #@42
    .line 68
    .restart local p1    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@44
    aget-object v0, v0, v3

    #@46
    if-nez v0, :cond_3

    #@48
    .line 69
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@4a
    nop

    #@4b
    nop

    #@4c
    .end local p1    # "rule":Landroid/icu/util/TimeZoneRule;
    aput-object p1, v0, v3

    #@4e
    goto :goto_0

    #@4f
    .line 72
    .restart local p1    # "rule":Landroid/icu/util/TimeZoneRule;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    #@51
    const-string/jumbo v1, "Too many final rules"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 76
    :cond_4
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@5a
    if-nez v0, :cond_5

    #@5c
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    #@5e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@61
    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@63
    .line 79
    :cond_5
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@65
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@68
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 460
    return-object p0

    #@7
    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    #@0
    .prologue
    .line 760
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/util/RuleBasedTimeZone;

    #@6
    .line 761
    .local v0, "tz":Landroid/icu/util/RuleBasedTimeZone;
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 762
    new-instance v1, Ljava/util/ArrayList;

    #@c
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@e
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@13
    .line 764
    :cond_0
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 765
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@19
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, [Landroid/icu/util/AnnualTimeZoneRule;

    #@1f
    iput-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@21
    .line 767
    :cond_1
    const/4 v1, 0x0

    #@22
    iput-boolean v1, v0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    #@24
    .line 768
    return-object v0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 751
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    #@3
    .line 752
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    #@6
    .line 753
    return-object p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 19
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 323
    invoke-direct/range {p0 .. p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    #@3
    .line 324
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@7
    if-nez v3, :cond_0

    #@9
    .line 325
    const/4 v3, 0x0

    #@a
    return-object v3

    #@b
    .line 327
    :cond_0
    const/4 v10, 0x0

    #@c
    .line 328
    .local v10, "isFinal":Z
    const/4 v12, 0x0

    #@d
    .line 329
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@11
    const/4 v4, 0x0

    #@12
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v18

    #@16
    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    #@18
    .line 330
    .local v18, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@1b
    move-result-wide v16

    #@1c
    .line 331
    .local v16, "tt":J
    cmp-long v3, v16, p1

    #@1e
    if-gtz v3, :cond_1

    #@20
    if-eqz p3, :cond_2

    #@22
    cmp-long v3, v16, p1

    #@24
    if-nez v3, :cond_2

    #@26
    .line 332
    :cond_1
    move-object/from16 v12, v18

    #@28
    .line 373
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    :goto_0
    if-eqz v12, :cond_a

    #@2a
    .line 375
    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@2d
    move-result-object v2

    #@2e
    .line 376
    .local v2, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@31
    move-result-object v15

    #@32
    .line 377
    .local v15, "to":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@35
    move-result v3

    #@36
    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@39
    move-result v4

    #@3a
    if-ne v3, v4, :cond_a

    #@3c
    .line 378
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@3f
    move-result v3

    #@40
    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@43
    move-result v4

    #@44
    if-ne v3, v4, :cond_a

    #@46
    .line 380
    if-eqz v10, :cond_9

    #@48
    .line 381
    const/4 v3, 0x0

    #@49
    return-object v3

    #@4a
    .line 334
    .end local v2    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v15    # "to":Landroid/icu/util/TimeZoneRule;
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_2
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@4e
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@51
    move-result v3

    #@52
    add-int/lit8 v9, v3, -0x1

    #@54
    .line 335
    .local v9, "idx":I
    move-object/from16 v0, p0

    #@56
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@58
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v18

    #@5c
    .end local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    #@5e
    .line 336
    .restart local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@61
    move-result-wide v16

    #@62
    .line 337
    if-eqz p3, :cond_3

    #@64
    cmp-long v3, v16, p1

    #@66
    if-nez v3, :cond_3

    #@68
    .line 338
    move-object/from16 v12, v18

    #@6a
    .line 337
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    goto :goto_0

    #@6b
    .line 339
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_3
    cmp-long v3, v16, p1

    #@6d
    if-gtz v3, :cond_6

    #@6f
    .line 340
    move-object/from16 v0, p0

    #@71
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@73
    if-eqz v3, :cond_5

    #@75
    .line 342
    move-object/from16 v0, p0

    #@77
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@79
    const/4 v4, 0x0

    #@7a
    aget-object v3, v3, v4

    #@7c
    .line 343
    move-object/from16 v0, p0

    #@7e
    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@80
    const/4 v5, 0x1

    #@81
    aget-object v4, v4, v5

    #@83
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@86
    move-result v6

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@8b
    const/4 v5, 0x1

    #@8c
    aget-object v4, v4, v5

    #@8e
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@91
    move-result v7

    #@92
    move-wide/from16 v4, p1

    #@94
    move/from16 v8, p3

    #@96
    .line 342
    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@99
    move-result-object v13

    #@9a
    .line 344
    .local v13, "start0":Ljava/util/Date;
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@9e
    const/4 v4, 0x1

    #@9f
    aget-object v3, v3, v4

    #@a1
    .line 345
    move-object/from16 v0, p0

    #@a3
    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@a5
    const/4 v5, 0x0

    #@a6
    aget-object v4, v4, v5

    #@a8
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@ab
    move-result v6

    #@ac
    move-object/from16 v0, p0

    #@ae
    iget-object v4, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@b0
    const/4 v5, 0x0

    #@b1
    aget-object v4, v4, v5

    #@b3
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@b6
    move-result v7

    #@b7
    move-wide/from16 v4, p1

    #@b9
    move/from16 v8, p3

    #@bb
    .line 344
    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@be
    move-result-object v14

    #@bf
    .line 347
    .local v14, "start1":Ljava/util/Date;
    invoke-virtual {v14, v13}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@c2
    move-result v3

    #@c3
    if-eqz v3, :cond_4

    #@c5
    .line 348
    new-instance v18, Landroid/icu/util/TimeZoneTransition;

    #@c7
    .end local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    #@ca
    move-result-wide v4

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@cf
    const/4 v6, 0x1

    #@d0
    aget-object v3, v3, v6

    #@d2
    move-object/from16 v0, p0

    #@d4
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@d6
    const/4 v7, 0x0

    #@d7
    aget-object v6, v6, v7

    #@d9
    move-object/from16 v0, v18

    #@db
    invoke-direct {v0, v4, v5, v3, v6}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@de
    .line 352
    .restart local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :goto_1
    move-object/from16 v12, v18

    #@e0
    .line 353
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    const/4 v10, 0x1

    #@e1
    goto/16 :goto_0

    #@e3
    .line 350
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_4
    new-instance v18, Landroid/icu/util/TimeZoneTransition;

    #@e5
    .end local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    #@e8
    move-result-wide v4

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@ed
    const/4 v6, 0x0

    #@ee
    aget-object v3, v3, v6

    #@f0
    move-object/from16 v0, p0

    #@f2
    iget-object v6, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@f4
    const/4 v7, 0x1

    #@f5
    aget-object v6, v6, v7

    #@f7
    move-object/from16 v0, v18

    #@f9
    invoke-direct {v0, v4, v5, v3, v6}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@fc
    .restart local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    goto :goto_1

    #@fd
    .line 355
    .end local v13    # "start0":Ljava/util/Date;
    .end local v14    # "start1":Ljava/util/Date;
    :cond_5
    const/4 v3, 0x0

    #@fe
    return-object v3

    #@ff
    .line 359
    :cond_6
    add-int/lit8 v9, v9, -0x1

    #@101
    .line 360
    move-object/from16 v11, v18

    #@103
    .line 361
    .local v11, "prev":Landroid/icu/util/TimeZoneTransition;
    :goto_2
    if-lez v9, :cond_7

    #@105
    .line 362
    move-object/from16 v0, p0

    #@107
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@109
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10c
    move-result-object v18

    #@10d
    .end local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    check-cast v18, Landroid/icu/util/TimeZoneTransition;

    #@10f
    .line 363
    .restart local v18    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@112
    move-result-wide v16

    #@113
    .line 364
    cmp-long v3, v16, p1

    #@115
    if-ltz v3, :cond_7

    #@117
    if-nez p3, :cond_8

    #@119
    cmp-long v3, v16, p1

    #@11b
    if-nez v3, :cond_8

    #@11d
    .line 370
    :cond_7
    move-object v12, v11

    #@11e
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_0

    #@120
    .line 367
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_8
    add-int/lit8 v9, v9, -0x1

    #@122
    .line 368
    move-object/from16 v11, v18

    #@124
    goto :goto_2

    #@125
    .line 383
    .end local v9    # "idx":I
    .end local v11    # "prev":Landroid/icu/util/TimeZoneTransition;
    .restart local v2    # "from":Landroid/icu/util/TimeZoneRule;
    .local v12, "result":Landroid/icu/util/TimeZoneTransition;
    .restart local v15    # "to":Landroid/icu/util/TimeZoneRule;
    :cond_9
    invoke-virtual {v12}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@128
    move-result-wide v4

    #@129
    const/4 v3, 0x0

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-virtual {v0, v4, v5, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@12f
    move-result-object v12

    #@130
    .line 387
    .end local v2    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v15    # "to":Landroid/icu/util/TimeZoneRule;
    :cond_a
    return-object v12
.end method

.method public getOffset(IIIIII)I
    .locals 8
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "milliseconds"    # I

    #@0
    .prologue
    .line 92
    if-nez p1, :cond_0

    #@2
    .line 94
    rsub-int/lit8 p2, p2, 0x1

    #@4
    .line 96
    :cond_0
    invoke-static {p2, p3, p4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    #@7
    move-result-wide v0

    #@8
    const-wide/32 v4, 0x5265c00

    #@b
    mul-long/2addr v0, v4

    #@c
    int-to-long v4, p6

    #@d
    add-long v2, v0, v4

    #@f
    .line 97
    .local v2, "time":J
    const/4 v0, 0x2

    #@10
    new-array v7, v0, [I

    #@12
    .line 98
    .local v7, "offsets":[I
    const/4 v4, 0x1

    #@13
    const/4 v5, 0x3

    #@14
    const/4 v6, 0x1

    #@15
    move-object v1, p0

    #@16
    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    #@19
    .line 99
    const/4 v0, 0x0

    #@1a
    aget v0, v7, v0

    #@1c
    const/4 v1, 0x1

    #@1d
    aget v1, v7, v1

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0
.end method

.method public getOffset(JZ[I)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "local"    # Z
    .param p4, "offsets"    # [I

    #@0
    .prologue
    .line 107
    const/4 v5, 0x4

    #@1
    const/16 v6, 0xc

    #@3
    move-object v1, p0

    #@4
    move-wide v2, p1

    #@5
    move v4, p3

    #@6
    move-object v7, p4

    #@7
    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    #@a
    .line 106
    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # I
    .param p4, "duplicatedTimeOpt"    # I
    .param p5, "offsets"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 119
    const/4 v4, 0x1

    #@1
    move-object v1, p0

    #@2
    move-wide v2, p1

    #@3
    move v5, p3

    #@4
    move v6, p4

    #@5
    move-object v7, p5

    #@6
    invoke-direct/range {v1 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    #@9
    .line 118
    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 15
    .param p1, "base"    # J
    .param p3, "inclusive"    # Z

    #@0
    .prologue
    .line 395
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    #@3
    .line 396
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 397
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 399
    :cond_0
    const/4 v8, 0x0

    #@a
    .line 400
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v14

    #@11
    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    #@13
    .line 401
    .local v14, "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@16
    move-result-wide v12

    #@17
    .line 402
    .local v12, "tt":J
    if-eqz p3, :cond_2

    #@19
    cmp-long v1, v12, p1

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 403
    move-object v8, v14

    #@1e
    .line 441
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    :goto_0
    if-eqz v8, :cond_1

    #@20
    .line 443
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@23
    move-result-object v0

    #@24
    .line 444
    .local v0, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@27
    move-result-object v11

    #@28
    .line 445
    .local v11, "to":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@2f
    move-result v2

    #@30
    if-ne v1, v2, :cond_1

    #@32
    .line 446
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@35
    move-result v1

    #@36
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@39
    move-result v2

    #@3a
    if-ne v1, v2, :cond_1

    #@3c
    .line 448
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@3f
    move-result-wide v2

    #@40
    const/4 v1, 0x0

    #@41
    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@44
    move-result-object v8

    #@45
    .line 451
    .end local v0    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v11    # "to":Landroid/icu/util/TimeZoneRule;
    :cond_1
    return-object v8

    #@46
    .line 404
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_2
    cmp-long v1, v12, p1

    #@48
    if-ltz v1, :cond_3

    #@4a
    .line 405
    const/4 v1, 0x0

    #@4b
    return-object v1

    #@4c
    .line 407
    :cond_3
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@51
    move-result v1

    #@52
    add-int/lit8 v7, v1, -0x1

    #@54
    .line 408
    .local v7, "idx":I
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@56
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v14

    #@5a
    .end local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    #@5c
    .line 409
    .restart local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@5f
    move-result-wide v12

    #@60
    .line 410
    if-eqz p3, :cond_4

    #@62
    cmp-long v1, v12, p1

    #@64
    if-nez v1, :cond_4

    #@66
    .line 411
    move-object v8, v14

    #@67
    .line 410
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    goto :goto_0

    #@68
    .line 412
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_4
    cmp-long v1, v12, p1

    #@6a
    if-gez v1, :cond_7

    #@6c
    .line 413
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@6e
    if-eqz v1, :cond_5

    #@70
    .line 415
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@72
    const/4 v2, 0x0

    #@73
    aget-object v1, v1, v2

    #@75
    .line 416
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@77
    const/4 v3, 0x1

    #@78
    aget-object v2, v2, v3

    #@7a
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@7d
    move-result v4

    #@7e
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@80
    const/4 v3, 0x1

    #@81
    aget-object v2, v2, v3

    #@83
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@86
    move-result v5

    #@87
    move-wide/from16 v2, p1

    #@89
    move/from16 v6, p3

    #@8b
    .line 415
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@8e
    move-result-object v9

    #@8f
    .line 417
    .local v9, "start0":Ljava/util/Date;
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@91
    const/4 v2, 0x1

    #@92
    aget-object v1, v1, v2

    #@94
    .line 418
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@96
    const/4 v3, 0x0

    #@97
    aget-object v2, v2, v3

    #@99
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@9c
    move-result v4

    #@9d
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@9f
    const/4 v3, 0x0

    #@a0
    aget-object v2, v2, v3

    #@a2
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@a5
    move-result v5

    #@a6
    move-wide/from16 v2, p1

    #@a8
    move/from16 v6, p3

    #@aa
    .line 417
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@ad
    move-result-object v10

    #@ae
    .line 420
    .local v10, "start1":Ljava/util/Date;
    invoke-virtual {v10, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_6

    #@b4
    .line 421
    new-instance v14, Landroid/icu/util/TimeZoneTransition;

    #@b6
    .end local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    #@b9
    move-result-wide v2

    #@ba
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@bc
    const/4 v4, 0x1

    #@bd
    aget-object v1, v1, v4

    #@bf
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@c1
    const/4 v5, 0x0

    #@c2
    aget-object v4, v4, v5

    #@c4
    invoke-direct {v14, v2, v3, v1, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@c7
    .line 426
    .end local v9    # "start0":Ljava/util/Date;
    .end local v10    # "start1":Ljava/util/Date;
    .restart local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_5
    :goto_1
    move-object v8, v14

    #@c8
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_0

    #@ca
    .line 423
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    .restart local v9    # "start0":Ljava/util/Date;
    .restart local v10    # "start1":Ljava/util/Date;
    :cond_6
    new-instance v14, Landroid/icu/util/TimeZoneTransition;

    #@cc
    .end local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    #@cf
    move-result-wide v2

    #@d0
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@d2
    const/4 v4, 0x0

    #@d3
    aget-object v1, v1, v4

    #@d5
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@d7
    const/4 v5, 0x1

    #@d8
    aget-object v4, v4, v5

    #@da
    invoke-direct {v14, v2, v3, v1, v4}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    #@dd
    .restart local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    goto :goto_1

    #@de
    .line 429
    .end local v9    # "start0":Ljava/util/Date;
    .end local v10    # "start1":Ljava/util/Date;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    #@e0
    .line 430
    :goto_2
    if-ltz v7, :cond_8

    #@e2
    .line 431
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    #@e4
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e7
    move-result-object v14

    #@e8
    .end local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    check-cast v14, Landroid/icu/util/TimeZoneTransition;

    #@ea
    .line 432
    .restart local v14    # "tzt":Landroid/icu/util/TimeZoneTransition;
    invoke-virtual {v14}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@ed
    move-result-wide v12

    #@ee
    .line 433
    cmp-long v1, v12, p1

    #@f0
    if-ltz v1, :cond_8

    #@f2
    if-eqz p3, :cond_9

    #@f4
    cmp-long v1, v12, p1

    #@f6
    if-nez v1, :cond_9

    #@f8
    .line 438
    :cond_8
    move-object v8, v14

    #@f9
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    goto/16 :goto_0

    #@fb
    .line 436
    .local v8, "result":Landroid/icu/util/TimeZoneTransition;
    :cond_9
    add-int/lit8 v7, v7, -0x1

    #@fd
    goto :goto_2
.end method

.method public getRawOffset()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 130
    .local v0, "now":J
    const/4 v3, 0x2

    #@6
    new-array v2, v3, [I

    #@8
    .line 131
    .local v2, "offsets":[I
    invoke-virtual {p0, v0, v1, v4, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    #@b
    .line 132
    aget v3, v2, v4

    #@d
    return v3
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 288
    const/4 v3, 0x1

    #@3
    .line 289
    .local v3, "size":I
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 290
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@9
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@c
    move-result v4

    #@d
    add-int/lit8 v3, v4, 0x1

    #@f
    .line 293
    :cond_0
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 294
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@15
    aget-object v4, v4, v6

    #@17
    if-eqz v4, :cond_2

    #@19
    .line 295
    add-int/lit8 v3, v3, 0x2

    #@1b
    .line 300
    :cond_1
    :goto_0
    new-array v2, v3, [Landroid/icu/util/TimeZoneRule;

    #@1d
    .line 301
    .local v2, "rules":[Landroid/icu/util/TimeZoneRule;
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@1f
    aput-object v4, v2, v7

    #@21
    .line 303
    const/4 v0, 0x1

    #@22
    .line 304
    .local v0, "idx":I
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@24
    if-eqz v4, :cond_3

    #@26
    .line 305
    :goto_1
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@28
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@2b
    move-result v4

    #@2c
    add-int/lit8 v4, v4, 0x1

    #@2e
    if-ge v0, v4, :cond_3

    #@30
    .line 306
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@32
    add-int/lit8 v5, v0, -0x1

    #@34
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/icu/util/TimeZoneRule;

    #@3a
    aput-object v4, v2, v0

    #@3c
    .line 305
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 297
    .end local v0    # "idx":I
    .end local v2    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@41
    goto :goto_0

    #@42
    .line 309
    .restart local v0    # "idx":I
    .restart local v2    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_3
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@44
    if-eqz v4, :cond_4

    #@46
    .line 310
    add-int/lit8 v1, v0, 0x1

    #@48
    .end local v0    # "idx":I
    .local v1, "idx":I
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@4a
    aget-object v4, v4, v7

    #@4c
    aput-object v4, v2, v0

    #@4e
    .line 311
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@50
    aget-object v4, v4, v6

    #@52
    if-eqz v4, :cond_5

    #@54
    .line 312
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@56
    aget-object v4, v4, v6

    #@58
    aput-object v4, v2, v1

    #@5a
    move v0, v1

    #@5b
    .line 315
    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    :cond_4
    :goto_2
    return-object v2

    #@5c
    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    :cond_5
    move v0, v1

    #@5d
    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_2
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 11
    .param p1, "other"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 226
    if-ne p0, p1, :cond_0

    #@4
    .line 227
    return v10

    #@5
    .line 230
    :cond_0
    instance-of v7, p1, Landroid/icu/util/RuleBasedTimeZone;

    #@7
    if-nez v7, :cond_1

    #@9
    .line 232
    return v9

    #@a
    :cond_1
    move-object v4, p1

    #@b
    .line 234
    nop

    #@c
    nop

    #@d
    .line 237
    .local v4, "otherRBTZ":Landroid/icu/util/RuleBasedTimeZone;
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@f
    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    #@11
    invoke-virtual {v7, v8}, Landroid/icu/util/InitialTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@14
    move-result v7

    #@15
    if-nez v7, :cond_2

    #@17
    .line 238
    return v9

    #@18
    .line 242
    :cond_2
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@1a
    if-eqz v7, :cond_6

    #@1c
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@1e
    if-eqz v7, :cond_6

    #@20
    .line 243
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@23
    array-length v7, v7

    #@24
    if-ge v1, v7, :cond_8

    #@26
    .line 244
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@28
    aget-object v7, v7, v1

    #@2a
    if-nez v7, :cond_4

    #@2c
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@2e
    aget-object v7, v7, v1

    #@30
    if-nez v7, :cond_4

    #@32
    .line 243
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 247
    :cond_4
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@37
    aget-object v7, v7, v1

    #@39
    if-eqz v7, :cond_5

    #@3b
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@3d
    aget-object v7, v7, v1

    #@3f
    if-eqz v7, :cond_5

    #@41
    .line 248
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@43
    aget-object v7, v7, v1

    #@45
    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@47
    aget-object v8, v8, v1

    #@49
    invoke-virtual {v7, v8}, Landroid/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@4c
    move-result v7

    #@4d
    .line 247
    if-nez v7, :cond_3

    #@4f
    .line 252
    :cond_5
    return v9

    #@50
    .line 254
    .end local v1    # "i":I
    :cond_6
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@52
    if-nez v7, :cond_7

    #@54
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@56
    if-eqz v7, :cond_8

    #@58
    .line 255
    :cond_7
    return v9

    #@59
    .line 259
    :cond_8
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@5b
    if-eqz v7, :cond_d

    #@5d
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@5f
    if-eqz v7, :cond_d

    #@61
    .line 260
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@63
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@66
    move-result v7

    #@67
    iget-object v8, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@69
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@6c
    move-result v8

    #@6d
    if-eq v7, v8, :cond_9

    #@6f
    .line 261
    return v9

    #@70
    .line 263
    :cond_9
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@72
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@75
    move-result-object v6

    #@76
    .local v6, "rule$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@79
    move-result v7

    #@7a
    if-eqz v7, :cond_f

    #@7c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7f
    move-result-object v5

    #@80
    check-cast v5, Landroid/icu/util/TimeZoneRule;

    #@82
    .line 264
    .local v5, "rule":Landroid/icu/util/TimeZoneRule;
    const/4 v0, 0x0

    #@83
    .line 265
    .local v0, "foundSameRule":Z
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@85
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@88
    move-result-object v3

    #@89
    .local v3, "orule$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@8c
    move-result v7

    #@8d
    if-eqz v7, :cond_c

    #@8f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@92
    move-result-object v2

    #@93
    check-cast v2, Landroid/icu/util/TimeZoneRule;

    #@95
    .line 266
    .local v2, "orule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v5, v2}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@98
    move-result v7

    #@99
    if-eqz v7, :cond_b

    #@9b
    .line 267
    const/4 v0, 0x1

    #@9c
    .line 271
    .end local v2    # "orule":Landroid/icu/util/TimeZoneRule;
    :cond_c
    if-nez v0, :cond_a

    #@9e
    .line 272
    return v9

    #@9f
    .line 275
    .end local v0    # "foundSameRule":Z
    .end local v3    # "orule$iterator":Ljava/util/Iterator;
    .end local v5    # "rule":Landroid/icu/util/TimeZoneRule;
    .end local v6    # "rule$iterator":Ljava/util/Iterator;
    :cond_d
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@a1
    if-nez v7, :cond_e

    #@a3
    iget-object v7, v4, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    #@a5
    if-eqz v7, :cond_f

    #@a7
    .line 276
    :cond_e
    return v9

    #@a8
    .line 278
    :cond_f
    return v10
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 140
    const/4 v3, 0x2

    #@3
    new-array v0, v3, [I

    #@5
    .line 141
    .local v0, "offsets":[I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@8
    move-result-wide v4

    #@9
    invoke-virtual {p0, v4, v5, v2, v0}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    #@c
    .line 142
    aget v3, v0, v1

    #@e
    if-eqz v3, :cond_0

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    move v1, v2

    #@12
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 744
    iget-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    #@2
    return v0
.end method

.method public observesDaylightTime()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v4

    #@6
    .line 186
    .local v4, "time":J
    const/4 v7, 0x2

    #@7
    new-array v2, v7, [I

    #@9
    .line 187
    .local v2, "offsets":[I
    invoke-virtual {p0, v4, v5, v9, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    #@c
    .line 188
    aget v7, v2, v10

    #@e
    if-eqz v7, :cond_0

    #@10
    .line 189
    return v10

    #@11
    .line 193
    :cond_0
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@13
    if-nez v7, :cond_2

    #@15
    const/4 v0, 0x0

    #@16
    .line 195
    :goto_0
    invoke-virtual {p0, v4, v5, v9}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@19
    move-result-object v6

    #@1a
    .line 196
    .local v6, "tt":Landroid/icu/util/TimeZoneTransition;
    if-nez v6, :cond_3

    #@1c
    .line 218
    :cond_1
    return v9

    #@1d
    .line 193
    .end local v6    # "tt":Landroid/icu/util/TimeZoneTransition;
    :cond_2
    new-instance v0, Ljava/util/BitSet;

    #@1f
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@21
    array-length v7, v7

    #@22
    invoke-direct {v0, v7}, Ljava/util/BitSet;-><init>(I)V

    #@25
    .local v0, "checkFinals":Ljava/util/BitSet;
    goto :goto_0

    #@26
    .line 200
    .end local v0    # "checkFinals":Ljava/util/BitSet;
    .restart local v6    # "tt":Landroid/icu/util/TimeZoneTransition;
    :cond_3
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@29
    move-result-object v3

    #@2a
    .line 201
    .local v3, "toRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_4

    #@30
    .line 202
    return v10

    #@31
    .line 204
    :cond_4
    if-eqz v0, :cond_7

    #@33
    .line 206
    const/4 v1, 0x0

    #@34
    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@36
    array-length v7, v7

    #@37
    if-ge v1, v7, :cond_6

    #@39
    .line 207
    iget-object v7, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@3b
    aget-object v7, v7, v1

    #@3d
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_5

    #@43
    .line 208
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@46
    .line 206
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 211
    :cond_6
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@4c
    move-result v7

    #@4d
    iget-object v8, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    #@4f
    array-length v8, v8

    #@50
    if-eq v7, v8, :cond_1

    #@52
    .line 216
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@55
    move-result-wide v4

    #@56
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 2
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "setRawOffset in RuleBasedTimeZone is not supported."

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public useDaylightTime()Z
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    .line 165
    .local v0, "now":J
    const/4 v4, 0x2

    #@7
    new-array v2, v4, [I

    #@9
    .line 166
    .local v2, "offsets":[I
    invoke-virtual {p0, v0, v1, v5, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    #@c
    .line 167
    aget v4, v2, v6

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 168
    return v6

    #@11
    .line 171
    :cond_0
    invoke-virtual {p0, v0, v1, v5}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@14
    move-result-object v3

    #@15
    .line 172
    .local v3, "tt":Landroid/icu/util/TimeZoneTransition;
    if-eqz v3, :cond_1

    #@17
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 173
    return v6

    #@22
    .line 175
    :cond_1
    return v5
.end method
