.class Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->onAdjustVolume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;I)V
    .locals 0
    .param p1, "this$2"    # Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    .param p2, "val$direction"    # I

    #@0
    .prologue
    .line 2336
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@2
    iput p2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->val$direction:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 2339
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@4
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 2340
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@a
    iget-object v0, v0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@c
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@e
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    #@10
    iget-object v1, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->this$2:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    #@12
    iget-object v1, v1, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->this$1:Landroid/media/MediaRouter$UserRouteInfo;

    #@14
    iget-object v1, v1, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    #@16
    iget-object v1, v1, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    #@18
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider$2;->val$direction:I

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    #@1d
    .line 2338
    :cond_0
    return-void
.end method
