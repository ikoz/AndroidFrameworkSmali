.class final Landroid/app/SystemServiceRegistry$41;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/WallpaperManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 468
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 471
    new-instance v0, Landroid/app/WallpaperManager;

    #@2
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 472
    iget-object v2, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@8
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v2

    #@c
    .line 471
    invoke-direct {v0, v1, v2}, Landroid/app/WallpaperManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    #@f
    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    #@0
    .prologue
    .line 470
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$41;->createService(Landroid/app/ContextImpl;)Landroid/app/WallpaperManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
