.class Landroid/accounts/AccountManager$18;
.super Ljava/lang/Object;
.source "AccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->postToHandler(Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$callback:Landroid/accounts/AccountManagerCallback;

.field final synthetic val$future:Landroid/accounts/AccountManagerFuture;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManagerCallback;Landroid/accounts/AccountManagerFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;

    #@0
    .prologue
    .line 1841
    .local p2, "val$callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .local p3, "val$future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$18;->this$0:Landroid/accounts/AccountManager;

    #@2
    iput-object p2, p0, Landroid/accounts/AccountManager$18;->val$callback:Landroid/accounts/AccountManagerCallback;

    #@4
    iput-object p3, p0, Landroid/accounts/AccountManager$18;->val$future:Landroid/accounts/AccountManagerFuture;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1843
    iget-object v0, p0, Landroid/accounts/AccountManager$18;->val$callback:Landroid/accounts/AccountManagerCallback;

    #@2
    iget-object v1, p0, Landroid/accounts/AccountManager$18;->val$future:Landroid/accounts/AccountManagerFuture;

    #@4
    invoke-interface {v0, v1}, Landroid/accounts/AccountManagerCallback;->run(Landroid/accounts/AccountManagerFuture;)V

    #@7
    .line 1842
    return-void
.end method
