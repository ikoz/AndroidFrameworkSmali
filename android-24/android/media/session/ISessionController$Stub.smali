.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x1a

.field static final TRANSACTION_getExtras:I = 0x23

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1f

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x20

.field static final TRANSACTION_getQueue:I = 0x21

.field static final TRANSACTION_getQueueTitle:I = 0x22

.field static final TRANSACTION_getRatingType:I = 0x24

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x18

.field static final TRANSACTION_pause:I = 0x16

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_playFromMediaId:I = 0x12

.field static final TRANSACTION_playFromSearch:I = 0x13

.field static final TRANSACTION_playFromUri:I = 0x14

.field static final TRANSACTION_prepare:I = 0xd

.field static final TRANSACTION_prepareFromMediaId:I = 0xe

.field static final TRANSACTION_prepareFromSearch:I = 0xf

.field static final TRANSACTION_prepareFromUri:I = 0x10

.field static final TRANSACTION_previous:I = 0x19

.field static final TRANSACTION_rate:I = 0x1d

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x1b

.field static final TRANSACTION_seekTo:I = 0x1c

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1e

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x15

.field static final TRANSACTION_stop:I = 0x17

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 19
    const-string/jumbo v0, "android.media.session.ISessionController"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 27
    if-nez p0, :cond_0

    #@3
    .line 28
    return-object v1

    #@4
    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionController"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/session/ISessionController;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 32
    check-cast v0, Landroid/media/session/ISessionController;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionController$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 480
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v28

    #@7
    return v28

    #@8
    .line 46
    :sswitch_0
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v28

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 47
    const/16 v28, 0x1

    #@14
    return v28

    #@15
    .line 51
    :sswitch_1
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v28

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v11

    #@23
    .line 55
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v28

    #@27
    if-eqz v28, :cond_0

    #@29
    .line 56
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b
    move-object/from16 v0, v28

    #@2d
    move-object/from16 v1, p2

    #@2f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@32
    move-result-object v13

    #@33
    check-cast v13, Landroid/os/Bundle;

    #@35
    .line 62
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v28

    #@39
    if-eqz v28, :cond_1

    #@3b
    .line 63
    sget-object v28, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d
    move-object/from16 v0, v28

    #@3f
    move-object/from16 v1, p2

    #@41
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@44
    move-result-object v14

    #@45
    check-cast v14, Landroid/os/ResultReceiver;

    #@47
    .line 68
    :goto_1
    move-object/from16 v0, p0

    #@49
    invoke-virtual {v0, v11, v13, v14}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@4c
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 70
    const/16 v28, 0x1

    #@51
    return v28

    #@52
    .line 59
    :cond_0
    const/4 v13, 0x0

    #@53
    .local v13, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@54
    .line 66
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v14, 0x0

    #@55
    .local v14, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_1

    #@56
    .line 74
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@59
    move-object/from16 v0, p2

    #@5b
    move-object/from16 v1, v28

    #@5d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@60
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v28

    #@64
    if-eqz v28, :cond_2

    #@66
    .line 77
    sget-object v28, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@68
    move-object/from16 v0, v28

    #@6a
    move-object/from16 v1, p2

    #@6c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6f
    move-result-object v10

    #@70
    check-cast v10, Landroid/view/KeyEvent;

    #@72
    .line 82
    :goto_2
    move-object/from16 v0, p0

    #@74
    invoke-virtual {v0, v10}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    #@77
    move-result v27

    #@78
    .line 83
    .local v27, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 84
    if-eqz v27, :cond_3

    #@7d
    const/16 v28, 0x1

    #@7f
    :goto_3
    move-object/from16 v0, p3

    #@81
    move/from16 v1, v28

    #@83
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 85
    const/16 v28, 0x1

    #@88
    return v28

    #@89
    .line 80
    .end local v27    # "_result":Z
    :cond_2
    const/4 v10, 0x0

    #@8a
    .local v10, "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    #@8b
    .line 84
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    .restart local v27    # "_result":Z
    :cond_3
    const/16 v28, 0x0

    #@8d
    goto :goto_3

    #@8e
    .line 89
    .end local v27    # "_result":Z
    :sswitch_3
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@91
    move-object/from16 v0, p2

    #@93
    move-object/from16 v1, v28

    #@95
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@98
    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@9b
    move-result-object v28

    #@9c
    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    #@9f
    move-result-object v8

    #@a0
    .line 92
    .local v8, "_arg0":Landroid/media/session/ISessionControllerCallback;
    move-object/from16 v0, p0

    #@a2
    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    #@a5
    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a8
    .line 94
    const/16 v28, 0x1

    #@aa
    return v28

    #@ab
    .line 98
    .end local v8    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_4
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@ae
    move-object/from16 v0, p2

    #@b0
    move-object/from16 v1, v28

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b5
    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b8
    move-result-object v28

    #@b9
    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    #@bc
    move-result-object v8

    #@bd
    .line 101
    .restart local v8    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    move-object/from16 v0, p0

    #@bf
    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    #@c2
    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 103
    const/16 v28, 0x1

    #@c7
    return v28

    #@c8
    .line 107
    .end local v8    # "_arg0":Landroid/media/session/ISessionControllerCallback;
    :sswitch_5
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@cb
    move-object/from16 v0, p2

    #@cd
    move-object/from16 v1, v28

    #@cf
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->isTransportControlEnabled()Z

    #@d5
    move-result v27

    #@d6
    .line 109
    .restart local v27    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d9
    .line 110
    if-eqz v27, :cond_4

    #@db
    const/16 v28, 0x1

    #@dd
    :goto_4
    move-object/from16 v0, p3

    #@df
    move/from16 v1, v28

    #@e1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e4
    .line 111
    const/16 v28, 0x1

    #@e6
    return v28

    #@e7
    .line 110
    :cond_4
    const/16 v28, 0x0

    #@e9
    goto :goto_4

    #@ea
    .line 115
    .end local v27    # "_result":Z
    :sswitch_6
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@ed
    move-object/from16 v0, p2

    #@ef
    move-object/from16 v1, v28

    #@f1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f4
    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    #@f7
    move-result-object v26

    #@f8
    .line 117
    .local v26, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@fb
    .line 118
    move-object/from16 v0, p3

    #@fd
    move-object/from16 v1, v26

    #@ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@102
    .line 119
    const/16 v28, 0x1

    #@104
    return v28

    #@105
    .line 123
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@108
    move-object/from16 v0, p2

    #@10a
    move-object/from16 v1, v28

    #@10c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10f
    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    #@112
    move-result-object v26

    #@113
    .line 125
    .restart local v26    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@116
    .line 126
    move-object/from16 v0, p3

    #@118
    move-object/from16 v1, v26

    #@11a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11d
    .line 127
    const/16 v28, 0x1

    #@11f
    return v28

    #@120
    .line 131
    .end local v26    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@123
    move-object/from16 v0, p2

    #@125
    move-object/from16 v1, v28

    #@127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    #@12d
    move-result-object v17

    #@12e
    .line 133
    .local v17, "_result":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 134
    if-eqz v17, :cond_5

    #@133
    .line 135
    const/16 v28, 0x1

    #@135
    move-object/from16 v0, p3

    #@137
    move/from16 v1, v28

    #@139
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13c
    .line 136
    const/16 v28, 0x1

    #@13e
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p3

    #@142
    move/from16 v2, v28

    #@144
    invoke-virtual {v0, v1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    #@147
    .line 141
    :goto_5
    const/16 v28, 0x1

    #@149
    return v28

    #@14a
    .line 139
    :cond_5
    const/16 v28, 0x0

    #@14c
    move-object/from16 v0, p3

    #@14e
    move/from16 v1, v28

    #@150
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@153
    goto :goto_5

    #@154
    .line 145
    .end local v17    # "_result":Landroid/app/PendingIntent;
    :sswitch_9
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@157
    move-object/from16 v0, p2

    #@159
    move-object/from16 v1, v28

    #@15b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15e
    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    #@161
    move-result-wide v18

    #@162
    .line 147
    .local v18, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@165
    .line 148
    move-object/from16 v0, p3

    #@167
    move-wide/from16 v1, v18

    #@169
    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    #@16c
    .line 149
    const/16 v28, 0x1

    #@16e
    return v28

    #@16f
    .line 153
    .end local v18    # "_result":J
    :sswitch_a
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@172
    move-object/from16 v0, p2

    #@174
    move-object/from16 v1, v28

    #@176
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@179
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    #@17c
    move-result-object v22

    #@17d
    .line 155
    .local v22, "_result":Landroid/media/session/ParcelableVolumeInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@180
    .line 156
    if-eqz v22, :cond_6

    #@182
    .line 157
    const/16 v28, 0x1

    #@184
    move-object/from16 v0, p3

    #@186
    move/from16 v1, v28

    #@188
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@18b
    .line 158
    const/16 v28, 0x1

    #@18d
    move-object/from16 v0, v22

    #@18f
    move-object/from16 v1, p3

    #@191
    move/from16 v2, v28

    #@193
    invoke-virtual {v0, v1, v2}, Landroid/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@196
    .line 163
    :goto_6
    const/16 v28, 0x1

    #@198
    return v28

    #@199
    .line 161
    :cond_6
    const/16 v28, 0x0

    #@19b
    move-object/from16 v0, p3

    #@19d
    move/from16 v1, v28

    #@19f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a2
    goto :goto_6

    #@1a3
    .line 167
    .end local v22    # "_result":Landroid/media/session/ParcelableVolumeInfo;
    :sswitch_b
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@1a6
    move-object/from16 v0, p2

    #@1a8
    move-object/from16 v1, v28

    #@1aa
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ad
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b0
    move-result v4

    #@1b1
    .line 171
    .local v4, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b4
    move-result v12

    #@1b5
    .line 173
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b8
    move-result-object v15

    #@1b9
    .line 174
    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1bb
    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->adjustVolume(IILjava/lang/String;)V

    #@1be
    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c1
    .line 176
    const/16 v28, 0x1

    #@1c3
    return v28

    #@1c4
    .line 180
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    move-object/from16 v1, v28

    #@1cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ce
    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d1
    move-result v4

    #@1d2
    .line 184
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1d5
    move-result v12

    #@1d6
    .line 186
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d9
    move-result-object v15

    #@1da
    .line 187
    .restart local v15    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@1dc
    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(IILjava/lang/String;)V

    #@1df
    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1e2
    .line 189
    const/16 v28, 0x1

    #@1e4
    return v28

    #@1e5
    .line 193
    .end local v4    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@1e8
    move-object/from16 v0, p2

    #@1ea
    move-object/from16 v1, v28

    #@1ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ef
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->prepare()V

    #@1f2
    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1f5
    .line 196
    const/16 v28, 0x1

    #@1f7
    return v28

    #@1f8
    .line 200
    :sswitch_e
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@1fb
    move-object/from16 v0, p2

    #@1fd
    move-object/from16 v1, v28

    #@1ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@202
    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@205
    move-result-object v11

    #@206
    .line 204
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@209
    move-result v28

    #@20a
    if-eqz v28, :cond_7

    #@20c
    .line 205
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@20e
    move-object/from16 v0, v28

    #@210
    move-object/from16 v1, p2

    #@212
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@215
    move-result-object v13

    #@216
    check-cast v13, Landroid/os/Bundle;

    #@218
    .line 210
    :goto_7
    move-object/from16 v0, p0

    #@21a
    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@21d
    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@220
    .line 212
    const/16 v28, 0x1

    #@222
    return v28

    #@223
    .line 208
    :cond_7
    const/4 v13, 0x0

    #@224
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@225
    .line 216
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_f
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@228
    move-object/from16 v0, p2

    #@22a
    move-object/from16 v1, v28

    #@22c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@22f
    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@232
    move-result-object v11

    #@233
    .line 220
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@236
    move-result v28

    #@237
    if-eqz v28, :cond_8

    #@239
    .line 221
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23b
    move-object/from16 v0, v28

    #@23d
    move-object/from16 v1, p2

    #@23f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v13

    #@243
    check-cast v13, Landroid/os/Bundle;

    #@245
    .line 226
    :goto_8
    move-object/from16 v0, p0

    #@247
    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@24a
    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@24d
    .line 228
    const/16 v28, 0x1

    #@24f
    return v28

    #@250
    .line 224
    :cond_8
    const/4 v13, 0x0

    #@251
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    #@252
    .line 232
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_10
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@255
    move-object/from16 v0, p2

    #@257
    move-object/from16 v1, v28

    #@259
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@25c
    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@25f
    move-result v28

    #@260
    if-eqz v28, :cond_9

    #@262
    .line 235
    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@264
    move-object/from16 v0, v28

    #@266
    move-object/from16 v1, p2

    #@268
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@26b
    move-result-object v9

    #@26c
    check-cast v9, Landroid/net/Uri;

    #@26e
    .line 241
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@271
    move-result v28

    #@272
    if-eqz v28, :cond_a

    #@274
    .line 242
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@276
    move-object/from16 v0, v28

    #@278
    move-object/from16 v1, p2

    #@27a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27d
    move-result-object v13

    #@27e
    check-cast v13, Landroid/os/Bundle;

    #@280
    .line 247
    :goto_a
    move-object/from16 v0, p0

    #@282
    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@285
    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@288
    .line 249
    const/16 v28, 0x1

    #@28a
    return v28

    #@28b
    .line 238
    :cond_9
    const/4 v9, 0x0

    #@28c
    .local v9, "_arg0":Landroid/net/Uri;
    goto :goto_9

    #@28d
    .line 245
    .end local v9    # "_arg0":Landroid/net/Uri;
    :cond_a
    const/4 v13, 0x0

    #@28e
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_a

    #@28f
    .line 253
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_11
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@292
    move-object/from16 v0, p2

    #@294
    move-object/from16 v1, v28

    #@296
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@299
    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->play()V

    #@29c
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@29f
    .line 256
    const/16 v28, 0x1

    #@2a1
    return v28

    #@2a2
    .line 260
    :sswitch_12
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@2a5
    move-object/from16 v0, p2

    #@2a7
    move-object/from16 v1, v28

    #@2a9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2ac
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2af
    move-result-object v11

    #@2b0
    .line 264
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2b3
    move-result v28

    #@2b4
    if-eqz v28, :cond_b

    #@2b6
    .line 265
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2b8
    move-object/from16 v0, v28

    #@2ba
    move-object/from16 v1, p2

    #@2bc
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2bf
    move-result-object v13

    #@2c0
    check-cast v13, Landroid/os/Bundle;

    #@2c2
    .line 270
    :goto_b
    move-object/from16 v0, p0

    #@2c4
    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2c7
    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2ca
    .line 272
    const/16 v28, 0x1

    #@2cc
    return v28

    #@2cd
    .line 268
    :cond_b
    const/4 v13, 0x0

    #@2ce
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    #@2cf
    .line 276
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_13
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@2d2
    move-object/from16 v0, p2

    #@2d4
    move-object/from16 v1, v28

    #@2d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d9
    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2dc
    move-result-object v11

    #@2dd
    .line 280
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2e0
    move-result v28

    #@2e1
    if-eqz v28, :cond_c

    #@2e3
    .line 281
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2e5
    move-object/from16 v0, v28

    #@2e7
    move-object/from16 v1, p2

    #@2e9
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2ec
    move-result-object v13

    #@2ed
    check-cast v13, Landroid/os/Bundle;

    #@2ef
    .line 286
    :goto_c
    move-object/from16 v0, p0

    #@2f1
    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2f4
    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f7
    .line 288
    const/16 v28, 0x1

    #@2f9
    return v28

    #@2fa
    .line 284
    :cond_c
    const/4 v13, 0x0

    #@2fb
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_c

    #@2fc
    .line 292
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_14
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@2ff
    move-object/from16 v0, p2

    #@301
    move-object/from16 v1, v28

    #@303
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@306
    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@309
    move-result v28

    #@30a
    if-eqz v28, :cond_d

    #@30c
    .line 295
    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30e
    move-object/from16 v0, v28

    #@310
    move-object/from16 v1, p2

    #@312
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@315
    move-result-object v9

    #@316
    check-cast v9, Landroid/net/Uri;

    #@318
    .line 301
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@31b
    move-result v28

    #@31c
    if-eqz v28, :cond_e

    #@31e
    .line 302
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@320
    move-object/from16 v0, v28

    #@322
    move-object/from16 v1, p2

    #@324
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@327
    move-result-object v13

    #@328
    check-cast v13, Landroid/os/Bundle;

    #@32a
    .line 307
    :goto_e
    move-object/from16 v0, p0

    #@32c
    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@32f
    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@332
    .line 309
    const/16 v28, 0x1

    #@334
    return v28

    #@335
    .line 298
    :cond_d
    const/4 v9, 0x0

    #@336
    .restart local v9    # "_arg0":Landroid/net/Uri;
    goto :goto_d

    #@337
    .line 305
    .end local v9    # "_arg0":Landroid/net/Uri;
    :cond_e
    const/4 v13, 0x0

    #@338
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_e

    #@339
    .line 313
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@33c
    move-object/from16 v0, p2

    #@33e
    move-object/from16 v1, v28

    #@340
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@343
    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@346
    move-result-wide v6

    #@347
    .line 316
    .local v6, "_arg0":J
    move-object/from16 v0, p0

    #@349
    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(J)V

    #@34c
    .line 317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@34f
    .line 318
    const/16 v28, 0x1

    #@351
    return v28

    #@352
    .line 322
    .end local v6    # "_arg0":J
    :sswitch_16
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@355
    move-object/from16 v0, p2

    #@357
    move-object/from16 v1, v28

    #@359
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35c
    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->pause()V

    #@35f
    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@362
    .line 325
    const/16 v28, 0x1

    #@364
    return v28

    #@365
    .line 329
    :sswitch_17
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@368
    move-object/from16 v0, p2

    #@36a
    move-object/from16 v1, v28

    #@36c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36f
    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->stop()V

    #@372
    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@375
    .line 332
    const/16 v28, 0x1

    #@377
    return v28

    #@378
    .line 336
    :sswitch_18
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@37b
    move-object/from16 v0, p2

    #@37d
    move-object/from16 v1, v28

    #@37f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@382
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->next()V

    #@385
    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@388
    .line 339
    const/16 v28, 0x1

    #@38a
    return v28

    #@38b
    .line 343
    :sswitch_19
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@38e
    move-object/from16 v0, p2

    #@390
    move-object/from16 v1, v28

    #@392
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@395
    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->previous()V

    #@398
    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39b
    .line 346
    const/16 v28, 0x1

    #@39d
    return v28

    #@39e
    .line 350
    :sswitch_1a
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@3a1
    move-object/from16 v0, p2

    #@3a3
    move-object/from16 v1, v28

    #@3a5
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a8
    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->fastForward()V

    #@3ab
    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3ae
    .line 353
    const/16 v28, 0x1

    #@3b0
    return v28

    #@3b1
    .line 357
    :sswitch_1b
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@3b4
    move-object/from16 v0, p2

    #@3b6
    move-object/from16 v1, v28

    #@3b8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3bb
    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->rewind()V

    #@3be
    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c1
    .line 360
    const/16 v28, 0x1

    #@3c3
    return v28

    #@3c4
    .line 364
    :sswitch_1c
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@3c7
    move-object/from16 v0, p2

    #@3c9
    move-object/from16 v1, v28

    #@3cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3ce
    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    #@3d1
    move-result-wide v6

    #@3d2
    .line 367
    .restart local v6    # "_arg0":J
    move-object/from16 v0, p0

    #@3d4
    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->seekTo(J)V

    #@3d7
    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3da
    .line 369
    const/16 v28, 0x1

    #@3dc
    return v28

    #@3dd
    .line 373
    .end local v6    # "_arg0":J
    :sswitch_1d
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@3e0
    move-object/from16 v0, p2

    #@3e2
    move-object/from16 v1, v28

    #@3e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e7
    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ea
    move-result v28

    #@3eb
    if-eqz v28, :cond_f

    #@3ed
    .line 376
    sget-object v28, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ef
    move-object/from16 v0, v28

    #@3f1
    move-object/from16 v1, p2

    #@3f3
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3f6
    move-result-object v5

    #@3f7
    check-cast v5, Landroid/media/Rating;

    #@3f9
    .line 381
    :goto_f
    move-object/from16 v0, p0

    #@3fb
    invoke-virtual {v0, v5}, Landroid/media/session/ISessionController$Stub;->rate(Landroid/media/Rating;)V

    #@3fe
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@401
    .line 383
    const/16 v28, 0x1

    #@403
    return v28

    #@404
    .line 379
    :cond_f
    const/4 v5, 0x0

    #@405
    .local v5, "_arg0":Landroid/media/Rating;
    goto :goto_f

    #@406
    .line 387
    .end local v5    # "_arg0":Landroid/media/Rating;
    :sswitch_1e
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@409
    move-object/from16 v0, p2

    #@40b
    move-object/from16 v1, v28

    #@40d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@410
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@413
    move-result-object v11

    #@414
    .line 391
    .restart local v11    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@417
    move-result v28

    #@418
    if-eqz v28, :cond_10

    #@41a
    .line 392
    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@41c
    move-object/from16 v0, v28

    #@41e
    move-object/from16 v1, p2

    #@420
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@423
    move-result-object v13

    #@424
    check-cast v13, Landroid/os/Bundle;

    #@426
    .line 397
    :goto_10
    move-object/from16 v0, p0

    #@428
    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@42b
    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@42e
    .line 399
    const/16 v28, 0x1

    #@430
    return v28

    #@431
    .line 395
    :cond_10
    const/4 v13, 0x0

    #@432
    .restart local v13    # "_arg1":Landroid/os/Bundle;
    goto :goto_10

    #@433
    .line 403
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/Bundle;
    :sswitch_1f
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@436
    move-object/from16 v0, p2

    #@438
    move-object/from16 v1, v28

    #@43a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@43d
    .line 404
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    #@440
    move-result-object v21

    #@441
    .line 405
    .local v21, "_result":Landroid/media/MediaMetadata;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@444
    .line 406
    if-eqz v21, :cond_11

    #@446
    .line 407
    const/16 v28, 0x1

    #@448
    move-object/from16 v0, p3

    #@44a
    move/from16 v1, v28

    #@44c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@44f
    .line 408
    const/16 v28, 0x1

    #@451
    move-object/from16 v0, v21

    #@453
    move-object/from16 v1, p3

    #@455
    move/from16 v2, v28

    #@457
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    #@45a
    .line 413
    :goto_11
    const/16 v28, 0x1

    #@45c
    return v28

    #@45d
    .line 411
    :cond_11
    const/16 v28, 0x0

    #@45f
    move-object/from16 v0, p3

    #@461
    move/from16 v1, v28

    #@463
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@466
    goto :goto_11

    #@467
    .line 417
    .end local v21    # "_result":Landroid/media/MediaMetadata;
    :sswitch_20
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@46a
    move-object/from16 v0, p2

    #@46c
    move-object/from16 v1, v28

    #@46e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@471
    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    #@474
    move-result-object v23

    #@475
    .line 419
    .local v23, "_result":Landroid/media/session/PlaybackState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@478
    .line 420
    if-eqz v23, :cond_12

    #@47a
    .line 421
    const/16 v28, 0x1

    #@47c
    move-object/from16 v0, p3

    #@47e
    move/from16 v1, v28

    #@480
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@483
    .line 422
    const/16 v28, 0x1

    #@485
    move-object/from16 v0, v23

    #@487
    move-object/from16 v1, p3

    #@489
    move/from16 v2, v28

    #@48b
    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    #@48e
    .line 427
    :goto_12
    const/16 v28, 0x1

    #@490
    return v28

    #@491
    .line 425
    :cond_12
    const/16 v28, 0x0

    #@493
    move-object/from16 v0, p3

    #@495
    move/from16 v1, v28

    #@497
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@49a
    goto :goto_12

    #@49b
    .line 431
    .end local v23    # "_result":Landroid/media/session/PlaybackState;
    :sswitch_21
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@49e
    move-object/from16 v0, p2

    #@4a0
    move-object/from16 v1, v28

    #@4a2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4a5
    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    #@4a8
    move-result-object v20

    #@4a9
    .line 433
    .local v20, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4ac
    .line 434
    if-eqz v20, :cond_13

    #@4ae
    .line 435
    const/16 v28, 0x1

    #@4b0
    move-object/from16 v0, p3

    #@4b2
    move/from16 v1, v28

    #@4b4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4b7
    .line 436
    const/16 v28, 0x1

    #@4b9
    move-object/from16 v0, v20

    #@4bb
    move-object/from16 v1, p3

    #@4bd
    move/from16 v2, v28

    #@4bf
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@4c2
    .line 441
    :goto_13
    const/16 v28, 0x1

    #@4c4
    return v28

    #@4c5
    .line 439
    :cond_13
    const/16 v28, 0x0

    #@4c7
    move-object/from16 v0, p3

    #@4c9
    move/from16 v1, v28

    #@4cb
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4ce
    goto :goto_13

    #@4cf
    .line 445
    .end local v20    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_22
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@4d2
    move-object/from16 v0, p2

    #@4d4
    move-object/from16 v1, v28

    #@4d6
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d9
    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    #@4dc
    move-result-object v25

    #@4dd
    .line 447
    .local v25, "_result":Ljava/lang/CharSequence;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@4e0
    .line 448
    if-eqz v25, :cond_14

    #@4e2
    .line 449
    const/16 v28, 0x1

    #@4e4
    move-object/from16 v0, p3

    #@4e6
    move/from16 v1, v28

    #@4e8
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4eb
    .line 450
    const/16 v28, 0x1

    #@4ed
    move-object/from16 v0, v25

    #@4ef
    move-object/from16 v1, p3

    #@4f1
    move/from16 v2, v28

    #@4f3
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@4f6
    .line 455
    :goto_14
    const/16 v28, 0x1

    #@4f8
    return v28

    #@4f9
    .line 453
    :cond_14
    const/16 v28, 0x0

    #@4fb
    move-object/from16 v0, p3

    #@4fd
    move/from16 v1, v28

    #@4ff
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@502
    goto :goto_14

    #@503
    .line 459
    .end local v25    # "_result":Ljava/lang/CharSequence;
    :sswitch_23
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@506
    move-object/from16 v0, p2

    #@508
    move-object/from16 v1, v28

    #@50a
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50d
    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    #@510
    move-result-object v24

    #@511
    .line 461
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@514
    .line 462
    if-eqz v24, :cond_15

    #@516
    .line 463
    const/16 v28, 0x1

    #@518
    move-object/from16 v0, p3

    #@51a
    move/from16 v1, v28

    #@51c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@51f
    .line 464
    const/16 v28, 0x1

    #@521
    move-object/from16 v0, v24

    #@523
    move-object/from16 v1, p3

    #@525
    move/from16 v2, v28

    #@527
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@52a
    .line 469
    :goto_15
    const/16 v28, 0x1

    #@52c
    return v28

    #@52d
    .line 467
    :cond_15
    const/16 v28, 0x0

    #@52f
    move-object/from16 v0, p3

    #@531
    move/from16 v1, v28

    #@533
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@536
    goto :goto_15

    #@537
    .line 473
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_24
    const-string/jumbo v28, "android.media.session.ISessionController"

    #@53a
    move-object/from16 v0, p2

    #@53c
    move-object/from16 v1, v28

    #@53e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@541
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    #@544
    move-result v16

    #@545
    .line 475
    .local v16, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@548
    .line 476
    move-object/from16 v0, p3

    #@54a
    move/from16 v1, v16

    #@54c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@54f
    .line 477
    const/16 v28, 0x1

    #@551
    return v28

    #@552
    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
