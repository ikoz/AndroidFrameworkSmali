.class Landroid/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/FastScroller;

    #@0
    .prologue
    .line 230
    iput-object p1, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/widget/FastScroller$1;->this$0:Landroid/widget/FastScroller;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/widget/FastScroller;->-wrap0(Landroid/widget/FastScroller;I)V

    #@6
    .line 232
    return-void
.end method