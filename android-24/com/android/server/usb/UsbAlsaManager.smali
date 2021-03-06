.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$1;,
        Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

.field private final mAlsaDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlsaObserver:Landroid/os/FileObserver;

.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 53
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@8
    .line 52
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    #@6
    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@b
    .line 63
    new-instance v0, Lcom/android/internal/alsa/AlsaDevicesParser;

    #@d
    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaDevicesParser;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@12
    .line 69
    new-instance v0, Ljava/util/HashMap;

    #@14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@19
    .line 72
    new-instance v0, Ljava/util/HashMap;

    #@1b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1e
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    #@20
    .line 75
    new-instance v0, Ljava/util/HashMap;

    #@22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@25
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@27
    .line 77
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@29
    .line 80
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@2b
    .line 116
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    #@2d
    const-string/jumbo v1, "/dev/snd/"

    #@30
    .line 117
    const/16 v2, 0x300

    #@32
    .line 116
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V

    #@35
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    #@37
    .line 131
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    #@39
    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3c
    move-result-object v0

    #@3d
    const-string/jumbo v1, "android.software.midi"

    #@40
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@43
    move-result v0

    #@44
    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    #@46
    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@48
    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    #@4b
    .line 130
    return-void
.end method

.method private alsaFileAdded(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 246
    const/4 v7, 0x0

    #@1
    .line 247
    .local v7, "type":I
    const/4 v2, -0x1

    #@2
    .local v2, "card":I
    const/4 v4, -0x1

    #@3
    .line 249
    .local v4, "device":I
    const-string/jumbo v8, "pcmC"

    #@6
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9
    move-result v8

    #@a
    if-eqz v8, :cond_6

    #@c
    .line 250
    const-string/jumbo v8, "p"

    #@f
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@12
    move-result v8

    #@13
    if-eqz v8, :cond_5

    #@15
    .line 251
    const/4 v7, 0x1

    #@16
    .line 259
    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    #@18
    .line 261
    const/16 v8, 0x43

    #@1a
    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v1

    #@1e
    .line 262
    .local v1, "c_index":I
    const/16 v8, 0x44

    #@20
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@23
    move-result v3

    #@24
    .line 263
    .local v3, "d_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@27
    move-result v6

    #@28
    .line 264
    .local v6, "end":I
    const/4 v8, 0x1

    #@29
    if-eq v7, v8, :cond_1

    #@2b
    const/4 v8, 0x2

    #@2c
    if-ne v7, v8, :cond_2

    #@2e
    .line 266
    :cond_1
    add-int/lit8 v6, v6, -0x1

    #@30
    .line 268
    :cond_2
    add-int/lit8 v8, v1, 0x1

    #@32
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@39
    move-result v2

    #@3a
    .line 269
    add-int/lit8 v8, v3, 0x1

    #@3c
    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    move-result v4

    #@44
    .line 274
    iget-object v9, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@46
    monitor-enter v9

    #@47
    .line 275
    :try_start_1
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@49
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    move-result-object v8

    #@4d
    if-nez v8, :cond_3

    #@4f
    .line 276
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@51
    invoke-direct {v0, p0, v7, v2, v4}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    #@54
    .line 277
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@56
    new-instance v10, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v11, "Adding ALSA device "

    #@5e
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v10

    #@62
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v10

    #@6a
    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 278
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@6f
    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 279
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@74
    invoke-virtual {v8}, Ljava/util/HashMap;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@77
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_3
    monitor-exit v9

    #@78
    .line 245
    .end local v1    # "c_index":I
    .end local v3    # "d_index":I
    .end local v6    # "end":I
    :cond_4
    return-void

    #@79
    .line 252
    :cond_5
    const-string/jumbo v8, "c"

    #@7c
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7f
    move-result v8

    #@80
    if-eqz v8, :cond_0

    #@82
    .line 253
    const/4 v7, 0x2

    #@83
    goto :goto_0

    #@84
    .line 255
    :cond_6
    const-string/jumbo v8, "midiC"

    #@87
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8a
    move-result v8

    #@8b
    if-eqz v8, :cond_0

    #@8d
    .line 256
    const/4 v7, 0x3

    #@8e
    goto :goto_0

    #@8f
    .line 270
    :catch_0
    move-exception v5

    #@90
    .line 271
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@92
    new-instance v9, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v10, "Could not parse ALSA file name "

    #@9a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v9

    #@a2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v9

    #@a6
    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a9
    .line 272
    return-void

    #@aa
    .line 274
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "c_index":I
    .restart local v3    # "d_index":I
    .restart local v6    # "end":I
    :catchall_0
    move-exception v8

    #@ab
    monitor-exit v9

    #@ac
    throw v8
.end method

.method private alsaFileRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@b
    .line 288
    .local v0, "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v0, :cond_0

    #@d
    .line 289
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "ALSA device removed: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    :cond_0
    monitor-exit v2

    #@27
    .line 285
    return-void

    #@28
    .line 286
    .end local v0    # "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :catchall_0
    move-exception v1

    #@29
    monitor-exit v2

    #@2a
    throw v1
.end method

.method private notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V
    .locals 10
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAudioDevice;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 161
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 162
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@7
    const-string/jumbo v4, "no AudioService"

    #@a
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 163
    return-void

    #@e
    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v0

    #@14
    .line 172
    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    #@17
    .line 171
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@1a
    move-result v9

    #@1b
    .line 173
    .local v9, "isDisabled":I
    if-eqz v9, :cond_1

    #@1d
    .line 174
    return-void

    #@1e
    .line 177
    :cond_1
    if-eqz p2, :cond_3

    #@20
    const/4 v2, 0x1

    #@21
    .line 178
    .local v2, "state":I
    :goto_0
    iget v6, p1, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    #@23
    .line 179
    .local v6, "alsaCard":I
    iget v7, p1, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    #@25
    .line 180
    .local v7, "alsaDevice":I
    if-ltz v6, :cond_2

    #@27
    if-gez v7, :cond_4

    #@29
    .line 181
    :cond_2
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@2b
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v5, "Invalid alsa card or device alsaCard: "

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    .line 182
    const-string/jumbo v5, " alsaDevice: "

    #@3e
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v4

    #@4a
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 183
    return-void

    #@4e
    .line 177
    .end local v2    # "state":I
    .end local v6    # "alsaCard":I
    .end local v7    # "alsaDevice":I
    :cond_3
    const/4 v2, 0x0

    #@4f
    .restart local v2    # "state":I
    goto :goto_0

    #@50
    .line 186
    .restart local v6    # "alsaCard":I
    .restart local v7    # "alsaDevice":I
    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    .line 189
    .local v3, "address":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    #@56
    if-eqz v0, :cond_5

    #@58
    .line 190
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@5a
    if-ne p1, v0, :cond_7

    #@5c
    .line 191
    const/16 v1, 0x2000

    #@5e
    .line 197
    .local v1, "device":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    #@60
    .line 198
    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@62
    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@64
    .line 197
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 202
    .end local v1    # "device":I
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    #@69
    if-eqz v0, :cond_6

    #@6b
    .line 203
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@6d
    if-ne p1, v0, :cond_8

    #@6f
    .line 204
    const v1, -0x7ffff800

    #@72
    .line 206
    .restart local v1    # "device":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    #@74
    .line 207
    iget-object v4, p1, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@76
    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@78
    .line 206
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7b
    .line 156
    .end local v1    # "device":I
    :cond_6
    :goto_3
    return-void

    #@7c
    .line 192
    :cond_7
    const/16 v1, 0x4000

    #@7e
    .restart local v1    # "device":I
    goto :goto_1

    #@7f
    .line 205
    .end local v1    # "device":I
    :cond_8
    const v1, -0x7ffff000

    #@82
    .restart local v1    # "device":I
    goto :goto_2

    #@83
    .line 209
    .end local v1    # "device":I
    :catch_0
    move-exception v8

    #@84
    .line 210
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@86
    const-string/jumbo v4, "RemoteException in setWiredDeviceConnectionState"

    #@89
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    goto :goto_3
.end method

.method private waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .locals 18
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "type"    # I

    #@0
    .prologue
    .line 219
    new-instance v6, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@2
    move-object/from16 v0, p0

    #@4
    move/from16 v1, p3

    #@6
    move/from16 v2, p1

    #@8
    move/from16 v3, p2

    #@a
    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    #@d
    .line 222
    .local v6, "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    const/16 v5, 0x9c4

    #@f
    .line 224
    .local v5, "kWaitTime":I
    move-object/from16 v0, p0

    #@11
    iget-object v12, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@13
    monitor-enter v12

    #@14
    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@17
    move-result-wide v14

    #@18
    const-wide/16 v16, 0x9c4

    #@1a
    add-long v8, v14, v16

    #@1c
    .line 227
    .local v8, "timeout":J
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@20
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@23
    move-result-object v7

    #@24
    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_1

    #@2a
    monitor-exit v12

    #@2b
    .line 228
    return-object v6

    #@2c
    .line 230
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    move-result-wide v14

    #@30
    sub-long v10, v8, v14

    #@32
    .line 231
    .local v10, "waitTime":J
    const-wide/16 v14, 0x0

    #@34
    cmp-long v7, v10, v14

    #@36
    if-lez v7, :cond_2

    #@38
    .line 233
    :try_start_2
    move-object/from16 v0, p0

    #@3a
    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    #@3c
    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    .line 238
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@42
    move-result-wide v14

    #@43
    cmp-long v7, v8, v14

    #@45
    if-gtz v7, :cond_0

    #@47
    monitor-exit v12

    #@48
    .line 241
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@4a
    new-instance v12, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v13, "waitForAlsaDevice failed for "

    #@52
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v12

    #@56
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v12

    #@5a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v12

    #@5e
    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    .line 242
    const/4 v7, 0x0

    #@62
    return-object v7

    #@63
    .line 234
    :catch_0
    move-exception v4

    #@64
    .line 235
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@66
    const-string/jumbo v13, "usb: InterruptedException while waiting for ALSA file."

    #@69
    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@6c
    goto :goto_0

    #@6d
    .line 224
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "timeout":J
    .end local v10    # "waitTime":J
    :catchall_0
    move-exception v7

    #@6e
    monitor-exit v12

    #@6f
    throw v7
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    #@0
    .prologue
    .line 512
    const-string/jumbo v2, "USB Audio Devices:"

    #@3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 513
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@1c
    .line 514
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "  "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, ": "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@39
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@48
    goto :goto_0

    #@49
    .line 516
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    const-string/jumbo v2, "USB MIDI Devices:"

    #@4c
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@4f
    .line 517
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    #@51
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@54
    move-result-object v2

    #@55
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v1

    #@59
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v2

    #@5d
    if-eqz v2, :cond_1

    #@5f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    #@65
    .line 518
    .restart local v0    # "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v3, "  "

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v2

    #@79
    const-string/jumbo v3, ": "

    #@7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    #@82
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v2

    #@8a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@91
    goto :goto_1

    #@92
    .line 511
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1
    return-void
.end method

.method public getConnectedDevices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 501
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@4
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 502
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/UsbAudioDevice;>;"
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@d
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v3

    #@11
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Map$Entry;

    #@21
    .line 503
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Lcom/android/server/usb/UsbAudioDevice;

    #@27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_0

    #@2b
    .line 505
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/UsbAudioDevice;>;"
    :cond_0
    return-object v0
.end method

.method public logDevices(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 534
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    #@0
    .prologue
    .line 522
    return-void
.end method

.method selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;
    .locals 11
    .param p1, "card"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 302
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@5
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 304
    return-object v10

    #@c
    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaDevicesParser;->scan()V

    #@11
    .line 308
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@13
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    #@16
    move-result v2

    #@17
    .line 310
    .local v2, "device":I
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@19
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    #@1c
    move-result v3

    #@1d
    .line 311
    .local v3, "hasPlayback":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@1f
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    #@22
    move-result v4

    #@23
    .line 317
    .local v4, "hasCapture":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@25
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_1

    #@2b
    move v1, v7

    #@2c
    .line 320
    :goto_0
    const/high16 v9, -0x80000000

    #@2e
    .line 317
    or-int v5, v1, v9

    #@30
    .line 323
    .local v5, "deviceClass":I
    if-eqz v3, :cond_2

    #@32
    invoke-direct {p0, p1, v2, v8}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@35
    move-result-object v1

    #@36
    if-nez v1, :cond_2

    #@38
    .line 324
    return-object v10

    #@39
    .end local v5    # "deviceClass":I
    :cond_1
    move v1, v8

    #@3a
    .line 319
    goto :goto_0

    #@3b
    .line 328
    .restart local v5    # "deviceClass":I
    :cond_2
    if-eqz v4, :cond_3

    #@3d
    invoke-direct {p0, p1, v2, v7}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@40
    move-result-object v1

    #@41
    if-nez v1, :cond_3

    #@43
    .line 329
    return-object v10

    #@44
    .line 333
    :cond_3
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    #@46
    move v1, p1

    #@47
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    #@4a
    .line 334
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@4c
    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    #@4f
    move-result-object v6

    #@50
    .line 335
    .local v6, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    #@52
    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceName:Ljava/lang/String;

    #@54
    .line 336
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    #@56
    iput-object v1, v0, Lcom/android/server/usb/UsbAudioDevice;->mDeviceDescription:Ljava/lang/String;

    #@58
    .line 338
    invoke-direct {p0, v0, v8}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    #@5b
    .line 340
    return-object v0
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;
    .locals 1

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultCard()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method setAccessoryAudioState(ZII)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 464
    if-eqz p1, :cond_1

    #@5
    .line 465
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    #@7
    .line 466
    const/4 v5, 0x2

    #@8
    move v1, p2

    #@9
    move v2, p3

    #@a
    .line 465
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    #@d
    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@f
    .line 467
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@11
    invoke-direct {p0, v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    #@14
    .line 460
    :cond_0
    :goto_0
    return-void

    #@15
    .line 468
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 469
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@1b
    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    #@1e
    .line 470
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    #@20
    goto :goto_0
.end method

.method setPeripheralMidiState(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 475
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 476
    return-void

    #@6
    .line 479
    :cond_0
    if-eqz p1, :cond_2

    #@8
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 480
    new-instance v0, Landroid/os/Bundle;

    #@e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@11
    .line 481
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v1

    #@17
    .line 482
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "name"

    #@1a
    .line 483
    const v3, 0x10405c6

    #@1d
    .line 482
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    .line 484
    const-string/jumbo v2, "manufacturer"

    #@27
    .line 485
    const v3, 0x10405c7

    #@2a
    .line 484
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 486
    const-string/jumbo v2, "product"

    #@34
    .line 487
    const v3, 0x10405c8

    #@37
    .line 486
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    .line 488
    const-string/jumbo v2, "alsa_card"

    #@41
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@44
    .line 489
    const-string/jumbo v2, "alsa_device"

    #@47
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4a
    .line 490
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    #@4c
    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    #@4f
    move-result-object v2

    #@50
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@52
    .line 474
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    #@53
    .line 491
    :cond_2
    if-nez p1, :cond_1

    #@55
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@57
    if-eqz v2, :cond_1

    #@59
    .line 492
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@5b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@5e
    .line 493
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    #@60
    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    #@0
    .prologue
    .line 140
    const-string/jumbo v2, "audio"

    #@3
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v2

    #@7
    .line 139
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    #@d
    .line 142
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    #@f
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    #@12
    .line 145
    new-instance v2, Ljava/io/File;

    #@14
    const-string/jumbo v3, "/dev/snd/"

    #@17
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@1a
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@1d
    move-result-object v0

    #@1e
    .line 146
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    #@20
    .line 147
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@22
    if-ge v1, v2, :cond_0

    #@24
    .line 148
    aget-object v2, v0, v1

    #@26
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    #@2d
    .line 147
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method usbDeviceAdded(Landroid/hardware/usb/UsbDevice;)V
    .locals 21
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 357
    const/4 v9, 0x0

    #@1
    .line 360
    .local v9, "isAudioDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    #@4
    move-result v8

    #@5
    .line 361
    .local v8, "interfaceCount":I
    const/4 v13, 0x0

    #@6
    .local v13, "ntrfaceIndex":I
    :goto_0
    if-nez v9, :cond_1

    #@8
    if-ge v13, v8, :cond_1

    #@a
    .line 363
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v13}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    #@f
    move-result-object v12

    #@10
    .line 364
    .local v12, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    #@13
    move-result v18

    #@14
    const/16 v19, 0x1

    #@16
    move/from16 v0, v18

    #@18
    move/from16 v1, v19

    #@1a
    if-ne v0, v1, :cond_0

    #@1c
    .line 365
    const/4 v9, 0x1

    #@1d
    .line 362
    :cond_0
    add-int/lit8 v13, v13, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 372
    .end local v12    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v9, :cond_2

    #@22
    .line 373
    return-void

    #@23
    .line 376
    :cond_2
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@27
    move-object/from16 v18, v0

    #@29
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    #@2c
    move-result v3

    #@2d
    .line 384
    .local v3, "addedCard":I
    move-object/from16 v0, p0

    #@2f
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    #@31
    move-object/from16 v18, v0

    #@33
    move-object/from16 v0, v18

    #@35
    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    #@38
    move-result v18

    #@39
    if-eqz v18, :cond_5

    #@3b
    .line 385
    move-object/from16 v0, p0

    #@3d
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    #@40
    move-result-object v5

    #@41
    .line 386
    .local v5, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v5, :cond_3

    #@43
    .line 387
    move-object/from16 v0, p0

    #@45
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@47
    move-object/from16 v18, v0

    #@49
    move-object/from16 v0, v18

    #@4b
    move-object/from16 v1, p1

    #@4d
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    .line 388
    sget-object v18, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@52
    new-instance v19, Ljava/lang/StringBuilder;

    #@54
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v20, "USB Audio Device Added: "

    #@5a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v19

    #@5e
    move-object/from16 v0, v19

    #@60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v19

    #@64
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v19

    #@68
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 397
    :cond_3
    move-object/from16 v0, p0

    #@6d
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@6f
    move-object/from16 v18, v0

    #@71
    move-object/from16 v0, v18

    #@73
    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    #@76
    move-result v7

    #@77
    .line 398
    .local v7, "hasMidi":Z
    if-eqz v7, :cond_5

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-boolean v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    #@7d
    move/from16 v18, v0

    #@7f
    if-eqz v18, :cond_5

    #@81
    .line 399
    move-object/from16 v0, p0

    #@83
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    #@85
    move-object/from16 v18, v0

    #@87
    move-object/from16 v0, v18

    #@89
    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    #@8c
    move-result v6

    #@8d
    .line 400
    .local v6, "device":I
    const/16 v18, 0x3

    #@8f
    move-object/from16 v0, p0

    #@91
    move/from16 v1, v18

    #@93
    invoke-direct {v0, v3, v6, v1}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    #@96
    move-result-object v4

    #@97
    .line 401
    .local v4, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v4, :cond_5

    #@99
    .line 402
    new-instance v15, Landroid/os/Bundle;

    #@9b
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    #@9e
    .line 403
    .local v15, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    .line 404
    .local v10, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    #@a5
    move-result-object v14

    #@a6
    .line 405
    .local v14, "product":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    #@a9
    move-result-object v17

    #@aa
    .line 407
    .local v17, "version":Ljava/lang/String;
    if-eqz v10, :cond_4

    #@ac
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    #@af
    move-result v18

    #@b0
    if-eqz v18, :cond_6

    #@b2
    .line 408
    :cond_4
    move-object v11, v14

    #@b3
    .line 414
    .local v11, "name":Ljava/lang/String;
    :goto_1
    const-string/jumbo v18, "name"

    #@b6
    move-object/from16 v0, v18

    #@b8
    invoke-virtual {v15, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    .line 415
    const-string/jumbo v18, "manufacturer"

    #@be
    move-object/from16 v0, v18

    #@c0
    invoke-virtual {v15, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c3
    .line 416
    const-string/jumbo v18, "product"

    #@c6
    move-object/from16 v0, v18

    #@c8
    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@cb
    .line 417
    const-string/jumbo v18, "version"

    #@ce
    move-object/from16 v0, v18

    #@d0
    move-object/from16 v1, v17

    #@d2
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d5
    .line 418
    const-string/jumbo v18, "serial_number"

    #@d8
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    #@db
    move-result-object v19

    #@dc
    .line 418
    move-object/from16 v0, v18

    #@de
    move-object/from16 v1, v19

    #@e0
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e3
    .line 420
    const-string/jumbo v18, "alsa_card"

    #@e6
    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@e8
    move/from16 v19, v0

    #@ea
    move-object/from16 v0, v18

    #@ec
    move/from16 v1, v19

    #@ee
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f1
    .line 421
    const-string/jumbo v18, "alsa_device"

    #@f4
    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@f6
    move/from16 v19, v0

    #@f8
    move-object/from16 v0, v18

    #@fa
    move/from16 v1, v19

    #@fc
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ff
    .line 422
    const-string/jumbo v18, "usb_device"

    #@102
    move-object/from16 v0, v18

    #@104
    move-object/from16 v1, p1

    #@106
    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@109
    .line 424
    move-object/from16 v0, p0

    #@10b
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    #@10d
    move-object/from16 v18, v0

    #@10f
    .line 425
    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    #@111
    move/from16 v19, v0

    #@113
    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    #@115
    move/from16 v20, v0

    #@117
    .line 424
    move-object/from16 v0, v18

    #@119
    move/from16 v1, v19

    #@11b
    move/from16 v2, v20

    #@11d
    invoke-static {v0, v15, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    #@120
    move-result-object v16

    #@121
    .line 426
    .local v16, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v16, :cond_5

    #@123
    .line 427
    move-object/from16 v0, p0

    #@125
    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    #@127
    move-object/from16 v18, v0

    #@129
    move-object/from16 v0, v18

    #@12b
    move-object/from16 v1, p1

    #@12d
    move-object/from16 v2, v16

    #@12f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@132
    .line 350
    .end local v4    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .end local v5    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v6    # "device":I
    .end local v7    # "hasMidi":Z
    .end local v10    # "manufacturer":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "product":Ljava/lang/String;
    .end local v15    # "properties":Landroid/os/Bundle;
    .end local v16    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local v17    # "version":Ljava/lang/String;
    :cond_5
    return-void

    #@133
    .line 409
    .restart local v4    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .restart local v5    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .restart local v6    # "device":I
    .restart local v7    # "hasMidi":Z
    .restart local v10    # "manufacturer":Ljava/lang/String;
    .restart local v14    # "product":Ljava/lang/String;
    .restart local v15    # "properties":Landroid/os/Bundle;
    .restart local v17    # "version":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    #@135
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    #@138
    move-result v18

    #@139
    if-eqz v18, :cond_8

    #@13b
    .line 410
    :cond_7
    move-object v11, v10

    #@13c
    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_1

    #@13e
    .line 412
    .end local v11    # "name":Ljava/lang/String;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    #@140
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@143
    move-object/from16 v0, v18

    #@145
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v18

    #@149
    const-string/jumbo v19, " "

    #@14c
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v18

    #@150
    move-object/from16 v0, v18

    #@152
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@155
    move-result-object v18

    #@156
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@159
    move-result-object v11

    #@15a
    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 5
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    #@0
    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    #@2
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/usb/UsbAudioDevice;

    #@8
    .line 445
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    sget-object v2, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "USB Audio Device Removed: "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 446
    if-eqz v0, :cond_1

    #@23
    .line 447
    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    #@25
    if-nez v2, :cond_0

    #@27
    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 448
    :cond_0
    const/4 v2, 0x0

    #@2c
    invoke-direct {p0, v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    #@2f
    .line 451
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;

    #@32
    .line 454
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    #@34
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    #@3a
    .line 455
    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_2

    #@3c
    .line 456
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@3f
    .line 438
    :cond_2
    return-void
.end method
