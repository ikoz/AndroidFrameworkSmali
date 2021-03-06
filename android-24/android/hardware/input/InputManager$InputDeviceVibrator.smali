.class final Landroid/hardware/input/InputManager$InputDeviceVibrator;
.super Landroid/os/Vibrator;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDeviceVibrator"
.end annotation


# instance fields
.field private final mDeviceId:I

.field private final mToken:Landroid/os/Binder;

.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/input/InputManager;
    .param p2, "deviceId"    # I

    #@0
    .prologue
    .line 1122
    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    #@2
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    #@5
    .line 1123
    iput p2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    #@7
    .line 1124
    new-instance v0, Landroid/os/Binder;

    #@9
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@c
    iput-object v0, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    #@e
    .line 1122
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    #@0
    .prologue
    .line 1159
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    #@2
    invoke-static {v1}, Landroid/hardware/input/InputManager;->-get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    #@8
    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    #@a
    invoke-interface {v1, v2, v3}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1157
    return-void

    #@e
    .line 1160
    :catch_0
    move-exception v0

    #@f
    .line 1161
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public hasVibrator()Z
    .locals 1

    #@0
    .prologue
    .line 1129
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 1137
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [J

    #@3
    const-wide/16 v2, 0x0

    #@5
    const/4 v1, 0x0

    #@6
    aput-wide v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    aput-wide p3, v0, v1

    #@b
    const/4 v1, -0x1

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    #@f
    .line 1136
    return-void
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 1146
    array-length v1, p3

    #@1
    if-lt p4, v1, :cond_0

    #@3
    .line 1147
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@5
    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@8
    throw v1

    #@9
    .line 1150
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->this$0:Landroid/hardware/input/InputManager;

    #@b
    invoke-static {v1}, Landroid/hardware/input/InputManager;->-get0(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;

    #@e
    move-result-object v1

    #@f
    iget v2, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mDeviceId:I

    #@11
    iget-object v3, p0, Landroid/hardware/input/InputManager$InputDeviceVibrator;->mToken:Landroid/os/Binder;

    #@13
    invoke-interface {v1, v2, p3, p4, v3}, Landroid/hardware/input/IInputManager;->vibrate(I[JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1145
    return-void

    #@17
    .line 1151
    :catch_0
    move-exception v0

    #@18
    .line 1152
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@1b
    move-result-object v1

    #@1c
    throw v1
.end method
