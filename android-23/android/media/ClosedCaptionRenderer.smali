.class public Landroid/media/ClosedCaptionRenderer;
.super Landroid/media/SubtitleController$Renderer;
.source "ClosedCaptionRenderer.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRenderingWidget:Landroid/media/ClosedCaptionWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Landroid/media/SubtitleController$Renderer;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    #@5
    .line 57
    return-void
.end method


# virtual methods
.method public createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 73
    new-instance v0, Landroid/media/ClosedCaptionWidget;

    #@6
    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mContext:Landroid/content/Context;

    #@8
    invoke-direct {v0, v1}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;)V

    #@b
    iput-object v0, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    #@d
    .line 75
    :cond_0
    new-instance v0, Landroid/media/ClosedCaptionTrack;

    #@f
    iget-object v1, p0, Landroid/media/ClosedCaptionRenderer;->mRenderingWidget:Landroid/media/ClosedCaptionWidget;

    #@11
    invoke-direct {v0, v1, p1}, Landroid/media/ClosedCaptionTrack;-><init>(Landroid/media/ClosedCaptionWidget;Landroid/media/MediaFormat;)V

    #@14
    return-object v0
.end method

.method public supports(Landroid/media/MediaFormat;)Z
    .locals 2
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 63
    const-string/jumbo v0, "mime"

    #@3
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 64
    const-string/jumbo v0, "mime"

    #@c
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 65
    const-string/jumbo v1, "text/cea-608"

    #@13
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 67
    :cond_0
    const/4 v0, 0x0

    #@19
    return v0
.end method
