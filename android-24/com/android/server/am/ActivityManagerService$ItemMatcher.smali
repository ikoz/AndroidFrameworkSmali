.class Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemMatcher"
.end annotation


# instance fields
.field all:Z

.field components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14883
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    #@6
    .line 14882
    return-void
.end method


# virtual methods
.method build([Ljava/lang/String;I)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    #@0
    .prologue
    .line 14916
    :goto_0
    array-length v1, p1

    #@1
    if-ge p2, v1, :cond_1

    #@3
    .line 14917
    aget-object v0, p1, p2

    #@5
    .line 14918
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "--"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 14919
    add-int/lit8 v1, p2, 0x1

    #@10
    return v1

    #@11
    .line 14921
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    #@14
    .line 14916
    add-int/lit8 p2, p2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 14923
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return p2
.end method

.method build(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 14887
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@4
    move-result-object v0

    #@5
    .line 14888
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    #@7
    .line 14889
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@9
    if-nez v3, :cond_0

    #@b
    .line 14890
    new-instance v3, Ljava/util/ArrayList;

    #@d
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@12
    .line 14892
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 14893
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    #@19
    .line 14886
    :goto_0
    return-void

    #@1a
    .line 14895
    :cond_1
    const/4 v2, 0x0

    #@1b
    .line 14898
    .local v2, "objectId":I
    const/16 v3, 0x10

    #@1d
    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@20
    move-result v2

    #@21
    .line 14899
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@23
    if-nez v3, :cond_2

    #@25
    .line 14900
    new-instance v3, Ljava/util/ArrayList;

    #@27
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@2c
    .line 14902
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@2e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@35
    .line 14903
    const/4 v3, 0x0

    #@36
    iput-boolean v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 14904
    :catch_0
    move-exception v1

    #@3a
    .line 14906
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@3c
    if-nez v3, :cond_3

    #@3e
    .line 14907
    new-instance v3, Ljava/util/ArrayList;

    #@40
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@43
    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@45
    .line 14909
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4a
    .line 14910
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    #@4c
    goto :goto_0
.end method

.method match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "comp"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 14927
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 14928
    return v4

    #@6
    .line 14930
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@8
    if-eqz v2, :cond_2

    #@a
    .line 14931
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v2

    #@11
    if-ge v1, v2, :cond_2

    #@13
    .line 14932
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 14933
    return v4

    #@22
    .line 14931
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 14937
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@27
    if-eqz v2, :cond_4

    #@29
    .line 14938
    const/4 v1, 0x0

    #@2a
    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v2

    #@30
    if-ge v1, v2, :cond_4

    #@32
    .line 14939
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@35
    move-result v3

    #@36
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    check-cast v2, Ljava/lang/Integer;

    #@3e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@41
    move-result v2

    #@42
    if-ne v3, v2, :cond_3

    #@44
    .line 14940
    return v4

    #@45
    .line 14938
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 14944
    .end local v1    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@4a
    if-eqz v2, :cond_6

    #@4c
    .line 14945
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    .line 14946
    .local v0, "flat":Ljava/lang/String;
    const/4 v1, 0x0

    #@51
    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v2

    #@57
    if-ge v1, v2, :cond_6

    #@59
    .line 14947
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5e
    move-result-object v2

    #@5f
    check-cast v2, Ljava/lang/CharSequence;

    #@61
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_5

    #@67
    .line 14948
    return v4

    #@68
    .line 14946
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@6a
    goto :goto_2

    #@6b
    .line 14952
    .end local v0    # "flat":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    const/4 v2, 0x0

    #@6c
    return v2
.end method
