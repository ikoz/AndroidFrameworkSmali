.class final synthetic Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutUser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$s:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    #@5
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutUser$-void_attemptToRestoreIfNeededAndSave_com_android_server_pm_ShortcutService_s_java_lang_String_packageName_int_packageUserId_LambdaImpl0;->val$s:Lcom/android/server/pm/ShortcutService;

    #@2
    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    #@4
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutUser;->-com_android_server_pm_ShortcutUser_lambda$3(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V

    #@7
    return-void
.end method
