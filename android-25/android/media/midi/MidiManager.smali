.class public final Landroid/media/midi/MidiManager;
.super Ljava/lang/Object;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiManager$DeviceCallback;,
        Landroid/media/midi/MidiManager$DeviceListener;,
        Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.bluetoothmidiservice.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_INTENT:Ljava/lang/String; = "android.media.midi.BluetoothMidiService"

.field public static final BLUETOOTH_MIDI_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.bluetoothmidiservice"

.field private static final TAG:Ljava/lang/String; = "MidiManager"


# instance fields
.field private mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/media/midi/MidiManager$DeviceCallback;",
            "Landroid/media/midi/MidiManager$DeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/media/midi/IMidiManager;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/media/midi/MidiManager;)Landroid/media/midi/IMidiManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/midi/MidiManager;)Landroid/os/IBinder;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/midi/MidiManager;->sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/media/midi/IMidiManager;)V
    .locals 1
    .param p1, "service"    # Landroid/media/midi/IMidiManager;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v0, Landroid/os/Binder;

    #@5
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@a
    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@f
    .line 64
    iput-object v0, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    .line 166
    iput-object p1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@13
    .line 165
    return-void
.end method

.method private sendOpenDeviceResponse(Landroid/media/midi/MidiDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Landroid/media/midi/MidiDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 225
    if-eqz p3, :cond_0

    #@2
    .line 226
    new-instance v0, Landroid/media/midi/MidiManager$1;

    #@4
    invoke-direct {v0, p0, p2, p1}, Landroid/media/midi/MidiManager$1;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/media/midi/MidiDevice;)V

    #@7
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    .line 224
    :goto_0
    return-void

    #@b
    .line 232
    :cond_0
    invoke-interface {p2, p1}, Landroid/media/midi/MidiManager$OnDeviceOpenedListener;->onDeviceOpened(Landroid/media/midi/MidiDevice;)V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;
    .locals 12
    .param p1, "inputPortReceivers"    # [Landroid/media/midi/MidiReceiver;
    .param p2, "numOutputPorts"    # I
    .param p3, "inputPortNames"    # [Ljava/lang/String;
    .param p4, "outputPortNames"    # [Ljava/lang/String;
    .param p5, "properties"    # Landroid/os/Bundle;
    .param p6, "type"    # I
    .param p7, "callback"    # Landroid/media/midi/MidiDeviceServer$Callback;

    #@0
    .prologue
    .line 316
    :try_start_0
    new-instance v11, Landroid/media/midi/MidiDeviceServer;

    #@2
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@4
    move-object/from16 v0, p7

    #@6
    invoke-direct {v11, v1, p1, p2, v0}, Landroid/media/midi/MidiDeviceServer;-><init>(Landroid/media/midi/IMidiManager;[Landroid/media/midi/MidiReceiver;ILandroid/media/midi/MidiDeviceServer$Callback;)V

    #@9
    .line 318
    .local v11, "server":Landroid/media/midi/MidiDeviceServer;
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@b
    invoke-virtual {v11}, Landroid/media/midi/MidiDeviceServer;->getBinderInterface()Landroid/media/midi/IMidiDeviceServer;

    #@e
    move-result-object v2

    #@f
    .line 319
    array-length v3, p1

    #@10
    move v4, p2

    #@11
    move-object v5, p3

    #@12
    move-object/from16 v6, p4

    #@14
    move-object/from16 v7, p5

    #@16
    move/from16 v8, p6

    #@18
    .line 318
    invoke-interface/range {v1 .. v8}, Landroid/media/midi/IMidiManager;->registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;

    #@1b
    move-result-object v9

    #@1c
    .line 321
    .local v9, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-nez v9, :cond_0

    #@1e
    .line 322
    const-string/jumbo v1, "MidiManager"

    #@21
    const-string/jumbo v2, "registerVirtualDevice failed"

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    .line 323
    const/4 v1, 0x0

    #@28
    return-object v1

    #@29
    .line 325
    :cond_0
    return-object v11

    #@2a
    .line 326
    .end local v9    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v11    # "server":Landroid/media/midi/MidiDeviceServer;
    :catch_0
    move-exception v10

    #@2b
    .line 327
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .locals 2

    #@0
    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@2
    invoke-interface {v1}, Landroid/media/midi/IMidiManager;->getDevices()[Landroid/media/midi/MidiDeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 218
    :catch_0
    move-exception v0

    #@8
    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 284
    move-object v3, p2

    #@1
    .line 285
    .local v3, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v2, p3

    #@2
    .line 287
    .local v2, "handlerF":Landroid/os/Handler;
    new-instance v0, Landroid/media/midi/MidiManager$3;

    #@4
    invoke-direct {v0, p0, p2, p3}, Landroid/media/midi/MidiManager$3;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    #@7
    .line 305
    .local v0, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v4, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@9
    iget-object v5, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@b
    invoke-interface {v4, v5, p1, v0}, Landroid/media/midi/IMidiManager;->openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 283
    return-void

    #@f
    .line 306
    :catch_0
    move-exception v1

    #@10
    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@13
    move-result-object v4

    #@14
    throw v4
.end method

.method public openDevice(Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V
    .locals 7
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p2, "listener"    # Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 248
    move-object v1, p1

    #@1
    .line 249
    .local v1, "deviceInfoF":Landroid/media/midi/MidiDeviceInfo;
    move-object v4, p2

    #@2
    .line 250
    .local v4, "listenerF":Landroid/media/midi/MidiManager$OnDeviceOpenedListener;
    move-object v3, p3

    #@3
    .line 252
    .local v3, "handlerF":Landroid/os/Handler;
    new-instance v0, Landroid/media/midi/MidiManager$2;

    #@5
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/midi/MidiManager$2;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/MidiManager$OnDeviceOpenedListener;Landroid/os/Handler;)V

    #@8
    .line 266
    .local v0, "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :try_start_0
    iget-object v5, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@a
    iget-object v6, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@c
    invoke-interface {v5, v6, p1, v0}, Landroid/media/midi/IMidiManager;->openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 247
    return-void

    #@10
    .line 267
    :catch_0
    move-exception v2

    #@11
    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@14
    move-result-object v5

    #@15
    throw v5
.end method

.method public registerDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 185
    new-instance v0, Landroid/media/midi/MidiManager$DeviceListener;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/media/midi/MidiManager$DeviceListener;-><init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Landroid/os/Handler;)V

    #@5
    .line 187
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@7
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@9
    invoke-interface {v2, v3, v0}, Landroid/media/midi/IMidiManager;->registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 191
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 184
    return-void

    #@12
    .line 188
    :catch_0
    move-exception v1

    #@13
    .line 189
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v2

    #@17
    throw v2
.end method

.method public unregisterDeviceCallback(Landroid/media/midi/MidiManager$DeviceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/midi/MidiManager$DeviceCallback;

    #@0
    .prologue
    .line 200
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mDeviceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/media/midi/MidiManager$DeviceListener;

    #@8
    .line 201
    .local v0, "deviceListener":Landroid/media/midi/MidiManager$DeviceListener;
    if-eqz v0, :cond_0

    #@a
    .line 203
    :try_start_0
    iget-object v2, p0, Landroid/media/midi/MidiManager;->mService:Landroid/media/midi/IMidiManager;

    #@c
    iget-object v3, p0, Landroid/media/midi/MidiManager;->mToken:Landroid/os/IBinder;

    #@e
    invoke-interface {v2, v3, v0}, Landroid/media/midi/IMidiManager;->unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 199
    :cond_0
    return-void

    #@12
    .line 204
    :catch_0
    move-exception v1

    #@13
    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    #@16
    move-result-object v2

    #@17
    throw v2
.end method
