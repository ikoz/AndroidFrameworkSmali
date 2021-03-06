.class Landroid/hardware/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/fingerprint/FingerprintManager;

    #@0
    .prologue
    .line 970
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    #@0
    .prologue
    .line 980
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x65

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 979
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x67

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 989
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    #@0
    .prologue
    .line 985
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x66

    #@8
    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 984
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    #@0
    .prologue
    .line 974
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v6

    #@6
    .line 975
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    #@8
    const/4 v1, 0x0

    #@9
    move v2, p4

    #@a
    move v3, p3

    #@b
    move-wide v4, p1

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    #@f
    .line 974
    const/16 v1, 0x64

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v6, v1, p5, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 973
    return-void
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    #@0
    .prologue
    .line 995
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x68

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, p3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 994
    return-void
.end method

.method public onRemoved(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$1;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    #@2
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->-get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v1

    #@a
    const/16 v2, 0x69

    #@c
    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@13
    .line 999
    return-void
.end method
