.class public Landroid/preference/SeekBarVolumizer;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/SeekBarVolumizer$Callback;,
        Landroid/preference/SeekBarVolumizer$H;,
        Landroid/preference/SeekBarVolumizer$Observer;,
        Landroid/preference/SeekBarVolumizer$Receiver;
    }
.end annotation


# static fields
.field private static final CHECK_RINGTONE_PLAYBACK_DELAY_MS:I = 0x3e8

.field private static final MSG_INIT_SAMPLE:I = 0x3

.field private static final MSG_SET_STREAM_VOLUME:I = 0x0

.field private static final MSG_START_SAMPLE:I = 0x1

.field private static final MSG_STOP_SAMPLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeekBarVolumizer"


# instance fields
.field private mAffectedByRingerMode:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Landroid/preference/SeekBarVolumizer$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastAudibleStreamVolume:I

.field private mLastProgress:I

.field private final mMaxStreamVolume:I

.field private mMuted:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationOrRing:Z

.field private mOriginalStreamVolume:I

.field private final mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

.field private mRingerMode:I

.field private mRingtone:Landroid/media/Ringtone;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private final mUiHandler:Landroid/preference/SeekBarVolumizer$H;

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

.field private mZenMode:I


# direct methods
.method static synthetic -get0(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Landroid/preference/SeekBarVolumizer;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/preference/SeekBarVolumizer;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/preference/SeekBarVolumizer;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(I)Z
    .locals 1
    .param p0, "stream"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/preference/SeekBarVolumizer;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->updateSlider()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Landroid/preference/SeekBarVolumizer$Callback;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 57
    new-instance v0, Landroid/preference/SeekBarVolumizer$H;

    #@7
    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H;)V

    #@a
    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    #@c
    .line 66
    new-instance v0, Landroid/preference/SeekBarVolumizer$Receiver;

    #@e
    invoke-direct {v0, p0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V

    #@11
    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    #@13
    .line 77
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@15
    .line 80
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@17
    .line 91
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    #@19
    .line 92
    const-class v0, Landroid/media/AudioManager;

    #@1b
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/media/AudioManager;

    #@21
    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@23
    .line 93
    const-class v0, Landroid/app/NotificationManager;

    #@25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/app/NotificationManager;

    #@2b
    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    #@2d
    .line 94
    iput p2, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@2f
    .line 95
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@31
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@33
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamAffectedByRingerMode(I)Z

    #@36
    move-result v0

    #@37
    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mAffectedByRingerMode:Z

    #@39
    .line 96
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@3b
    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->isNotificationOrRing(I)Z

    #@3e
    move-result v0

    #@3f
    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    #@41
    .line 97
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    #@43
    if-eqz v0, :cond_0

    #@45
    .line 98
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@47
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    #@4d
    .line 100
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mNotificationManager:Landroid/app/NotificationManager;

    #@4f
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    #@52
    move-result v0

    #@53
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    #@55
    .line 101
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@57
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@59
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    #@5c
    move-result v0

    #@5d
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    #@5f
    .line 102
    iput-object p4, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@61
    .line 103
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@63
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@65
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@68
    move-result v0

    #@69
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    #@6b
    .line 104
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@6d
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@6f
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    #@72
    move-result v0

    #@73
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    #@75
    .line 105
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@77
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@79
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    #@7c
    move-result v0

    #@7d
    iput-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@7f
    .line 106
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@81
    if-eqz v0, :cond_1

    #@83
    .line 107
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@85
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@87
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    #@8a
    move-result v2

    #@8b
    invoke-interface {v0, v1, v2}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    #@8e
    .line 109
    :cond_1
    if-nez p3, :cond_2

    #@90
    .line 110
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@92
    const/4 v1, 0x2

    #@93
    if-ne v0, v1, :cond_3

    #@95
    .line 111
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    #@97
    .line 118
    :cond_2
    :goto_0
    iput-object p3, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    #@99
    .line 90
    return-void

    #@9a
    .line 112
    :cond_3
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@9c
    const/4 v1, 0x5

    #@9d
    if-ne v0, v1, :cond_4

    #@9f
    .line 113
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    #@a1
    goto :goto_0

    #@a2
    .line 115
    :cond_4
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    #@a4
    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 2
    .param p0, "stream"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 122
    const/4 v1, 0x2

    #@2
    if-eq p0, v1, :cond_0

    #@4
    const/4 v1, 0x5

    #@5
    if-ne p0, v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private isZenMuted()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 137
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    #@7
    const/4 v2, 0x3

    #@8
    if-ne v1, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    .line 138
    :cond_1
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mZenMode:I

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v1, v2, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    #@0
    .prologue
    .line 183
    monitor-enter p0

    #@1
    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    #@3
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    #@5
    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@b
    .line 185
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 186
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@11
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@13
    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 182
    return-void

    #@18
    .line 183
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method private onStartSample()V
    .locals 4

    #@0
    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_2

    #@6
    .line 200
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 201
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@c
    invoke-interface {v1, p0}, Landroid/preference/SeekBarVolumizer$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    #@f
    .line 204
    :cond_0
    monitor-enter p0

    #@10
    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 207
    :try_start_1
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@16
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@18
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@1a
    invoke-virtual {v3}, Landroid/media/Ringtone;->getAudioAttributes()Landroid/media/AudioAttributes;

    #@1d
    move-result-object v3

    #@1e
    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    #@21
    .line 209
    const/16 v3, 0xc0

    #@23
    .line 207
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    #@2e
    .line 212
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@30
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    :cond_1
    :goto_0
    monitor-exit p0

    #@34
    .line 198
    :cond_2
    return-void

    #@35
    .line 213
    :catch_0
    move-exception v0

    #@36
    .line 214
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "SeekBarVolumizer"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Error playing ringtone, stream "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 204
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@54
    monitor-exit p0

    #@55
    throw v1
.end method

.method private onStopSample()V
    .locals 1

    #@0
    .prologue
    .line 230
    monitor-enter p0

    #@1
    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 232
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@7
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 229
    return-void

    #@c
    .line 230
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method private postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 275
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@3
    if-nez v0, :cond_0

    #@5
    return-void

    #@6
    .line 277
    :cond_0
    iput p1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@8
    .line 278
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@a
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@d
    .line 279
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@f
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 274
    return-void
.end method

.method private postStartSample()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 192
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@3
    if-nez v0, :cond_0

    #@5
    return-void

    #@6
    .line 193
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@8
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@b
    .line 194
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@d
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@f
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v2

    #@13
    .line 195
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->isSamplePlaying()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    const/16 v0, 0x3e8

    #@1b
    :goto_0
    int-to-long v4, v0

    #@1c
    .line 194
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@1f
    .line 191
    return-void

    #@20
    .line 195
    :cond_1
    const/4 v0, 0x0

    #@21
    goto :goto_0
.end method

.method private postStopSample()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 222
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@3
    if-nez v0, :cond_0

    #@5
    return-void

    #@6
    .line 224
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@c
    .line 225
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 226
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@13
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@15
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 221
    return-void
.end method

.method private updateSlider()V
    .locals 5

    #@0
    .prologue
    .line 371
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 372
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@a
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@c
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@f
    move-result v2

    #@10
    .line 373
    .local v2, "volume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@12
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@14
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    #@17
    move-result v0

    #@18
    .line 374
    .local v0, "lastAudibleVolume":I
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@1a
    iget v4, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@1c
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    #@1f
    move-result v1

    #@20
    .line 375
    .local v1, "mute":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mUiHandler:Landroid/preference/SeekBarVolumizer$H;

    #@22
    invoke-virtual {v3, v2, v0, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    #@25
    .line 370
    .end local v0    # "lastAudibleVolume":I
    .end local v1    # "mute":Z
    .end local v2    # "volume":I
    :cond_0
    return-void
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    #@5
    .line 309
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@7
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    #@a
    move-result v0

    #@b
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    #@e
    .line 310
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    #@11
    .line 311
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@14
    .line 307
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@2
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    #@3
    packed-switch v0, :pswitch_data_0

    #@6
    .line 177
    const-string/jumbo v0, "SeekBarVolumizer"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 179
    :goto_0
    const/4 v0, 0x1

    #@23
    return v0

    #@24
    .line 159
    :pswitch_0
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@26
    if-eqz v0, :cond_1

    #@28
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@2a
    if-lez v0, :cond_1

    #@2c
    .line 160
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@2e
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@30
    const/16 v2, 0x64

    #@32
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    #@35
    .line 164
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@37
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@39
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@3b
    .line 165
    const/16 v3, 0x400

    #@3d
    .line 164
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    #@40
    goto :goto_0

    #@41
    .line 161
    :cond_1
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@43
    if-nez v0, :cond_0

    #@45
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@47
    if-nez v0, :cond_0

    #@49
    .line 162
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@4b
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@4d
    const/16 v2, -0x64

    #@4f
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    #@52
    goto :goto_1

    #@53
    .line 168
    :pswitch_1
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStartSample()V

    #@56
    goto :goto_0

    #@57
    .line 171
    :pswitch_2
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onStopSample()V

    #@5a
    goto :goto_0

    #@5b
    .line 174
    :pswitch_3
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->onInitSample()V

    #@5e
    goto :goto_0

    #@5f
    .line 157
    nop

    #@60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    #@0
    .prologue
    .line 290
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    #@7
    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    :goto_0
    monitor-exit p0

    #@c
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0

    #@f
    .line 290
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public muteVolume()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 315
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@4
    if-eq v0, v2, :cond_0

    #@6
    .line 316
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@8
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@d
    .line 317
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@f
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    #@12
    .line 318
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    #@15
    .line 319
    iput v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@17
    .line 314
    :goto_0
    return-void

    #@18
    .line 321
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@1a
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mVolumeBeforeMute:I

    #@20
    .line 322
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@25
    .line 323
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    #@28
    .line 324
    invoke-direct {p0, v1}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    #@2b
    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    #@0
    .prologue
    .line 266
    if-eqz p3, :cond_0

    #@2
    .line 267
    invoke-direct {p0, p2}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    #@5
    .line 269
    :cond_0
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 270
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;

    #@b
    invoke-interface {v0, p1, p2, p3}, Landroid/preference/SeekBarVolumizer$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    #@e
    .line 265
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    #@0
    .prologue
    .line 336
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 337
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    #@7
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    #@9
    .line 338
    iget v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    #@b
    iput v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@d
    .line 339
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@f
    invoke-direct {p0, v0}, Landroid/preference/SeekBarVolumizer;->postSetVolume(I)V

    #@12
    .line 335
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Landroid/preference/VolumePreference$VolumeStore;

    #@0
    .prologue
    .line 329
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 330
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@6
    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    #@8
    .line 331
    iget v0, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    #@a
    iput v0, p1, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    #@c
    .line 328
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 282
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    .line 286
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    #@3
    .line 285
    return-void
.end method

.method public revertVolume()V
    .locals 4

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    #@2
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@4
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    #@a
    .line 261
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 126
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 127
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@a
    .line 129
    :cond_0
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@c
    .line 130
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@11
    .line 131
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@13
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mMaxStreamVolume:I

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    #@18
    .line 132
    invoke-virtual {p0}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    #@1b
    .line 133
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@1d
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@20
    .line 125
    return-void
.end method

.method public start()V
    .locals 5

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@2
    if-eqz v1, :cond_0

    #@4
    return-void

    #@5
    .line 250
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    #@7
    const-string/jumbo v1, "SeekBarVolumizer.CallbackHandler"

    #@a
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@d
    .line 251
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@10
    .line 252
    new-instance v1, Landroid/os/Handler;

    #@12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@15
    move-result-object v2

    #@16
    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@19
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@1b
    .line 253
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@1d
    const/4 v2, 0x3

    #@1e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@21
    .line 254
    new-instance v1, Landroid/preference/SeekBarVolumizer$Observer;

    #@23
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@25
    invoke-direct {v1, p0, v2}, Landroid/preference/SeekBarVolumizer$Observer;-><init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V

    #@28
    iput-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    #@2a
    .line 255
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@2f
    move-result-object v1

    #@30
    .line 256
    sget-object v2, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    #@32
    iget v3, p0, Landroid/preference/SeekBarVolumizer;->mStreamType:I

    #@34
    aget-object v2, v2, v3

    #@36
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@39
    move-result-object v2

    #@3a
    .line 257
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    #@3c
    const/4 v4, 0x0

    #@3d
    .line 255
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    #@40
    .line 258
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    #@42
    const/4 v2, 0x1

    #@43
    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    #@46
    .line 248
    return-void
.end method

.method public startSample()V
    .locals 0

    #@0
    .prologue
    .line 296
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStartSample()V

    #@3
    .line 295
    return-void
.end method

.method public stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 238
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@3
    if-nez v0, :cond_0

    #@5
    return-void

    #@6
    .line 239
    :cond_0
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    #@9
    .line 240
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    #@11
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@14
    .line 241
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mReceiver:Landroid/preference/SeekBarVolumizer$Receiver;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-virtual {v0, v1}, Landroid/preference/SeekBarVolumizer$Receiver;->setListening(Z)V

    #@1a
    .line 242
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@1c
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    #@1f
    .line 243
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@21
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    #@28
    .line 244
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    #@2a
    .line 245
    iput-object v2, p0, Landroid/preference/SeekBarVolumizer;->mVolumeObserver:Landroid/preference/SeekBarVolumizer$Observer;

    #@2c
    .line 237
    return-void
.end method

.method public stopSample()V
    .locals 0

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->postStopSample()V

    #@3
    .line 299
    return-void
.end method

.method protected updateSeekBar()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 142
    invoke-direct {p0}, Landroid/preference/SeekBarVolumizer;->isZenMuted()Z

    #@5
    move-result v0

    #@6
    .line 143
    .local v0, "zenMuted":Z
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@8
    if-eqz v0, :cond_0

    #@a
    move v1, v2

    #@b
    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    #@e
    .line 144
    if-eqz v0, :cond_1

    #@10
    .line 145
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@12
    iget v2, p0, Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I

    #@14
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    #@17
    .line 141
    :goto_1
    return-void

    #@18
    :cond_0
    move v1, v3

    #@19
    .line 143
    goto :goto_0

    #@1a
    .line 146
    :cond_1
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mNotificationOrRing:Z

    #@1c
    if-eqz v1, :cond_2

    #@1e
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mRingerMode:I

    #@20
    if-ne v1, v3, :cond_2

    #@22
    .line 147
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    #@27
    goto :goto_1

    #@28
    .line 148
    :cond_2
    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer;->mMuted:Z

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 149
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@2e
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    #@31
    goto :goto_1

    #@32
    .line 151
    :cond_3
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    #@34
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@36
    const/4 v3, -0x1

    #@37
    if-le v1, v3, :cond_4

    #@39
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mLastProgress:I

    #@3b
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    #@3e
    goto :goto_1

    #@3f
    :cond_4
    iget v1, p0, Landroid/preference/SeekBarVolumizer;->mOriginalStreamVolume:I

    #@41
    goto :goto_2
.end method
