.class Lcom/android/internal/telephony/Phone$1;
.super Landroid/content/BroadcastReceiver;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 94
    const-string/jumbo v1, "Phone"

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "mImsIntentReceiver: action "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 95
    const-string/jumbo v1, "android:phone_id"

    #@22
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_1

    #@28
    .line 96
    const-string/jumbo v1, "android:phone_id"

    #@2b
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@2e
    move-result v0

    #@2f
    .line 98
    .local v0, "extraPhoneId":I
    const-string/jumbo v1, "Phone"

    #@32
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v3, "mImsIntentReceiver: extraPhoneId = "

    #@3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 99
    if-eq v0, v4, :cond_0

    #@4b
    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@4d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@50
    move-result v1

    #@51
    if-eq v0, v1, :cond_1

    #@53
    .line 101
    :cond_0
    return-void

    #@54
    .line 105
    .end local v0    # "extraPhoneId":I
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    #@56
    monitor-enter v2

    #@57
    .line 106
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_UP"

    #@5e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_3

    #@64
    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@66
    const/4 v3, 0x1

    #@67
    invoke-static {v1, v3}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    #@6a
    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@6c
    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V

    #@6f
    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@71
    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    #@73
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@75
    iget v3, v3, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    #@77
    const/4 v4, 0x0

    #@78
    invoke-static {v1, v3, v4}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7b
    :cond_2
    :goto_0
    monitor-exit v2

    #@7c
    .line 93
    return-void

    #@7d
    .line 110
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    const-string/jumbo v3, "com.android.ims.IMS_SERVICE_DOWN"

    #@84
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_2

    #@8a
    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@8c
    const/4 v3, 0x0

    #@8d
    invoke-static {v1, v3}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    #@90
    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    #@92
    invoke-static {v1}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@95
    goto :goto_0

    #@96
    .line 105
    :catchall_0
    move-exception v1

    #@97
    monitor-exit v2

    #@98
    throw v1
.end method
