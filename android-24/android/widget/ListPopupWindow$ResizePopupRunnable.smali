.class Landroid/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    .line 1265
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1267
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@2
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@a
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isAttachedToWindow()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1268
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@16
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getCount()I

    #@1d
    move-result v0

    #@1e
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@20
    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getChildCount()I

    #@27
    move-result v1

    #@28
    if-le v0, v1, :cond_0

    #@2a
    .line 1269
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@2c
    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChildCount()I

    #@33
    move-result v0

    #@34
    iget-object v1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@36
    iget v1, v1, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    #@38
    if-gt v0, v1, :cond_0

    #@3a
    .line 1270
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@3c
    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    #@3e
    const/4 v1, 0x2

    #@3f
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    #@42
    .line 1271
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    #@44
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    #@47
    .line 1266
    :cond_0
    return-void
.end method
