.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;
.super Lcom/android/internal/util/State;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanningState"
.end annotation


# instance fields
.field private mScanWorkSource:Landroid/os/WorkSource;

.field final synthetic this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@0
    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@2
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    #@0
    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@2
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->createMergedWorkSource()Landroid/os/WorkSource;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    #@c
    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@e
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@10
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    #@16
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 590
    :goto_0
    return-void

    #@1a
    .line 594
    :catch_0
    move-exception v0

    #@1b
    .line 595
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@1d
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V

    #@24
    goto :goto_0
.end method

.method public exit()V
    .locals 5

    #@0
    .prologue
    .line 602
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@2
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@4
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get3(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->mScanWorkSource:Landroid/os/WorkSource;

    #@a
    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 608
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@f
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@11
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@14
    move-result-object v1

    #@15
    .line 610
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@17
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@1e
    move-result v2

    #@1f
    .line 609
    const/4 v3, 0x0

    #@20
    .line 608
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    #@23
    .line 611
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@25
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@27
    invoke-static {v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@2a
    move-result-object v2

    #@2b
    .line 612
    const-string/jumbo v3, "Scan was interrupted"

    #@2e
    .line 611
    const/4 v4, -0x1

    #@2f
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    #@32
    .line 600
    return-void

    #@33
    .line 603
    :catch_0
    move-exception v0

    #@34
    .line 604
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@36
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-wrap1(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Ljava/lang/String;)V

    #@3d
    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 617
    iget v0, p1, Landroid/os/Message;->what:I

    #@4
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 637
    return v2

    #@8
    .line 619
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@a
    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@c
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@f
    move-result-object v0

    #@10
    .line 621
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@12
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@19
    move-result v1

    #@1a
    .line 619
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    #@1d
    .line 622
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@1f
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@21
    iget-object v1, v1, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@23
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get12(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScannerImpl;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScannerImpl;->getLatestSingleScanResults()Landroid/net/wifi/WifiScanner$ScanData;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->reportScanResults(Landroid/net/wifi/WifiScanner$ScanData;)V

    #@2e
    .line 623
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@30
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->clear()V

    #@37
    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@39
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@3b
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/internal/util/IState;)V

    #@42
    .line 625
    return v4

    #@43
    .line 627
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@47
    check-cast v0, Landroid/net/wifi/ScanResult;

    #@49
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@4b
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->reportFullScanResult(Landroid/net/wifi/ScanResult;I)V

    #@4e
    .line 628
    return v4

    #@4f
    .line 630
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@51
    iget-object v0, v0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    #@53
    invoke-static {v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->-get16(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiMetrics;

    #@56
    move-result-object v0

    #@57
    .line 631
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@59
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;->size()I

    #@60
    move-result v1

    #@61
    .line 630
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementScanReturnEntry(II)V

    #@64
    .line 632
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@66
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@68
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get0(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;

    #@6b
    move-result-object v1

    #@6c
    .line 633
    const-string/jumbo v2, "Scan failed"

    #@6f
    .line 632
    const/4 v3, -0x1

    #@70
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->sendOpFailedToAllAndClear(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$RequestList;ILjava/lang/String;)V

    #@73
    .line 634
    iget-object v0, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@75
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$ScanningState;->this$1:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;

    #@77
    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-get2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine$IdleState;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;->-wrap2(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$WifiSingleScanStateMachine;Lcom/android/internal/util/IState;)V

    #@7e
    .line 635
    return v4

    #@7f
    .line 617
    nop

    #@80
    :sswitch_data_0
    .sparse-switch
        0x27100 -> :sswitch_0
        0x27101 -> :sswitch_1
        0x2710a -> :sswitch_2
    .end sparse-switch
.end method
