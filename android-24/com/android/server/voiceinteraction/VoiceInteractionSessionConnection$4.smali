.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;
.super Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    invoke-direct {p0}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public send(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@4
    monitor-enter v1

    #@5
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 162
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@d
    const/4 v2, 0x1

    #@e
    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@10
    .line 163
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@12
    iput-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@14
    .line 164
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@16
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :cond_0
    monitor-exit v1

    #@1a
    .line 159
    return-void

    #@1b
    .line 160
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method
