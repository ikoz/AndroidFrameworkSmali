.class Lcom/android/internal/app/PlatLogoActivity$1$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/PlatLogoActivity$1;

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$1;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/PlatLogoActivity$1;
    .param p2, "val$im"    # Landroid/widget/ImageView;

    #@0
    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->val$im:Landroid/widget/ImageView;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 104
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    #@4
    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@6
    iget v2, v2, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    #@8
    const/4 v3, 0x5

    #@9
    if-ge v2, v3, :cond_0

    #@b
    const/4 v2, 0x0

    #@c
    return v2

    #@d
    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$1;

    #@f
    iget-object v2, v2, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@11
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    #@14
    move-result-object v0

    #@15
    .line 119
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "egg_mode"

    #@18
    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    #@1b
    move-result-wide v2

    #@1c
    cmp-long v2, v2, v4

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 124
    :try_start_0
    const-string/jumbo v2, "egg_mode"

    #@23
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@26
    move-result-wide v4

    #@27
    .line 123
    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    .line 130
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1$1;->val$im:Landroid/widget/ImageView;

    #@2c
    new-instance v3, Lcom/android/internal/app/PlatLogoActivity$1$1$1;

    #@2e
    invoke-direct {v3, p0}, Lcom/android/internal/app/PlatLogoActivity$1$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$1$1;)V

    #@31
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@34
    .line 145
    const/4 v2, 0x1

    #@35
    return v2

    #@36
    .line 126
    :catch_0
    move-exception v1

    #@37
    .line 127
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "PlatLogoActivity"

    #@3a
    const-string/jumbo v3, "Can\'t write settings"

    #@3d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    goto :goto_0
.end method
