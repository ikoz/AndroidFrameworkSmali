.class final Lcom/android/internal/widget/LockPatternChecker$4;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$userId"    # I
    .param p4, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    #@6
    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@8
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    #@0
    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    #@2
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$password:Ljava/lang/String;

    #@4
    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$userId:I

    #@6
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 166
    :catch_0
    move-exception v0

    #@10
    .line 167
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    #@13
    move-result v1

    #@14
    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    #@16
    .line 168
    const/4 v1, 0x0

    #@17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 163
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$4;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    #@2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@5
    move-result v1

    #@6
    iget v2, p0, Lcom/android/internal/widget/LockPatternChecker$4;->mThrottleTimeout:I

    #@8
    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    #@b
    .line 173
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 173
    check-cast p1, Ljava/lang/Boolean;

    #@2
    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$4;->onPostExecute(Ljava/lang/Boolean;)V

    #@5
    return-void
.end method
