.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 167
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I

    #@0
    .prologue
    .line 162
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@2
    invoke-static {v1, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I

    #@5
    .line 149
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 150
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@f
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get2(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;

    #@12
    move-result-object v2

    #@13
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@16
    move-result-object v3

    #@17
    .line 151
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get0()Landroid/content/Context;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1e
    move-result-object v4

    #@1f
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    #@21
    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-get1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    #@24
    move-result v5

    #@25
    .line 149
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V

    #@28
    .line 153
    if-eqz p2, :cond_0

    #@2a
    .line 155
    const/4 v1, 0x0

    #@2b
    :try_start_0
    invoke-interface {p2, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 147
    :cond_0
    :goto_0
    return-void

    #@2f
    .line 156
    :catch_0
    move-exception v0

    #@30
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
