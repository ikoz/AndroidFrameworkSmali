.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 1
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    #@0
    .prologue
    .line 648
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    #@5
    .line 651
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@8
    .line 648
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    #@0
    .prologue
    .line 655
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    #@3
    .line 656
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    #@6
    .line 657
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    #@9
    .line 658
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    const v1, 0x30065

    #@e
    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    #@11
    .line 654
    return-void
.end method

.method public exit()V
    .locals 1

    #@0
    .prologue
    .line 681
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@2
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@9
    .line 682
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@b
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    #@12
    .line 680
    return-void
.end method

.method protected initTimer()V
    .locals 1

    #@0
    .prologue
    .line 690
    const/16 v0, 0x7d0

    #@2
    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@4
    .line 689
    return-void
.end method

.method protected jitterTimer(I)I
    .locals 4
    .param p1, "baseTimer"    # I

    #@0
    .prologue
    .line 694
    div-int/lit8 v1, p1, 0xa

    #@2
    .line 695
    .local v1, "maxJitter":I
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@4
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    #@7
    move-result-object v2

    #@8
    mul-int/lit8 v3, v1, 0x2

    #@a
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    #@d
    move-result v2

    #@e
    sub-int v0, v2, v1

    #@10
    .line 696
    .local v0, "jitter":I
    add-int v2, p1, v0

    #@12
    return v2
.end method

.method protected maybeInitTimeout()V
    .locals 6

    #@0
    .prologue
    .line 711
    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@2
    if-lez v2, :cond_0

    #@4
    .line 712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v2

    #@8
    iget v4, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    #@a
    int-to-long v4, v4

    #@b
    add-long v0, v2, v4

    #@d
    .line 713
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@f
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->-get19(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@16
    .line 710
    .end local v0    # "alarmTime":J
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 663
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    #@4
    .line 664
    iget v0, p1, Landroid/os/Message;->what:I

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 676
    const/4 v0, 0x0

    #@a
    return v0

    #@b
    .line 666
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    #@e
    .line 667
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    #@11
    .line 668
    return v1

    #@12
    .line 670
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    #@16
    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    #@19
    .line 671
    return v1

    #@1a
    .line 673
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    #@1d
    .line 674
    return v1

    #@1e
    .line 664
    :pswitch_data_0
    .packed-switch 0x30065
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .locals 8

    #@0
    .prologue
    const v7, 0x1f400

    #@3
    .line 700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    .line 701
    .local v2, "now":J
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@9
    invoke-virtual {p0, v6}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    #@c
    move-result v6

    #@d
    int-to-long v4, v6

    #@e
    .line 702
    .local v4, "timeout":J
    add-long v0, v2, v4

    #@10
    .line 703
    .local v0, "alarmTime":J
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    #@12
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->-get10(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    #@15
    move-result-object v6

    #@16
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    #@19
    .line 704
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@1b
    mul-int/lit8 v6, v6, 0x2

    #@1d
    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@1f
    .line 705
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@21
    if-le v6, v7, :cond_0

    #@23
    .line 706
    iput v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    #@25
    .line 699
    :cond_0
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .locals 0

    #@0
    .prologue
    .line 687
    return-void
.end method
