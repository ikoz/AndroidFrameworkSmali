.class Landroid/app/ActivityTransitionState;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"


# static fields
.field private static final ENTERING_SHARED_ELEMENTS:Ljava/lang/String; = "android:enteringSharedElements"

.field private static final EXITING_MAPPED_FROM:Ljava/lang/String; = "android:exitingMappedFrom"

.field private static final EXITING_MAPPED_TO:Ljava/lang/String; = "android:exitingMappedTo"


# instance fields
.field private mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

.field private mEnterActivityOptions:Landroid/app/ActivityOptions;

.field private mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

.field private mEnteringNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ExitTransitionCoordinator;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExitTransitionCoordinatorsKey:I

.field private mExitingFrom:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingTo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingToView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasExited:Z

.field private mIsEnterPostponed:Z

.field private mIsEnterTriggered:Z

.field private mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method static synthetic -get0(Landroid/app/ActivityTransitionState;)Landroid/app/EnterTransitionCoordinator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/ActivityTransitionState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/app/ActivityTransitionState;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@6
    .line 108
    return-void
.end method

.method private restoreExitedViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 271
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 272
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@7
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    #@a
    .line 273
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@c
    .line 270
    :cond_0
    return-void
.end method

.method private restoreReenteringViews()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 278
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@7
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 279
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->forceViewsToAppear()V

    #@12
    .line 280
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@14
    .line 281
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@16
    .line 282
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@18
    .line 277
    :cond_0
    return-void
.end method

.method private startEnter()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 209
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 210
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 211
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@11
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@13
    .line 212
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@15
    .line 211
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/EnterTransitionCoordinator;->viewInstancesReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@18
    .line 221
    :goto_0
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@1a
    .line 222
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@1c
    .line 223
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@1e
    .line 224
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@20
    .line 208
    return-void

    #@21
    .line 214
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@23
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@25
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@2a
    goto :goto_0

    #@2b
    .line 217
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2d
    invoke-virtual {v0, v4, v4}, Landroid/app/EnterTransitionCoordinator;->namedViewsReady(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@30
    .line 218
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@32
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getAllSharedElementNames()Ljava/util/ArrayList;

    #@35
    move-result-object v0

    #@36
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@38
    goto :goto_0
.end method


# virtual methods
.method public addExitTransitionCoordinator(Landroid/app/ExitTransitionCoordinator;)I
    .locals 5
    .param p1, "exitTransitionCoordinator"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 112
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 114
    new-instance v4, Landroid/util/SparseArray;

    #@6
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    #@9
    .line 113
    iput-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@b
    .line 116
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    #@d
    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@10
    .line 118
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    add-int/lit8 v0, v4, -0x1

    #@18
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@1a
    .line 120
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@22
    .line 121
    .local v2, "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    if-nez v4, :cond_1

    #@28
    .line 122
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->removeAt(I)V

    #@2d
    .line 118
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 125
    .end local v2    # "oldRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/ExitTransitionCoordinator;>;"
    :cond_2
    iget v1, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@32
    add-int/lit8 v4, v1, 0x1

    #@34
    iput v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinatorsKey:I

    #@36
    .line 126
    .local v1, "newKey":I
    iget-object v4, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@3b
    .line 127
    return v1
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 260
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@3
    .line 261
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@5
    .line 262
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@7
    .line 263
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@9
    .line 264
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@b
    .line 265
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@d
    .line 266
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@f
    .line 267
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@11
    .line 259
    return-void
.end method

.method public enterReady(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 176
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@3
    if-eqz v2, :cond_0

    #@5
    iget-boolean v2, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 177
    :cond_0
    return-void

    #@a
    .line 179
    :cond_1
    const/4 v2, 0x1

    #@b
    iput-boolean v2, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@d
    .line 180
    iput-boolean v3, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@f
    .line 181
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@11
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getSharedElementNames()Ljava/util/ArrayList;

    #@14
    move-result-object v1

    #@15
    .line 182
    .local v1, "sharedElementNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@17
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultReceiver()Landroid/os/ResultReceiver;

    #@1a
    move-result-object v0

    #@1b
    .line 183
    .local v0, "resultReceiver":Landroid/os/ResultReceiver;
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@1d
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 184
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@26
    .line 185
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    #@31
    .line 187
    :cond_2
    new-instance v2, Landroid/app/EnterTransitionCoordinator;

    #@33
    .line 188
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@35
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->isReturning()Z

    #@38
    move-result v3

    #@39
    .line 187
    invoke-direct {v2, p1, v0, v1, v3}, Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;Z)V

    #@3c
    iput-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@3e
    .line 190
    iget-boolean v2, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@40
    if-nez v2, :cond_3

    #@42
    .line 191
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    #@45
    .line 175
    :cond_3
    return-void
.end method

.method public onResume(Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isTopOfTask"    # Z

    #@0
    .prologue
    .line 242
    if-nez p2, :cond_0

    #@2
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 243
    :cond_0
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@9
    .line 244
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreReenteringViews()V

    #@c
    .line 239
    :goto_0
    return-void

    #@d
    .line 246
    :cond_1
    iget-object v0, p1, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    #@f
    new-instance v1, Landroid/app/ActivityTransitionState$1;

    #@11
    invoke-direct {v1, p0}, Landroid/app/ActivityTransitionState$1;-><init>(Landroid/app/ActivityTransitionState;)V

    #@14
    .line 255
    const-wide/16 v2, 0x3e8

    #@16
    .line 246
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@19
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 228
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@4
    .line 229
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 230
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@a
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->stop()V

    #@d
    .line 231
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@f
    .line 233
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 234
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@15
    invoke-virtual {v0}, Landroid/app/ExitTransitionCoordinator;->stop()V

    #@18
    .line 235
    iput-object v1, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@1a
    .line 227
    :cond_1
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 196
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@3
    .line 195
    return-void
.end method

.method public readState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 131
    if-eqz p1, :cond_2

    #@2
    .line 132
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@8
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->isReturning()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 133
    :cond_0
    const-string/jumbo v0, "android:enteringSharedElements"

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@17
    .line 135
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 136
    const-string/jumbo v0, "android:exitingMappedFrom"

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@24
    .line 137
    const-string/jumbo v0, "android:exitingMappedTo"

    #@27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@2d
    .line 130
    :cond_2
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    const-string/jumbo v0, "android:enteringSharedElements"

    #@7
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c
    .line 146
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 147
    const-string/jumbo v0, "android:exitingMappedFrom"

    #@13
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@18
    .line 148
    const-string/jumbo v0, "android:exitingMappedTo"

    #@1b
    iget-object v1, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@20
    .line 142
    :cond_1
    return-void
.end method

.method public setEnterActivityOptions(Landroid/app/Activity;Landroid/app/ActivityOptions;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 153
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v1

    #@5
    .line 154
    .local v1, "window":Landroid/view/Window;
    if-nez v1, :cond_0

    #@7
    .line 155
    return-void

    #@8
    .line 158
    :cond_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@b
    .line 159
    const/16 v2, 0xd

    #@d
    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 160
    if-eqz p2, :cond_1

    #@15
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@17
    if-nez v2, :cond_1

    #@19
    .line 161
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 162
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@20
    move-result v2

    #@21
    const/4 v3, 0x5

    #@22
    if-ne v2, v3, :cond_1

    #@24
    .line 163
    iput-object p2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@26
    .line 164
    iput-boolean v4, p0, Landroid/app/ActivityTransitionState;->mIsEnterTriggered:Z

    #@28
    .line 165
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@2a
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->isReturning()Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 166
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->restoreExitedViews()V

    #@33
    .line 167
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@35
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultCode()I

    #@38
    move-result v0

    #@39
    .line 168
    .local v0, "result":I
    if-eqz v0, :cond_1

    #@3b
    .line 169
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnterActivityOptions:Landroid/app/ActivityOptions;

    #@3d
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getResultData()Landroid/content/Intent;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->onActivityReenter(ILandroid/content/Intent;)V

    #@44
    .line 152
    .end local v0    # "result":I
    :cond_1
    return-void
.end method

.method public startExitBackTransition(Landroid/app/Activity;)Z
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 287
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 288
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    .line 290
    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@e
    if-nez v0, :cond_4

    #@10
    .line 291
    iput-boolean v5, p0, Landroid/app/ActivityTransitionState;->mHasExited:Z

    #@12
    .line 292
    const/4 v8, 0x0

    #@13
    .line 293
    .local v8, "enterViewsTransition":Landroid/transition/Transition;
    const/4 v6, 0x0

    #@14
    .line 294
    .local v6, "decor":Landroid/view/ViewGroup;
    const/4 v7, 0x0

    #@15
    .line 295
    .local v7, "delayExitBack":Z
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 296
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@1b
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getEnterViewsTransition()Landroid/transition/Transition;

    #@1e
    move-result-object v8

    #@1f
    .line 297
    .local v8, "enterViewsTransition":Landroid/transition/Transition;
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@21
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    #@24
    move-result-object v6

    #@25
    .line 298
    .local v6, "decor":Landroid/view/ViewGroup;
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@27
    invoke-virtual {v0}, Landroid/app/EnterTransitionCoordinator;->cancelEnter()Z

    #@2a
    move-result v7

    #@2b
    .line 299
    .local v7, "delayExitBack":Z
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@2d
    .line 300
    if-eqz v8, :cond_2

    #@2f
    if-eqz v6, :cond_2

    #@31
    .line 301
    invoke-virtual {v8, v6}, Landroid/transition/Transition;->pause(Landroid/view/View;)V

    #@34
    .line 306
    .end local v6    # "decor":Landroid/view/ViewGroup;
    .end local v7    # "delayExitBack":Z
    .end local v8    # "enterViewsTransition":Landroid/transition/Transition;
    :cond_2
    new-instance v0, Landroid/app/ExitTransitionCoordinator;

    #@36
    iget-object v2, p0, Landroid/app/ActivityTransitionState;->mEnteringNames:Ljava/util/ArrayList;

    #@38
    move-object v1, p1

    #@39
    move-object v4, v3

    #@3a
    invoke-direct/range {v0 .. v5}, Landroid/app/ExitTransitionCoordinator;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    #@3d
    .line 305
    iput-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@3f
    .line 307
    if-eqz v8, :cond_3

    #@41
    if-eqz v6, :cond_3

    #@43
    .line 308
    invoke-virtual {v8, v6}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    #@46
    .line 310
    :cond_3
    if-eqz v7, :cond_5

    #@48
    if-eqz v6, :cond_5

    #@4a
    .line 311
    move-object v9, v6

    #@4b
    .line 312
    .local v9, "finalDecor":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@4e
    move-result-object v0

    #@4f
    .line 313
    new-instance v1, Landroid/app/ActivityTransitionState$2;

    #@51
    invoke-direct {v1, p0, v9, p1}, Landroid/app/ActivityTransitionState$2;-><init>(Landroid/app/ActivityTransitionState;Landroid/view/ViewGroup;Landroid/app/Activity;)V

    #@54
    .line 312
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@57
    .line 328
    .end local v9    # "finalDecor":Landroid/view/ViewGroup;
    :cond_4
    :goto_0
    return v5

    #@58
    .line 325
    :cond_5
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mReturnExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@5a
    iget v1, p1, Landroid/app/Activity;->mResultCode:I

    #@5c
    iget-object v2, p1, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    #@61
    goto :goto_0
.end method

.method public startExitOutTransition(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 333
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@4
    move-result-object v3

    #@5
    const/16 v4, 0xd

    #@7
    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    #@a
    move-result v3

    #@b
    if-nez v3, :cond_0

    #@d
    .line 334
    return-void

    #@e
    .line 336
    :cond_0
    new-instance v0, Landroid/app/ActivityOptions;

    #@10
    invoke-direct {v0, p2}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@13
    .line 337
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    iput-object v5, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@15
    .line 338
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@18
    move-result v3

    #@19
    const/4 v4, 0x5

    #@1a
    if-ne v3, v4, :cond_1

    #@1c
    .line 339
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getExitCoordinatorKey()I

    #@1f
    move-result v2

    #@20
    .line 340
    .local v2, "key":I
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@22
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@25
    move-result v1

    #@26
    .line 341
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@28
    .line 342
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@2a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@30
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Landroid/app/ExitTransitionCoordinator;

    #@36
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@38
    .line 343
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mExitTransitionCoordinators:Landroid/util/SparseArray;

    #@3a
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@3d
    .line 344
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@3f
    if-eqz v3, :cond_1

    #@41
    .line 345
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@43
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getAcceptedNames()Ljava/util/ArrayList;

    #@46
    move-result-object v3

    #@47
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingFrom:Ljava/util/ArrayList;

    #@49
    .line 346
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@4b
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->getMappedNames()Ljava/util/ArrayList;

    #@4e
    move-result-object v3

    #@4f
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingTo:Ljava/util/ArrayList;

    #@51
    .line 347
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@53
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->copyMappedViews()Ljava/util/ArrayList;

    #@56
    move-result-object v3

    #@57
    iput-object v3, p0, Landroid/app/ActivityTransitionState;->mExitingToView:Ljava/util/ArrayList;

    #@59
    .line 348
    iget-object v3, p0, Landroid/app/ActivityTransitionState;->mCalledExitCoordinator:Landroid/app/ExitTransitionCoordinator;

    #@5b
    invoke-virtual {v3}, Landroid/app/ExitTransitionCoordinator;->startExit()V

    #@5e
    .line 332
    .end local v1    # "index":I
    .end local v2    # "key":I
    :cond_1
    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 1

    #@0
    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 201
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/app/ActivityTransitionState;->mIsEnterPostponed:Z

    #@7
    .line 202
    iget-object v0, p0, Landroid/app/ActivityTransitionState;->mEnterTransitionCoordinator:Landroid/app/EnterTransitionCoordinator;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 203
    invoke-direct {p0}, Landroid/app/ActivityTransitionState;->startEnter()V

    #@e
    .line 199
    :cond_0
    return-void
.end method
