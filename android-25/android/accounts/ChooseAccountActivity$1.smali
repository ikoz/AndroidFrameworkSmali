.class Landroid/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/ChooseAccountActivity;

    #@0
    .prologue
    .line 84
    iput-object p1, p0, Landroid/accounts/ChooseAccountActivity$1;->this$0:Landroid/accounts/ChooseAccountActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity$1;->this$0:Landroid/accounts/ChooseAccountActivity;

    #@2
    move-object v1, p1

    #@3
    check-cast v1, Landroid/widget/ListView;

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move-wide v4, p4

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/ChooseAccountActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    #@b
    .line 85
    return-void
.end method
