.class Landroid/icu/text/KhmerBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "KhmerBreakEngine.java"


# static fields
.field private static final KHMER_LOOKAHEAD:B = 0x3t

.field private static final KHMER_MIN_WORD:B = 0x2t

.field private static final KHMER_MIN_WORD_SPAN:B = 0x4t

.field private static final KHMER_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final KHMER_ROOT_COMBINE_THRESHOLD:B = 0x3t

.field private static fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private static fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private static fKhmerWordSet:Landroid/icu/text/UnicodeSet;

.field private static fMarkSet:Landroid/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 40
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@7
    .line 41
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@9
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@c
    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@e
    .line 42
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@10
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@13
    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@15
    .line 44
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@17
    const-string/jumbo v1, "[[:Khmer:]&[:LineBreak=SA:]]"

    #@1a
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@1d
    .line 45
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@1f
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@22
    .line 47
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@24
    const-string/jumbo v1, "[[:Khmer:]&[:LineBreak=SA:]&[:M:]]"

    #@27
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@2a
    .line 48
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@2c
    const/16 v1, 0x20

    #@2e
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@31
    .line 49
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@33
    sget-object v1, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@35
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@38
    sput-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@3a
    .line 50
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@3c
    const/16 v1, 0x1780

    #@3e
    const/16 v2, 0x17b3

    #@40
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@43
    .line 51
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@45
    const/16 v1, 0x17d2

    #@47
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    #@4a
    .line 54
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@4c
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@4f
    .line 55
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@51
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@54
    .line 56
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@56
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@59
    .line 59
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@5b
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@5e
    .line 60
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@60
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@63
    .line 61
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@65
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@68
    .line 62
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@6a
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@6d
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 66
    new-array v0, v4, [Ljava/lang/Integer;

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    aput-object v1, v0, v3

    #@11
    invoke-direct {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    #@14
    .line 67
    sget-object v0, Landroid/icu/text/KhmerBreakEngine;->fKhmerWordSet:Landroid/icu/text/UnicodeSet;

    #@16
    invoke-virtual {p0, v0}, Landroid/icu/text/KhmerBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    #@19
    .line 69
    const-string/jumbo v0, "Khmr"

    #@1c
    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@22
    .line 65
    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 20
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
    .param p4, "foundBreaks"    # Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@0
    .prologue
    .line 93
    sub-int v18, p3, p2

    #@2
    const/16 v19, 0x4

    #@4
    move/from16 v0, v18

    #@6
    move/from16 v1, v19

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 94
    const/16 v18, 0x0

    #@c
    return v18

    #@d
    .line 96
    :cond_0
    const/16 v16, 0x0

    #@f
    .line 99
    .local v16, "wordsFound":I
    const/16 v18, 0x3

    #@11
    move/from16 v0, v18

    #@13
    new-array v15, v0, [Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    #@15
    .line 100
    .local v15, "words":[Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
    const/4 v10, 0x0

    #@16
    .local v10, "i":I
    :goto_0
    const/16 v18, 0x3

    #@18
    move/from16 v0, v18

    #@1a
    if-ge v10, v0, :cond_1

    #@1c
    .line 101
    new-instance v18, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    #@1e
    invoke-direct/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    #@21
    aput-object v18, v15, v10

    #@23
    .line 100
    add-int/lit8 v10, v10, 0x1

    #@25
    goto :goto_0

    #@26
    .line 105
    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@29
    .line 107
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@2c
    move-result v8

    #@2d
    .local v8, "current":I
    move/from16 v0, p3

    #@2f
    if-ge v8, v0, :cond_12

    #@31
    .line 108
    const/4 v14, 0x0

    #@32
    .line 111
    .local v14, "wordLength":I
    rem-int/lit8 v18, v16, 0x3

    #@34
    aget-object v18, v15, v18

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@3a
    move-object/from16 v19, v0

    #@3c
    move-object/from16 v0, v18

    #@3e
    move-object/from16 v1, p1

    #@40
    move-object/from16 v2, v19

    #@42
    move/from16 v3, p3

    #@44
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@47
    move-result v5

    #@48
    .line 114
    .local v5, "candidates":I
    const/16 v18, 0x1

    #@4a
    move/from16 v0, v18

    #@4c
    if-ne v5, v0, :cond_8

    #@4e
    .line 115
    rem-int/lit8 v18, v16, 0x3

    #@50
    aget-object v18, v15, v18

    #@52
    move-object/from16 v0, v18

    #@54
    move-object/from16 v1, p1

    #@56
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    #@59
    move-result v14

    #@5a
    .line 116
    add-int/lit8 v16, v16, 0x1

    #@5c
    .line 159
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@5f
    move-result v18

    #@60
    move/from16 v0, v18

    #@62
    move/from16 v1, p3

    #@64
    if-ge v0, v1, :cond_7

    #@66
    const/16 v18, 0x3

    #@68
    move/from16 v0, v18

    #@6a
    if-ge v14, v0, :cond_7

    #@6c
    .line 163
    rem-int/lit8 v18, v16, 0x3

    #@6e
    aget-object v18, v15, v18

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@74
    move-object/from16 v19, v0

    #@76
    move-object/from16 v0, v18

    #@78
    move-object/from16 v1, p1

    #@7a
    move-object/from16 v2, v19

    #@7c
    move/from16 v3, p3

    #@7e
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@81
    move-result v18

    #@82
    if-gtz v18, :cond_10

    #@84
    .line 164
    if-eqz v14, :cond_4

    #@86
    .line 165
    rem-int/lit8 v18, v16, 0x3

    #@88
    aget-object v18, v15, v18

    #@8a
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    #@8d
    move-result v18

    #@8e
    const/16 v19, 0x3

    #@90
    move/from16 v0, v18

    #@92
    move/from16 v1, v19

    #@94
    if-ge v0, v1, :cond_10

    #@96
    .line 167
    :cond_4
    add-int v18, v8, v14

    #@98
    sub-int v12, p3, v18

    #@9a
    .line 168
    .local v12, "remaining":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@9d
    move-result v11

    #@9e
    .line 169
    .local v11, "pc":I
    const/4 v6, 0x0

    #@9f
    .line 171
    .local v6, "chars":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@a2
    .line 172
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@a5
    move-result v13

    #@a6
    .line 173
    .local v13, "uc":I
    add-int/lit8 v6, v6, 0x1

    #@a8
    .line 174
    add-int/lit8 v12, v12, -0x1

    #@aa
    if-gtz v12, :cond_e

    #@ac
    .line 189
    :cond_5
    if-gtz v14, :cond_6

    #@ae
    .line 190
    add-int/lit8 v16, v16, 0x1

    #@b0
    .line 194
    :cond_6
    add-int/2addr v14, v6

    #@b1
    .line 203
    .end local v6    # "chars":I
    .end local v11    # "pc":I
    .end local v12    # "remaining":I
    .end local v13    # "uc":I
    :cond_7
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@b4
    move-result v7

    #@b5
    .local v7, "currPos":I
    move/from16 v0, p3

    #@b7
    if-ge v7, v0, :cond_11

    #@b9
    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@bb
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@be
    move-result v19

    #@bf
    invoke-virtual/range {v18 .. v19}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@c2
    move-result v18

    #@c3
    if-eqz v18, :cond_11

    #@c5
    .line 204
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@c8
    .line 205
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@cb
    move-result v18

    #@cc
    sub-int v18, v18, v7

    #@ce
    add-int v14, v14, v18

    #@d0
    goto :goto_4

    #@d1
    .line 120
    .end local v7    # "currPos":I
    :cond_8
    const/16 v18, 0x1

    #@d3
    move/from16 v0, v18

    #@d5
    if-le v5, v0, :cond_3

    #@d7
    .line 121
    const/4 v9, 0x0

    #@d8
    .line 123
    .local v9, "foundBest":Z
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@db
    move-result v18

    #@dc
    move/from16 v0, v18

    #@de
    move/from16 v1, p3

    #@e0
    if-ge v0, v1, :cond_a

    #@e2
    .line 126
    :cond_9
    add-int/lit8 v18, v16, 0x1

    #@e4
    rem-int/lit8 v18, v18, 0x3

    #@e6
    aget-object v18, v15, v18

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@ec
    move-object/from16 v19, v0

    #@ee
    move-object/from16 v0, v18

    #@f0
    move-object/from16 v1, p1

    #@f2
    move-object/from16 v2, v19

    #@f4
    move/from16 v3, p3

    #@f6
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@f9
    move-result v18

    #@fa
    if-lez v18, :cond_d

    #@fc
    .line 129
    rem-int/lit8 v18, v16, 0x3

    #@fe
    aget-object v18, v15, v18

    #@100
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    #@103
    .line 130
    const/16 v17, 0x2

    #@105
    .line 134
    .local v17, "wordsMatched":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@108
    move-result v18

    #@109
    move/from16 v0, v18

    #@10b
    move/from16 v1, p3

    #@10d
    if-lt v0, v1, :cond_c

    #@10f
    .line 150
    .end local v17    # "wordsMatched":I
    :cond_a
    :goto_5
    rem-int/lit8 v18, v16, 0x3

    #@111
    aget-object v18, v15, v18

    #@113
    move-object/from16 v0, v18

    #@115
    move-object/from16 v1, p1

    #@117
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    #@11a
    move-result v14

    #@11b
    .line 151
    add-int/lit8 v16, v16, 0x1

    #@11d
    goto/16 :goto_2

    #@11f
    .line 146
    .restart local v17    # "wordsMatched":I
    :cond_b
    add-int/lit8 v18, v16, 0x1

    #@121
    rem-int/lit8 v18, v18, 0x3

    #@123
    aget-object v18, v15, v18

    #@125
    move-object/from16 v0, v18

    #@127
    move-object/from16 v1, p1

    #@129
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    #@12c
    move-result v18

    #@12d
    if-eqz v18, :cond_d

    #@12f
    .line 141
    :cond_c
    add-int/lit8 v18, v16, 0x2

    #@131
    rem-int/lit8 v18, v18, 0x3

    #@133
    aget-object v18, v15, v18

    #@135
    move-object/from16 v0, p0

    #@137
    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@139
    move-object/from16 v19, v0

    #@13b
    move-object/from16 v0, v18

    #@13d
    move-object/from16 v1, p1

    #@13f
    move-object/from16 v2, v19

    #@141
    move/from16 v3, p3

    #@143
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@146
    move-result v18

    #@147
    if-lez v18, :cond_b

    #@149
    .line 142
    rem-int/lit8 v18, v16, 0x3

    #@14b
    aget-object v18, v15, v18

    #@14d
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    #@150
    .line 143
    const/4 v9, 0x1

    #@151
    .line 148
    .end local v17    # "wordsMatched":I
    :cond_d
    rem-int/lit8 v18, v16, 0x3

    #@153
    aget-object v18, v15, v18

    #@155
    move-object/from16 v0, v18

    #@157
    move-object/from16 v1, p1

    #@159
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    #@15c
    move-result v18

    #@15d
    if-eqz v18, :cond_a

    #@15f
    if-eqz v9, :cond_9

    #@161
    goto :goto_5

    #@162
    .line 177
    .end local v9    # "foundBest":Z
    .restart local v6    # "chars":I
    .restart local v11    # "pc":I
    .restart local v12    # "remaining":I
    .restart local v13    # "uc":I
    :cond_e
    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@164
    move-object/from16 v0, v18

    #@166
    invoke-virtual {v0, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@169
    move-result v18

    #@16a
    if-eqz v18, :cond_f

    #@16c
    sget-object v18, Landroid/icu/text/KhmerBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@16e
    move-object/from16 v0, v18

    #@170
    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@173
    move-result v18

    #@174
    if-eqz v18, :cond_f

    #@176
    .line 179
    add-int/lit8 v18, v16, 0x1

    #@178
    rem-int/lit8 v18, v18, 0x3

    #@17a
    aget-object v18, v15, v18

    #@17c
    move-object/from16 v0, p0

    #@17e
    iget-object v0, v0, Landroid/icu/text/KhmerBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@180
    move-object/from16 v19, v0

    #@182
    move-object/from16 v0, v18

    #@184
    move-object/from16 v1, p1

    #@186
    move-object/from16 v2, v19

    #@188
    move/from16 v3, p3

    #@18a
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@18d
    move-result v4

    #@18e
    .line 180
    .local v4, "candidate":I
    add-int v18, v8, v14

    #@190
    add-int v18, v18, v6

    #@192
    move-object/from16 v0, p1

    #@194
    move/from16 v1, v18

    #@196
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@199
    .line 181
    if-gtz v4, :cond_5

    #@19b
    .line 185
    .end local v4    # "candidate":I
    :cond_f
    move v11, v13

    #@19c
    goto/16 :goto_3

    #@19e
    .line 197
    .end local v6    # "chars":I
    .end local v11    # "pc":I
    .end local v12    # "remaining":I
    .end local v13    # "uc":I
    :cond_10
    add-int v18, v8, v14

    #@1a0
    move-object/from16 v0, p1

    #@1a2
    move/from16 v1, v18

    #@1a4
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1a7
    goto/16 :goto_4

    #@1a9
    .line 215
    .restart local v7    # "currPos":I
    :cond_11
    if-lez v14, :cond_2

    #@1ab
    .line 216
    add-int v18, v8, v14

    #@1ad
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b0
    move-result-object v18

    #@1b1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    #@1b4
    move-result v18

    #@1b5
    move-object/from16 v0, p4

    #@1b7
    move/from16 v1, v18

    #@1b9
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    #@1bc
    goto/16 :goto_1

    #@1be
    .line 221
    .end local v5    # "candidates":I
    .end local v7    # "currPos":I
    .end local v14    # "wordLength":I
    :cond_12
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@1c1
    move-result v18

    #@1c2
    move/from16 v0, v18

    #@1c4
    move/from16 v1, p3

    #@1c6
    if-lt v0, v1, :cond_13

    #@1c8
    .line 222
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    #@1cb
    .line 223
    add-int/lit8 v16, v16, -0x1

    #@1cd
    .line 226
    :cond_13
    return v16
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 75
    instance-of v0, p1, Landroid/icu/text/KhmerBreakEngine;

    #@2
    return v0
.end method

.method public handles(II)Z
    .locals 4
    .param p1, "c"    # I
    .param p2, "breakType"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 83
    if-eq p2, v1, :cond_0

    #@4
    const/4 v3, 0x2

    #@5
    if-ne p2, v3, :cond_2

    #@7
    .line 84
    :cond_0
    const/16 v3, 0x100a

    #@9
    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@c
    move-result v0

    #@d
    .line 85
    .local v0, "script":I
    const/16 v3, 0x17

    #@f
    if-ne v0, v3, :cond_1

    #@11
    :goto_0
    return v1

    #@12
    :cond_1
    move v1, v2

    #@13
    goto :goto_0

    #@14
    .line 87
    .end local v0    # "script":I
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/icu/text/KhmerBreakEngine;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method
