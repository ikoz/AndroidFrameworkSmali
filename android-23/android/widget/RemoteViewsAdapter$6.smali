.class Landroid/widget/RemoteViewsAdapter$6;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RemoteViewsAdapter;

    #@0
    .prologue
    .line 1351
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$6;->this$0:Landroid/widget/RemoteViewsAdapter;

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
    .line 1354
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$6;->this$0:Landroid/widget/RemoteViewsAdapter;

    #@2
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-wrap2(Landroid/widget/RemoteViewsAdapter;)V

    #@5
    .line 1353
    return-void
.end method
