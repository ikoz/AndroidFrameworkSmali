.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteController;

    #@0
    .prologue
    .line 398
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    #@2
    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    #@5
    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .locals 3
    .param p1, "this$0"    # Landroid/media/RemoteController;
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J

    #@0
    .prologue
    const/16 v2, 0x64

    #@2
    const/4 v1, 0x1

    #@3
    .line 403
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    #@5
    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    #@8
    .line 404
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@a
    .line 405
    iput-wide p3, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    #@c
    .line 408
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 407
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/graphics/Bitmap;

    #@16
    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@18
    .line 409
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 410
    invoke-direct {p0, v2}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    #@1f
    .line 413
    :cond_0
    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    #@21
    .line 414
    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    #@23
    .line 415
    const/4 v0, 0x0

    #@24
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    #@26
    .line 403
    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .locals 2
    .param p1, "key"    # I

    #@0
    .prologue
    .line 419
    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 420
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@13
    .line 418
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 433
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    if-nez v1, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 434
    return-void

    #@7
    .line 436
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/media/RemoteController;->-get1()Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@c
    .line 437
    :try_start_2
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    #@e
    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    #@11
    move-result-object v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 438
    iget-object v1, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    #@16
    .line 439
    const v3, 0x10000001

    #@19
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    .line 438
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 441
    const v1, 0x10000001

    #@26
    const/4 v3, 0x0

    #@27
    .line 440
    invoke-virtual {p0, v1, v3}, Landroid/media/MediaMetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/media/Rating;

    #@2d
    .line 442
    .local v0, "rating":Landroid/media/Rating;
    if-eqz v0, :cond_1

    #@2f
    .line 443
    iget-object v1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    #@31
    invoke-static {v1}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)Landroid/media/session/MediaController;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, v0}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    .end local v0    # "rating":Landroid/media/Rating;
    :cond_1
    :try_start_3
    monitor-exit v2

    #@3d
    .line 451
    const/4 v1, 0x0

    #@3e
    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@40
    monitor-exit p0

    #@41
    .line 429
    return-void

    #@42
    .line 436
    :catchall_0
    move-exception v1

    #@43
    :try_start_4
    monitor-exit v2

    #@44
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@45
    :catchall_1
    move-exception v1

    #@46
    monitor-exit p0

    #@47
    throw v1
.end method
