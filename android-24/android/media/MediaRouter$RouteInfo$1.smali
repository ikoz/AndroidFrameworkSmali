.class Landroid/media/MediaRouter$RouteInfo$1;
.super Landroid/media/IRemoteVolumeObserver$Stub;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter$RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaRouter$RouteInfo;

    #@0
    .prologue
    .line 2025
    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo$1;->this$1:Landroid/media/MediaRouter$RouteInfo;

    #@2
    invoke-direct {p0}, Landroid/media/IRemoteVolumeObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatchRemoteVolumeUpdate(II)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 2028
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    #@2
    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mHandler:Landroid/os/Handler;

    #@4
    new-instance v1, Landroid/media/MediaRouter$RouteInfo$1$1;

    #@6
    invoke-direct {v1, p0, p1, p2}, Landroid/media/MediaRouter$RouteInfo$1$1;-><init>(Landroid/media/MediaRouter$RouteInfo$1;II)V

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@c
    .line 2027
    return-void
.end method
