.class public Landroid/os/health/HealthKeys$Constants;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# instance fields
.field private final mDataType:Ljava/lang/String;

.field private final mKeys:[[I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 12
    .param p1, "clazz"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 86
    const/4 v9, 0x5

    #@4
    new-array v9, v9, [[I

    #@6
    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@8
    .line 94
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v9

    #@c
    iput-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    #@e
    .line 98
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    #@11
    move-result-object v5

    #@12
    .line 99
    .local v5, "fields":[Ljava/lang/reflect/Field;
    const-class v1, Landroid/os/health/HealthKeys$Constant;

    #@14
    .line 101
    .local v1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/health/HealthKeys$Constant;>;"
    array-length v0, v5

    #@15
    .line 103
    .local v0, "N":I
    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@17
    array-length v9, v9

    #@18
    new-array v7, v9, [Landroid/os/health/HealthKeys$SortedIntArray;

    #@1a
    .line 104
    .local v7, "keys":[Landroid/os/health/HealthKeys$SortedIntArray;
    const/4 v6, 0x0

    #@1b
    .local v6, "i":I
    :goto_0
    array-length v9, v7

    #@1c
    if-ge v6, v9, :cond_0

    #@1e
    .line 105
    new-instance v9, Landroid/os/health/HealthKeys$SortedIntArray;

    #@20
    invoke-direct {v9, v0}, Landroid/os/health/HealthKeys$SortedIntArray;-><init>(I)V

    #@23
    aput-object v9, v7, v6

    #@25
    .line 104
    add-int/lit8 v6, v6, 0x1

    #@27
    goto :goto_0

    #@28
    .line 108
    :cond_0
    const/4 v6, 0x0

    #@29
    :goto_1
    if-ge v6, v0, :cond_3

    #@2b
    .line 109
    aget-object v4, v5, v6

    #@2d
    .line 110
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@30
    move-result-object v2

    #@31
    check-cast v2, Landroid/os/health/HealthKeys$Constant;

    #@33
    .line 111
    .local v2, "constant":Landroid/os/health/HealthKeys$Constant;
    if-eqz v2, :cond_2

    #@35
    .line 112
    invoke-interface {v2}, Landroid/os/health/HealthKeys$Constant;->type()I

    #@38
    move-result v8

    #@39
    .line 113
    .local v8, "type":I
    array-length v9, v7

    #@3a
    if-lt v8, v9, :cond_1

    #@3c
    .line 114
    new-instance v9, Ljava/lang/RuntimeException;

    #@3e
    new-instance v10, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v11, "Unknown Constant type "

    #@46
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v10

    #@4a
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v10

    #@4e
    .line 115
    const-string/jumbo v11, " on "

    #@51
    .line 114
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v10

    #@59
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v10

    #@5d
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@60
    throw v9

    #@61
    .line 118
    :cond_1
    :try_start_0
    aget-object v9, v7, v8

    #@63
    const/4 v10, 0x0

    #@64
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@67
    move-result v10

    #@68
    invoke-virtual {v9, v10}, Landroid/os/health/HealthKeys$SortedIntArray;->addValue(I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 108
    .end local v8    # "type":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@6d
    goto :goto_1

    #@6e
    .line 119
    .restart local v8    # "type":I
    :catch_0
    move-exception v3

    #@6f
    .line 120
    .local v3, "ex":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    #@71
    new-instance v10, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v11, "Can\'t read constant value type="

    #@79
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v10

    #@7d
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v10

    #@81
    .line 121
    const-string/jumbo v11, " field="

    #@84
    .line 120
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v10

    #@88
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v10

    #@8c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v10

    #@90
    invoke-direct {v9, v10, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@93
    throw v9

    #@94
    .line 126
    .end local v2    # "constant":Landroid/os/health/HealthKeys$Constant;
    .end local v3    # "ex":Ljava/lang/IllegalAccessException;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "type":I
    :cond_3
    const/4 v6, 0x0

    #@95
    :goto_2
    array-length v9, v7

    #@96
    if-ge v6, v9, :cond_4

    #@98
    .line 127
    iget-object v9, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@9a
    aget-object v10, v7, v6

    #@9c
    invoke-virtual {v10}, Landroid/os/health/HealthKeys$SortedIntArray;->getArray()[I

    #@9f
    move-result-object v10

    #@a0
    aput-object v10, v9, v6

    #@a2
    .line 126
    add-int/lit8 v6, v6, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 92
    :cond_4
    return-void
.end method


# virtual methods
.method public getDataType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mDataType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIndex(II)I
    .locals 4
    .param p1, "type"    # I
    .param p2, "key"    # I

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@2
    aget-object v1, v1, p1

    #@4
    invoke-static {v1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    #@7
    move-result v0

    #@8
    .line 164
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@a
    .line 165
    return v0

    #@b
    .line 167
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Unknown Constant "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " (of type "

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 168
    const-string/jumbo v3, " )"

    #@2b
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1
.end method

.method public getKeys(I)[I
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getSize(I)I
    .locals 1
    .param p1, "type"    # I

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/os/health/HealthKeys$Constants;->mKeys:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    array-length v0, v0

    #@5
    return v0
.end method
