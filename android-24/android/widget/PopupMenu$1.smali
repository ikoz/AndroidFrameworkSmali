.class Landroid/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/PopupMenu;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@2
    invoke-static {v0}, Landroid/widget/PopupMenu;->-get0(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 104
    iget-object v0, p0, Landroid/widget/PopupMenu$1;->this$0:Landroid/widget/PopupMenu;

    #@a
    invoke-static {v0}, Landroid/widget/PopupMenu;->-get0(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p2}, Landroid/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@11
    move-result v0

    #@12
    return v0

    #@13
    .line 106
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 110
    return-void
.end method