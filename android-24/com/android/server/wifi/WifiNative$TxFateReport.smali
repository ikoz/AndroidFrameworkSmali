.class public final Lcom/android/server/wifi/WifiNative$TxFateReport;
.super Lcom/android/server/wifi/WifiNative$FateReport;
.source "WifiNative.java"


# annotations
.annotation build Lcom/android/internal/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TxFateReport"
.end annotation


# direct methods
.method constructor <init>(BJB[B)V
    .locals 0
    .param p1, "fate"    # B
    .param p2, "driverTimestampUSec"    # J
    .param p4, "frameType"    # B
    .param p5, "frameBytes"    # [B

    #@0
    .prologue
    .line 2742
    invoke-direct/range {p0 .. p5}, Lcom/android/server/wifi/WifiNative$FateReport;-><init>(BJB[B)V

    #@3
    .line 2741
    return-void
.end method


# virtual methods
.method protected directionToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2747
    const-string/jumbo v0, "TX"

    #@3
    return-object v0
.end method

.method protected fateToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2752
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$TxFateReport;->mFate:B

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 2774
    :pswitch_0
    iget-byte v0, p0, Lcom/android/server/wifi/WifiNative$TxFateReport;->mFate:B

    #@7
    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 2754
    :pswitch_1
    const-string/jumbo v0, "acked"

    #@f
    return-object v0

    #@10
    .line 2756
    :pswitch_2
    const-string/jumbo v0, "sent"

    #@13
    return-object v0

    #@14
    .line 2758
    :pswitch_3
    const-string/jumbo v0, "firmware queued"

    #@17
    return-object v0

    #@18
    .line 2760
    :pswitch_4
    const-string/jumbo v0, "firmware dropped (invalid frame)"

    #@1b
    return-object v0

    #@1c
    .line 2762
    :pswitch_5
    const-string/jumbo v0, "firmware dropped (no bufs)"

    #@1f
    return-object v0

    #@20
    .line 2764
    :pswitch_6
    const-string/jumbo v0, "firmware dropped (other)"

    #@23
    return-object v0

    #@24
    .line 2766
    :pswitch_7
    const-string/jumbo v0, "driver queued"

    #@27
    return-object v0

    #@28
    .line 2768
    :pswitch_8
    const-string/jumbo v0, "driver dropped (invalid frame)"

    #@2b
    return-object v0

    #@2c
    .line 2770
    :pswitch_9
    const-string/jumbo v0, "driver dropped (no bufs)"

    #@2f
    return-object v0

    #@30
    .line 2772
    :pswitch_a
    const-string/jumbo v0, "driver dropped (other)"

    #@33
    return-object v0

    #@34
    .line 2752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public bridge synthetic toTableRowString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toTableRowString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic toVerboseStringWithPiiAllowed()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/server/wifi/WifiNative$FateReport;->toVerboseStringWithPiiAllowed()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
