.class Landroid/speech/tts/TextToSpeech$4;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$durationInMs:J

.field final synthetic val$queueMode:I

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "val$durationInMs"    # J
    .param p4, "val$queueMode"    # I
    .param p5, "val$utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1225
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    iput-wide p2, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    #@4
    iput p4, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    #@6
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$4;->val$utteranceId:Ljava/lang/String;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$4;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-wrap1(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    #@5
    move-result-object v1

    #@6
    iget-wide v2, p0, Landroid/speech/tts/TextToSpeech$4;->val$durationInMs:J

    #@8
    .line 1229
    iget v4, p0, Landroid/speech/tts/TextToSpeech$4;->val$queueMode:I

    #@a
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech$4;->val$utteranceId:Ljava/lang/String;

    #@c
    move-object v0, p1

    #@d
    .line 1228
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    #@10
    move-result v0

    #@11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1227
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$4;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
