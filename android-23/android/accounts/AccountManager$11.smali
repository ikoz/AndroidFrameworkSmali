.class Landroid/accounts/AccountManager$11;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$notifyAuthFailure:Z

.field final synthetic val$optionsIn:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/app/Activity;
    .param p4, "$anonymous1"    # Landroid/os/Handler;
    .param p6, "val$account"    # Landroid/accounts/Account;
    .param p7, "val$authTokenType"    # Ljava/lang/String;
    .param p8, "val$notifyAuthFailure"    # Z
    .param p9, "val$optionsIn"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1436
    .local p5, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$11;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p6, p0, Landroid/accounts/AccountManager$11;->val$account:Landroid/accounts/Account;

    #@4
    iput-object p7, p0, Landroid/accounts/AccountManager$11;->val$authTokenType:Ljava/lang/String;

    #@6
    iput-boolean p8, p0, Landroid/accounts/AccountManager$11;->val$notifyAuthFailure:Z

    #@8
    iput-object p9, p0, Landroid/accounts/AccountManager$11;->val$optionsIn:Landroid/os/Bundle;

    #@a
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    #@d
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1438
    iget-object v0, p0, Landroid/accounts/AccountManager$11;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-static {v0}, Landroid/accounts/AccountManager;->-get2(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$11;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$11;->val$account:Landroid/accounts/Account;

    #@a
    iget-object v3, p0, Landroid/accounts/AccountManager$11;->val$authTokenType:Ljava/lang/String;

    #@c
    .line 1439
    iget-boolean v4, p0, Landroid/accounts/AccountManager$11;->val$notifyAuthFailure:Z

    #@e
    iget-object v6, p0, Landroid/accounts/AccountManager$11;->val$optionsIn:Landroid/os/Bundle;

    #@10
    const/4 v5, 0x0

    #@11
    .line 1438
    invoke-interface/range {v0 .. v6}, Landroid/accounts/IAccountManager;->getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    #@14
    .line 1437
    return-void
.end method
