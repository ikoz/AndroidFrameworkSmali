.class Lcom/android/server/tv/TvInputManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;

    #@0
    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method

.method private buildTvInputList([Ljava/lang/String;)V
    .locals 3
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    #@10
    move-result v2

    #@11
    if-ne v0, v2, :cond_0

    #@13
    .line 177
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@15
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@17
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@1a
    move-result v2

    #@1b
    invoke-static {v0, v2, p1}, Lcom/android/server/tv/TvInputManagerService;->-wrap10(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    #@1e
    .line 178
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@20
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@22
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->-get1(Lcom/android/server/tv/TvInputManagerService;)I

    #@25
    move-result v2

    #@26
    invoke-static {v0, v2}, Lcom/android/server/tv/TvInputManagerService;->-wrap9(Lcom/android/server/tv/TvInputManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    :cond_0
    monitor-exit v1

    #@2a
    .line 174
    return-void

    #@2b
    .line 175
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit v1

    #@2d
    throw v0
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 235
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 240
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@2
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    monitor-enter v8

    #@7
    .line 241
    :try_start_0
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@9
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    #@c
    move-result v9

    #@d
    invoke-static {v7, v9}, Lcom/android/server/tv/TvInputManagerService;->-wrap6(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    #@10
    move-result-object v6

    #@11
    .line 242
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->-get5(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    #@14
    move-result-object v7

    #@15
    invoke-interface {v7, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v7

    #@19
    if-nez v7, :cond_0

    #@1b
    monitor-exit v8

    #@1c
    .line 244
    return-void

    #@1d
    :cond_0
    monitor-exit v8

    #@1e
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    #@20
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 250
    .local v2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v4, "package_name=?"

    #@26
    .line 251
    .local v4, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    #@27
    new-array v5, v7, [Ljava/lang/String;

    #@29
    const/4 v7, 0x0

    #@2a
    aput-object p1, v5, v7

    #@2c
    .line 253
    .local v5, "selectionArgs":[Ljava/lang/String;
    sget-object v7, Landroid/media/tv/TvContract$Channels;->CONTENT_URI:Landroid/net/Uri;

    #@2e
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    #@35
    move-result-object v7

    #@36
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 255
    sget-object v7, Landroid/media/tv/TvContract$Programs;->CONTENT_URI:Landroid/net/Uri;

    #@3f
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    .line 258
    sget-object v7, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    #@50
    .line 257
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    .line 261
    const/4 v3, 0x0

    #@60
    .line 263
    .local v3, "results":[Landroid/content/ContentProviderResult;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$1;->this$0:Lcom/android/server/tv/TvInputManagerService;

    #@62
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->getChangingUserId()I

    #@65
    move-result v8

    #@66
    invoke-static {v7, v8}, Lcom/android/server/tv/TvInputManagerService;->-wrap0(Lcom/android/server/tv/TvInputManagerService;I)Landroid/content/ContentResolver;

    #@69
    move-result-object v0

    #@6a
    .line 264
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "android.media.tv"

    #@6d
    invoke-virtual {v0, v7, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    move-result-object v3

    #@71
    .line 239
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "results":[Landroid/content/ContentProviderResult;
    :goto_0
    return-void

    #@72
    .line 240
    .end local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_0
    move-exception v7

    #@73
    monitor-exit v8

    #@74
    throw v7

    #@75
    .line 265
    .restart local v2    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3    # "results":[Landroid/content/ContentProviderResult;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_0
    move-exception v1

    #@76
    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "TvInputManagerService"

    #@79
    const-string/jumbo v8, "error in applyBatch"

    #@7c
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7f
    goto :goto_0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 188
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p1, v0, v1

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    #@9
    .line 184
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    #@9
    .line 192
    :cond_0
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    #@9
    .line 204
    :cond_0
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    #@0
    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputManagerService$1;->isReplacing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 225
    return-void

    #@7
    .line 227
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputManagerService$1;->buildTvInputList([Ljava/lang/String;)V

    #@b
    .line 217
    return-void
.end method
