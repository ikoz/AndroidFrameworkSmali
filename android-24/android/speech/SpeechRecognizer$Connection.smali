.class Landroid/speech/SpeechRecognizer$Connection;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method private constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;

    #@0
    .prologue
    .line 168
    iput-object p1, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/SpeechRecognizer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@2
    invoke-static {p2}, Landroid/speech/IRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionService;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-set1(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    #@9
    .line 174
    :goto_0
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@b
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-get1(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_0

    #@15
    .line 175
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@17
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-get0(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    #@1a
    move-result-object v1

    #@1b
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@1d
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-get1(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/os/Message;

    #@27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 170
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 181
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@3
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-set1(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;

    #@6
    .line 182
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@8
    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->-set0(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;

    #@b
    .line 183
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$Connection;->this$0:Landroid/speech/SpeechRecognizer;

    #@d
    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-get1(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@14
    .line 179
    return-void
.end method