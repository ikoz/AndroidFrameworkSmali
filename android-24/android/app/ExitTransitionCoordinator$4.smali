.class Landroid/app/ExitTransitionCoordinator$4;
.super Ljava/lang/Object;
.source "ExitTransitionCoordinator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ExitTransitionCoordinator;->startExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ExitTransitionCoordinator;


# direct methods
.method constructor <init>(Landroid/app/ExitTransitionCoordinator;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ExitTransitionCoordinator;

    #@0
    .prologue
    .line 207
    iput-object p1, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/app/ExitTransitionCoordinator$4;->this$0:Landroid/app/ExitTransitionCoordinator;

    #@2
    invoke-static {v0}, Landroid/app/ExitTransitionCoordinator;->-wrap0(Landroid/app/ExitTransitionCoordinator;)V

    #@5
    .line 209
    return-void
.end method
