.class abstract Landroid/webkit/WebSyncManager;
.super Ljava/lang/Object;
.source "WebSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final LOGTAG:Ljava/lang/String; = "websync"


# instance fields
.field protected mDataBase:Landroid/webkit/WebViewDatabase;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    #@2
    const-string/jumbo v1, "doesn\'t implement Cloneable"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected onSyncInit()V
    .locals 0

    #@0
    .prologue
    .line 65
    return-void
.end method

.method public resetSync()V
    .locals 0

    #@0
    .prologue
    .line 49
    return-void
.end method

.method public run()V
    .locals 0

    #@0
    .prologue
    .line 37
    return-void
.end method

.method public startSync()V
    .locals 0

    #@0
    .prologue
    .line 55
    return-void
.end method

.method public stopSync()V
    .locals 0

    #@0
    .prologue
    .line 62
    return-void
.end method

.method public sync()V
    .locals 0

    #@0
    .prologue
    .line 43
    return-void
.end method

.method abstract syncFromRamToFlash()V
.end method
