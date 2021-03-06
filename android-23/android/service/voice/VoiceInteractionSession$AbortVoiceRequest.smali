.class public final Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbortVoiceRequest"
.end annotation


# instance fields
.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/app/VoiceInteractor$Prompt;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .param p4, "session"    # Landroid/service/voice/VoiceInteractionSession;
    .param p5, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p6, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move v2, p2

    #@3
    move-object v3, p3

    #@4
    move-object v4, p4

    #@5
    move-object v5, p6

    #@6
    .line 643
    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    #@9
    .line 644
    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@b
    .line 642
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 684
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 685
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v0, "mPrompt="

    #@9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 686
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 683
    return-void
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 663
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/app/VoiceInteractor$Prompt;->getVoicePromptAt(I)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    :cond_0
    return-object v0
.end method

.method public getVoicePrompt()Landroid/app/VoiceInteractor$Prompt;
    .locals 1

    #@0
    .prologue
    .line 653
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@2
    return-object v0
.end method

.method public sendAbortResult(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->finishRequest()V

    #@3
    .line 678
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    #@5
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    #@7
    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 673
    :goto_0
    return-void

    #@b
    .line 679
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
