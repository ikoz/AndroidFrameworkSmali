.class public Lcom/android/server/NativeDaemonEvent;
.super Ljava/lang/Object;
.source "NativeDaemonEvent.java"


# static fields
.field public static final SENSITIVE_MARKER:Ljava/lang/String; = "{{sensitive}}"


# instance fields
.field private final mCmdNumber:I

.field private final mCode:I

.field private mFdList:[Ljava/io/FileDescriptor;

.field private final mLogMessage:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private mParsed:[Ljava/lang/String;

.field private final mRawEvent:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1, "cmdNumber"    # I
    .param p2, "code"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "rawEvent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "fdList"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput p1, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    #@5
    .line 44
    iput p2, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@7
    .line 45
    iput-object p3, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    #@9
    .line 46
    iput-object p4, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    #@b
    .line 47
    iput-object p5, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    #@d
    .line 48
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    #@10
    .line 49
    iput-object p6, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    #@12
    .line 42
    return-void
.end method

.method public static filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    .locals 5
    .param p0, "events"    # [Lcom/android/server/NativeDaemonEvent;
    .param p1, "matchCode"    # I

    #@0
    .prologue
    .line 182
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    #@3
    move-result-object v1

    #@4
    .line 183
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    #@5
    array-length v3, p0

    #@6
    :goto_0
    if-ge v2, v3, :cond_1

    #@8
    aget-object v0, p0, v2

    #@a
    .line 184
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    #@d
    move-result v4

    #@e
    if-ne v4, p1, :cond_0

    #@10
    .line 185
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 188
    .end local v0    # "event":Lcom/android/server/NativeDaemonEvent;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v2

    #@1e
    new-array v2, v2, [Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, [Ljava/lang/String;

    #@26
    return-object v2
.end method

.method private static isClassUnsolicited(I)Z
    .locals 2
    .param p0, "code"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    const/16 v1, 0x258

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x2bc

    #@7
    if-ge p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;
    .locals 12
    .param p0, "rawEvent"    # Ljava/lang/String;
    .param p1, "fdList"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v6, 0x2

    #@3
    .line 138
    const-string/jumbo v0, " "

    #@6
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v8

    #@a
    .line 139
    .local v8, "parsed":[Ljava/lang/String;
    array-length v0, v8

    #@b
    if-ge v0, v6, :cond_0

    #@d
    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "Insufficient arguments"

    #@12
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 143
    :cond_0
    const/4 v9, 0x0

    #@17
    .line 147
    .local v9, "skiplength":I
    const/4 v0, 0x0

    #@18
    :try_start_0
    aget-object v0, v8, v0

    #@1a
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1d
    move-result v2

    #@1e
    .line 148
    .local v2, "code":I
    const/4 v0, 0x0

    #@1f
    aget-object v0, v8, v0

    #@21
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result v0

    #@25
    add-int/lit8 v9, v0, 0x1

    #@27
    .line 153
    const/4 v1, -0x1

    #@28
    .line 154
    .local v1, "cmdNumber":I
    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_2

    #@2e
    .line 155
    array-length v0, v8

    #@2f
    const/4 v4, 0x3

    #@30
    if-ge v0, v4, :cond_1

    #@32
    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v4, "Insufficient arguemnts"

    #@37
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 149
    .end local v1    # "cmdNumber":I
    .end local v2    # "code":I
    :catch_0
    move-exception v7

    #@3c
    .line 150
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v4, "problem parsing code"

    #@41
    invoke-direct {v0, v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v0

    #@45
    .line 159
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "cmdNumber":I
    .restart local v2    # "code":I
    :cond_1
    const/4 v0, 0x1

    #@46
    :try_start_1
    aget-object v0, v8, v0

    #@48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4b
    move-result v1

    #@4c
    .line 160
    const/4 v0, 0x1

    #@4d
    aget-object v0, v8, v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    move-result v0

    #@53
    add-int/lit8 v0, v0, 0x1

    #@55
    add-int/2addr v9, v0

    #@56
    .line 166
    :cond_2
    move-object v5, p0

    #@57
    .line 167
    .local v5, "logMessage":Ljava/lang/String;
    array-length v0, v8

    #@58
    if-le v0, v6, :cond_3

    #@5a
    aget-object v0, v8, v6

    #@5c
    const-string/jumbo v4, "{{sensitive}}"

    #@5f
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_3

    #@65
    .line 168
    aget-object v0, v8, v6

    #@67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@6a
    move-result v0

    #@6b
    add-int/lit8 v0, v0, 0x1

    #@6d
    add-int/2addr v9, v0

    #@6e
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    aget-object v4, v8, v10

    #@75
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    const-string/jumbo v4, " "

    #@7c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    aget-object v4, v8, v11

    #@82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    const-string/jumbo v4, " {}"

    #@89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    .line 172
    :cond_3
    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    .line 174
    .local v3, "message":Ljava/lang/String;
    new-instance v0, Lcom/android/server/NativeDaemonEvent;

    #@97
    move-object v4, p0

    #@98
    move-object v6, p1

    #@99
    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/io/FileDescriptor;)V

    #@9c
    return-object v0

    #@9d
    .line 161
    .end local v3    # "message":Ljava/lang/String;
    .end local v5    # "logMessage":Ljava/lang/String;
    :catch_1
    move-exception v7

    #@9e
    .line 162
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a0
    const-string/jumbo v4, "problem parsing cmdNumber"

    #@a3
    invoke-direct {v0, v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a6
    throw v0
.end method

.method public static unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p0, "rawEvent"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v13, -0x1

    #@1
    .line 207
    const/4 v0, 0x0

    #@2
    .line 208
    .local v0, "DEBUG_ROUTINE":Z
    const-string/jumbo v1, "unescapeArgs"

    #@5
    .line 209
    .local v1, "LOGTAG":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@7
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@a
    .line 210
    .local v6, "parsed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    .line 211
    .local v3, "length":I
    const/4 v2, 0x0

    #@f
    .line 212
    .local v2, "current":I
    const/4 v10, -0x1

    #@10
    .line 213
    .local v10, "wordEnd":I
    const/4 v7, 0x0

    #@11
    .line 216
    .local v7, "quoted":Z
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v11

    #@15
    const/16 v12, 0x22

    #@17
    if-ne v11, v12, :cond_0

    #@19
    .line 217
    const/4 v7, 0x1

    #@1a
    .line 218
    const/4 v2, 0x1

    #@1b
    .line 220
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_7

    #@1d
    .line 222
    if-eqz v7, :cond_2

    #@1f
    const/16 v8, 0x22

    #@21
    .line 223
    .local v8, "terminator":C
    :goto_1
    move v10, v2

    #@22
    .line 224
    :goto_2
    if-ge v10, v3, :cond_3

    #@24
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v11

    #@28
    if-eq v11, v8, :cond_3

    #@2a
    .line 225
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v11

    #@2e
    const/16 v12, 0x5c

    #@30
    if-ne v11, v12, :cond_1

    #@32
    .line 227
    add-int/lit8 v10, v10, 0x1

    #@34
    .line 229
    :cond_1
    add-int/lit8 v10, v10, 0x1

    #@36
    goto :goto_2

    #@37
    .line 222
    .end local v8    # "terminator":C
    :cond_2
    const/16 v8, 0x20

    #@39
    .restart local v8    # "terminator":C
    goto :goto_1

    #@3a
    .line 231
    :cond_3
    if-le v10, v3, :cond_4

    #@3c
    move v10, v3

    #@3d
    .line 232
    :cond_4
    invoke-virtual {p0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@40
    move-result-object v9

    #@41
    .line 233
    .local v9, "word":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@44
    move-result v11

    #@45
    add-int/2addr v2, v11

    #@46
    .line 234
    if-nez v7, :cond_5

    #@48
    .line 235
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4b
    move-result-object v9

    #@4c
    .line 240
    :goto_3
    const-string/jumbo v11, "\\\\"

    #@4f
    const-string/jumbo v12, "\\"

    #@52
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@55
    move-result-object v9

    #@56
    .line 241
    const-string/jumbo v11, "\\\""

    #@59
    const-string/jumbo v12, "\""

    #@5c
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    .line 244
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 247
    const/16 v11, 0x20

    #@65
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(II)I

    #@68
    move-result v5

    #@69
    .line 248
    .local v5, "nextSpace":I
    const-string/jumbo v11, " \""

    #@6c
    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@6f
    move-result v4

    #@70
    .line 252
    .local v4, "nextQuote":I
    if-le v4, v13, :cond_6

    #@72
    if-gt v4, v5, :cond_6

    #@74
    .line 253
    const/4 v7, 0x1

    #@75
    .line 254
    add-int/lit8 v2, v4, 0x2

    #@77
    .line 252
    goto :goto_0

    #@78
    .line 237
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@7a
    goto :goto_3

    #@7b
    .line 256
    .restart local v4    # "nextQuote":I
    .restart local v5    # "nextSpace":I
    :cond_6
    const/4 v7, 0x0

    #@7c
    .line 257
    if-le v5, v13, :cond_0

    #@7e
    .line 258
    add-int/lit8 v2, v5, 0x1

    #@80
    goto :goto_0

    #@81
    .line 266
    .end local v4    # "nextQuote":I
    .end local v5    # "nextSpace":I
    .end local v8    # "terminator":C
    .end local v9    # "word":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@84
    move-result v11

    #@85
    new-array v11, v11, [Ljava/lang/String;

    #@87
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8a
    move-result-object v11

    #@8b
    check-cast v11, [Ljava/lang/String;

    #@8d
    return-object v11
.end method


# virtual methods
.method public checkCode(I)V
    .locals 3
    .param p1, "code"    # I

    #@0
    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Expected "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, " but was: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 125
    :cond_0
    return-void
.end method

.method public getCmdNumber()I
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCmdNumber:I

    #@2
    return v0
.end method

.method public getCode()I
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@2
    return v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 198
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 199
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    #@7
    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    #@d
    .line 201
    :cond_0
    add-int/lit8 p1, p1, 0x2

    #@f
    .line 202
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    #@11
    array-length v0, v0

    #@12
    if-le p1, v0, :cond_1

    #@14
    return-object v1

    #@15
    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mParsed:[Ljava/lang/String;

    #@17
    aget-object v0, v0, p1

    #@19
    return-object v0
.end method

.method public getFileDescriptors()[Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mFdList:[Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawEvent()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mRawEvent:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isClassClientError()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 106
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@3
    const/16 v2, 0x1f4

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@9
    const/16 v2, 0x258

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isClassContinue()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@3
    const/16 v2, 0x64

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@9
    const/16 v2, 0xc8

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isClassOk()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 92
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@3
    const/16 v2, 0xc8

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@9
    const/16 v2, 0x12c

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isClassServerError()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 99
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@3
    const/16 v2, 0x190

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget v1, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@9
    const/16 v2, 0x1f4

    #@b
    if-ge v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public isClassUnsolicited()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/NativeDaemonEvent;->mCode:I

    #@2
    invoke-static {v0}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/NativeDaemonEvent;->mLogMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method
