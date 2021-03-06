.class Landroid/speech/SpeechRecognizer$InternalListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalListener$1;
    }
.end annotation


# static fields
.field private static final MSG_BEGINNING_OF_SPEECH:I = 0x1

.field private static final MSG_BUFFER_RECEIVED:I = 0x2

.field private static final MSG_END_OF_SPEECH:I = 0x3

.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_ON_EVENT:I = 0x9

.field private static final MSG_PARTIAL_RESULTS:I = 0x7

.field private static final MSG_READY_FOR_SPEECH:I = 0x5

.field private static final MSG_RESULTS:I = 0x6

.field private static final MSG_RMS_CHANGED:I = 0x8


# instance fields
.field private final mInternalHandler:Landroid/os/Handler;

.field private mInternalListener:Landroid/speech/RecognitionListener;


# direct methods
.method static synthetic -get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;

    #@2
    return-object p1
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 420
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    #@3
    .line 433
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener$1;

    #@5
    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$InternalListener$1;-><init>(Landroid/speech/SpeechRecognizer$InternalListener;)V

    #@8
    iput-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@a
    .line 420
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    #@0
    .prologue
    .line 472
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 471
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 2
    .param p1, "buffer"    # [B

    #@0
    .prologue
    .line 476
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 475
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 479
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "error"    # I

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x4

    #@7
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 483
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-static {v0, v1, p1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 503
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 495
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "noiseParams"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x5

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 487
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x6

    #@3
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 491
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 3
    .param p1, "rmsdB"    # F

    #@0
    .prologue
    .line 500
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener;->mInternalHandler:Landroid/os/Handler;

    #@2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x8

    #@8
    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 499
    return-void
.end method
