.class Landroid/accounts/AccountManager$5;
.super Landroid/accounts/AccountManager$Future2Task;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->renameAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$Future2Task",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$newName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/os/Handler;
    .param p5, "val$account"    # Landroid/accounts/Account;
    .param p6, "val$newName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    .local p4, "$anonymous1":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/accounts/Account;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$5;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p5, p0, Landroid/accounts/AccountManager$5;->val$account:Landroid/accounts/Account;

    #@4
    iput-object p6, p0, Landroid/accounts/AccountManager$5;->val$newName:Ljava/lang/String;

    #@6
    invoke-direct {p0, p1, p3, p4}, Landroid/accounts/AccountManager$Future2Task;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    #@9
    return-void
.end method


# virtual methods
.method public bundleToResult(Landroid/os/Bundle;)Landroid/accounts/Account;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 822
    const-string/jumbo v3, "authAccount"

    #@3
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 823
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "accountType"

    #@a
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 824
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v3, "accountAccessId"

    #@11
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 825
    .local v0, "accessId":Ljava/lang/String;
    new-instance v3, Landroid/accounts/Account;

    #@17
    invoke-direct {v3, v1, v2, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    return-object v3
.end method

.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$5;->bundleToResult(Landroid/os/Bundle;)Landroid/accounts/Account;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Landroid/accounts/AccountManager$5;->this$0:Landroid/accounts/AccountManager;

    #@2
    invoke-static {v0}, Landroid/accounts/AccountManager;->-get3(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/accounts/AccountManager$BaseFutureTask;->mResponse:Landroid/accounts/IAccountManagerResponse;

    #@8
    iget-object v2, p0, Landroid/accounts/AccountManager$5;->val$account:Landroid/accounts/Account;

    #@a
    iget-object v3, p0, Landroid/accounts/AccountManager$5;->val$newName:Ljava/lang/String;

    #@c
    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountManager;->renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V

    #@f
    .line 817
    return-void
.end method