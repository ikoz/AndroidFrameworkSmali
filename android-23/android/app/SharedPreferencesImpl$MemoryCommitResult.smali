.class Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SharedPreferencesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryCommitResult"
.end annotation


# instance fields
.field public changesMade:Z

.field public keysModified:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public mapToWriteToDisk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation
.end field

.field public volatile writeToDiskResult:Z

.field public final writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 296
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    #@b
    .line 297
    const/4 v0, 0x0

    #@c
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    #@e
    .line 291
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public setDiskWriteResult(Z)V
    .locals 1
    .param p1, "result"    # Z

    #@0
    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writeToDiskResult:Z

    #@2
    .line 301
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->writtenToDiskLatch:Ljava/util/concurrent/CountDownLatch;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@7
    .line 299
    return-void
.end method
