.class Lcom/android/internal/app/ToolbarActionBar$2;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ToolbarActionBar;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/app/ToolbarActionBar$2;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/app/ToolbarActionBar$2;->this$0:Lcom/android/internal/app/ToolbarActionBar;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/ToolbarActionBar;->-get2(Lcom/android/internal/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method