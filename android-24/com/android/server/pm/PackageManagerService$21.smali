.class Lcom/android/server/pm/PackageManagerService$21;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    #@0
    .prologue
    .line 18036
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, -0x1

    #@3
    .line 18039
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 18040
    return v1

    #@a
    .line 18042
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@c
    const-string/jumbo v1, "android.permission.WRITE_MEDIA_STORAGE"

    #@f
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1

    #@15
    .line 18043
    return v3

    #@16
    .line 18045
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@18
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    #@1b
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@1e
    move-result v0

    #@1f
    if-ne v0, v2, :cond_2

    #@21
    .line 18046
    return v3

    #@22
    .line 18048
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@24
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    #@27
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    #@2a
    move-result v0

    #@2b
    if-ne v0, v2, :cond_3

    #@2d
    .line 18049
    const/4 v0, 0x2

    #@2e
    return v0

    #@2f
    .line 18051
    :cond_3
    const/4 v0, 0x3

    #@30
    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18056
    const/4 v0, 0x1

    #@1
    return v0
.end method
