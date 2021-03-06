.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# static fields
.field private static final synthetic -com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I = null

.field public static final ACTION_INTERNAL_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.internal_sim_state_changed"

.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x1f7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhoneId:Ljava/lang/Integer;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0xf

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-IccCardConstants$StateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->-com-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 119
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@6
    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@8
    .line 96
    new-instance v0, Ljava/lang/Object;

    #@a
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@d
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@f
    .line 101
    new-instance v0, Landroid/os/RegistrantList;

    #@11
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@16
    .line 102
    new-instance v0, Landroid/os/RegistrantList;

    #@18
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@1d
    .line 103
    new-instance v0, Landroid/os/RegistrantList;

    #@1f
    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@24
    .line 105
    iput v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@26
    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@28
    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2a
    .line 108
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2c
    .line 109
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2e
    .line 110
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@30
    .line 111
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@32
    .line 112
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@34
    .line 114
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@36
    .line 115
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@38
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3a
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v1, "ctor: ci="

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    const-string/jumbo v1, " phoneId="

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@5c
    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@5e
    .line 122
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@60
    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@66
    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@68
    .line 125
    const-string/jumbo v1, "phone"

    #@6b
    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6e
    move-result-object v0

    #@6f
    check-cast v0, Landroid/telephony/TelephonyManager;

    #@71
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@73
    .line 127
    const/16 v0, 0xb

    #@75
    .line 126
    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@78
    move-result-object v0

    #@79
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7b
    .line 128
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@7e
    move-result-object v0

    #@7f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@81
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@83
    const/4 v1, 0x3

    #@84
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@87
    .line 130
    const/4 v0, 0x2

    #@88
    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8b
    .line 131
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8e
    .line 133
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    #@91
    .line 134
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@93
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    #@96
    .line 119
    return-void
.end method

.method private HandleDetectedState()V
    .locals 0

    #@0
    .prologue
    .line 362
    return-void
.end method

.method private broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 460
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "broadcastIccStateChangedIntent: QuietMode NOT Broadcasting intent ACTION_SIM_STATE_CHANGED  value="

    #@1f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 463
    const-string/jumbo v3, " reason="

    #@2a
    .line 461
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit v2

    #@3a
    .line 464
    return-void

    #@3b
    .line 455
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v3, "broadcastIccStateChangedIntent: mPhoneId="

    #@43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    .line 456
    const-string/jumbo v3, " is invalid; Return!!"

    #@50
    .line 455
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    monitor-exit v2

    #@5c
    .line 457
    return-void

    #@5d
    .line 467
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    #@5f
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    #@62
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@65
    .line 472
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6a
    .line 473
    const-string/jumbo v1, "phoneName"

    #@6d
    const-string/jumbo v3, "Phone"

    #@70
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@73
    .line 474
    const-string/jumbo v1, "ss"

    #@76
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@79
    .line 475
    const-string/jumbo v1, "reason"

    #@7c
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7f
    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@84
    move-result v1

    #@85
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@88
    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v3, "broadcastIccStateChangedIntent intent ACTION_SIM_STATE_CHANGED value="

    #@90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    .line 478
    const-string/jumbo v3, " reason="

    #@9b
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v1

    #@9f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    .line 478
    const-string/jumbo v3, " for mPhoneId="

    #@a6
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    .line 478
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@ac
    .line 477
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v1

    #@b0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b3
    move-result-object v1

    #@b4
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@b7
    .line 479
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    #@ba
    .line 480
    const/4 v3, -0x1

    #@bb
    .line 479
    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@be
    monitor-exit v2

    #@bf
    .line 452
    return-void

    #@c0
    .line 453
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@c1
    monitor-exit v2

    #@c2
    throw v1
.end method

.method private broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 487
    const-string/jumbo v1, "broadcastInternalIccStateChangedIntent: Card Index is not set; Return!!"

    #@a
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v2

    #@e
    .line 488
    return-void

    #@f
    .line 491
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    #@11
    const-string/jumbo v1, "android.intent.action.internal_sim_state_changed"

    #@14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@17
    .line 492
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c
    .line 494
    const-string/jumbo v1, "phoneName"

    #@1f
    const-string/jumbo v3, "Phone"

    #@22
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 495
    const-string/jumbo v1, "ss"

    #@28
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2b
    .line 496
    const-string/jumbo v1, "reason"

    #@2e
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@31
    .line 497
    const-string/jumbo v1, "phone"

    #@34
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@36
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@39
    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "Sending intent ACTION_INTERNAL_SIM_STATE_CHANGED for mPhoneId : "

    #@41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@52
    .line 499
    const/4 v1, 0x0

    #@53
    const/4 v3, -0x1

    #@54
    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    monitor-exit v2

    #@58
    .line 484
    return-void

    #@59
    .line 485
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    #@5a
    monitor-exit v2

    #@5b
    throw v1
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 578
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 587
    const-string/jumbo v0, "UNKNOWN"

    #@10
    return-object v0

    #@11
    .line 579
    :pswitch_0
    const-string/jumbo v0, "ABSENT"

    #@14
    return-object v0

    #@15
    .line 580
    :pswitch_1
    const-string/jumbo v0, "LOCKED"

    #@18
    return-object v0

    #@19
    .line 581
    :pswitch_2
    const-string/jumbo v0, "LOCKED"

    #@1c
    return-object v0

    #@1d
    .line 582
    :pswitch_3
    const-string/jumbo v0, "LOCKED"

    #@20
    return-object v0

    #@21
    .line 583
    :pswitch_4
    const-string/jumbo v0, "READY"

    #@24
    return-object v0

    #@25
    .line 584
    :pswitch_5
    const-string/jumbo v0, "NOT_READY"

    #@28
    return-object v0

    #@29
    .line 585
    :pswitch_6
    const-string/jumbo v0, "LOCKED"

    #@2c
    return-object v0

    #@2d
    .line 586
    :pswitch_7
    const-string/jumbo v0, "CARD_IO_ERROR"

    #@30
    return-object v0

    #@31
    .line 578
    nop

    #@32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 596
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom-android-internal-telephony-IccCardConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 602
    :pswitch_0
    const/4 v0, 0x0

    #@e
    return-object v0

    #@f
    .line 597
    :pswitch_1
    const-string/jumbo v0, "PIN"

    #@12
    return-object v0

    #@13
    .line 598
    :pswitch_2
    const-string/jumbo v0, "PUK"

    #@16
    return-object v0

    #@17
    .line 599
    :pswitch_3
    const-string/jumbo v0, "NETWORK"

    #@1a
    return-object v0

    #@1b
    .line 600
    :pswitch_4
    const-string/jumbo v0, "PERM_DISABLED"

    #@1e
    return-object v0

    #@1f
    .line 601
    :pswitch_5
    const-string/jumbo v0, "CARD_IO_ERROR"

    #@22
    return-object v0

    #@23
    .line 596
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 898
    const-string/jumbo v0, "IccCardProxy"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 897
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 902
    const-string/jumbo v0, "IccCardProxy"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 901
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 2

    #@0
    .prologue
    .line 324
    const-string/jumbo v0, "LOADED"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 323
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 0

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@3
    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    #@6
    .line 312
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 0

    #@0
    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    #@3
    .line 319
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@6
    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    #@9
    .line 317
    return-void
.end method

.method private processLockedState()V
    .locals 5

    #@0
    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 535
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v2, :cond_0

    #@7
    monitor-exit v3

    #@8
    .line 537
    return-void

    #@9
    .line 539
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@e
    move-result-object v1

    #@f
    .line 540
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 541
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@15
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit v3

    #@19
    .line 542
    return-void

    #@1a
    .line 545
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1c
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@1f
    move-result-object v0

    #@20
    .line 546
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues()[I

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@27
    move-result v4

    #@28
    aget v2, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2a
    packed-switch v2, :pswitch_data_0

    #@2d
    :goto_0
    :pswitch_0
    monitor-exit v3

    #@2e
    .line 533
    return-void

    #@2f
    .line 548
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@31
    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@34
    .line 549
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@36
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 534
    .end local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    #@3b
    monitor-exit v3

    #@3c
    throw v2

    #@3d
    .line 552
    .restart local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_2
    :try_start_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 546
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerUiccCardEvents()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@7
    const/4 v1, 0x4

    #@8
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    #@b
    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@11
    const/4 v1, 0x6

    #@12
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@15
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@17
    const/4 v1, 0x5

    #@18
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@1b
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1d
    const/16 v1, 0x9

    #@1f
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    #@22
    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@28
    const/16 v1, 0x8

    #@2a
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    #@2d
    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    const/4 v1, 0x7

    #@30
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@33
    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@35
    const/16 v1, 0x1f4

    #@37
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3a
    .line 422
    :cond_2
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    #@0
    .prologue
    .line 565
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    #@4
    .line 564
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    #@0
    .prologue
    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 510
    if-nez p2, :cond_1

    #@15
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@17
    if-ne p1, v0, :cond_1

    #@19
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "setExternalState: !override and newstate unchanged from "

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 512
    return-void

    #@32
    .line 506
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "setExternalState: mPhoneId="

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    const-string/jumbo v2, " is invalid; Return!!"

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    monitor-exit v1

    #@53
    .line 507
    return-void

    #@54
    .line 514
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@56
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v2, "setExternalState: set mPhoneId="

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    const-string/jumbo v2, " mExternalState="

    #@6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@7c
    .line 516
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@7e
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@83
    move-result v2

    #@84
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    #@8f
    .line 519
    const-string/jumbo v0, "LOCKED"

    #@92
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@94
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v0

    #@9c
    if-eqz v0, :cond_3

    #@9e
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@a0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    .line 521
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@a6
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    .line 520
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastInternalIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    .line 527
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@af
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@b1
    if-ne v0, v2, :cond_2

    #@b3
    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@b5
    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b8
    :cond_2
    monitor-exit v1

    #@b9
    .line 503
    return-void

    #@ba
    .line 523
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@bc
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@bf
    move-result-object v0

    #@c0
    .line 524
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@c2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    #@c5
    move-result-object v2

    #@c6
    .line 523
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c9
    goto :goto_0

    #@ca
    .line 504
    :catchall_0
    move-exception v0

    #@cb
    monitor-exit v1

    #@cc
    throw v0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5
    move-result v0

    #@6
    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    #@9
    .line 890
    return-void
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@6
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    #@9
    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@f
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    #@12
    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@14
    if-eqz v0, :cond_2

    #@16
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@18
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    #@1b
    .line 442
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1d
    if-eqz v0, :cond_3

    #@1f
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@21
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    #@24
    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@26
    if-eqz v0, :cond_4

    #@28
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2a
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    #@2d
    .line 444
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2f
    if-eqz v0, :cond_5

    #@31
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@33
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    #@36
    .line 445
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@38
    if-eqz v0, :cond_6

    #@3a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    #@3f
    .line 438
    :cond_6
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 372
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@9
    .line 373
    return-void

    #@a
    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@12
    if-ne v0, v1, :cond_2

    #@14
    .line 377
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 378
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@1a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@1d
    .line 382
    :goto_0
    return-void

    #@1e
    .line 380
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@20
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@23
    goto :goto_0

    #@24
    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@26
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@2c
    if-ne v0, v1, :cond_3

    #@2e
    .line 386
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    #@30
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@33
    .line 387
    return-void

    #@34
    .line 390
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@36
    if-nez v0, :cond_4

    #@38
    .line 391
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@3a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@3d
    .line 392
    return-void

    #@3e
    .line 395
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->-getcom-android-internal-telephony-uicc-IccCardApplicationStatus$AppStateSwitchesValues()[I

    #@41
    move-result-object v0

    #@42
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@44
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    #@4b
    move-result v1

    #@4c
    aget v0, v0, v1

    #@4e
    packed-switch v0, :pswitch_data_0

    #@51
    .line 367
    :goto_1
    return-void

    #@52
    .line 397
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@54
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@57
    goto :goto_1

    #@58
    .line 400
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    #@5b
    goto :goto_1

    #@5c
    .line 403
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@5e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@61
    goto :goto_1

    #@62
    .line 406
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@64
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@67
    goto :goto_1

    #@68
    .line 409
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@6d
    move-result-object v0

    #@6e
    .line 410
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@70
    .line 409
    if-ne v0, v1, :cond_5

    #@72
    .line 411
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@74
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@77
    goto :goto_1

    #@78
    .line 413
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    #@7a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@7d
    goto :goto_1

    #@7e
    .line 417
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@80
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@83
    goto :goto_1

    #@84
    .line 395
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 7

    #@0
    .prologue
    .line 328
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 329
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@5
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@7
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@a
    move-result v6

    #@b
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v1

    #@f
    .line 330
    .local v1, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@11
    .line 331
    .local v3, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v0, 0x0

    #@12
    .line 332
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    #@13
    .line 333
    .local v2, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    #@15
    .line 334
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@18
    move-result-object v3

    #@19
    .line 335
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@1b
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1e
    move-result-object v0

    #@1f
    .line 336
    .local v0, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    #@21
    .line 337
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@24
    move-result-object v2

    #@25
    .line 341
    .end local v0    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@27
    if-ne v4, v2, :cond_1

    #@29
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2b
    if-eq v4, v0, :cond_3

    #@2d
    .line 342
    :cond_1
    :goto_0
    const-string/jumbo v4, "Icc changed. Reregestering."

    #@30
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@33
    .line 343
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    #@36
    .line 344
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@38
    .line 345
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@3a
    .line 346
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@3c
    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    #@3f
    .line 349
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    monitor-exit v5

    #@43
    .line 327
    return-void

    #@44
    .line 341
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    if-eq v4, v1, :cond_2

    #@48
    goto :goto_0

    #@49
    .line 328
    .end local v1    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v4

    #@4a
    monitor-exit v5

    #@4b
    throw v4
.end method

.method private updateQuietMode()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 172
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 174
    const/4 v0, -0x1

    #@5
    .line 175
    .local v0, "cdmaSource":I
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@7
    if-ne v2, v4, :cond_0

    #@9
    .line 176
    const/4 v1, 0x0

    #@a
    .line 177
    .local v1, "newQuietMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "updateQuietMode: 3GPP subscription -> newQuietMode="

    #@12
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@21
    .line 186
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@23
    if-nez v2, :cond_4

    #@25
    if-eqz v1, :cond_4

    #@27
    .line 189
    const-string/jumbo v2, "Switching to QuietMode."

    #@2a
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@2d
    .line 190
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@2f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@32
    .line 191
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@34
    .line 203
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string/jumbo v4, "updateQuietMode: QuietMode is "

    #@3c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    const-string/jumbo v4, " (app_type="

    #@49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 204
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@4f
    .line 203
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 204
    const-string/jumbo v4, " cdmaSource="

    #@56
    .line 203
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    .line 204
    const-string/jumbo v4, ")"

    #@61
    .line 203
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@6c
    .line 206
    const/4 v2, 0x1

    #@6d
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@6f
    .line 207
    const/4 v2, 0x3

    #@70
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@77
    monitor-exit v3

    #@78
    .line 171
    return-void

    #@79
    .line 179
    .end local v1    # "newQuietMode":Z
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7b
    if-eqz v2, :cond_1

    #@7d
    .line 180
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@7f
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    #@82
    move-result v0

    #@83
    .line 182
    :goto_2
    if-ne v0, v4, :cond_3

    #@85
    .line 183
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@87
    const/4 v4, 0x2

    #@88
    if-ne v2, v4, :cond_2

    #@8a
    const/4 v1, 0x1

    #@8b
    .restart local v1    # "newQuietMode":Z
    goto :goto_0

    #@8c
    .line 180
    .end local v1    # "newQuietMode":Z
    :cond_1
    const/4 v0, -0x1

    #@8d
    goto :goto_2

    #@8e
    .line 183
    :cond_2
    const/4 v1, 0x0

    #@8f
    .restart local v1    # "newQuietMode":Z
    goto :goto_0

    #@90
    .line 182
    .end local v1    # "newQuietMode":Z
    :cond_3
    const/4 v1, 0x0

    #@91
    .restart local v1    # "newQuietMode":Z
    goto :goto_0

    #@92
    .line 192
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@94
    if-eqz v2, :cond_5

    #@96
    if-nez v1, :cond_5

    #@98
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string/jumbo v4, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    #@a0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    .line 195
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@a6
    .line 194
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v2

    #@ae
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@b1
    .line 197
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@b3
    .line 198
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@b5
    const/4 v4, 0x1

    #@b6
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b9
    goto/16 :goto_1

    #@bb
    .line 172
    .end local v1    # "newQuietMode":Z
    :catchall_0
    move-exception v2

    #@bc
    monitor-exit v3

    #@bd
    throw v2

    #@be
    .line 200
    .restart local v1    # "newQuietMode":Z
    :cond_5
    :try_start_2
    const-string/jumbo v2, "updateQuietMode: no changes don\'t setExternalState"

    #@c1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c4
    goto/16 :goto_1
.end method

.method private updateStateProperty()V
    .locals 3

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    #@13
    .line 448
    return-void
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 850
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 852
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 849
    return-void

    #@e
    .line 853
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 854
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 856
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 857
    return-void

    #@23
    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 836
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 838
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 835
    return-void

    #@e
    .line 839
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 840
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 841
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 842
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 843
    return-void

    #@23
    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 139
    :try_start_0
    const-string/jumbo v0, "Disposing"

    #@6
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@9
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@b
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    #@e
    .line 142
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@11
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@13
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    #@16
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@18
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    #@1b
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1d
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit v1

    #@21
    .line 137
    return-void

    #@22
    .line 138
    :catchall_0
    move-exception v0

    #@23
    monitor-exit v1

    #@24
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "IccCardProxy: "

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, " mContext="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v2, " mCi="

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, " mAbsentRegistrants: size="

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@57
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@5a
    move-result v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 910
    const/4 v0, 0x0

    #@67
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@69
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@6c
    move-result v1

    #@6d
    if-ge v0, v1, :cond_0

    #@6f
    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v2, "  mAbsentRegistrants["

    #@77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    const-string/jumbo v2, "]="

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 912
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@88
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v1

    #@8c
    check-cast v1, Landroid/os/Registrant;

    #@8e
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@91
    move-result-object v1

    #@92
    .line 911
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9d
    .line 910
    add-int/lit8 v0, v0, 0x1

    #@9f
    goto :goto_0

    #@a0
    .line 914
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v2, " mPinLockedRegistrants: size="

    #@a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@ae
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@b1
    move-result v2

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@bd
    .line 915
    const/4 v0, 0x0

    #@be
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@c0
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@c3
    move-result v1

    #@c4
    if-ge v0, v1, :cond_1

    #@c6
    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v2, "  mPinLockedRegistrants["

    #@ce
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v1

    #@d6
    const-string/jumbo v2, "]="

    #@d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v2

    #@dd
    .line 917
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@df
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@e2
    move-result-object v1

    #@e3
    check-cast v1, Landroid/os/Registrant;

    #@e5
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@e8
    move-result-object v1

    #@e9
    .line 916
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f4
    .line 915
    add-int/lit8 v0, v0, 0x1

    #@f6
    goto :goto_1

    #@f7
    .line 919
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    const-string/jumbo v2, " mNetworkLockedRegistrants: size="

    #@ff
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v1

    #@103
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@105
    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    #@108
    move-result v2

    #@109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v1

    #@10d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@110
    move-result-object v1

    #@111
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@114
    .line 920
    const/4 v0, 0x0

    #@115
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@117
    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    #@11a
    move-result v1

    #@11b
    if-ge v0, v1, :cond_2

    #@11d
    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    #@11f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@122
    const-string/jumbo v2, "  mNetworkLockedRegistrants["

    #@125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v1

    #@129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    const-string/jumbo v2, "]="

    #@130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    .line 922
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@136
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    #@139
    move-result-object v1

    #@13a
    check-cast v1, Landroid/os/Registrant;

    #@13c
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    #@13f
    move-result-object v1

    #@140
    .line 921
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14b
    .line 920
    add-int/lit8 v0, v0, 0x1

    #@14d
    goto :goto_2

    #@14e
    .line 924
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@153
    const-string/jumbo v2, " mCurrentAppType="

    #@156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v1

    #@15a
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@15c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v1

    #@160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v1

    #@164
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@167
    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    #@169
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16c
    const-string/jumbo v2, " mUiccController="

    #@16f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v1

    #@173
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    #@175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v1

    #@179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17c
    move-result-object v1

    #@17d
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@180
    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    #@182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    const-string/jumbo v2, " mUiccCard="

    #@188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@18e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@199
    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    const-string/jumbo v2, " mUiccApplication="

    #@1a1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v1

    #@1a5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@1a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v1

    #@1af
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1b2
    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b7
    const-string/jumbo v2, " mIccRecords="

    #@1ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v1

    #@1be
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@1c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v1

    #@1c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1cb
    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    const-string/jumbo v2, " mCdmaSSM="

    #@1d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d6
    move-result-object v1

    #@1d7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@1d9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e0
    move-result-object v1

    #@1e1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e4
    .line 930
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e9
    const-string/jumbo v2, " mRadioOn="

    #@1ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v1

    #@1f0
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@1f2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v1

    #@1f6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v1

    #@1fa
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1fd
    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    #@1ff
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@202
    const-string/jumbo v2, " mQuietMode="

    #@205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v1

    #@209
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    #@20b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v1

    #@20f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@212
    move-result-object v1

    #@213
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@216
    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    #@218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21b
    const-string/jumbo v2, " mInitialized="

    #@21e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@221
    move-result-object v1

    #@222
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@227
    move-result-object v1

    #@228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v1

    #@22c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@22f
    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    #@231
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@234
    const-string/jumbo v2, " mExternalState="

    #@237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23a
    move-result-object v1

    #@23b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    #@23d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v1

    #@241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v1

    #@245
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@248
    .line 935
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    #@24b
    .line 905
    return-void
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    #@9
    move-result v0

    #@a
    .line 791
    .local v0, "retValue":Z
    :goto_0
    return v0

    #@b
    .line 790
    .end local v0    # "retValue":Z
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 782
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 784
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    #@c
    move-result v1

    #@d
    .line 783
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 785
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 784
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 782
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 623
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 625
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 627
    return-object v2

    #@12
    .line 623
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    #@0
    .prologue
    .line 772
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    #@c
    move-result v1

    #@d
    .line 774
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 776
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 775
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 772
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    #@0
    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    #@9
    move-result v1

    #@a
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    .line 797
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 796
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    #@0
    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    #@9
    move-result v1

    #@a
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v0

    #@e
    .line 803
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 802
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method public getIccRecord()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@2
    return-object v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 616
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    #@0
    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 573
    :cond_0
    const/4 v0, 0x0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 569
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 864
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 868
    return-object v2

    #@12
    .line 864
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    #@0
    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 609
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 213
    iget v4, p1, Landroid/os/Message;->what:I

    #@5
    sparse-switch v4, :sswitch_data_0

    #@8
    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v5, "Unhandled message with number: "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    iget v5, p1, Landroid/os/Message;->what:I

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@21
    .line 212
    :cond_0
    :goto_0
    return-void

    #@22
    .line 215
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@24
    .line 216
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@26
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    #@28
    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    #@2b
    move-result-object v5

    #@2c
    if-ne v4, v5, :cond_0

    #@2e
    .line 217
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@30
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@33
    goto :goto_0

    #@34
    .line 221
    :sswitch_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    #@36
    .line 222
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@38
    if-nez v4, :cond_0

    #@3a
    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    #@3d
    goto :goto_0

    #@3e
    .line 227
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    #@40
    if-eqz v4, :cond_0

    #@42
    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    #@45
    goto :goto_0

    #@46
    .line 232
    :sswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@48
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@4b
    .line 233
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@4d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@50
    goto :goto_0

    #@51
    .line 236
    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    #@54
    goto :goto_0

    #@55
    .line 239
    :sswitch_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    #@57
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@5a
    goto :goto_0

    #@5b
    .line 243
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@5d
    if-eqz v4, :cond_1

    #@5f
    .line 244
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@61
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    .line 245
    .local v3, "operator":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "operator="

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    const-string/jumbo v5, " mPhoneId="

    #@78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@89
    .line 247
    if-eqz v3, :cond_4

    #@8b
    .line 248
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@8d
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@8f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@92
    move-result v5

    #@93
    invoke-virtual {v4, v5, v3}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@96
    .line 249
    const/4 v4, 0x3

    #@97
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    .line 250
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_3

    #@9d
    .line 251
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@9f
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@a1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@a4
    move-result v5

    #@a5
    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@a8
    move-result v6

    #@a9
    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    .line 251
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@b0
    .line 260
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v3    # "operator":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@b2
    if-eqz v4, :cond_2

    #@b4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@b6
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    #@b9
    move-result v4

    #@ba
    if-eqz v4, :cond_5

    #@bc
    .line 264
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    #@bf
    goto/16 :goto_0

    #@c1
    .line 254
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v3    # "operator":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "EVENT_RECORDS_LOADED Country code is null"

    #@c4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@c7
    goto :goto_1

    #@c8
    .line 257
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "EVENT_RECORDS_LOADED Operator name is null"

    #@cb
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    #@ce
    goto :goto_1

    #@cf
    .line 261
    .end local v3    # "operator":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@d1
    .line 262
    const/16 v5, 0x1f7

    #@d3
    .line 261
    invoke-virtual {v4, p0, v5, v7}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 268
    :sswitch_7
    const-string/jumbo v4, "IMSI"

    #@db
    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    #@de
    goto/16 :goto_0

    #@e0
    .line 271
    :sswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@e2
    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    #@e5
    .line 272
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@e7
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    #@ea
    goto/16 :goto_0

    #@ec
    .line 275
    :sswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    #@ef
    goto/16 :goto_0

    #@f1
    .line 278
    :sswitch_a
    const-string/jumbo v4, "EVENT_SUBSCRIPTION_ACTIVATED"

    #@f4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@f7
    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionActivated()V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 283
    :sswitch_b
    const-string/jumbo v4, "EVENT_SUBSCRIPTION_DEACTIVATED"

    #@ff
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@102
    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionDeactivated()V

    #@105
    goto/16 :goto_0

    #@107
    .line 288
    :sswitch_c
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@109
    if-ne v4, v5, :cond_0

    #@10b
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@10d
    if-eqz v4, :cond_0

    #@10f
    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@111
    check-cast v0, Landroid/os/AsyncResult;

    #@113
    .line 290
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@115
    check-cast v4, Ljava/lang/Integer;

    #@117
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@11a
    move-result v2

    #@11b
    .line 291
    .local v2, "eventCode":I
    const/4 v4, 0x2

    #@11c
    if-ne v2, v4, :cond_0

    #@11e
    .line 292
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@120
    .line 293
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@122
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@125
    move-result v5

    #@126
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    #@128
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    #@12b
    move-result-object v6

    #@12c
    .line 292
    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 299
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "eventCode":I
    :sswitch_d
    const-string/jumbo v4, "EVENT_CARRIER_PRIVILEGES_LOADED"

    #@134
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@137
    .line 300
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@139
    if-eqz v4, :cond_6

    #@13b
    .line 301
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@13d
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    #@140
    .line 303
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    #@143
    goto/16 :goto_0

    #@145
    .line 213
    nop

    #@146
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xb -> :sswitch_9
        0x1f4 -> :sswitch_c
        0x1f5 -> :sswitch_a
        0x1f6 -> :sswitch_b
        0x1f7 -> :sswitch_d
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 3

    #@0
    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    #@c
    move-result-object v0

    #@d
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    if-eq v0, v2, :cond_0

    #@11
    .line 884
    const/4 v0, 0x1

    #@12
    monitor-exit v1

    #@13
    return v0

    #@14
    .line 886
    :cond_0
    const/4 v0, 0x0

    #@15
    monitor-exit v1

    #@16
    return v0

    #@17
    .line 882
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@0
    .prologue
    .line 874
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 875
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    #@9
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    #@c
    move-result v1

    #@d
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@10
    move-result-object v0

    #@11
    .line 876
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result v1

    #@15
    monitor-exit v2

    #@16
    return v1

    #@17
    .line 875
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    #@18
    goto :goto_0

    #@19
    .line 874
    :catchall_0
    move-exception v1

    #@1a
    monitor-exit v2

    #@1b
    throw v1
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 636
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 637
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 639
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 641
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    #@13
    if-ne v1, v3, :cond_0

    #@15
    .line 642
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 635
    return-void

    #@1a
    .line 636
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 682
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 683
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 685
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 688
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    :cond_0
    monitor-exit v2

    #@1b
    .line 681
    return-void

    #@1c
    .line 682
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit v2

    #@1e
    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 660
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    #@5
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@8
    .line 662
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@a
    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    #@d
    .line 664
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    #@10
    move-result-object v1

    #@11
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    #@13
    if-ne v1, v3, :cond_0

    #@15
    .line 665
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit v2

    #@19
    .line 658
    return-void

    #@1a
    .line 659
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    #@1b
    monitor-exit v2

    #@1c
    throw v1
.end method

.method resetProperties()V
    .locals 3

    #@0
    .prologue
    .line 354
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 355
    const-string/jumbo v0, "update icc_operator_numeric="

    #@8
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@b
    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@d
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    const-string/jumbo v2, ""

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    #@19
    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@1b
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@1d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v1

    #@21
    const-string/jumbo v2, ""

    #@24
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    #@27
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@29
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhoneId:Ljava/lang/Integer;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v1

    #@2f
    const-string/jumbo v2, ""

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    #@35
    .line 353
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 822
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 824
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 821
    return-void

    #@e
    .line 825
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 826
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 827
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 828
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 829
    return-void

    #@23
    .line 822
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 808
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 810
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 807
    return-void

    #@e
    .line 811
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 812
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 814
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 815
    return-void

    #@23
    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    #@0
    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "Setting radio tech "

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    #@1e
    .line 158
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_0

    #@24
    .line 159
    const/4 v0, 0x1

    #@25
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    #@27
    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit v1

    #@2b
    .line 153
    return-void

    #@2c
    .line 161
    :cond_0
    const/4 v0, 0x2

    #@2d
    :try_start_1
    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    goto :goto_0

    #@30
    .line 154
    :catchall_0
    move-exception v0

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 760
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 757
    return-void

    #@e
    .line 761
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 762
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "CommandsInterface is not set."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 763
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 764
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 765
    return-void

    #@23
    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 702
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 703
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 704
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 701
    return-void

    #@e
    .line 705
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 706
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 707
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 708
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 709
    return-void

    #@23
    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 732
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 729
    return-void

    #@e
    .line 733
    :cond_1
    if-eqz p2, :cond_0

    #@10
    .line 734
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 735
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 736
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 737
    return-void

    #@23
    .line 730
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 716
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 718
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 715
    return-void

    #@e
    .line 719
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 720
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 721
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 722
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 723
    return-void

    #@23
    .line 716
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 744
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 745
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    #@9
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v2

    #@d
    .line 743
    return-void

    #@e
    .line 747
    :cond_1
    if-eqz p3, :cond_0

    #@10
    .line 748
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v1, "ICC card is absent."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    .line 749
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    #@1b
    move-result-object v1

    #@1c
    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@1e
    .line 750
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v2

    #@22
    .line 751
    return-void

    #@23
    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    #@24
    monitor-exit v2

    #@25
    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 649
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 648
    return-void

    #@a
    .line 649
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 695
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 696
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 694
    return-void

    #@a
    .line 695
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 673
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    #@5
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 671
    return-void

    #@a
    .line 672
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method
