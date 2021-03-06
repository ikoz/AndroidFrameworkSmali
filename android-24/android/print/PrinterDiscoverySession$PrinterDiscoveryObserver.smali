.class public final Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;
.super Landroid/print/IPrinterDiscoveryObserver$Stub;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrinterDiscoveryObserver"
.end annotation


# instance fields
.field private final mWeakSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrinterDiscoverySession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrinterDiscoverySession;)V
    .locals 1
    .param p1, "session"    # Landroid/print/PrinterDiscoverySession;

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Landroid/print/IPrinterDiscoveryObserver$Stub;-><init>()V

    #@3
    .line 295
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    #@a
    .line 294
    return-void
.end method


# virtual methods
.method public onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "printers"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 301
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/print/PrinterDiscoverySession;

    #@8
    .line 302
    .local v0, "session":Landroid/print/PrinterDiscoverySession;
    if-eqz v0, :cond_0

    #@a
    .line 303
    invoke-static {v0}, Landroid/print/PrinterDiscoverySession;->-get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    .line 304
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 303
    const/4 v3, 0x1

    #@13
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 300
    :cond_0
    return-void
.end method

.method public onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .locals 4
    .param p1, "printerIds"    # Landroid/content/pm/ParceledListSlice;

    #@0
    .prologue
    .line 311
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;->mWeakSession:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/print/PrinterDiscoverySession;

    #@8
    .line 312
    .local v0, "session":Landroid/print/PrinterDiscoverySession;
    if-eqz v0, :cond_0

    #@a
    .line 313
    invoke-static {v0}, Landroid/print/PrinterDiscoverySession;->-get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    .line 314
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    #@11
    move-result-object v2

    #@12
    .line 313
    const/4 v3, 0x2

    #@13
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@1a
    .line 310
    :cond_0
    return-void
.end method
