.class Lcom/android/server/am/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;

.field private static final USE_DEFAULT_EPHEMERAL_LAUNCHER:Z


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private mDoResume:Z

.field private mInTask:Lcom/android/server/am/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private mLaunchBounds:Landroid/graphics/Rect;

.field private mLaunchFlags:I

.field private mLaunchSingleInstance:Z

.field private mLaunchSingleTask:Z

.field private mLaunchSingleTop:Z

.field private mLaunchTaskBehind:Z

.field private mMovedOtherTask:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/am/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field final mPendingActivityLaunches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerHintSent:Z

.field private mReuseTask:Lcom/android/server/am/TaskRecord;

.field private mReusedActivity:Lcom/android/server/am/ActivityRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSourceRecord:Lcom/android/server/am/ActivityRecord;

.field private mSourceStack:Lcom/android/server/am/ActivityStack;

.field private mStartActivity:Lcom/android/server/am/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/am/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 130
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@5
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_RESULTS:Ljava/lang/String;

    #@1c
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_FOCUS:Ljava/lang/String;

    #@33
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_CONFIGURATION:Ljava/lang/String;

    #@4a
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    sget-object v1, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Lcom/android/server/am/ActivityStarter;->TAG_USER_LEAVING:Ljava/lang/String;

    #@61
    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    #@0
    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@a
    .line 225
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    .line 226
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e
    .line 227
    new-instance v0, Lcom/android/server/am/ActivityStartInterceptor;

    #@10
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStartInterceptor;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    #@17
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@19
    .line 224
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchSingleInstance"    # Z
    .param p3, "launchSingleTask"    # Z
    .param p4, "launchFlags"    # I

    #@0
    .prologue
    const/high16 v1, 0x80000

    #@2
    .line 1859
    and-int v0, p4, v1

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 1860
    if-nez p2, :cond_0

    #@8
    .line 1859
    if-eqz p3, :cond_1

    #@a
    .line 1862
    :cond_0
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@c
    const-string/jumbo v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    #@f
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1865
    const v0, -0x8080001

    #@15
    .line 1864
    and-int/2addr p4, v0

    #@16
    .line 1881
    :goto_0
    :pswitch_0
    return p4

    #@17
    .line 1867
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@19
    iget v0, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@1b
    packed-switch v0, :pswitch_data_0

    #@1e
    goto :goto_0

    #@1f
    .line 1871
    :pswitch_1
    or-int/2addr p4, v1

    #@20
    .line 1872
    goto :goto_0

    #@21
    .line 1874
    :pswitch_2
    or-int/2addr p4, v1

    #@22
    .line 1875
    goto :goto_0

    #@23
    .line 1877
    :pswitch_3
    const v0, -0x8000001

    #@26
    and-int/2addr p4, v0

    #@27
    .line 1878
    goto :goto_0

    #@28
    .line 1867
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 20
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "origIntent"    # Landroid/content/Intent;
    .param p3, "ephemeralPackage"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "userId"    # I

    #@0
    .prologue
    .line 529
    new-instance v18, Landroid/content/Intent;

    #@2
    move-object/from16 v0, v18

    #@4
    move-object/from16 v1, p2

    #@6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@9
    .line 530
    .local v18, "nonEphemeralIntent":Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getFlags()I

    #@c
    move-result v2

    #@d
    or-int/lit16 v2, v2, 0x200

    #@f
    move-object/from16 v0, v18

    #@11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@14
    .line 533
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@1b
    move-result v5

    #@1c
    .line 536
    const/4 v3, 0x1

    #@1d
    new-array v10, v3, [Landroid/content/Intent;

    #@1f
    const/4 v3, 0x0

    #@20
    aput-object v18, v10, v3

    #@22
    const/4 v3, 0x1

    #@23
    new-array v11, v3, [Ljava/lang/String;

    #@25
    const/4 v3, 0x0

    #@26
    aput-object p5, v11, v3

    #@28
    .line 534
    const/4 v3, 0x2

    #@29
    .line 535
    const/4 v7, 0x0

    #@2a
    const/4 v8, 0x0

    #@2b
    const/4 v9, 0x1

    #@2c
    .line 537
    const/high16 v12, 0x54000000

    #@2e
    .line 538
    const/4 v13, 0x0

    #@2f
    move-object/from16 v4, p4

    #@31
    move/from16 v6, p6

    #@33
    .line 533
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@36
    move-result-object v15

    #@37
    .line 547
    .local v15, "failureIntentTarget":Landroid/content/IIntentSender;
    new-instance v14, Landroid/content/Intent;

    #@39
    move-object/from16 v0, p1

    #@3b
    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3e
    .line 553
    .local v14, "ephemeralIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@40
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@42
    .line 555
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@45
    move-result v5

    #@46
    .line 556
    const/4 v3, 0x1

    #@47
    new-array v10, v3, [Landroid/content/Intent;

    #@49
    const/4 v3, 0x0

    #@4a
    aput-object v14, v10, v3

    #@4c
    const/4 v3, 0x1

    #@4d
    new-array v11, v3, [Ljava/lang/String;

    #@4f
    const/4 v3, 0x0

    #@50
    aput-object p5, v11, v3

    #@52
    .line 554
    const/4 v3, 0x2

    #@53
    .line 555
    const/4 v7, 0x0

    #@54
    const/4 v8, 0x0

    #@55
    const/4 v9, 0x0

    #@56
    .line 557
    const/high16 v12, 0x54000000

    #@58
    .line 558
    const/4 v13, 0x0

    #@59
    move-object/from16 v4, p4

    #@5b
    move/from16 v6, p6

    #@5d
    .line 553
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@60
    move-result-object v19

    #@61
    .line 561
    .local v19, "successIntentTarget":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    #@64
    move-result v16

    #@65
    .line 562
    .local v16, "flags":I
    new-instance v17, Landroid/content/Intent;

    #@67
    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    #@6a
    .line 564
    .local v17, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    #@6c
    .line 563
    or-int v2, v2, v16

    #@6e
    .line 565
    const v3, 0x8000

    #@71
    .line 563
    or-int/2addr v2, v3

    #@72
    .line 566
    const/high16 v3, 0x40000000    # 2.0f

    #@74
    .line 563
    or-int/2addr v2, v3

    #@75
    .line 567
    const/high16 v3, 0x800000

    #@77
    .line 563
    or-int/2addr v2, v3

    #@78
    move-object/from16 v0, v17

    #@7a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@7d
    .line 568
    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    #@80
    move-object/from16 v0, v17

    #@82
    move-object/from16 v1, p3

    #@84
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@87
    .line 569
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_FAILURE"

    #@8a
    new-instance v3, Landroid/content/IntentSender;

    #@8c
    invoke-direct {v3, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@8f
    move-object/from16 v0, v17

    #@91
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@94
    .line 570
    const-string/jumbo v2, "android.intent.extra.EPHEMERAL_SUCCESS"

    #@97
    new-instance v3, Landroid/content/IntentSender;

    #@99
    move-object/from16 v0, v19

    #@9b
    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@9e
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@a3
    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@aa
    move-result-object v2

    #@ab
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@b2
    move-result-object v2

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@b8
    .line 573
    return-object v17
.end method

.method private computeLaunchingTaskFlags()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v6, 0x10000000

    #@4
    const/4 v4, 0x0

    #@5
    .line 1367
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@7
    if-nez v3, :cond_8

    #@9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@b
    if-eqz v3, :cond_8

    #@d
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@f
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@11
    if-eqz v3, :cond_8

    #@13
    .line 1368
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@15
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    #@18
    move-result-object v0

    #@19
    .line 1369
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@1b
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    #@1e
    move-result-object v2

    #@1f
    .line 1370
    .local v2, "root":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    #@21
    .line 1371
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@23
    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@26
    .line 1372
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@28
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Launching into task without base intent: "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    .line 1373
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@36
    .line 1372
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 1378
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@44
    if-nez v3, :cond_1

    #@46
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@48
    if-eqz v3, :cond_3

    #@4a
    .line 1379
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4d
    move-result-object v3

    #@4e
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@50
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@52
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v3

    #@5a
    if-nez v3, :cond_2

    #@5c
    .line 1380
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@5e
    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@61
    .line 1381
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Trying to launch singleInstance/Task "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    .line 1382
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@71
    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v4

    #@75
    .line 1382
    const-string/jumbo v5, " into different task "

    #@78
    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v4

    #@7c
    .line 1382
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@7e
    .line 1381
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v3

    #@8a
    .line 1384
    :cond_2
    if-eqz v2, :cond_3

    #@8c
    .line 1385
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@8e
    invoke-static {v3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@91
    .line 1386
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@93
    new-instance v4, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@98
    const-string/jumbo v5, "Caller with mInTask "

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    .line 1387
    const-string/jumbo v5, " has root "

    #@a8
    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v4

    #@ac
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    .line 1387
    const-string/jumbo v5, " but target is singleInstance/Task"

    #@b3
    .line 1386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@be
    throw v3

    #@bf
    .line 1393
    :cond_3
    if-nez v2, :cond_6

    #@c1
    .line 1394
    const v1, 0x18082000

    #@c4
    .line 1396
    .local v1, "flagsOfInterest":I
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@c6
    const v4, -0x18082001

    #@c9
    and-int/2addr v3, v4

    #@ca
    .line 1397
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@cd
    move-result v4

    #@ce
    const v5, 0x18082000

    #@d1
    and-int/2addr v4, v5

    #@d2
    .line 1396
    or-int/2addr v3, v4

    #@d3
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@d5
    .line 1398
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@d7
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@d9
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@dc
    .line 1399
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@de
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@e0
    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@e3
    .line 1400
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@e5
    .line 1412
    .end local v1    # "flagsOfInterest":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@e7
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@e9
    .line 1426
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@eb
    if-nez v3, :cond_5

    #@ed
    .line 1427
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@ef
    if-nez v3, :cond_a

    #@f1
    .line 1430
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@f3
    and-int/2addr v3, v6

    #@f4
    if-nez v3, :cond_5

    #@f6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@f8
    if-nez v3, :cond_5

    #@fa
    .line 1431
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@fc
    new-instance v4, Ljava/lang/StringBuilder;

    #@fe
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@101
    const-string/jumbo v5, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    #@104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v4

    #@108
    .line 1432
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@10a
    .line 1431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@111
    move-result-object v4

    #@112
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@115
    .line 1433
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@117
    or-int/2addr v3, v6

    #@118
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@11a
    .line 1364
    :cond_5
    :goto_2
    return-void

    #@11b
    .line 1405
    .restart local v0    # "baseIntent":Landroid/content/Intent;
    .restart local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@11d
    and-int/2addr v3, v6

    #@11e
    if-eqz v3, :cond_7

    #@120
    .line 1406
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@122
    goto :goto_0

    #@123
    .line 1409
    :cond_7
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@125
    goto :goto_0

    #@126
    .line 1414
    .end local v0    # "baseIntent":Landroid/content/Intent;
    .end local v2    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_8
    iput-object v4, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@128
    .line 1420
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@12a
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isResolverActivity()Z

    #@12d
    move-result v3

    #@12e
    if-nez v3, :cond_9

    #@130
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@132
    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@134
    if-eqz v3, :cond_4

    #@136
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@138
    if-eqz v3, :cond_4

    #@13a
    .line 1421
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@13c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    #@13f
    move-result v3

    #@140
    .line 1420
    if-eqz v3, :cond_4

    #@142
    .line 1422
    iput-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@144
    goto :goto_1

    #@145
    .line 1435
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@147
    iget v3, v3, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@149
    const/4 v4, 0x3

    #@14a
    if-ne v3, v4, :cond_b

    #@14c
    .line 1439
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@14e
    or-int/2addr v3, v6

    #@14f
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@151
    goto :goto_2

    #@152
    .line 1440
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@154
    if-nez v3, :cond_c

    #@156
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@158
    if-eqz v3, :cond_5

    #@15a
    .line 1443
    :cond_c
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@15c
    or-int/2addr v3, v6

    #@15d
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@15f
    goto :goto_2
.end method

.method private computeSourceStack()V
    .locals 5

    #@0
    .prologue
    const/high16 v4, 0x10000000

    #@2
    const/4 v3, 0x0

    #@3
    .line 1449
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1450
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@9
    .line 1451
    return-void

    #@a
    .line 1453
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@c
    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1454
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@12
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@14
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@16
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@18
    .line 1455
    return-void

    #@19
    .line 1462
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@1b
    and-int/2addr v0, v4

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 1463
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "startActivity called from finishing "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    .line 1464
    const-string/jumbo v2, "; forcing "

    #@35
    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    .line 1464
    const-string/jumbo v2, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    #@3c
    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 1464
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@42
    .line 1463
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1465
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@4f
    or-int/2addr v0, v4

    #@50
    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@52
    .line 1466
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@54
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@56
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    #@58
    .line 1467
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@5a
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5c
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@5e
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    #@60
    .line 1469
    :cond_2
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@62
    .line 1470
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@64
    .line 1448
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "bounds"    # Landroid/graphics/Rect;
    .param p4, "launchFlags"    # I
    .param p5, "aOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 1903
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    .line 1904
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    #@5
    move-result v10

    #@6
    if-nez v10, :cond_0

    #@8
    if-eqz v9, :cond_1

    #@a
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    #@d
    move-result v10

    #@e
    :goto_0
    if-nez v10, :cond_2

    #@10
    .line 1905
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@14
    return-object v10

    #@15
    .line 1904
    :cond_0
    const/4 v10, 0x1

    #@16
    goto :goto_0

    #@17
    :cond_1
    const/4 v10, 0x0

    #@18
    goto :goto_0

    #@19
    .line 1908
    :cond_2
    move/from16 v0, p4

    #@1b
    move-object/from16 v1, p5

    #@1d
    invoke-direct {p0, p1, v0, v9, v1}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@20
    move-result-object v6

    #@21
    .line 1909
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_3

    #@23
    .line 1910
    return-object v6

    #@24
    .line 1913
    :cond_3
    if-eqz v9, :cond_5

    #@26
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@28
    if-eqz v10, :cond_5

    #@2a
    .line 1914
    iget-object v6, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2c
    .line 1915
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@2f
    move-result v10

    #@30
    if-eqz v10, :cond_4

    #@32
    .line 1916
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@34
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@36
    if-eq v10, v6, :cond_4

    #@38
    .line 1926
    :cond_4
    return-object v6

    #@39
    .line 1929
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3b
    .line 1930
    .local v3, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    if-eqz v3, :cond_6

    #@3d
    .line 1932
    const/4 v10, 0x0

    #@3e
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@40
    .line 1933
    iget-object v10, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@42
    return-object v10

    #@43
    .line 1940
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@45
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@47
    iget v4, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@49
    .line 1941
    .local v4, "focusedStackId":I
    const/4 v10, 0x1

    #@4a
    if-eq v4, v10, :cond_9

    #@4c
    .line 1942
    const/4 v10, 0x3

    #@4d
    if-ne v4, v10, :cond_7

    #@4f
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    #@52
    move-result v10

    #@53
    .line 1941
    if-nez v10, :cond_9

    #@55
    .line 1943
    :cond_7
    const/4 v10, 0x2

    #@56
    if-ne v4, v10, :cond_a

    #@58
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    #@5b
    move-result v2

    #@5c
    .line 1944
    .local v2, "canUseFocusedStack":Z
    :goto_1
    if-eqz v2, :cond_b

    #@5e
    if-eqz p2, :cond_8

    #@60
    .line 1945
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@62
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@64
    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@66
    invoke-virtual {v10}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isEligibleForNewTasks()Z

    #@69
    move-result v10

    #@6a
    .line 1944
    if-eqz v10, :cond_b

    #@6c
    .line 1948
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6e
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@70
    return-object v10

    #@71
    .line 1941
    .end local v2    # "canUseFocusedStack":Z
    :cond_9
    const/4 v2, 0x1

    #@72
    goto :goto_1

    #@73
    .line 1943
    :cond_a
    const/4 v2, 0x0

    #@74
    goto :goto_1

    #@75
    .line 1952
    .restart local v2    # "canUseFocusedStack":Z
    :cond_b
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@77
    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    #@79
    iget-object v5, v10, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@7b
    .line 1953
    .local v5, "homeDisplayStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7e
    move-result v10

    #@7f
    add-int/lit8 v8, v10, -0x1

    #@81
    .local v8, "stackNdx":I
    :goto_2
    if-ltz v8, :cond_d

    #@83
    .line 1954
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@86
    move-result-object v6

    #@87
    .end local v6    # "stack":Lcom/android/server/am/ActivityStack;
    check-cast v6, Lcom/android/server/am/ActivityStack;

    #@89
    .line 1955
    .restart local v6    # "stack":Lcom/android/server/am/ActivityStack;
    iget v10, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@8b
    invoke-static {v10}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@8e
    move-result v10

    #@8f
    if-nez v10, :cond_c

    #@91
    .line 1958
    return-object v6

    #@92
    .line 1953
    :cond_c
    add-int/lit8 v8, v8, -0x1

    #@94
    goto :goto_2

    #@95
    .line 1963
    :cond_d
    if-eqz v9, :cond_e

    #@97
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    #@9a
    move-result v7

    #@9b
    .line 1966
    .local v7, "stackId":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9d
    const/4 v11, 0x1

    #@9e
    const/4 v12, 0x1

    #@9f
    invoke-virtual {v10, v7, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@a2
    move-result-object v6

    #@a3
    .line 1969
    return-object v6

    #@a4
    .line 1964
    .end local v7    # "stackId":I
    :cond_e
    if-eqz p3, :cond_f

    #@a6
    const/4 v7, 0x2

    #@a7
    .restart local v7    # "stackId":I
    goto :goto_3

    #@a8
    .line 1965
    .end local v7    # "stackId":I
    :cond_f
    const/4 v7, 0x1

    #@a9
    .restart local v7    # "stackId":I
    goto :goto_3
.end method

.method private getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "aOptions"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1976
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 1977
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@9
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@b
    return-object v3

    #@c
    .line 1981
    :cond_0
    if-eqz p4, :cond_1

    #@e
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    #@11
    move-result v1

    #@12
    .line 1983
    .local v1, "launchStackId":I
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 1984
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    invoke-virtual {v3, v1, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@1d
    move-result-object v3

    #@1e
    return-object v3

    #@1f
    .line 1981
    .end local v1    # "launchStackId":I
    :cond_1
    const/4 v1, -0x1

    #@20
    goto :goto_0

    #@21
    .line 1985
    .restart local v1    # "launchStackId":I
    :cond_2
    if-ne v1, v6, :cond_3

    #@23
    .line 1988
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@28
    move-result-object v3

    #@29
    return-object v3

    #@2a
    .line 1991
    :cond_3
    and-int/lit16 v3, p2, 0x1000

    #@2c
    if-nez v3, :cond_4

    #@2e
    .line 1992
    return-object v4

    #@2f
    .line 1998
    :cond_4
    if-eqz p3, :cond_5

    #@31
    iget-object v2, p3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@33
    .line 2002
    .local v2, "parentStack":Lcom/android/server/am/ActivityStack;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@35
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@37
    if-eq v2, v3, :cond_7

    #@39
    .line 2004
    return-object v2

    #@3a
    .line 1999
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_5
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@3c
    if-eqz v3, :cond_6

    #@3e
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->mInitialActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@40
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@42
    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    #@43
    .line 2000
    .end local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@45
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@47
    .restart local v2    # "parentStack":Lcom/android/server/am/ActivityStack;
    goto :goto_1

    #@48
    .line 2006
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4a
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@4c
    if-eqz v3, :cond_8

    #@4e
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@50
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@52
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@55
    move-result-object v3

    #@56
    if-ne p3, v3, :cond_8

    #@58
    .line 2009
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5a
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@5c
    return-object v3

    #@5d
    .line 2012
    :cond_8
    if-eqz v2, :cond_9

    #@5f
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@61
    if-ne v3, v6, :cond_9

    #@63
    .line 2015
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@65
    invoke-virtual {v3, v5, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    #@68
    move-result-object v3

    #@69
    return-object v3

    #@6a
    .line 2021
    :cond_9
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6c
    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@6f
    move-result-object v0

    #@70
    .line 2022
    .local v0, "dockedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_a

    #@72
    .line 2023
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@75
    move-result v3

    #@76
    if-nez v3, :cond_a

    #@78
    .line 2025
    return-object v4

    #@79
    .line 2027
    :cond_a
    return-object v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;
    .locals 9

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1483
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@4
    const/high16 v6, 0x10000000

    #@6
    and-int/2addr v3, v6

    #@7
    if-eqz v3, :cond_2

    #@9
    .line 1484
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@b
    const/high16 v6, 0x8000000

    #@d
    and-int/2addr v3, v6

    #@e
    if-nez v3, :cond_2

    #@10
    .line 1483
    :cond_0
    const/4 v1, 0x1

    #@11
    .line 1489
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@13
    if-nez v3, :cond_3

    #@15
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@17
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@19
    if-nez v3, :cond_3

    #@1b
    move v3, v4

    #@1c
    :goto_1
    and-int/2addr v1, v3

    #@1d
    .line 1490
    .local v1, "putIntoExistingTask":Z
    const/4 v0, 0x0

    #@1e
    .line 1491
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@20
    if-eqz v3, :cond_5

    #@22
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@24
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@27
    move-result v3

    #@28
    const/4 v6, -0x1

    #@29
    if-eq v3, v6, :cond_5

    #@2b
    .line 1492
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2d
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@2f
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@32
    move-result v4

    #@33
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@36
    move-result-object v2

    #@37
    .line 1493
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    #@39
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@3c
    move-result-object v0

    #@3d
    .line 1509
    .end local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_2
    return-object v0

    #@3e
    .line 1485
    .end local v1    # "putIntoExistingTask":Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@40
    .line 1483
    if-nez v3, :cond_0

    #@42
    .line 1485
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@44
    .restart local v1    # "putIntoExistingTask":Z
    goto :goto_0

    #@45
    .end local v1    # "putIntoExistingTask":Z
    :cond_3
    move v3, v5

    #@46
    .line 1489
    goto :goto_1

    #@47
    .line 1493
    .restart local v0    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "putIntoExistingTask":Z
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    const/4 v0, 0x0

    #@48
    goto :goto_2

    #@49
    .line 1494
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-eqz v1, :cond_1

    #@4b
    .line 1495
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@4d
    if-eqz v3, :cond_6

    #@4f
    .line 1498
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@51
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@53
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@55
    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@57
    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    #@5a
    move-result-object v0

    #@5b
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    #@5c
    .line 1499
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@5e
    and-int/lit16 v3, v3, 0x1000

    #@60
    if-eqz v3, :cond_8

    #@62
    .line 1502
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@64
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@66
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@68
    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@6a
    .line 1503
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@6c
    if-eqz v8, :cond_7

    #@6e
    .line 1502
    :goto_3
    invoke-virtual {v3, v6, v7, v5}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    #@71
    move-result-object v0

    #@72
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2

    #@73
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :cond_7
    move v5, v4

    #@74
    .line 1503
    goto :goto_3

    #@75
    .line 1506
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@77
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@79
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@7c
    move-result-object v0

    #@7d
    .local v0, "intentActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_2
.end method

.method private isValidLaunchStackId(ILcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "stackId"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2034
    const/4 v1, -0x1

    #@3
    if-eq p1, v1, :cond_0

    #@5
    if-nez p1, :cond_1

    #@7
    .line 2036
    :cond_0
    return v2

    #@8
    .line 2035
    :cond_1
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 2039
    if-eq p1, v3, :cond_2

    #@10
    .line 2040
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    #@14
    if-eqz v1, :cond_3

    #@16
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isResizeableOrForced()Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_3

    #@1c
    .line 2044
    :cond_2
    const/4 v1, 0x3

    #@1d
    if-ne p1, v1, :cond_4

    #@1f
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->canGoInDockedStack()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 2045
    return v3

    #@26
    .line 2041
    :cond_3
    return v2

    #@27
    .line 2048
    :cond_4
    const/4 v1, 0x2

    #@28
    if-ne p1, v1, :cond_5

    #@2a
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    #@2e
    if-eqz v1, :cond_7

    #@30
    .line 2052
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@32
    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    #@34
    if-eqz v1, :cond_9

    #@36
    .line 2053
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    #@39
    move-result v1

    #@3a
    if-nez v1, :cond_8

    #@3c
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3e
    iget-boolean v0, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    #@40
    .line 2054
    :goto_0
    const/4 v1, 0x4

    #@41
    if-ne p1, v1, :cond_6

    #@43
    if-eqz v0, :cond_a

    #@45
    .line 2057
    :cond_6
    return v3

    #@46
    .line 2049
    :cond_7
    return v2

    #@47
    .line 2053
    :cond_8
    const/4 v0, 0x1

    #@48
    .local v0, "supportsPip":Z
    goto :goto_0

    #@49
    .line 2052
    .end local v0    # "supportsPip":Z
    :cond_9
    const/4 v0, 0x0

    #@4a
    .restart local v0    # "supportsPip":Z
    goto :goto_0

    #@4b
    .line 2055
    .end local v0    # "supportsPip":Z
    :cond_a
    return v2
.end method

.method private reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 187
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    .line 188
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@6
    .line 189
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@9
    .line 190
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@b
    .line 192
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    #@d
    .line 193
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@f
    .line 194
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@11
    .line 195
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@13
    .line 196
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@15
    .line 198
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@17
    .line 200
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@19
    .line 201
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@1b
    .line 202
    iput v2, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@1d
    .line 203
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@1f
    .line 205
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@21
    .line 206
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@23
    .line 207
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@25
    .line 209
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    #@27
    .line 210
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    #@29
    .line 211
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@2b
    .line 213
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@2d
    .line 214
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    #@2f
    .line 215
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    #@31
    .line 216
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@33
    .line 217
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    #@35
    .line 218
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    #@37
    .line 220
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@39
    .line 221
    iput-object v1, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@3b
    .line 186
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .locals 4

    #@0
    .prologue
    .line 1684
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1685
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@8
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@e
    .line 1686
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    #@10
    if-nez v0, :cond_0

    #@12
    .line 1689
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@17
    .line 1694
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1d
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@1f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    #@22
    .line 1683
    return-void

    #@23
    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@25
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@28
    goto :goto_0
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1351
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@a
    const/high16 v1, 0x10000000

    #@c
    and-int/2addr v0, v1

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1352
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@11
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@13
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@15
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 1357
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@1b
    const-string/jumbo v1, "Activity is launching as a new task, so cancelling activity result."

    #@1e
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    .line 1358
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@23
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@25
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@27
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@29
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2b
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@2d
    .line 1359
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2f
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@31
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@33
    iget v4, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@35
    .line 1358
    const/4 v1, -0x1

    #@36
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@39
    .line 1360
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3b
    iput-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3d
    .line 1350
    :cond_0
    return-void
.end method

.method private setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p4, "doResume"    # Z
    .param p5, "startFlags"    # I
    .param p6, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->reset()V

    #@3
    .line 1257
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@5
    .line 1258
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@9
    .line 1259
    iput-object p2, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@b
    .line 1260
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@d
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@f
    .line 1261
    iput-object p6, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@11
    .line 1262
    iput-object p7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@13
    .line 1263
    iput-object p8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@15
    .line 1265
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStarter;->getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;

    #@18
    move-result-object v3

    #@19
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@1b
    .line 1267
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@1d
    const/4 v4, 0x1

    #@1e
    if-ne v3, v4, :cond_8

    #@20
    const/4 v3, 0x1

    #@21
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    #@23
    .line 1268
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@25
    const/4 v4, 0x3

    #@26
    if-ne v3, v4, :cond_9

    #@28
    const/4 v3, 0x1

    #@29
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@2b
    .line 1269
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@2d
    const/4 v4, 0x2

    #@2e
    if-ne v3, v4, :cond_a

    #@30
    const/4 v3, 0x1

    #@31
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@33
    .line 1271
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@35
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@37
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@39
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    #@3c
    move-result v5

    #@3d
    .line 1270
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/am/ActivityRecord;ZZI)I

    #@40
    move-result v3

    #@41
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@43
    .line 1272
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@45
    if-eqz v3, :cond_0

    #@47
    .line 1273
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@49
    if-eqz v3, :cond_b

    #@4b
    .line 1272
    :cond_0
    const/4 v3, 0x0

    #@4c
    :goto_3
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@4e
    .line 1276
    invoke-direct {p0}, Lcom/android/server/am/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    #@51
    .line 1278
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@53
    const/high16 v4, 0x80000

    #@55
    and-int/2addr v3, v4

    #@56
    if-eqz v3, :cond_1

    #@58
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@5a
    if-nez v3, :cond_1

    #@5c
    .line 1279
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@5e
    const/high16 v4, 0x10000000

    #@60
    or-int/2addr v3, v4

    #@61
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@63
    .line 1284
    :cond_1
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@65
    const/high16 v4, 0x10000000

    #@67
    and-int/2addr v3, v4

    #@68
    if-eqz v3, :cond_3

    #@6a
    .line 1285
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@6c
    if-nez v3, :cond_2

    #@6e
    .line 1286
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@70
    iget v3, v3, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    #@72
    const/4 v4, 0x2

    #@73
    if-ne v3, v4, :cond_3

    #@75
    .line 1287
    :cond_2
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@77
    const/high16 v4, 0x8000000

    #@79
    or-int/2addr v3, v4

    #@7a
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@7c
    .line 1293
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7e
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@80
    const/high16 v5, 0x40000

    #@82
    and-int/2addr v3, v5

    #@83
    if-nez v3, :cond_d

    #@85
    const/4 v3, 0x1

    #@86
    :goto_4
    iput-boolean v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@88
    .line 1300
    iput-boolean p4, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@8a
    .line 1301
    if-eqz p4, :cond_e

    #@8c
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8e
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_e

    #@94
    .line 1306
    :goto_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@96
    if-eqz v3, :cond_4

    #@98
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@9a
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@9d
    move-result v3

    #@9e
    const/4 v4, -0x1

    #@9f
    if-eq v3, v4, :cond_4

    #@a1
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a3
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    #@a6
    move-result v3

    #@a7
    if-eqz v3, :cond_4

    #@a9
    .line 1307
    const/4 v3, 0x1

    #@aa
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    #@ac
    .line 1308
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ae
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@b0
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    #@b3
    move-result v4

    #@b4
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@b7
    move-result-object v1

    #@b8
    .line 1309
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_f

    #@ba
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@bd
    move-result-object v2

    #@be
    .line 1310
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    :goto_6
    if-eqz v2, :cond_4

    #@c0
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@c2
    if-eqz v3, :cond_10

    #@c4
    .line 1319
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_7
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@c6
    const/high16 v4, 0x1000000

    #@c8
    and-int/2addr v3, v4

    #@c9
    if-eqz v3, :cond_11

    #@cb
    move-object v3, p1

    #@cc
    :goto_8
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@ce
    .line 1321
    iput-object p3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@d0
    .line 1326
    if-eqz p3, :cond_5

    #@d2
    iget-boolean v3, p3, Lcom/android/server/am/TaskRecord;->inRecents:Z

    #@d4
    if-eqz v3, :cond_12

    #@d6
    .line 1331
    :cond_5
    :goto_9
    iput p5, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@d8
    .line 1335
    and-int/lit8 v3, p5, 0x1

    #@da
    if-eqz v3, :cond_7

    #@dc
    .line 1336
    move-object v0, p6

    #@dd
    .line 1337
    .local v0, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez p6, :cond_6

    #@df
    .line 1338
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e1
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@e3
    .line 1339
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@e5
    .line 1338
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@e8
    move-result-object v0

    #@e9
    .line 1341
    :cond_6
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@eb
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@ed
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@f0
    move-result v3

    #@f1
    if-nez v3, :cond_7

    #@f3
    .line 1343
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@f5
    and-int/lit8 v3, v3, -0x2

    #@f7
    iput v3, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@f9
    .line 1347
    .end local v0    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@fb
    const/high16 v4, 0x10000

    #@fd
    and-int/2addr v3, v4

    #@fe
    if-eqz v3, :cond_13

    #@100
    const/4 v3, 0x1

    #@101
    :goto_a
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@103
    .line 1254
    return-void

    #@104
    .line 1267
    :cond_8
    const/4 v3, 0x0

    #@105
    goto/16 :goto_0

    #@107
    .line 1268
    :cond_9
    const/4 v3, 0x0

    #@108
    goto/16 :goto_1

    #@10a
    .line 1269
    :cond_a
    const/4 v3, 0x0

    #@10b
    goto/16 :goto_2

    #@10d
    .line 1273
    :cond_b
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@10f
    if-nez v3, :cond_0

    #@111
    .line 1274
    iget v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@113
    const/high16 v4, 0x80000

    #@115
    and-int/2addr v3, v4

    #@116
    if-eqz v3, :cond_c

    #@118
    const/4 v3, 0x1

    #@119
    goto/16 :goto_3

    #@11b
    :cond_c
    const/4 v3, 0x0

    #@11c
    goto/16 :goto_3

    #@11e
    .line 1293
    :cond_d
    const/4 v3, 0x0

    #@11f
    goto/16 :goto_4

    #@121
    .line 1302
    :cond_e
    const/4 v3, 0x1

    #@122
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@124
    .line 1303
    const/4 v3, 0x0

    #@125
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@127
    goto/16 :goto_5

    #@129
    .line 1309
    .restart local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v2, 0x0

    #@12a
    goto :goto_6

    #@12b
    .line 1314
    .restart local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_10
    const/4 v3, 0x0

    #@12c
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@12e
    .line 1315
    const/4 v3, 0x1

    #@12f
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    #@131
    goto :goto_7

    #@132
    .line 1319
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_11
    const/4 v3, 0x0

    #@133
    goto :goto_8

    #@134
    .line 1327
    :cond_12
    sget-object v3, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@136
    new-instance v4, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    const-string/jumbo v5, "Starting activity in task not in recents: "

    #@13e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v4

    #@142
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@145
    move-result-object v4

    #@146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@149
    move-result-object v4

    #@14a
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14d
    .line 1328
    const/4 v3, 0x0

    #@14e
    iput-object v3, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@150
    goto :goto_9

    #@151
    .line 1347
    :cond_13
    const/4 v3, 0x0

    #@152
    goto :goto_a
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const v2, 0x10008000

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v11, 0x1

    #@5
    const/4 v12, 0x0

    #@6
    .line 1513
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@c
    .line 1514
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@e
    iput-object v12, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@10
    .line 1519
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@15
    move-result-object v8

    #@16
    .line 1520
    .local v8, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_3

    #@18
    move-object v7, v12

    #@19
    .line 1523
    .local v7, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_0
    if-eqz v7, :cond_1

    #@1b
    .line 1524
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1d
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1f
    if-ne v0, v1, :cond_0

    #@21
    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@23
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@26
    move-result-object v1

    #@27
    if-eq v0, v1, :cond_1

    #@29
    .line 1525
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    #@2b
    if-eqz v0, :cond_4

    #@2d
    .line 1579
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    #@2f
    if-nez v0, :cond_2

    #@31
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@33
    if-eqz v0, :cond_2

    #@35
    .line 1582
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@37
    const-string/jumbo v1, "intentActivityFound"

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@3d
    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@41
    .line 1586
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@43
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@45
    .line 1585
    const/4 v3, -0x1

    #@46
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    #@49
    .line 1589
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@4b
    const/high16 v1, 0x200000

    #@4d
    and-int/2addr v0, v1

    #@4e
    if-eqz v0, :cond_e

    #@50
    .line 1590
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@52
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@54
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@57
    move-result-object v0

    #@58
    return-object v0

    #@59
    .line 1521
    .end local v7    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@5b
    invoke-virtual {v8, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@5e
    move-result-object v7

    #@5f
    goto :goto_0

    #@60
    .line 1526
    .restart local v7    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@62
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@64
    const/high16 v1, 0x400000

    #@66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@69
    .line 1527
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@6b
    if-eqz v0, :cond_5

    #@6d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@6f
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@72
    move-result-object v0

    #@73
    if-eqz v0, :cond_1

    #@75
    .line 1528
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceStack:Lcom/android/server/am/ActivityStack;

    #@77
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@7a
    move-result-object v0

    #@7b
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@7d
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@7f
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@81
    if-ne v0, v1, :cond_1

    #@83
    .line 1530
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@85
    if-eqz v0, :cond_6

    #@87
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@89
    if-eqz v0, :cond_6

    #@8b
    .line 1531
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@8d
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8f
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V

    #@92
    .line 1533
    :cond_6
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    #@94
    .line 1542
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@96
    and-int/2addr v0, v2

    #@97
    if-ne v0, v2, :cond_7

    #@99
    move v10, v11

    #@9a
    .line 1544
    .local v10, "willClearTask":Z
    :cond_7
    if-nez v10, :cond_a

    #@9c
    .line 1546
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@9e
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@a0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@a2
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a4
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a6
    .line 1545
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@a9
    move-result-object v9

    #@aa
    .line 1547
    .local v9, "launchStack":Lcom/android/server/am/ActivityStack;
    if-eqz v9, :cond_8

    #@ac
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@ae
    if-ne v9, v0, :cond_b

    #@b0
    .line 1551
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@b2
    .line 1552
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b4
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@b6
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@b8
    .line 1553
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@ba
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@bc
    const-string/jumbo v5, "bringingFoundTaskToFront"

    #@bf
    .line 1551
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@c2
    .line 1554
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    #@c4
    .line 1574
    :cond_9
    :goto_2
    iput-object v12, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@c6
    .line 1576
    .end local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_a
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c8
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@ca
    invoke-direct {p0, v0, v1, v8}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    #@cd
    goto/16 :goto_1

    #@cf
    .line 1555
    .restart local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    :cond_b
    iget v0, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@d1
    const/4 v1, 0x3

    #@d2
    if-eq v0, v1, :cond_c

    #@d4
    .line 1556
    iget v0, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@d6
    if-ne v0, v11, :cond_9

    #@d8
    .line 1557
    :cond_c
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@da
    and-int/lit16 v0, v0, 0x1000

    #@dc
    if-eqz v0, :cond_d

    #@de
    .line 1560
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e2
    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@e4
    .line 1561
    iget v2, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@e6
    const-string/jumbo v5, "launchToSide"

    #@e9
    move v3, v11

    #@ea
    move v4, v11

    #@eb
    move v6, v11

    #@ec
    .line 1560
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    #@ef
    .line 1572
    :goto_3
    iput-boolean v11, p0, Lcom/android/server/am/ActivityStarter;->mMovedToFront:Z

    #@f1
    goto :goto_2

    #@f2
    .line 1568
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@f4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@f6
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@f8
    .line 1569
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@fa
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@fc
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@fe
    .line 1570
    const-string/jumbo v5, "bringToFrontInsteadOfAdjacentLaunch"

    #@101
    .line 1568
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@104
    goto :goto_3

    #@105
    .line 1592
    .end local v9    # "launchStack":Lcom/android/server/am/ActivityStack;
    .end local v10    # "willClearTask":Z
    :cond_e
    return-object p1
.end method

.method private setTaskFromInTask()I
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 1794
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1795
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@9
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@b
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@e
    .line 1796
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@10
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    #@13
    move-result v2

    #@14
    .line 1797
    .local v2, "stackId":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@16
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@18
    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@1a
    if-eq v2, v0, :cond_0

    #@1c
    .line 1798
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e
    .line 1799
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@20
    const-string/jumbo v5, "inTaskToFront"

    #@23
    .line 1798
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackUncheckedLocked(Lcom/android/server/am/TaskRecord;IZZLjava/lang/String;)Lcom/android/server/am/ActivityStack;

    #@26
    move-result-object v12

    #@27
    .line 1800
    .local v12, "stack":Lcom/android/server/am/ActivityStack;
    iget v2, v12, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@29
    .line 1802
    .end local v12    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 1803
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@31
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@33
    const/4 v11, -0x1

    #@34
    move v6, v2

    #@35
    move v8, v3

    #@36
    move v9, v4

    #@37
    move v10, v3

    #@38
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    #@3b
    .line 1806
    .end local v2    # "stackId":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@3d
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3f
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@41
    .line 1807
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@43
    .line 1808
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@45
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@47
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@49
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@4b
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@4d
    const-string/jumbo v10, "inTaskToFront"

    #@50
    .line 1807
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@53
    .line 1812
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@55
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@58
    move-result-object v13

    #@59
    .line 1813
    .local v13, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v13, :cond_4

    #@5b
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@5d
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@5f
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@61
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v0

    #@65
    if-eqz v0, :cond_4

    #@67
    iget v0, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    #@69
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@6b
    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@6d
    if-ne v0, v1, :cond_4

    #@6f
    .line 1814
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@71
    const/high16 v1, 0x20000000

    #@73
    and-int/2addr v0, v1

    #@74
    if-nez v0, :cond_2

    #@76
    .line 1815
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    #@78
    .line 1814
    if-nez v0, :cond_2

    #@7a
    .line 1815
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@7c
    .line 1814
    if-eqz v0, :cond_4

    #@7e
    .line 1816
    :cond_2
    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@80
    const/16 v1, 0x7533

    #@82
    invoke-static {v1, v13, v0}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@85
    .line 1817
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@87
    and-int/lit8 v0, v0, 0x1

    #@89
    if-eqz v0, :cond_3

    #@8b
    .line 1820
    return v3

    #@8c
    .line 1822
    :cond_3
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@8e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@90
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@92
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@94
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@96
    invoke-virtual {v13, v0, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@99
    .line 1823
    const/4 v0, 0x3

    #@9a
    return v0

    #@9b
    .line 1827
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@9d
    if-nez v0, :cond_5

    #@9f
    .line 1830
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a1
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@a4
    .line 1831
    const/4 v0, 0x2

    #@a5
    return v0

    #@a6
    .line 1834
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@a8
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@aa
    invoke-virtual {v0, v1, v14}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@ad
    .line 1838
    return v4
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "intentActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const v1, 0x10008000

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v8, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    .line 1613
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@8
    and-int/2addr v0, v1

    #@9
    if-ne v0, v1, :cond_1

    #@b
    .line 1617
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@f
    .line 1618
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@11
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    #@14
    .line 1619
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@16
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@1b
    .line 1623
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    #@1d
    .line 1612
    :cond_0
    :goto_0
    return-void

    #@1e
    .line 1624
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@20
    const/high16 v1, 0x4000000

    #@22
    and-int/2addr v0, v1

    #@23
    if-nez v0, :cond_2

    #@25
    .line 1625
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@27
    .line 1624
    if-nez v0, :cond_2

    #@29
    .line 1625
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@2b
    .line 1624
    if-eqz v0, :cond_4

    #@2d
    .line 1626
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@31
    .line 1627
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@33
    .line 1626
    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@36
    move-result-object v7

    #@37
    .line 1628
    .local v7, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v7, :cond_0

    #@39
    .line 1632
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@3b
    .line 1635
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@3d
    .line 1636
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@3f
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@41
    .line 1637
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v6, :cond_0

    #@43
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@45
    if-nez v0, :cond_0

    #@47
    .line 1640
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@49
    .line 1641
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@4b
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@4d
    move-object v0, p0

    #@4e
    .line 1640
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@51
    move-result-object v0

    #@52
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@54
    .line 1642
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@56
    .line 1643
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@58
    if-eqz v1, :cond_3

    #@5a
    :goto_1
    const-string/jumbo v1, "startActivityUnchecked"

    #@5d
    .line 1642
    invoke-virtual {v0, v6, v2, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    #@60
    goto :goto_0

    #@61
    :cond_3
    move v2, v8

    #@62
    .line 1643
    goto :goto_1

    #@63
    .line 1646
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@65
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@67
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@69
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    #@6b
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_8

    #@71
    .line 1651
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@73
    const/high16 v1, 0x20000000

    #@75
    and-int/2addr v0, v1

    #@76
    if-nez v0, :cond_5

    #@78
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    #@7a
    if-eqz v0, :cond_7

    #@7c
    .line 1652
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@7e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@80
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@82
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v0

    #@86
    .line 1651
    if-eqz v0, :cond_7

    #@88
    .line 1653
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@8a
    .line 1654
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8c
    .line 1653
    const/16 v2, 0x7533

    #@8e
    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@91
    .line 1655
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@93
    if-eqz v0, :cond_6

    #@95
    .line 1656
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@97
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@99
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@9c
    .line 1658
    :cond_6
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@9e
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@a0
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@a2
    .line 1659
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@a4
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@a6
    .line 1658
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1660
    :cond_7
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@ad
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@af
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z

    #@b2
    move-result v0

    #@b3
    if-nez v0, :cond_0

    #@b5
    .line 1663
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@b7
    .line 1664
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@b9
    goto/16 :goto_0

    #@bb
    .line 1666
    :cond_8
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@bd
    const/high16 v1, 0x200000

    #@bf
    and-int/2addr v0, v1

    #@c0
    if-nez v0, :cond_9

    #@c2
    .line 1671
    iput-boolean v8, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@c4
    .line 1672
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@c6
    goto/16 :goto_0

    #@c8
    .line 1673
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@ca
    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    #@cc
    if-nez v0, :cond_0

    #@ce
    .line 1679
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@d2
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@d5
    goto/16 :goto_0
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V
    .locals 12
    .param p1, "taskToAffiliate"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1698
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@6
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@8
    .line 1699
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a
    move-object v0, p0

    #@b
    .line 1698
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@11
    .line 1701
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@13
    if-nez v0, :cond_5

    #@15
    .line 1702
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@17
    .line 1703
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@19
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1d
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    #@20
    move-result v4

    #@21
    .line 1704
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    #@23
    if-eqz v0, :cond_1

    #@25
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    #@27
    .line 1705
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    #@29
    if-eqz v0, :cond_2

    #@2b
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    #@2d
    .line 1706
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2f
    iget-object v8, p0, Lcom/android/server/am/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@31
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@33
    if-eqz v0, :cond_3

    #@35
    move v9, v11

    #@36
    .line 1702
    :goto_2
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@39
    move-result-object v10

    #@3a
    .line 1707
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3c
    invoke-virtual {v0, v10, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@3f
    .line 1708
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@41
    if-eqz v0, :cond_0

    #@43
    .line 1709
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@45
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@47
    .line 1710
    .local v4, "stackId":I
    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_4

    #@4d
    .line 1711
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    .line 1712
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@51
    const/4 v9, -0x1

    #@52
    move v6, v2

    #@53
    move v7, v11

    #@54
    move v8, v2

    #@55
    .line 1711
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    #@58
    .line 1697
    .end local v4    # "stackId":I
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_3
    return-void

    #@59
    .line 1704
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@5b
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5d
    goto :goto_0

    #@5e
    .line 1705
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@60
    goto :goto_1

    #@61
    :cond_3
    move v9, v2

    #@62
    .line 1706
    goto :goto_2

    #@63
    .line 1714
    .restart local v4    # "stackId":I
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@65
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@67
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchBounds:Landroid/graphics/Rect;

    #@69
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@6c
    goto :goto_3

    #@6d
    .line 1721
    .end local v4    # "stackId":I
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@6f
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@71
    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@74
    goto :goto_3
.end method

.method private setTaskFromSourceRecord()I
    .locals 12

    #@0
    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@2
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    .line 1730
    .local v8, "sourceTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@9
    move-result-object v0

    #@a
    if-eq v0, v8, :cond_5

    #@c
    const/4 v7, 0x1

    #@d
    .line 1731
    .local v7, "moveStackAllowed":Z
    :goto_0
    if-eqz v7, :cond_0

    #@f
    .line 1732
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@11
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@13
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@15
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@17
    .line 1733
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@19
    .line 1732
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStarter;->getLaunchStack(Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@1f
    .line 1736
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@21
    if-nez v0, :cond_6

    #@23
    .line 1737
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@25
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@27
    .line 1742
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 1743
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@2d
    const-string/jumbo v1, "sourceStackToFront"

    #@30
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@33
    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@35
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@38
    move-result-object v11

    #@39
    .line 1746
    .local v11, "topTask":Lcom/android/server/am/TaskRecord;
    if-eq v11, v8, :cond_3

    #@3b
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAvoidMoveToFront:Z

    #@3d
    if-eqz v0, :cond_7

    #@3f
    .line 1750
    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@41
    if-nez v0, :cond_8

    #@43
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@45
    const/high16 v1, 0x4000000

    #@47
    and-int/2addr v0, v1

    #@48
    if-eqz v0, :cond_8

    #@4a
    .line 1753
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@4c
    iget v1, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@4e
    invoke-virtual {v8, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@51
    move-result-object v10

    #@52
    .line 1754
    .local v10, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    #@53
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    #@55
    .line 1755
    if-eqz v10, :cond_a

    #@57
    .line 1756
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@59
    iget-object v1, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5b
    const/16 v2, 0x7533

    #@5d
    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@60
    .line 1757
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@62
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@64
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@66
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@68
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@6a
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@6d
    .line 1759
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@6f
    const/4 v1, 0x0

    #@70
    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@72
    .line 1760
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@74
    if-eqz v0, :cond_4

    #@76
    .line 1761
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@78
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@7b
    .line 1763
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@7d
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@80
    .line 1764
    const/4 v0, 0x3

    #@81
    return v0

    #@82
    .line 1730
    .end local v7    # "moveStackAllowed":Z
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v7, 0x0

    #@83
    goto :goto_0

    #@84
    .line 1738
    .restart local v7    # "moveStackAllowed":Z
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@86
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@88
    if-eq v0, v1, :cond_1

    #@8a
    .line 1739
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8c
    iget v1, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@8e
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@90
    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@92
    .line 1740
    const-string/jumbo v5, "launchToSide"

    #@95
    const/4 v3, 0x1

    #@96
    const/4 v4, 0x1

    #@97
    const/4 v6, 0x0

    #@98
    .line 1739
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTaskToStackLocked(IIZZLjava/lang/String;Z)Z

    #@9b
    goto :goto_1

    #@9c
    .line 1747
    .restart local v11    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@9e
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mNoAnimation:Z

    #@a0
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@a2
    .line 1748
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@a4
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@a6
    const-string/jumbo v5, "sourceTaskToFront"

    #@a9
    move-object v1, v8

    #@aa
    .line 1747
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    #@ad
    goto :goto_2

    #@ae
    .line 1766
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@b0
    if-nez v0, :cond_a

    #@b2
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@b4
    const/high16 v1, 0x20000

    #@b6
    and-int/2addr v0, v1

    #@b7
    if-eqz v0, :cond_a

    #@b9
    .line 1770
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@bb
    invoke-virtual {v8, v0}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@be
    move-result-object v10

    #@bf
    .line 1771
    .restart local v10    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v10, :cond_a

    #@c1
    .line 1772
    iget-object v9, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c3
    .line 1773
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9, v10}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    #@c6
    .line 1774
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@c8
    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@cb
    .line 1775
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@cd
    const/16 v1, 0x7533

    #@cf
    invoke-static {v1, v0, v9}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@d2
    .line 1776
    iget v0, p0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@d4
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@d6
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@d8
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@da
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@dc
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@df
    .line 1777
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@e1
    const/4 v1, 0x0

    #@e2
    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@e4
    .line 1778
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@e6
    if-eqz v0, :cond_9

    #@e8
    .line 1779
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ea
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@ed
    .line 1781
    :cond_9
    const/4 v0, 0x3

    #@ee
    return v0

    #@ef
    .line 1787
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@f1
    const/4 v1, 0x0

    #@f2
    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@f5
    .line 1790
    const/4 v0, 0x0

    #@f6
    return v0
.end method

.method private setTaskToCurrentTopOrCreateNewTask()V
    .locals 13

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1842
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3
    iget v4, p0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@5
    .line 1843
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@7
    .line 1842
    const/4 v2, 0x0

    #@8
    move-object v0, p0

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->computeStackFocus(Lcom/android/server/am/ActivityRecord;ZLandroid/graphics/Rect;ILandroid/app/ActivityOptions;)Lcom/android/server/am/ActivityStack;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@f
    .line 1844
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1845
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@15
    const-string/jumbo v1, "addingToTopTask"

    #@18
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@1b
    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@1d
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@20
    move-result-object v11

    #@21
    .line 1848
    .local v11, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v11, :cond_1

    #@23
    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@25
    .line 1851
    .local v12, "task":Lcom/android/server/am/TaskRecord;
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@27
    invoke-virtual {v0, v12, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@2a
    .line 1852
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2c
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2e
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@30
    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@32
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@35
    .line 1841
    return-void

    #@36
    .line 1848
    .end local v12    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@38
    .line 1849
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3a
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3c
    iget v1, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@3e
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    #@41
    move-result v5

    #@42
    .line 1850
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@44
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v7, p0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@48
    const/4 v10, 0x1

    #@49
    move-object v8, v3

    #@4a
    move-object v9, v3

    #@4b
    .line 1848
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@4e
    move-result-object v12

    #@4f
    .restart local v12    # "task":Lcom/android/server/am/TaskRecord;
    goto :goto_0
.end method

.method private startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    .locals 19
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"    # I
    .param p6, "doResume"    # Z
    .param p7, "options"    # Landroid/app/ActivityOptions;
    .param p8, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    move-object/from16 v2, p0

    #@2
    move-object/from16 v3, p1

    #@4
    move-object/from16 v4, p7

    #@6
    move-object/from16 v5, p8

    #@8
    move/from16 v6, p6

    #@a
    move/from16 v7, p5

    #@c
    move-object/from16 v8, p2

    #@e
    move-object/from16 v9, p3

    #@10
    move-object/from16 v10, p4

    #@12
    .line 1028
    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/ActivityStarter;->setInitialState(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;ZILcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    #@15
    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeLaunchingTaskFlags()V

    #@18
    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->computeSourceStack()V

    #@1b
    .line 1035
    move-object/from16 v0, p0

    #@1d
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@23
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@26
    .line 1037
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/am/ActivityRecord;

    #@29
    move-result-object v2

    #@2a
    move-object/from16 v0, p0

    #@2c
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@2e
    .line 1040
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@32
    if-eqz v2, :cond_0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@38
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    #@3b
    move-result v13

    #@3c
    .line 1042
    .local v13, "preferredLaunchStackId":I
    :goto_0
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@40
    if-eqz v2, :cond_9

    #@42
    .line 1046
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@4a
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4c
    .line 1047
    move-object/from16 v0, p0

    #@4e
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@50
    const v5, 0x10008000

    #@53
    and-int/2addr v2, v5

    #@54
    .line 1048
    const v5, 0x10008000

    #@57
    .line 1047
    if-ne v2, v5, :cond_1

    #@59
    const/4 v2, 0x1

    #@5a
    .line 1046
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    #@5d
    move-result v2

    #@5e
    if-eqz v2, :cond_2

    #@60
    .line 1049
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@64
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    #@67
    .line 1050
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@69
    const-string/jumbo v3, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    #@6c
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 1051
    const/4 v2, 0x5

    #@70
    return v2

    #@71
    .line 1040
    .end local v13    # "preferredLaunchStackId":I
    :cond_0
    const/4 v13, -0x1

    #@72
    .restart local v13    # "preferredLaunchStackId":I
    goto :goto_0

    #@73
    .line 1047
    :cond_1
    const/4 v2, 0x0

    #@74
    goto :goto_1

    #@75
    .line 1054
    :cond_2
    move-object/from16 v0, p0

    #@77
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@79
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@7b
    if-nez v2, :cond_3

    #@7d
    .line 1055
    move-object/from16 v0, p0

    #@7f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@85
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@87
    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@89
    .line 1057
    :cond_3
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@8d
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8f
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@91
    if-nez v2, :cond_4

    #@93
    .line 1060
    move-object/from16 v0, p0

    #@95
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@97
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@99
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@9d
    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@a0
    .line 1066
    :cond_4
    move-object/from16 v0, p0

    #@a2
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@a4
    const/high16 v3, 0x4000000

    #@a6
    and-int/2addr v2, v3

    #@a7
    if-nez v2, :cond_5

    #@a9
    .line 1067
    move-object/from16 v0, p0

    #@ab
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleInstance:Z

    #@ad
    .line 1066
    if-nez v2, :cond_5

    #@af
    .line 1067
    move-object/from16 v0, p0

    #@b1
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@b3
    .line 1066
    if-eqz v2, :cond_7

    #@b5
    .line 1071
    :cond_5
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@b9
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@bb
    .line 1072
    move-object/from16 v0, p0

    #@bd
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget v4, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@c3
    .line 1071
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    #@c6
    move-result-object v16

    #@c7
    .line 1073
    .local v16, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_7

    #@c9
    .line 1074
    move-object/from16 v0, v16

    #@cb
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@cd
    if-eqz v2, :cond_6

    #@cf
    .line 1077
    move-object/from16 v0, v16

    #@d1
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@d7
    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    #@da
    .line 1079
    :cond_6
    move-object/from16 v0, p0

    #@dc
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@de
    move-object/from16 v0, v16

    #@e0
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e2
    const/16 v4, 0x7533

    #@e4
    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@e7
    .line 1080
    move-object/from16 v0, p0

    #@e9
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@ef
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@f1
    .line 1081
    move-object/from16 v0, p0

    #@f3
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@f5
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@f7
    .line 1080
    move-object/from16 v0, v16

    #@f9
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@fc
    .line 1085
    .end local v16    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v2, 0x0

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(Z)V

    #@102
    .line 1087
    move-object/from16 v0, p0

    #@104
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@106
    move-object/from16 v0, p0

    #@108
    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@10b
    move-result-object v2

    #@10c
    move-object/from16 v0, p0

    #@10e
    iput-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@110
    .line 1089
    move-object/from16 v0, p0

    #@112
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@114
    and-int/lit8 v2, v2, 0x1

    #@116
    if-eqz v2, :cond_8

    #@118
    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    #@11b
    .line 1094
    const/4 v2, 0x1

    #@11c
    return v2

    #@11d
    .line 1096
    :cond_8
    move-object/from16 v0, p0

    #@11f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@121
    move-object/from16 v0, p0

    #@123
    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/am/ActivityRecord;)V

    #@126
    .line 1098
    move-object/from16 v0, p0

    #@128
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@12a
    if-nez v2, :cond_9

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mReuseTask:Lcom/android/server/am/TaskRecord;

    #@130
    if-nez v2, :cond_9

    #@132
    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->resumeTargetStackIfNeeded()V

    #@135
    .line 1102
    const/4 v2, 0x2

    #@136
    return v2

    #@137
    .line 1106
    :cond_9
    move-object/from16 v0, p0

    #@139
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@13b
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@13d
    if-nez v2, :cond_b

    #@13f
    .line 1107
    move-object/from16 v0, p0

    #@141
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@143
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@145
    if-eqz v2, :cond_a

    #@147
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@14b
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@14d
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@14f
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@151
    if-eqz v2, :cond_a

    #@153
    .line 1108
    move-object/from16 v0, p0

    #@155
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@157
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@159
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@15b
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@15d
    .line 1109
    move-object/from16 v0, p0

    #@15f
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@161
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@163
    move-object/from16 v0, p0

    #@165
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@167
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@169
    .line 1110
    move-object/from16 v0, p0

    #@16b
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@16d
    iget v6, v3, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@16f
    .line 1109
    const/4 v3, -0x1

    #@170
    .line 1110
    const/4 v7, 0x0

    #@171
    const/4 v8, 0x0

    #@172
    .line 1108
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@175
    .line 1112
    :cond_a
    move-object/from16 v0, p0

    #@177
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@179
    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@17c
    .line 1113
    const/4 v2, -0x2

    #@17d
    return v2

    #@17e
    .line 1118
    :cond_b
    move-object/from16 v0, p0

    #@180
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@182
    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@184
    move-object/from16 v17, v0

    #@186
    .line 1119
    .local v17, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    #@188
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@18a
    move-object/from16 v0, v17

    #@18c
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@18f
    move-result-object v16

    #@190
    .line 1120
    .restart local v16    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_e

    #@192
    move-object/from16 v0, p0

    #@194
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@196
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@198
    if-nez v2, :cond_e

    #@19a
    .line 1121
    move-object/from16 v0, v16

    #@19c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@1a2
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@1a4
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1a7
    move-result v2

    #@1a8
    .line 1120
    if-eqz v2, :cond_e

    #@1aa
    .line 1122
    move-object/from16 v0, v16

    #@1ac
    iget v2, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@1b2
    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1b4
    if-ne v2, v3, :cond_e

    #@1b6
    .line 1123
    move-object/from16 v0, v16

    #@1b8
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1ba
    if-eqz v2, :cond_e

    #@1bc
    move-object/from16 v0, v16

    #@1be
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1c0
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1c2
    if-eqz v2, :cond_e

    #@1c4
    .line 1124
    move-object/from16 v0, p0

    #@1c6
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@1c8
    const/high16 v3, 0x20000000

    #@1ca
    and-int/2addr v2, v3

    #@1cb
    if-nez v2, :cond_d

    #@1cd
    .line 1125
    move-object/from16 v0, p0

    #@1cf
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTop:Z

    #@1d1
    .line 1124
    if-nez v2, :cond_d

    #@1d3
    .line 1125
    move-object/from16 v0, p0

    #@1d5
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchSingleTask:Z

    #@1d7
    :goto_2
    move v11, v2

    #@1d8
    .line 1126
    .local v11, "dontStart":Z
    :goto_3
    if-eqz v11, :cond_10

    #@1da
    .line 1127
    move-object/from16 v0, v16

    #@1dc
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1de
    const/16 v3, 0x7533

    #@1e0
    move-object/from16 v0, v16

    #@1e2
    invoke-static {v3, v0, v2}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@1e5
    .line 1129
    const/4 v2, 0x0

    #@1e6
    move-object/from16 v0, v17

    #@1e8
    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@1ea
    .line 1130
    move-object/from16 v0, p0

    #@1ec
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@1ee
    if-eqz v2, :cond_c

    #@1f0
    .line 1131
    move-object/from16 v0, p0

    #@1f2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@1f7
    .line 1133
    :cond_c
    move-object/from16 v0, p0

    #@1f9
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@1fb
    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@1fe
    .line 1134
    move-object/from16 v0, p0

    #@200
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mStartFlags:I

    #@202
    and-int/lit8 v2, v2, 0x1

    #@204
    if-eqz v2, :cond_f

    #@206
    .line 1137
    const/4 v2, 0x1

    #@207
    return v2

    #@208
    .line 1124
    .end local v11    # "dontStart":Z
    :cond_d
    const/4 v2, 0x1

    #@209
    goto :goto_2

    #@20a
    .line 1120
    :cond_e
    const/4 v11, 0x0

    #@20b
    goto :goto_3

    #@20c
    .line 1140
    .restart local v11    # "dontStart":Z
    :cond_f
    move-object/from16 v0, p0

    #@20e
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@210
    move-object/from16 v0, p0

    #@212
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@214
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@21a
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@21c
    .line 1139
    move-object/from16 v0, v16

    #@21e
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@221
    .line 1144
    move-object/from16 v0, p0

    #@223
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@225
    .line 1145
    move-object/from16 v0, v16

    #@227
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@229
    move-object/from16 v0, v17

    #@22b
    iget v4, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@22d
    .line 1144
    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    #@230
    .line 1147
    const/4 v2, 0x3

    #@231
    return v2

    #@232
    .line 1150
    :cond_10
    const/4 v12, 0x0

    #@233
    .line 1151
    .local v12, "newTask":Z
    move-object/from16 v0, p0

    #@235
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@237
    if-eqz v2, :cond_12

    #@239
    move-object/from16 v0, p0

    #@23b
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@23d
    if-eqz v2, :cond_12

    #@23f
    .line 1152
    move-object/from16 v0, p0

    #@241
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@243
    iget-object v15, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@245
    .line 1155
    :goto_4
    move-object/from16 v0, p0

    #@247
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@249
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@24b
    if-nez v2, :cond_11

    #@24d
    move-object/from16 v0, p0

    #@24f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@251
    if-nez v2, :cond_11

    #@253
    move-object/from16 v0, p0

    #@255
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mAddingToTask:Z

    #@257
    if-eqz v2, :cond_13

    #@259
    .line 1171
    :cond_11
    move-object/from16 v0, p0

    #@25b
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@25d
    if-eqz v2, :cond_1c

    #@25f
    .line 1172
    move-object/from16 v0, p0

    #@261
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@263
    move-object/from16 v0, p0

    #@265
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@267
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@269
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@26c
    move-result v2

    #@26d
    if-eqz v2, :cond_1b

    #@26f
    .line 1173
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@271
    new-instance v3, Ljava/lang/StringBuilder;

    #@273
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@276
    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    #@279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v3

    #@27d
    move-object/from16 v0, p0

    #@27f
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@281
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@284
    move-result-object v3

    #@285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@288
    move-result-object v3

    #@289
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@28c
    .line 1174
    const/4 v2, 0x5

    #@28d
    return v2

    #@28e
    .line 1152
    :cond_12
    const/4 v15, 0x0

    #@28f
    .local v15, "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    #@290
    .line 1156
    .end local v15    # "taskToAffiliate":Lcom/android/server/am/TaskRecord;
    :cond_13
    move-object/from16 v0, p0

    #@292
    iget v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@294
    const/high16 v3, 0x10000000

    #@296
    and-int/2addr v2, v3

    #@297
    if-eqz v2, :cond_11

    #@299
    .line 1157
    const/4 v12, 0x1

    #@29a
    .line 1158
    move-object/from16 v0, p0

    #@29c
    invoke-direct {v0, v15}, Lcom/android/server/am/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/am/TaskRecord;)V

    #@29f
    .line 1160
    move-object/from16 v0, p0

    #@2a1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2a3
    move-object/from16 v0, p0

    #@2a5
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2a7
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2a9
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@2ac
    move-result v2

    #@2ad
    if-eqz v2, :cond_14

    #@2af
    .line 1161
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@2b1
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b6
    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    #@2b9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v3

    #@2bd
    move-object/from16 v0, p0

    #@2bf
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2c1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c4
    move-result-object v3

    #@2c5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c8
    move-result-object v3

    #@2c9
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2cc
    .line 1162
    const/4 v2, 0x5

    #@2cd
    return v2

    #@2ce
    .line 1164
    :cond_14
    move-object/from16 v0, p0

    #@2d0
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mMovedOtherTask:Z

    #@2d2
    if-nez v2, :cond_16

    #@2d4
    .line 1168
    move-object/from16 v0, p0

    #@2d6
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2d8
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2da
    move-object/from16 v0, p0

    #@2dc
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mLaunchFlags:I

    #@2de
    .line 1169
    const/4 v4, -0x1

    #@2df
    if-eq v13, v4, :cond_15

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@2e5
    move-object/from16 v17, v0

    #@2e7
    .line 1168
    .end local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    move-object/from16 v0, p0

    #@2e9
    move-object/from16 v1, v17

    #@2eb
    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/am/ActivityStarter;->updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V

    #@2ee
    .line 1199
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    #@2f0
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    iget v3, v0, Lcom/android/server/am/ActivityStarter;->mCallingUid:I

    #@2f6
    move-object/from16 v0, p0

    #@2f8
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@2fa
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2fc
    .line 1200
    move-object/from16 v0, p0

    #@2fe
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mIntent:Landroid/content/Intent;

    #@300
    move-object/from16 v0, p0

    #@302
    iget-object v6, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@304
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@307
    move-result-object v6

    #@308
    move-object/from16 v0, p0

    #@30a
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@30c
    iget v7, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    #@30e
    .line 1199
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@311
    .line 1202
    move-object/from16 v0, p0

    #@313
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@315
    if-eqz v2, :cond_17

    #@317
    move-object/from16 v0, p0

    #@319
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@31b
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    #@31e
    move-result v2

    #@31f
    if-eqz v2, :cond_17

    #@321
    .line 1203
    move-object/from16 v0, p0

    #@323
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@325
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@327
    const/4 v3, 0x2

    #@328
    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@32b
    .line 1205
    :cond_17
    if-eqz v12, :cond_18

    #@32d
    .line 1206
    const/4 v2, 0x2

    #@32e
    new-array v2, v2, [Ljava/lang/Object;

    #@330
    .line 1207
    move-object/from16 v0, p0

    #@332
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@334
    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    #@336
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@339
    move-result-object v3

    #@33a
    const/4 v4, 0x0

    #@33b
    aput-object v3, v2, v4

    #@33d
    move-object/from16 v0, p0

    #@33f
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@341
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@343
    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@348
    move-result-object v3

    #@349
    const/4 v4, 0x1

    #@34a
    aput-object v3, v2, v4

    #@34c
    const/16 v3, 0x7534

    #@34e
    .line 1206
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@351
    .line 1210
    :cond_18
    move-object/from16 v0, p0

    #@353
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@355
    move-object/from16 v0, p0

    #@357
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@359
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@35b
    const/16 v4, 0x7535

    #@35d
    .line 1209
    invoke-static {v4, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@360
    .line 1211
    move-object/from16 v0, p0

    #@362
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@364
    const/4 v3, 0x0

    #@365
    iput-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@367
    .line 1213
    const/4 v2, 0x0

    #@368
    move-object/from16 v0, p0

    #@36a
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(Z)V

    #@36d
    .line 1215
    move-object/from16 v0, p0

    #@36f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@371
    move-object/from16 v0, p0

    #@373
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@375
    move-object/from16 v0, p0

    #@377
    iget-boolean v4, v0, Lcom/android/server/am/ActivityStarter;->mKeepCurTransition:Z

    #@379
    move-object/from16 v0, p0

    #@37b
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@37d
    invoke-virtual {v2, v3, v12, v4, v5}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    #@380
    .line 1216
    move-object/from16 v0, p0

    #@382
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mDoResume:Z

    #@384
    if-eqz v2, :cond_20

    #@386
    .line 1217
    move-object/from16 v0, p0

    #@388
    iget-boolean v2, v0, Lcom/android/server/am/ActivityStarter;->mLaunchTaskBehind:Z

    #@38a
    if-nez v2, :cond_19

    #@38c
    .line 1221
    move-object/from16 v0, p0

    #@38e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@390
    move-object/from16 v0, p0

    #@392
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@394
    const-string/jumbo v4, "startedActivity"

    #@397
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@39a
    .line 1223
    :cond_19
    move-object/from16 v0, p0

    #@39c
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@39e
    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3a0
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3a3
    move-result-object v18

    #@3a4
    .line 1224
    .local v18, "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@3a6
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@3a8
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    #@3ab
    move-result v2

    #@3ac
    if-eqz v2, :cond_1a

    #@3ae
    .line 1225
    if-eqz v18, :cond_1f

    #@3b0
    move-object/from16 v0, v18

    #@3b2
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    #@3b4
    if-eqz v2, :cond_1f

    #@3b6
    .line 1226
    move-object/from16 v0, p0

    #@3b8
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3ba
    move-object/from16 v0, v18

    #@3bc
    if-eq v2, v0, :cond_1f

    #@3be
    .line 1233
    :cond_1a
    move-object/from16 v0, p0

    #@3c0
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@3c2
    const/4 v3, 0x0

    #@3c3
    const/4 v4, 0x0

    #@3c4
    const/4 v5, 0x0

    #@3c5
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@3c8
    .line 1236
    move-object/from16 v0, p0

    #@3ca
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3cc
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@3cf
    .line 1244
    .end local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :goto_6
    move-object/from16 v0, p0

    #@3d1
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3d7
    iget v3, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    #@3d9
    move-object/from16 v0, p0

    #@3db
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@3dd
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V

    #@3e0
    .line 1246
    move-object/from16 v0, p0

    #@3e2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e4
    .line 1247
    move-object/from16 v0, p0

    #@3e6
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@3e8
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3ea
    move-object/from16 v0, p0

    #@3ec
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@3ee
    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3f0
    .line 1246
    invoke-virtual {v2, v3, v13, v4}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;II)V

    #@3f3
    .line 1249
    const/4 v2, 0x0

    #@3f4
    return v2

    #@3f5
    .line 1177
    .restart local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromSourceRecord()I

    #@3f8
    move-result v14

    #@3f9
    .line 1178
    .local v14, "result":I
    if-eqz v14, :cond_16

    #@3fb
    .line 1179
    return v14

    #@3fc
    .line 1181
    .end local v14    # "result":I
    :cond_1c
    move-object/from16 v0, p0

    #@3fe
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@400
    if-eqz v2, :cond_1e

    #@402
    .line 1184
    move-object/from16 v0, p0

    #@404
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@406
    move-object/from16 v0, p0

    #@408
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mInTask:Lcom/android/server/am/TaskRecord;

    #@40a
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    #@40d
    move-result v2

    #@40e
    if-eqz v2, :cond_1d

    #@410
    .line 1185
    sget-object v2, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@412
    new-instance v3, Ljava/lang/StringBuilder;

    #@414
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@417
    const-string/jumbo v4, "Attempted Lock Task Mode violation mStartActivity="

    #@41a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41d
    move-result-object v3

    #@41e
    move-object/from16 v0, p0

    #@420
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@422
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@425
    move-result-object v3

    #@426
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@429
    move-result-object v3

    #@42a
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@42d
    .line 1186
    const/4 v2, 0x5

    #@42e
    return v2

    #@42f
    .line 1189
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskFromInTask()I

    #@432
    move-result v14

    #@433
    .line 1190
    .restart local v14    # "result":I
    if-eqz v14, :cond_16

    #@435
    .line 1191
    return v14

    #@436
    .line 1196
    .end local v14    # "result":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()V

    #@439
    goto/16 :goto_5

    #@43b
    .line 1238
    .end local v17    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1f
    move-object/from16 v0, p0

    #@43d
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@43f
    move-object/from16 v0, p0

    #@441
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@443
    move-object/from16 v0, p0

    #@445
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@447
    .line 1239
    move-object/from16 v0, p0

    #@449
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    #@44b
    .line 1238
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@44e
    goto :goto_6

    #@44f
    .line 1242
    .end local v18    # "topTaskActivity":Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object/from16 v0, p0

    #@451
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@453
    move-object/from16 v0, p0

    #@455
    iget-object v3, v0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@457
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@45a
    goto/16 :goto_6
.end method

.method private updateTaskReturnToType(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "launchFlags"    # I
    .param p3, "focusedStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const v3, 0x10004000

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 1597
    and-int v0, p2, v3

    #@7
    if-ne v0, v3, :cond_0

    #@9
    .line 1600
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@c
    .line 1601
    return-void

    #@d
    .line 1602
    :cond_0
    if-eqz p3, :cond_1

    #@f
    iget v0, p3, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1604
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@16
    .line 1605
    return-void

    #@17
    .line 1609
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@1a
    .line 1596
    return-void
.end method


# virtual methods
.method final doPendingActivityLaunchesLocked(Z)V
    .locals 11
    .param p1, "doResume"    # Z

    #@0
    .prologue
    .line 1885
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 1886
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@e
    move-result-object v10

    #@f
    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@11
    .line 1887
    .local v10, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    if-eqz p1, :cond_0

    #@13
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@18
    move-result v6

    #@19
    .line 1890
    :goto_1
    :try_start_0
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    #@1b
    iget-object v2, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    #@1d
    iget v5, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->startFlags:I

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v7, 0x0

    #@22
    const/4 v8, 0x0

    #@23
    move-object v0, p0

    #@24
    .line 1889
    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I

    #@27
    move-result v2

    #@28
    .line 1892
    .local v2, "result":I
    iget-object v1, v10, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    #@2a
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2c
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@2e
    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@30
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@32
    .line 1893
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@34
    move-object v0, p0

    #@35
    .line 1891
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    goto :goto_0

    #@39
    .line 1894
    .end local v2    # "result":I
    :catch_0
    move-exception v9

    #@3a
    .line 1895
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Exception during pending activity launch pal="

    #@44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@53
    .line 1896
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v10, v0}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->sendErrorResult(Ljava/lang/String;)V

    #@5a
    goto :goto_0

    #@5b
    .line 1887
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    #@5c
    .local v6, "resume":Z
    goto :goto_1

    #@5d
    .line 1884
    .end local v6    # "resume":Z
    .end local v10    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method getOverrideBounds(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 2061
    const/4 v0, 0x0

    #@1
    .line 2062
    .local v0, "newBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_1

    #@3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isResizeable()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    if-eqz p3, :cond_1

    #@b
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 2063
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@13
    .line 2064
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    #@16
    move-result v2

    #@17
    .line 2063
    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 2065
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    #@20
    move-result-object v1

    #@21
    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@24
    move-result-object v0

    #@25
    .line 2068
    .end local v0    # "newBounds":Landroid/graphics/Rect;
    :cond_1
    return-object v0
.end method

.method postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # I
    .param p3, "prevFocusedStackId"    # I
    .param p4, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "targetStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 580
    if-gez p2, :cond_0

    #@7
    .line 584
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@c
    .line 585
    return-void

    #@d
    .line 591
    :cond_0
    if-ne p2, v7, :cond_1

    #@f
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@11
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_6

    #@19
    .line 595
    :cond_1
    :goto_0
    const/4 v2, -0x1

    #@1a
    .line 596
    .local v2, "startedActivityStackId":I
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    if-eqz v4, :cond_7

    #@1e
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@20
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@22
    if-eqz v4, :cond_7

    #@24
    .line 597
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@26
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@28
    iget v2, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2a
    .line 610
    :cond_2
    :goto_1
    if-eqz p4, :cond_9

    #@2c
    .line 611
    iget-boolean v4, p4, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@2e
    .line 610
    if-eqz v4, :cond_9

    #@30
    .line 612
    iget-object v4, p4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@32
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@35
    move-result v4

    #@36
    if-ne v4, v8, :cond_8

    #@38
    const/4 v1, 0x1

    #@39
    .line 613
    .local v1, "noDisplayActivityOverHome":Z
    :goto_2
    if-ne v2, v9, :cond_a

    #@3b
    .line 614
    if-eqz p3, :cond_3

    #@3d
    .line 613
    if-eqz v1, :cond_a

    #@3f
    .line 615
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@41
    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@44
    move-result-object v0

    #@45
    .line 616
    .local v0, "homeStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_4

    #@47
    .line 617
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@4a
    move-result-object v3

    #@4b
    .line 618
    .local v3, "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_4
    if-eqz v3, :cond_5

    #@4d
    .line 619
    iget v4, v3, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@4f
    if-eq v4, v7, :cond_a

    #@51
    .line 624
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@53
    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    #@56
    .line 625
    return-void

    #@57
    .line 592
    .end local v0    # "homeStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "noDisplayActivityOverHome":Z
    .end local v2    # "startedActivityStackId":I
    .end local v3    # "topActivityHomeStack":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@59
    iget-object v5, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@5b
    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V

    #@5e
    goto :goto_0

    #@5f
    .line 598
    .restart local v2    # "startedActivityStackId":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@61
    if-eqz v4, :cond_2

    #@63
    .line 599
    iget v2, p5, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@65
    goto :goto_1

    #@66
    .line 612
    :cond_8
    const/4 v1, 0x0

    #@67
    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    #@68
    .line 610
    .end local v1    # "noDisplayActivityOverHome":Z
    :cond_9
    const/4 v1, 0x0

    #@69
    .restart local v1    # "noDisplayActivityOverHome":Z
    goto :goto_2

    #@6a
    .line 629
    :cond_a
    const/4 v4, 0x4

    #@6b
    if-ne v2, v4, :cond_c

    #@6d
    .line 630
    if-eq p2, v7, :cond_b

    #@6f
    if-ne p2, v9, :cond_c

    #@71
    .line 634
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@73
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyPinnedActivityRestartAttemptLocked()V

    #@76
    .line 635
    return-void

    #@77
    .line 578
    :cond_c
    return-void
.end method

.method removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 2076
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "palNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 2077
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@12
    .line 2078
    .local v0, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 2079
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1b
    .line 2076
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2075
    .end local v0    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    :cond_1
    return-void
.end method

.method sendPowerHintForLaunchEndIfNeeded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1018
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1019
    iget-object v0, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@f
    const/16 v1, 0x8

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    #@14
    .line 1020
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    #@16
    .line 1016
    :cond_0
    return-void
.end method

.method sendPowerHintForLaunchStartIfNeeded(Z)V
    .locals 5
    .param p1, "forceSend"    # Z

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1004
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@6
    move-result-object v1

    #@7
    .line 1005
    .local v1, "focusStack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_2

    #@9
    .line 1006
    const/4 v0, 0x0

    #@a
    .line 1007
    :goto_0
    if-nez p1, :cond_0

    #@c
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    #@e
    if-nez v2, :cond_1

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1008
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@14
    if-eqz v2, :cond_1

    #@16
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1009
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1c
    iget-object v3, p0, Lcom/android/server/am/ActivityStarter;->mStartActivity:Lcom/android/server/am/ActivityRecord;

    #@1e
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@20
    if-eq v2, v3, :cond_1

    #@22
    .line 1010
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@26
    if-eqz v2, :cond_1

    #@28
    .line 1011
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    #@2c
    const/16 v3, 0x8

    #@2e
    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    #@31
    .line 1012
    iput-boolean v4, p0, Lcom/android/server/am/ActivityStarter;->mPowerHintSent:Z

    #@33
    .line 1002
    :cond_1
    return-void

    #@34
    .line 1006
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStarter;->mNotTop:Lcom/android/server/am/ActivityRecord;

    #@36
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@39
    move-result-object v0

    #@3a
    .local v0, "curTop":Lcom/android/server/am/ActivityRecord;
    goto :goto_0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    #@0
    .prologue
    .line 2072
    iput-object p1, p0, Lcom/android/server/am/ActivityStarter;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2
    .line 2071
    return-void
.end method

.method showConfirmDeviceCredential(I)V
    .locals 21
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 660
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    const/4 v3, 0x1

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@8
    move-result-object v17

    #@9
    .line 662
    .local v17, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, p0

    #@b
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@d
    const/4 v3, 0x2

    #@e
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@11
    move-result-object v16

    #@12
    .line 663
    .local v16, "freeformStack":Lcom/android/server/am/ActivityStack;
    if-eqz v17, :cond_0

    #@14
    .line 664
    const/4 v2, 0x0

    #@15
    move-object/from16 v0, v17

    #@17
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    .line 666
    move-object/from16 v20, v17

    #@1f
    .line 674
    .local v20, "targetStack":Lcom/android/server/am/ActivityStack;
    :goto_0
    if-nez v20, :cond_2

    #@21
    .line 675
    return-void

    #@22
    .line 667
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    if-eqz v16, :cond_1

    #@24
    .line 668
    const/4 v2, 0x0

    #@25
    move-object/from16 v0, v16

    #@27
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 669
    move-object/from16 v20, v16

    #@2f
    .line 668
    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    #@30
    .line 672
    .end local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@34
    const/4 v3, 0x0

    #@35
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@38
    move-result-object v20

    #@39
    .restart local v20    # "targetStack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    #@3a
    .line 677
    :cond_2
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3e
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@40
    .line 678
    const-string/jumbo v3, "keyguard"

    #@43
    .line 677
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@46
    move-result-object v18

    #@47
    check-cast v18, Landroid/app/KeyguardManager;

    #@49
    .line 680
    .local v18, "km":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    #@4a
    const/4 v3, 0x0

    #@4b
    move-object/from16 v0, v18

    #@4d
    move/from16 v1, p1

    #@4f
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    #@52
    move-result-object v15

    #@53
    .line 682
    .local v15, "credential":Landroid/content/Intent;
    if-nez v15, :cond_3

    #@55
    .line 683
    return-void

    #@56
    .line 685
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@59
    move-result-object v14

    #@5a
    .line 686
    .local v14, "activityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v14, :cond_4

    #@5c
    .line 687
    move-object/from16 v0, p0

    #@5e
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@60
    .line 689
    iget-object v4, v14, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@62
    .line 690
    iget v5, v14, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@64
    .line 691
    iget v6, v14, Lcom/android/server/am/ActivityRecord;->userId:I

    #@66
    .line 693
    const/4 v3, 0x1

    #@67
    new-array v10, v3, [Landroid/content/Intent;

    #@69
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@6b
    const/4 v7, 0x0

    #@6c
    aput-object v3, v10, v7

    #@6e
    .line 694
    const/4 v3, 0x1

    #@6f
    new-array v11, v3, [Ljava/lang/String;

    #@71
    iget-object v3, v14, Lcom/android/server/am/ActivityRecord;->resolvedType:Ljava/lang/String;

    #@73
    const/4 v7, 0x0

    #@74
    aput-object v3, v11, v7

    #@76
    .line 688
    const/4 v3, 0x2

    #@77
    .line 692
    const/4 v7, 0x0

    #@78
    const/4 v8, 0x0

    #@79
    const/4 v9, 0x0

    #@7a
    .line 695
    const/high16 v12, 0x54000000

    #@7c
    .line 698
    const/4 v13, 0x0

    #@7d
    .line 687
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@80
    move-result-object v19

    #@81
    .line 699
    .local v19, "target":Landroid/content/IIntentSender;
    const-string/jumbo v2, "android.intent.extra.INTENT"

    #@84
    new-instance v3, Landroid/content/IntentSender;

    #@86
    move-object/from16 v0, v19

    #@88
    invoke-direct {v3, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@8b
    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@8e
    .line 701
    move-object/from16 v0, p0

    #@90
    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStarter;->startConfirmCredentialIntent(Landroid/content/Intent;)V

    #@93
    .line 656
    .end local v19    # "target":Landroid/content/IIntentSender;
    :cond_4
    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "bOptions"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    #@0
    .prologue
    .line 926
    if-nez p4, :cond_0

    #@2
    .line 927
    new-instance v2, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "intents is null"

    #@7
    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 929
    :cond_0
    if-nez p5, :cond_1

    #@d
    .line 930
    new-instance v2, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v4, "resolvedTypes is null"

    #@12
    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 932
    :cond_1
    move-object/from16 v0, p4

    #@18
    array-length v2, v0

    #@19
    move-object/from16 v0, p5

    #@1b
    array-length v4, v0

    #@1c
    if-eq v2, v4, :cond_2

    #@1e
    .line 933
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, "intents are length different than resolvedTypes"

    #@23
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 936
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@2a
    move-result v19

    #@2b
    .line 937
    .local v19, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2e
    move-result v20

    #@2f
    .line 940
    .local v20, "realCallingUid":I
    if-ltz p2, :cond_3

    #@31
    .line 941
    const/16 v16, -0x1

    #@33
    .line 948
    .local v16, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@36
    move-result-wide v30

    #@37
    .line 950
    .local v30, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b
    move-object/from16 v33, v0

    #@3d
    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3e
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@41
    .line 951
    const/4 v2, 0x1

    #@42
    new-array v0, v2, [Lcom/android/server/am/ActivityRecord;

    #@44
    move-object/from16 v25, v0

    #@46
    .line 952
    .local v25, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v28, 0x0

    #@48
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .local v28, "i":I
    :goto_1
    move-object/from16 v0, p4

    #@4a
    array-length v2, v0

    #@4b
    move/from16 v0, v28

    #@4d
    if-ge v0, v2, :cond_c

    #@4f
    .line 953
    aget-object v29, p4, v28

    #@51
    .line 954
    .local v29, "intent":Landroid/content/Intent;
    if-nez v29, :cond_5

    #@53
    move-object/from16 v3, v29

    #@55
    .line 952
    .end local v29    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v28, v28, 0x1

    #@57
    goto :goto_1

    #@58
    .line 942
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v16    # "callingPid":I
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v30    # "origId":J
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    :cond_3
    if-nez p1, :cond_4

    #@5a
    .line 943
    move/from16 v16, v19

    #@5c
    .line 944
    .restart local v16    # "callingPid":I
    move/from16 p2, v20

    #@5e
    goto :goto_0

    #@5f
    .line 946
    .end local v16    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    #@61
    const/16 v16, -0x1

    #@63
    .restart local v16    # "callingPid":I
    goto :goto_0

    #@64
    .line 959
    .end local p6    # "resultTo":Landroid/os/IBinder;
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    .restart local v30    # "origId":J
    :cond_5
    if-eqz v29, :cond_6

    #@66
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->hasFileDescriptors()Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_6

    #@6c
    .line 960
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6e
    const-string/jumbo v4, "File descriptors passed in Intent"

    #@71
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@75
    .line 950
    .end local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v28    # "i":I
    .end local v29    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    #@76
    :try_start_2
    monitor-exit v33

    #@77
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@7a
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@7b
    .line 995
    :catchall_1
    move-exception v2

    #@7c
    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@7f
    .line 995
    throw v2

    #@80
    .line 963
    .restart local v25    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "i":I
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@83
    move-result-object v2

    #@84
    if-eqz v2, :cond_7

    #@86
    const/16 v24, 0x1

    #@88
    .line 966
    .local v24, "componentSpecified":Z
    :goto_3
    new-instance v3, Landroid/content/Intent;

    #@8a
    move-object/from16 v0, v29

    #@8c
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@8f
    .line 969
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@91
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@93
    aget-object v4, p5, v28

    #@95
    const/4 v5, 0x0

    #@96
    .line 970
    const/4 v6, 0x0

    #@97
    move/from16 v7, p8

    #@99
    .line 969
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    #@9c
    move-result-object v9

    #@9d
    .line 972
    .local v9, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a1
    move/from16 v0, p8

    #@a3
    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    #@a6
    move-result-object v9

    #@a7
    .line 974
    if-eqz v9, :cond_8

    #@a9
    .line 975
    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@ab
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@ad
    and-int/lit8 v2, v2, 0x2

    #@af
    if-eqz v2, :cond_8

    #@b1
    .line 977
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b3
    .line 978
    const-string/jumbo v4, "FLAG_CANT_SAVE_STATE not supported here"

    #@b6
    .line 977
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b9
    throw v2

    #@ba
    .line 963
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "componentSpecified":Z
    .restart local v29    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v24, 0x0

    #@bc
    .restart local v24    # "componentSpecified":Z
    goto :goto_3

    #@bd
    .line 982
    .end local v29    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    move-object/from16 v0, p4

    #@bf
    array-length v2, v0

    #@c0
    add-int/lit8 v2, v2, -0x1

    #@c2
    move/from16 v0, v28

    #@c4
    if-ne v0, v2, :cond_9

    #@c6
    move-object/from16 v2, p7

    #@c8
    .line 981
    :goto_4
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@cb
    move-result-object v22

    #@cc
    .line 984
    .local v22, "options":Landroid/app/ActivityOptions;
    aget-object v8, p5, v28

    #@ce
    .line 983
    const/4 v7, 0x0

    #@cf
    .line 984
    const/4 v10, 0x0

    #@d0
    const/4 v11, 0x0

    #@d1
    const/4 v12, 0x0

    #@d2
    const/4 v14, 0x0

    #@d3
    const/4 v15, -0x1

    #@d4
    .line 986
    const/16 v21, 0x0

    #@d6
    .line 987
    const/16 v23, 0x0

    #@d8
    const/16 v26, 0x0

    #@da
    const/16 v27, 0x0

    #@dc
    move-object/from16 v4, p0

    #@de
    move-object/from16 v5, p1

    #@e0
    move-object v6, v3

    #@e1
    move-object/from16 v13, p6

    #@e3
    move/from16 v17, p2

    #@e5
    move-object/from16 v18, p3

    #@e7
    .line 983
    invoke-virtual/range {v4 .. v27}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ea
    move-result v32

    #@eb
    .line 988
    .local v32, "res":I
    if-gez v32, :cond_a

    #@ed
    :try_start_4
    monitor-exit v33

    #@ee
    .line 950
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@f1
    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@f4
    .line 989
    return v32

    #@f5
    .line 982
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v32    # "res":I
    :cond_9
    const/4 v2, 0x0

    #@f6
    goto :goto_4

    #@f7
    .line 992
    .restart local v22    # "options":Landroid/app/ActivityOptions;
    .restart local v32    # "res":I
    :cond_a
    const/4 v2, 0x0

    #@f8
    :try_start_5
    aget-object v2, v25, v2

    #@fa
    if-eqz v2, :cond_b

    #@fc
    const/4 v2, 0x0

    #@fd
    aget-object v2, v25, v2

    #@ff
    iget-object v0, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@101
    move-object/from16 p6, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@103
    .restart local p6    # "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    #@105
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_b
    const/16 p6, 0x0

    #@107
    .local p6, "resultTo":Landroid/os/IBinder;
    goto/16 :goto_2

    #@109
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v22    # "options":Landroid/app/ActivityOptions;
    .end local v24    # "componentSpecified":Z
    .end local v32    # "res":I
    .end local p6    # "resultTo":Landroid/os/IBinder;
    :cond_c
    :try_start_6
    monitor-exit v33

    #@10a
    .line 950
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@10d
    .line 996
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@110
    .line 999
    const/4 v2, 0x0

    #@111
    return v2
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 51
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "ephemeralIntent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"    # Landroid/os/IBinder;
    .param p10, "resultWho"    # Ljava/lang/String;
    .param p11, "requestCode"    # I
    .param p12, "callingPid"    # I
    .param p13, "callingUid"    # I
    .param p14, "callingPackage"    # Ljava/lang/String;
    .param p15, "realCallingPid"    # I
    .param p16, "realCallingUid"    # I
    .param p17, "startFlags"    # I
    .param p18, "options"    # Landroid/app/ActivityOptions;
    .param p19, "ignoreTargetSecurity"    # Z
    .param p20, "componentSpecified"    # Z
    .param p21, "outActivity"    # [Lcom/android/server/am/ActivityRecord;
    .param p22, "container"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p23, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 238
    const/4 v9, 0x0

    #@1
    .line 240
    .local v9, "err":I
    const/16 v16, 0x0

    #@3
    .line 241
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    #@5
    .line 242
    move-object/from16 v0, p0

    #@7
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@e
    move-result-object v16

    #@f
    .line 243
    .local v16, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v16, :cond_3

    #@11
    .line 244
    move-object/from16 v0, v16

    #@13
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    #@15
    move/from16 p12, v0

    #@17
    .line 245
    move-object/from16 v0, v16

    #@19
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d
    move/from16 p13, v0

    #@1f
    .line 254
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_0
    :goto_0
    if-eqz p5, :cond_4

    #@21
    move-object/from16 v0, p5

    #@23
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@27
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@2a
    move-result v21

    #@2b
    .line 256
    .local v21, "userId":I
    :goto_1
    if-nez v9, :cond_1

    #@2d
    .line 257
    sget-object v7, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@2f
    new-instance v5, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v8, "START u"

    #@37
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    move/from16 v0, v21

    #@3d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v5

    #@41
    const-string/jumbo v8, " {"

    #@44
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    const/4 v8, 0x1

    #@49
    const/4 v10, 0x1

    #@4a
    const/4 v11, 0x1

    #@4b
    const/4 v12, 0x0

    #@4c
    move-object/from16 v0, p2

    #@4e
    invoke-virtual {v0, v8, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 258
    const-string/jumbo v8, "} from uid "

    #@59
    .line 257
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    move/from16 v0, p13

    #@5f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v5

    #@63
    .line 259
    const-string/jumbo v8, " on display "

    #@66
    .line 257
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v8

    #@6a
    .line 259
    if-nez p22, :cond_6

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@70
    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@72
    if-nez v5, :cond_5

    #@74
    .line 260
    const/4 v5, 0x0

    #@75
    .line 257
    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v5

    #@79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v5

    #@7d
    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@80
    .line 265
    :cond_1
    const/16 v39, 0x0

    #@82
    .line 266
    .local v39, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    #@83
    .line 267
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p9, :cond_2

    #@85
    .line 268
    move-object/from16 v0, p0

    #@87
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@89
    move-object/from16 v0, p9

    #@8b
    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@8e
    move-result-object v39

    #@8f
    .line 271
    .local v39, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v39, :cond_2

    #@91
    .line 272
    if-ltz p11, :cond_2

    #@93
    move-object/from16 v0, v39

    #@95
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@97
    if-eqz v5, :cond_8

    #@99
    .line 278
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@9c
    move-result v47

    #@9d
    .line 280
    .local v47, "launchFlags":I
    const/high16 v5, 0x2000000

    #@9f
    and-int v5, v5, v47

    #@a1
    if-eqz v5, :cond_c

    #@a3
    if-eqz v39, :cond_c

    #@a5
    .line 283
    if-ltz p11, :cond_9

    #@a7
    .line 284
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@aa
    .line 285
    const/4 v5, -0x3

    #@ab
    return v5

    #@ac
    .line 247
    .end local v21    # "userId":I
    .end local v47    # "launchFlags":I
    .restart local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_3
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@ae
    new-instance v7, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v8, "Unable to find app for caller "

    #@b6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v7

    #@ba
    move-object/from16 v0, p1

    #@bc
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    .line 248
    const-string/jumbo v8, " (pid="

    #@c3
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    move/from16 v0, p12

    #@c9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v7

    #@cd
    .line 248
    const-string/jumbo v8, ") when starting: "

    #@d0
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v7

    #@d4
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@d7
    move-result-object v8

    #@d8
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v7

    #@dc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@df
    move-result-object v7

    #@e0
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 250
    const/4 v9, -0x4

    #@e4
    goto/16 :goto_0

    #@e6
    .line 254
    .end local v16    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_4
    const/16 v21, 0x0

    #@e8
    .restart local v21    # "userId":I
    goto/16 :goto_1

    #@ea
    .line 260
    :cond_5
    move-object/from16 v0, p0

    #@ec
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ee
    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@f0
    iget v5, v5, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@f2
    goto :goto_2

    #@f3
    .line 261
    :cond_6
    move-object/from16 v0, p22

    #@f5
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@f7
    if-nez v5, :cond_7

    #@f9
    const/4 v5, 0x0

    #@fa
    goto/16 :goto_2

    #@fc
    .line 262
    :cond_7
    move-object/from16 v0, p22

    #@fe
    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@100
    iget v5, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@102
    goto/16 :goto_2

    #@104
    .line 273
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v6, v39

    #@106
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto :goto_3

    #@107
    .line 287
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "launchFlags":I
    :cond_9
    move-object/from16 v0, v39

    #@109
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@10b
    .line 288
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_a

    #@10d
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->isInStackLocked()Z

    #@110
    move-result v5

    #@111
    if-eqz v5, :cond_12

    #@113
    .line 291
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_4
    move-object/from16 v0, v39

    #@115
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@117
    move-object/from16 p10, v0

    #@119
    .line 292
    move-object/from16 v0, v39

    #@11b
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@11d
    move/from16 p11, v0

    #@11f
    .line 293
    const/4 v5, 0x0

    #@120
    move-object/from16 v0, v39

    #@122
    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@124
    .line 294
    if-eqz v6, :cond_b

    #@126
    .line 295
    move-object/from16 v0, v39

    #@128
    move-object/from16 v1, p10

    #@12a
    move/from16 v2, p11

    #@12c
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    #@12f
    .line 297
    :cond_b
    move-object/from16 v0, v39

    #@131
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@133
    move/from16 v0, p13

    #@135
    if-ne v5, v0, :cond_c

    #@137
    .line 308
    move-object/from16 v0, v39

    #@139
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@13b
    move-object/from16 p14, v0

    #@13d
    .line 312
    :cond_c
    if-nez v9, :cond_d

    #@13f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@142
    move-result-object v5

    #@143
    if-nez v5, :cond_d

    #@145
    .line 315
    const/4 v9, -0x1

    #@146
    .line 318
    :cond_d
    if-nez v9, :cond_e

    #@148
    if-nez p5, :cond_e

    #@14a
    .line 321
    const/4 v9, -0x2

    #@14b
    .line 324
    :cond_e
    if-nez v9, :cond_f

    #@14d
    if-eqz v39, :cond_f

    #@14f
    .line 325
    move-object/from16 v0, v39

    #@151
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@153
    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@155
    if-eqz v5, :cond_f

    #@157
    .line 330
    const/high16 v5, 0x10000000

    #@159
    and-int v5, v5, v47

    #@15b
    if-nez v5, :cond_f

    #@15d
    .line 331
    move-object/from16 v0, v39

    #@15f
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@161
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@163
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@165
    move-object/from16 v0, p5

    #@167
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@169
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16b
    if-eq v5, v7, :cond_f

    #@16d
    .line 333
    :try_start_0
    const-string/jumbo v5, "android.intent.category.VOICE"

    #@170
    move-object/from16 v0, p2

    #@172
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@175
    .line 334
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@178
    move-result-object v5

    #@179
    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@17c
    move-result-object v7

    #@17d
    .line 334
    move-object/from16 v0, p2

    #@17f
    move-object/from16 v1, p4

    #@181
    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@184
    move-result v5

    #@185
    if-nez v5, :cond_f

    #@187
    .line 336
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@189
    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    #@18b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@18e
    const-string/jumbo v8, "Activity being started in current voice task does not support voice: "

    #@191
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v7

    #@195
    move-object/from16 v0, p2

    #@197
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v7

    #@19b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19e
    move-result-object v7

    #@19f
    .line 336
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a2
    .line 339
    const/4 v9, -0x7

    #@1a3
    .line 348
    :cond_f
    :goto_5
    if-nez v9, :cond_13

    #@1a5
    if-eqz p7, :cond_13

    #@1a7
    .line 352
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@1aa
    move-result-object v5

    #@1ab
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1ae
    move-result-object v7

    #@1af
    move-object/from16 v0, p2

    #@1b1
    move-object/from16 v1, p4

    #@1b3
    invoke-interface {v5, v7, v0, v1}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    #@1b6
    move-result v5

    #@1b7
    if-nez v5, :cond_10

    #@1b9
    .line 354
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@1bb
    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    #@1bd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1c0
    const-string/jumbo v8, "Activity being started in new voice task does not support: "

    #@1c3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v7

    #@1c7
    move-object/from16 v0, p2

    #@1c9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v7

    #@1cd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v7

    #@1d1
    .line 354
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d4
    .line 357
    const/4 v9, -0x7

    #@1d5
    :cond_10
    move/from16 v45, v9

    #@1d7
    .line 365
    .end local v9    # "err":I
    .local v45, "err":I
    :goto_6
    if-nez v6, :cond_14

    #@1d9
    const/4 v4, 0x0

    #@1da
    .line 367
    :goto_7
    if-eqz v45, :cond_15

    #@1dc
    .line 368
    if-eqz v6, :cond_11

    #@1de
    .line 370
    const/4 v5, -0x1

    #@1df
    const/4 v9, 0x0

    #@1e0
    const/4 v10, 0x0

    #@1e1
    move-object/from16 v7, p10

    #@1e3
    move/from16 v8, p11

    #@1e5
    .line 369
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@1e8
    .line 372
    :cond_11
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@1eb
    .line 373
    return v45

    #@1ec
    .line 289
    .end local v45    # "err":I
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "err":I
    :cond_12
    const/4 v6, 0x0

    #@1ed
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_4

    #@1ef
    .line 341
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v44

    #@1f0
    .line 342
    .local v44, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@1f2
    const-string/jumbo v7, "Failure checking voice capabilities"

    #@1f5
    move-object/from16 v0, v44

    #@1f7
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1fa
    .line 343
    const/4 v9, -0x7

    #@1fb
    goto :goto_5

    #@1fc
    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_13
    move/from16 v45, v9

    #@1fe
    .line 348
    .end local v9    # "err":I
    .restart local v45    # "err":I
    goto :goto_6

    #@1ff
    .line 359
    .end local v45    # "err":I
    .restart local v9    # "err":I
    :catch_1
    move-exception v44

    #@200
    .line 360
    .restart local v44    # "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@202
    const-string/jumbo v7, "Failure checking voice capabilities"

    #@205
    move-object/from16 v0, v44

    #@207
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20a
    .line 361
    const/4 v9, -0x7

    #@20b
    move/from16 v45, v9

    #@20d
    .end local v9    # "err":I
    .restart local v45    # "err":I
    goto :goto_6

    #@20e
    .line 365
    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_14
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@210
    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@212
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    goto :goto_7

    #@213
    .line 376
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    :cond_15
    move-object/from16 v0, p0

    #@215
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@217
    move-object/from16 v8, p2

    #@219
    move-object/from16 v9, p5

    #@21b
    move-object/from16 v10, p10

    #@21d
    move/from16 v11, p11

    #@21f
    move/from16 v12, p12

    #@221
    move/from16 v13, p13

    #@223
    move-object/from16 v14, p14

    #@225
    move/from16 v15, p19

    #@227
    move-object/from16 v17, v6

    #@229
    move-object/from16 v18, v4

    #@22b
    move-object/from16 v19, p18

    #@22d
    invoke-virtual/range {v7 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;)Z

    #@230
    move-result v5

    #@231
    if-eqz v5, :cond_18

    #@233
    const/16 v43, 0x0

    #@235
    .line 379
    .local v43, "abort":Z
    :goto_8
    move-object/from16 v0, p0

    #@237
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@239
    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    #@23b
    .line 380
    move-object/from16 v0, p5

    #@23d
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@23f
    move-object/from16 v8, p2

    #@241
    move/from16 v9, p13

    #@243
    move/from16 v10, p12

    #@245
    move-object/from16 v11, p4

    #@247
    .line 379
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    #@24a
    move-result v5

    #@24b
    if-eqz v5, :cond_19

    #@24d
    const/4 v5, 0x0

    #@24e
    :goto_9
    or-int v43, v43, v5

    #@250
    .line 382
    .local v43, "abort":Z
    move-object/from16 v0, p0

    #@252
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@254
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@256
    if-eqz v5, :cond_16

    #@258
    .line 386
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@25b
    move-result-object v50

    #@25c
    .line 387
    .local v50, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@25e
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@260
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@262
    .line 388
    move-object/from16 v0, p5

    #@264
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@266
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@268
    .line 387
    move-object/from16 v0, v50

    #@26a
    invoke-interface {v5, v0, v7}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@26d
    move-result v5

    #@26e
    if-eqz v5, :cond_1a

    #@270
    const/4 v5, 0x0

    #@271
    :goto_a
    or-int v43, v43, v5

    #@273
    .line 394
    .end local v50    # "watchIntent":Landroid/content/Intent;
    :cond_16
    :goto_b
    move-object/from16 v0, p0

    #@275
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@277
    move/from16 v8, v21

    #@279
    move/from16 v9, p15

    #@27b
    move/from16 v10, p16

    #@27d
    move/from16 v11, p17

    #@27f
    move-object/from16 v12, p14

    #@281
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    #@284
    .line 395
    move-object/from16 v0, p0

    #@286
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@288
    move-object/from16 v8, p2

    #@28a
    move-object/from16 v9, p6

    #@28c
    move-object/from16 v10, p5

    #@28e
    move-object/from16 v11, p4

    #@290
    move-object/from16 v12, p23

    #@292
    move/from16 v13, p12

    #@294
    move/from16 v14, p13

    #@296
    move-object/from16 v15, p18

    #@298
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/am/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V

    #@29b
    .line 397
    move-object/from16 v0, p0

    #@29d
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@29f
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    #@2a1
    move-object/from16 p2, v0

    #@2a3
    .line 398
    move-object/from16 v0, p0

    #@2a5
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2a7
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    #@2a9
    move-object/from16 p6, v0

    #@2ab
    .line 399
    move-object/from16 v0, p0

    #@2ad
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2af
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    #@2b1
    move-object/from16 p5, v0

    #@2b3
    .line 400
    move-object/from16 v0, p0

    #@2b5
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2b7
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    #@2b9
    move-object/from16 p4, v0

    #@2bb
    .line 401
    move-object/from16 v0, p0

    #@2bd
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2bf
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    #@2c1
    move-object/from16 p23, v0

    #@2c3
    .line 402
    move-object/from16 v0, p0

    #@2c5
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2c7
    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    #@2c9
    move/from16 p12, v0

    #@2cb
    .line 403
    move-object/from16 v0, p0

    #@2cd
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2cf
    iget v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    #@2d1
    move/from16 p13, v0

    #@2d3
    .line 404
    move-object/from16 v0, p0

    #@2d5
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    #@2d7
    iget-object v0, v5, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    #@2d9
    move-object/from16 p18, v0

    #@2db
    .line 405
    if-eqz v43, :cond_1b

    #@2dd
    .line 406
    if-eqz v6, :cond_17

    #@2df
    .line 407
    const/4 v5, -0x1

    #@2e0
    .line 408
    const/4 v9, 0x0

    #@2e1
    const/4 v10, 0x0

    #@2e2
    move-object/from16 v7, p10

    #@2e4
    move/from16 v8, p11

    #@2e6
    .line 407
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@2e9
    .line 412
    :cond_17
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@2ec
    .line 413
    const/4 v5, 0x0

    #@2ed
    return v5

    #@2ee
    .line 376
    .end local v43    # "abort":Z
    :cond_18
    const/16 v43, 0x1

    #@2f0
    .local v43, "abort":Z
    goto/16 :goto_8

    #@2f2
    .line 379
    :cond_19
    const/4 v5, 0x1

    #@2f3
    goto/16 :goto_9

    #@2f5
    .line 387
    .local v43, "abort":Z
    .restart local v50    # "watchIntent":Landroid/content/Intent;
    :cond_1a
    const/4 v5, 0x1

    #@2f6
    goto/16 :goto_a

    #@2f8
    .line 389
    .end local v50    # "watchIntent":Landroid/content/Intent;
    :catch_2
    move-exception v44

    #@2f9
    .line 390
    .restart local v44    # "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@2fb
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2fd
    const/4 v7, 0x0

    #@2fe
    iput-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@300
    goto/16 :goto_b

    #@302
    .line 419
    .end local v44    # "e":Landroid/os/RemoteException;
    :cond_1b
    sget-boolean v5, Landroid/os/Build;->PERMISSIONS_REVIEW_REQUIRED:Z

    #@304
    if-eqz v5, :cond_1d

    #@306
    if-eqz p5, :cond_1d

    #@308
    .line 420
    move-object/from16 v0, p0

    #@30a
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@30c
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    #@30f
    move-result-object v5

    #@310
    .line 421
    move-object/from16 v0, p5

    #@312
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@314
    .line 420
    move/from16 v0, v21

    #@316
    invoke-virtual {v5, v7, v0}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    #@319
    move-result v5

    #@31a
    if-eqz v5, :cond_1d

    #@31c
    .line 422
    move-object/from16 v0, p0

    #@31e
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@320
    move-object/from16 v17, v0

    #@322
    .line 424
    const/4 v5, 0x1

    #@323
    new-array v0, v5, [Landroid/content/Intent;

    #@325
    move-object/from16 v25, v0

    #@327
    const/4 v5, 0x0

    #@328
    aput-object p2, v25, v5

    #@32a
    .line 425
    const/4 v5, 0x1

    #@32b
    new-array v0, v5, [Ljava/lang/String;

    #@32d
    move-object/from16 v26, v0

    #@32f
    const/4 v5, 0x0

    #@330
    aput-object p4, v26, v5

    #@332
    .line 423
    const/16 v18, 0x2

    #@334
    .line 424
    const/16 v22, 0x0

    #@336
    const/16 v23, 0x0

    #@338
    const/16 v24, 0x0

    #@33a
    .line 425
    const/high16 v27, 0x50000000

    #@33c
    .line 426
    const/16 v28, 0x0

    #@33e
    move-object/from16 v19, p14

    #@340
    move/from16 v20, p13

    #@342
    .line 422
    invoke-virtual/range {v17 .. v28}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@345
    move-result-object v49

    #@346
    .line 428
    .local v49, "target":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@349
    move-result v46

    #@34a
    .line 429
    .local v46, "flags":I
    new-instance v48, Landroid/content/Intent;

    #@34c
    const-string/jumbo v5, "android.intent.action.REVIEW_PERMISSIONS"

    #@34f
    move-object/from16 v0, v48

    #@351
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@354
    .line 431
    .local v48, "newIntent":Landroid/content/Intent;
    const/high16 v5, 0x800000

    #@356
    .line 430
    or-int v5, v5, v46

    #@358
    move-object/from16 v0, v48

    #@35a
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@35d
    .line 432
    const-string/jumbo v5, "android.intent.extra.PACKAGE_NAME"

    #@360
    move-object/from16 v0, p5

    #@362
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@364
    move-object/from16 v0, v48

    #@366
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@369
    .line 433
    const-string/jumbo v5, "android.intent.extra.INTENT"

    #@36c
    new-instance v7, Landroid/content/IntentSender;

    #@36e
    move-object/from16 v0, v49

    #@370
    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@373
    move-object/from16 v0, v48

    #@375
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@378
    .line 434
    if-eqz v6, :cond_1c

    #@37a
    .line 435
    const-string/jumbo v5, "android.intent.extra.RESULT_NEEDED"

    #@37d
    const/4 v7, 0x1

    #@37e
    move-object/from16 v0, v48

    #@380
    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@383
    .line 437
    :cond_1c
    move-object/from16 p2, v48

    #@385
    .line 439
    const/16 p4, 0x0

    #@387
    .line 440
    .local p4, "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    #@389
    .line 441
    move/from16 p12, p15

    #@38b
    .line 443
    move-object/from16 v0, p0

    #@38d
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@38f
    move-object/from16 v0, v48

    #@391
    move-object/from16 v1, p4

    #@393
    move/from16 v2, v21

    #@395
    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@398
    move-result-object p6

    #@399
    .line 444
    move-object/from16 v0, p0

    #@39b
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@39d
    .line 445
    const/4 v7, 0x0

    #@39e
    .line 444
    move-object/from16 v0, v48

    #@3a0
    move-object/from16 v1, p6

    #@3a2
    move/from16 v2, p17

    #@3a4
    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@3a7
    move-result-object p5

    #@3a8
    .line 462
    .end local v46    # "flags":I
    .end local v48    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_1d
    if-eqz p6, :cond_1e

    #@3aa
    move-object/from16 v0, p6

    #@3ac
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    #@3ae
    if-eqz v5, :cond_1e

    #@3b0
    .line 464
    move-object/from16 v0, p6

    #@3b2
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->ephemeralResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    #@3b4
    invoke-virtual {v5}, Landroid/content/pm/EphemeralResolveInfo;->getPackageName()Ljava/lang/String;

    #@3b7
    move-result-object v10

    #@3b8
    move-object/from16 v7, p0

    #@3ba
    move-object/from16 v8, p2

    #@3bc
    move-object/from16 v9, p3

    #@3be
    move-object/from16 v11, p14

    #@3c0
    move-object/from16 v12, p4

    #@3c2
    move/from16 v13, v21

    #@3c4
    .line 463
    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/ActivityStarter;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    #@3c7
    move-result-object p2

    #@3c8
    .line 466
    const/16 p4, 0x0

    #@3ca
    .line 467
    .restart local p4    # "resolvedType":Ljava/lang/String;
    move/from16 p13, p16

    #@3cc
    .line 468
    move/from16 p12, p15

    #@3ce
    .line 470
    move-object/from16 v0, p0

    #@3d0
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3d2
    const/4 v7, 0x0

    #@3d3
    move-object/from16 v0, p2

    #@3d5
    move-object/from16 v1, p6

    #@3d7
    move/from16 v2, p17

    #@3d9
    invoke-virtual {v5, v0, v1, v2, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@3dc
    move-result-object p5

    #@3dd
    .line 473
    .end local p4    # "resolvedType":Ljava/lang/String;
    :cond_1e
    new-instance v22, Lcom/android/server/am/ActivityRecord;

    #@3df
    move-object/from16 v0, p0

    #@3e1
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3e3
    move-object/from16 v23, v0

    #@3e5
    .line 474
    move-object/from16 v0, p0

    #@3e7
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3e9
    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@3eb
    move-object/from16 v30, v0

    #@3ed
    .line 475
    if-eqz p7, :cond_22

    #@3ef
    const/16 v35, 0x1

    #@3f1
    :goto_c
    move-object/from16 v0, p0

    #@3f3
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f5
    move-object/from16 v36, v0

    #@3f7
    move-object/from16 v24, v16

    #@3f9
    move/from16 v25, p13

    #@3fb
    move-object/from16 v26, p14

    #@3fd
    move-object/from16 v27, p2

    #@3ff
    move-object/from16 v28, p4

    #@401
    move-object/from16 v29, p5

    #@403
    move-object/from16 v31, v6

    #@405
    move-object/from16 v32, p10

    #@407
    move/from16 v33, p11

    #@409
    move/from16 v34, p20

    #@40b
    move-object/from16 v37, p22

    #@40d
    move-object/from16 v38, p18

    #@40f
    .line 473
    invoke-direct/range {v22 .. v39}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)V

    #@412
    .line 477
    .local v22, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p21, :cond_1f

    #@414
    .line 478
    const/4 v5, 0x0

    #@415
    aput-object v22, p21, v5

    #@417
    .line 481
    :cond_1f
    move-object/from16 v0, v22

    #@419
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@41b
    if-nez v5, :cond_20

    #@41d
    if-eqz v39, :cond_20

    #@41f
    .line 484
    move-object/from16 v0, v39

    #@421
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@423
    move-object/from16 v0, v22

    #@425
    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@427
    .line 487
    :cond_20
    move-object/from16 v0, p0

    #@429
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@42b
    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@42d
    move-object/from16 v41, v0

    #@42f
    .line 488
    .local v41, "stack":Lcom/android/server/am/ActivityStack;
    if-nez p7, :cond_23

    #@431
    move-object/from16 v0, v41

    #@433
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@435
    if-eqz v5, :cond_21

    #@437
    .line 489
    move-object/from16 v0, v41

    #@439
    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@43b
    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@43d
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@43f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@441
    move/from16 v0, p13

    #@443
    if-eq v5, v0, :cond_23

    #@445
    .line 490
    :cond_21
    move-object/from16 v0, p0

    #@447
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@449
    .line 491
    const-string/jumbo v12, "Activity start"

    #@44c
    move/from16 v8, p12

    #@44e
    move/from16 v9, p13

    #@450
    move/from16 v10, p15

    #@452
    move/from16 v11, p16

    #@454
    .line 490
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    #@457
    move-result v5

    #@458
    if-nez v5, :cond_23

    #@45a
    .line 492
    new-instance v37, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;

    #@45c
    move-object/from16 v38, v22

    #@45e
    move/from16 v40, p17

    #@460
    move-object/from16 v42, v16

    #@462
    invoke-direct/range {v37 .. v42}, Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;)V

    #@465
    .line 494
    .local v37, "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    move-object/from16 v0, p0

    #@467
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mPendingActivityLaunches:Ljava/util/ArrayList;

    #@469
    move-object/from16 v0, v37

    #@46b
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46e
    .line 495
    invoke-static/range {p18 .. p18}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@471
    .line 496
    const/4 v5, 0x4

    #@472
    return v5

    #@473
    .line 475
    .end local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "pal":Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;
    .end local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_22
    const/16 v35, 0x0

    #@475
    goto/16 :goto_c

    #@477
    .line 500
    .restart local v22    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_23
    move-object/from16 v0, p0

    #@479
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@47b
    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    #@47d
    if-eqz v5, :cond_24

    #@47f
    .line 506
    move-object/from16 v0, p0

    #@481
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@483
    const-wide/16 v10, 0x0

    #@485
    iput-wide v10, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    #@487
    .line 511
    :goto_d
    const/4 v5, 0x0

    #@488
    move-object/from16 v0, p0

    #@48a
    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStarter;->doPendingActivityLaunchesLocked(Z)V

    #@48d
    .line 514
    :try_start_3
    move-object/from16 v0, p0

    #@48f
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@491
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@493
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    #@496
    .line 516
    const/4 v13, 0x1

    #@497
    move-object/from16 v7, p0

    #@499
    move-object/from16 v8, v22

    #@49b
    move-object/from16 v9, v39

    #@49d
    move-object/from16 v10, p7

    #@49f
    move-object/from16 v11, p8

    #@4a1
    move/from16 v12, p17

    #@4a3
    move-object/from16 v14, p18

    #@4a5
    move-object/from16 v15, p23

    #@4a7
    .line 515
    invoke-direct/range {v7 .. v15}, Lcom/android/server/am/ActivityStarter;->startActivityUnchecked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/am/TaskRecord;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4aa
    move-result v9

    #@4ab
    .line 518
    .end local v45    # "err":I
    .restart local v9    # "err":I
    move-object/from16 v0, p0

    #@4ad
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4af
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4b1
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@4b4
    .line 520
    move-object/from16 v0, v41

    #@4b6
    iget v10, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@4b8
    move-object/from16 v0, p0

    #@4ba
    iget-object v11, v0, Lcom/android/server/am/ActivityStarter;->mSourceRecord:Lcom/android/server/am/ActivityRecord;

    #@4bc
    move-object/from16 v0, p0

    #@4be
    iget-object v12, v0, Lcom/android/server/am/ActivityStarter;->mTargetStack:Lcom/android/server/am/ActivityStack;

    #@4c0
    move-object/from16 v7, p0

    #@4c2
    move-object/from16 v8, v22

    #@4c4
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStarter;->postStartActivityUncheckedProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V

    #@4c7
    .line 521
    return v9

    #@4c8
    .line 508
    .end local v9    # "err":I
    .restart local v45    # "err":I
    :cond_24
    move-object/from16 v0, p0

    #@4ca
    iget-object v5, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4cc
    const/4 v7, 0x1

    #@4cd
    iput-boolean v7, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    #@4cf
    goto :goto_d

    #@4d0
    .line 517
    :catchall_0
    move-exception v5

    #@4d1
    .line 518
    move-object/from16 v0, p0

    #@4d3
    iget-object v7, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d5
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4d7
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    #@4da
    .line 517
    throw v5
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ZILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I
    .locals 55
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "resultTo"    # Landroid/os/IBinder;
    .param p9, "resultWho"    # Ljava/lang/String;
    .param p10, "requestCode"    # I
    .param p11, "startFlags"    # I
    .param p12, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p13, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "bOptions"    # Landroid/os/Bundle;
    .param p16, "ignoreTargetSecurity"    # Z
    .param p17, "userId"    # I
    .param p18, "iContainer"    # Landroid/app/IActivityContainer;
    .param p19, "inTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 723
    if-eqz p4, :cond_0

    #@2
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 724
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v5, "File descriptors passed in Intent"

    #@d
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v4

    #@11
    .line 726
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@17
    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    #@1a
    .line 727
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@1d
    move-result-object v4

    #@1e
    if-eqz v4, :cond_1

    #@20
    const/16 v28, 0x1

    #@22
    .line 730
    .local v28, "componentSpecified":Z
    :goto_0
    new-instance v35, Landroid/content/Intent;

    #@24
    move-object/from16 v0, v35

    #@26
    move-object/from16 v1, p4

    #@28
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@2b
    .line 732
    .local v35, "ephemeralIntent":Landroid/content/Intent;
    new-instance v38, Landroid/content/Intent;

    #@2d
    move-object/from16 v0, v38

    #@2f
    move-object/from16 v1, p4

    #@31
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@34
    .line 734
    .end local p4    # "intent":Landroid/content/Intent;
    .local v38, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    #@36
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@38
    move-object/from16 v0, v38

    #@3a
    move-object/from16 v1, p5

    #@3c
    move/from16 v2, p17

    #@3e
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    #@41
    move-result-object v14

    #@42
    .line 735
    .local v14, "rInfo":Landroid/content/pm/ResolveInfo;
    if-nez v14, :cond_1c

    #@44
    .line 736
    move-object/from16 v0, p0

    #@46
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@48
    move/from16 v0, p17

    #@4a
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@4d
    move-result-object v52

    #@4e
    .line 737
    .local v52, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v52, :cond_2

    #@50
    invoke-virtual/range {v52 .. v52}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@53
    move-result v4

    #@54
    if-eqz v4, :cond_1c

    #@56
    .line 741
    move-object/from16 v0, p0

    #@58
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@5c
    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@5f
    move-result-object v53

    #@60
    .line 742
    .local v53, "userManager":Landroid/os/UserManager;
    const/16 v44, 0x0

    #@62
    .line 743
    .local v44, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@65
    move-result-wide v50

    #@66
    .line 745
    .local v50, "token":J
    :try_start_0
    move-object/from16 v0, v53

    #@68
    move/from16 v1, p17

    #@6a
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@6d
    move-result-object v41

    #@6e
    .line 746
    .local v41, "parent":Landroid/content/pm/UserInfo;
    if-eqz v41, :cond_4

    #@70
    .line 747
    move-object/from16 v0, v41

    #@72
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    #@74
    move-object/from16 v0, v53

    #@76
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    #@79
    move-result v4

    #@7a
    .line 746
    if-eqz v4, :cond_4

    #@7c
    .line 748
    move-object/from16 v0, v53

    #@7e
    move/from16 v1, p17

    #@80
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_3

    #@86
    const/16 v44, 0x0

    #@88
    .line 750
    :goto_1
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@8b
    .line 752
    if-eqz v44, :cond_1c

    #@8d
    .line 753
    move-object/from16 v0, p0

    #@8f
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@91
    .line 754
    const/high16 v5, 0xc0000

    #@93
    .line 753
    move-object/from16 v0, v38

    #@95
    move-object/from16 v1, p5

    #@97
    move/from16 v2, p17

    #@99
    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    #@9c
    move-result-object v14

    #@9d
    move-object/from16 v46, v14

    #@9f
    .line 760
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v41    # "parent":Landroid/content/pm/UserInfo;
    .end local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    .local v46, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    move-object/from16 v0, p0

    #@a1
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a3
    move-object/from16 v0, v38

    #@a5
    move-object/from16 v1, v46

    #@a7
    move/from16 v2, p11

    #@a9
    move-object/from16 v3, p12

    #@ab
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    #@ae
    move-result-object v32

    #@af
    .line 762
    .local v32, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-static/range {p15 .. p15}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    #@b2
    move-result-object v26

    #@b3
    .local v26, "options":Landroid/app/ActivityOptions;
    move-object/from16 v30, p18

    #@b5
    .line 764
    check-cast v30, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@b7
    .line 765
    .local v30, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@bb
    move-object/from16 v54, v0

    #@bd
    monitor-enter v54

    #@be
    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@c1
    .line 766
    if-eqz v30, :cond_5

    #@c3
    move-object/from16 v0, v30

    #@c5
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@c7
    if-eqz v4, :cond_5

    #@c9
    .line 767
    move-object/from16 v0, v30

    #@cb
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@cd
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@cf
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d1
    if-eq v4, v5, :cond_5

    #@d3
    .line 769
    const/4 v4, -0x6

    #@d4
    monitor-exit v54

    #@d5
    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@d8
    .line 769
    return v4

    #@d9
    .line 727
    .end local v26    # "options":Landroid/app/ActivityOptions;
    .end local v28    # "componentSpecified":Z
    .end local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v35    # "ephemeralIntent":Landroid/content/Intent;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_1
    const/16 v28, 0x0

    #@db
    .restart local v28    # "componentSpecified":Z
    goto/16 :goto_0

    #@dd
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v35    # "ephemeralIntent":Landroid/content/Intent;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v52    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v46, v14

    #@df
    .line 737
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_2

    #@e0
    .line 748
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v41    # "parent":Landroid/content/pm/UserInfo;
    .restart local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .restart local v50    # "token":J
    .restart local v53    # "userManager":Landroid/os/UserManager;
    :cond_3
    const/16 v44, 0x1

    #@e2
    goto :goto_1

    #@e3
    .line 746
    :cond_4
    const/16 v44, 0x0

    #@e5
    goto :goto_1

    #@e6
    .line 749
    .end local v41    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v4

    #@e7
    .line 750
    invoke-static/range {v50 .. v51}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@ea
    .line 749
    throw v4

    #@eb
    .line 771
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v44    # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v50    # "token":J
    .end local v52    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v53    # "userManager":Landroid/os/UserManager;
    .restart local v26    # "options":Landroid/app/ActivityOptions;
    .restart local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@ee
    move-result v23

    #@ef
    .line 772
    .local v23, "realCallingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@f2
    move-result v24

    #@f3
    .line 774
    .local v24, "realCallingUid":I
    if-ltz p2, :cond_d

    #@f5
    .line 775
    const/16 v20, -0x1

    #@f7
    .line 784
    .local v20, "callingPid":I
    :goto_3
    if-eqz v30, :cond_6

    #@f9
    move-object/from16 v0, v30

    #@fb
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@fd
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@100
    move-result v4

    #@101
    if-eqz v4, :cond_f

    #@103
    .line 785
    :cond_6
    move-object/from16 v0, p0

    #@105
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@107
    iget-object v0, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    #@109
    move-object/from16 v48, v0

    #@10b
    .line 789
    .local v48, "stack":Lcom/android/server/am/ActivityStack;
    :goto_4
    if-eqz p14, :cond_10

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@111
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@113
    move-object/from16 v0, p14

    #@115
    invoke-virtual {v4, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@118
    move-result v4

    #@119
    if-eqz v4, :cond_10

    #@11b
    const/4 v4, 0x1

    #@11c
    :goto_5
    move-object/from16 v0, v48

    #@11e
    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@120
    .line 793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@123
    move-result-wide v42

    #@124
    .line 795
    .local v42, "origId":J
    if-eqz v32, :cond_11

    #@126
    .line 796
    move-object/from16 v0, v32

    #@128
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12a
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    #@12c
    and-int/lit8 v4, v4, 0x2

    #@12e
    if-eqz v4, :cond_11

    #@130
    .line 800
    move-object/from16 v0, v32

    #@132
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@134
    move-object/from16 v0, v32

    #@136
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@138
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@13a
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v4

    #@13e
    if-eqz v4, :cond_1b

    #@140
    .line 801
    move-object/from16 v0, p0

    #@142
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@144
    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@146
    move-object/from16 v36, v0

    #@148
    .line 802
    .local v36, "heavy":Lcom/android/server/am/ProcessRecord;
    if-eqz v36, :cond_7

    #@14a
    move-object/from16 v0, v36

    #@14c
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@14e
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@150
    move-object/from16 v0, v32

    #@152
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@154
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@156
    if-ne v4, v5, :cond_12

    #@158
    .line 803
    move-object/from16 v0, v36

    #@15a
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@15c
    move-object/from16 v0, v32

    #@15e
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    #@160
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@163
    move-result v4

    #@164
    if-eqz v4, :cond_12

    #@166
    :cond_7
    move-object/from16 v13, v32

    #@168
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v13, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    #@16a
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    #@16c
    .line 858
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_6
    const/4 v4, 0x1

    #@16d
    :try_start_3
    new-array v0, v4, [Lcom/android/server/am/ActivityRecord;

    #@16f
    move-object/from16 v29, v0

    #@171
    .local v29, "outRecord":[Lcom/android/server/am/ActivityRecord;
    move-object/from16 v8, p0

    #@173
    move-object/from16 v9, p1

    #@175
    move-object/from16 v10, p4

    #@177
    move-object/from16 v11, v35

    #@179
    move-object/from16 v12, p5

    #@17b
    move-object/from16 v15, p6

    #@17d
    move-object/from16 v16, p7

    #@17f
    move-object/from16 v17, p8

    #@181
    move-object/from16 v18, p9

    #@183
    move/from16 v19, p10

    #@185
    move/from16 v21, p2

    #@187
    move-object/from16 v22, p3

    #@189
    move/from16 v25, p11

    #@18b
    move/from16 v27, p16

    #@18d
    move-object/from16 v31, p19

    #@18f
    .line 859
    invoke-virtual/range {v8 .. v31}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@192
    move-result v47

    #@193
    .line 866
    .local v47, "res":I
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@196
    .line 868
    move-object/from16 v0, v48

    #@198
    iget-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@19a
    if-eqz v4, :cond_9

    #@19c
    .line 873
    move-object/from16 v0, p0

    #@19e
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1a0
    const-string/jumbo v5, "android.permission.CHANGE_CONFIGURATION"

    #@1a3
    .line 874
    const-string/jumbo v6, "updateConfiguration()"

    #@1a6
    .line 873
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@1a9
    .line 875
    const/4 v4, 0x0

    #@1aa
    move-object/from16 v0, v48

    #@1ac
    iput-boolean v4, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@1ae
    .line 878
    move-object/from16 v0, p0

    #@1b0
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1b2
    const/4 v5, 0x0

    #@1b3
    const/4 v6, 0x0

    #@1b4
    move-object/from16 v0, p14

    #@1b6
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    #@1b9
    .line 881
    :cond_9
    if-eqz p13, :cond_c

    #@1bb
    .line 882
    move/from16 v0, v47

    #@1bd
    move-object/from16 v1, p13

    #@1bf
    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    #@1c1
    .line 883
    if-nez v47, :cond_b

    #@1c3
    .line 884
    move-object/from16 v0, p0

    #@1c5
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c7
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@1c9
    move-object/from16 v0, p13

    #@1cb
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    #@1ce
    .line 887
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    #@1d0
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1d2
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    #@1d5
    .line 890
    :goto_8
    :try_start_5
    move-object/from16 v0, p13

    #@1d7
    iget v4, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@1d9
    const/4 v5, 0x2

    #@1da
    if-eq v4, v5, :cond_a

    #@1dc
    .line 891
    move-object/from16 v0, p13

    #@1de
    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@1e0
    if-eqz v4, :cond_18

    #@1e2
    .line 892
    :cond_a
    move-object/from16 v0, p13

    #@1e4
    iget v4, v0, Landroid/app/IActivityManager$WaitResult;->result:I

    #@1e6
    const/4 v5, 0x2

    #@1e7
    if-ne v4, v5, :cond_b

    #@1e9
    .line 893
    const/16 v47, 0x2

    #@1eb
    .line 896
    :cond_b
    const/4 v4, 0x2

    #@1ec
    move/from16 v0, v47

    #@1ee
    if-ne v0, v4, :cond_c

    #@1f0
    .line 897
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@1f3
    move-result-object v45

    #@1f4
    .line 898
    .local v45, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v45

    #@1f6
    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@1f8
    if-eqz v4, :cond_19

    #@1fa
    move-object/from16 v0, v45

    #@1fc
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1fe
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@200
    if-ne v4, v5, :cond_19

    #@202
    .line 899
    const/4 v4, 0x0

    #@203
    move-object/from16 v0, p13

    #@205
    iput-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@207
    .line 900
    new-instance v4, Landroid/content/ComponentName;

    #@209
    move-object/from16 v0, v45

    #@20b
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@20d
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@20f
    move-object/from16 v0, v45

    #@211
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@213
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@215
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@218
    move-object/from16 v0, p13

    #@21a
    iput-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@21c
    .line 901
    const-wide/16 v4, 0x0

    #@21e
    move-object/from16 v0, p13

    #@220
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    #@222
    .line 902
    const-wide/16 v4, 0x0

    #@224
    move-object/from16 v0, p13

    #@226
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@228
    .line 916
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    #@22a
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@22c
    if-eqz v4, :cond_1a

    #@22e
    .line 917
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Lcom/android/server/am/ActivityStarter;->mReusedActivity:Lcom/android/server/am/ActivityRecord;

    #@232
    move-object/from16 v39, v0

    #@234
    .line 918
    .local v39, "launchedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_9
    move-object/from16 v0, p0

    #@236
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@238
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    #@23a
    move/from16 v0, v47

    #@23c
    move-object/from16 v1, v39

    #@23e
    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    #@241
    monitor-exit v54

    #@242
    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@245
    .line 919
    return v47

    #@246
    .line 776
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p1    # "caller":Landroid/app/IApplicationThread;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    :cond_d
    if-nez p1, :cond_e

    #@248
    .line 777
    move/from16 v20, v23

    #@24a
    .line 778
    .restart local v20    # "callingPid":I
    move/from16 p2, v24

    #@24c
    goto/16 :goto_3

    #@24e
    .line 780
    .end local v20    # "callingPid":I
    :cond_e
    const/16 p2, -0x1

    #@250
    const/16 v20, -0x1

    #@252
    .restart local v20    # "callingPid":I
    goto/16 :goto_3

    #@254
    .line 787
    :cond_f
    :try_start_6
    move-object/from16 v0, v30

    #@256
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    #@258
    move-object/from16 v48, v0

    #@25a
    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_4

    #@25c
    .line 789
    :cond_10
    const/4 v4, 0x0

    #@25d
    goto/16 :goto_5

    #@25f
    .restart local v42    # "origId":J
    :cond_11
    move-object/from16 v13, v32

    #@261
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    #@263
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    #@265
    .line 797
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    #@267
    .line 804
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_12
    move/from16 v7, p2

    #@269
    .line 805
    .local v7, "appCallingUid":I
    if-eqz p1, :cond_13

    #@26b
    .line 806
    move-object/from16 v0, p0

    #@26d
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@26f
    move-object/from16 v0, p1

    #@271
    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    #@274
    move-result-object v33

    #@275
    .line 807
    .local v33, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v33, :cond_16

    #@277
    .line 808
    move-object/from16 v0, v33

    #@279
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@27b
    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@27d
    .line 818
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_13
    move-object/from16 v0, p0

    #@27f
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@281
    .line 819
    const-string/jumbo v6, "android"

    #@284
    .line 820
    const/4 v5, 0x1

    #@285
    new-array v12, v5, [Landroid/content/Intent;

    #@287
    const/4 v5, 0x0

    #@288
    aput-object v38, v12, v5

    #@28a
    .line 821
    const/4 v5, 0x1

    #@28b
    new-array v13, v5, [Ljava/lang/String;

    #@28d
    const/4 v5, 0x0

    #@28e
    aput-object p5, v13, v5

    #@290
    .line 819
    const/4 v5, 0x2

    #@291
    .line 820
    const/4 v9, 0x0

    #@292
    const/4 v10, 0x0

    #@293
    const/4 v11, 0x0

    #@294
    .line 821
    const/high16 v14, 0x50000000

    #@296
    .line 822
    const/4 v15, 0x0

    #@297
    move/from16 v8, p17

    #@299
    .line 818
    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    #@29c
    move-result-object v49

    #@29d
    .line 824
    .local v49, "target":Landroid/content/IIntentSender;
    new-instance v40, Landroid/content/Intent;

    #@29f
    invoke-direct/range {v40 .. v40}, Landroid/content/Intent;-><init>()V

    #@2a2
    .line 825
    .local v40, "newIntent":Landroid/content/Intent;
    if-ltz p10, :cond_14

    #@2a4
    .line 827
    const-string/jumbo v4, "has_result"

    #@2a7
    const/4 v5, 0x1

    #@2a8
    move-object/from16 v0, v40

    #@2aa
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@2ad
    .line 829
    :cond_14
    const-string/jumbo v4, "intent"

    #@2b0
    .line 830
    new-instance v5, Landroid/content/IntentSender;

    #@2b2
    move-object/from16 v0, v49

    #@2b4
    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    #@2b7
    .line 829
    move-object/from16 v0, v40

    #@2b9
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@2bc
    .line 831
    move-object/from16 v0, v36

    #@2be
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2c0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@2c3
    move-result v4

    #@2c4
    if-lez v4, :cond_15

    #@2c6
    .line 832
    move-object/from16 v0, v36

    #@2c8
    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@2ca
    const/4 v5, 0x0

    #@2cb
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2ce
    move-result-object v37

    #@2cf
    check-cast v37, Lcom/android/server/am/ActivityRecord;

    #@2d1
    .line 833
    .local v37, "hist":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v4, "cur_app"

    #@2d4
    .line 834
    move-object/from16 v0, v37

    #@2d6
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2d8
    .line 833
    move-object/from16 v0, v40

    #@2da
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2dd
    .line 835
    const-string/jumbo v4, "cur_task"

    #@2e0
    .line 836
    move-object/from16 v0, v37

    #@2e2
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2e4
    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2e6
    .line 835
    move-object/from16 v0, v40

    #@2e8
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@2eb
    .line 838
    .end local v37    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_15
    const-string/jumbo v4, "new_app"

    #@2ee
    .line 839
    move-object/from16 v0, v32

    #@2f0
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2f2
    .line 838
    move-object/from16 v0, v40

    #@2f4
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@2f7
    .line 840
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getFlags()I

    #@2fa
    move-result v4

    #@2fb
    move-object/from16 v0, v40

    #@2fd
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@300
    .line 841
    const-string/jumbo v4, "android"

    #@303
    .line 842
    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@305
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@308
    move-result-object v5

    #@309
    .line 841
    move-object/from16 v0, v40

    #@30b
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@30e
    .line 843
    move-object/from16 p4, v40

    #@310
    .line 844
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    #@312
    .line 845
    .local p5, "resolvedType":Ljava/lang/String;
    const/16 p1, 0x0

    #@314
    .line 846
    .local p1, "caller":Landroid/app/IApplicationThread;
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@317
    move-result p2

    #@318
    .line 847
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@31b
    move-result v20

    #@31c
    .line 848
    const/16 v28, 0x1

    #@31e
    .line 849
    move-object/from16 v0, p0

    #@320
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@322
    const/4 v5, 0x0

    #@323
    move-object/from16 v0, v40

    #@325
    move/from16 v1, p17

    #@327
    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    #@32a
    move-result-object v14

    #@32b
    .line 850
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_17

    #@32d
    :try_start_8
    iget-object v13, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@32f
    .line 851
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_a
    if-eqz v13, :cond_8

    #@331
    .line 852
    :try_start_9
    move-object/from16 v0, p0

    #@333
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@335
    move/from16 v0, p17

    #@337
    invoke-virtual {v4, v13, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    #@33a
    move-result-object v13

    #@33b
    goto/16 :goto_6

    #@33d
    .line 810
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_16
    :try_start_a
    sget-object v4, Lcom/android/server/am/ActivityStarter;->TAG:Ljava/lang/String;

    #@33f
    new-instance v5, Ljava/lang/StringBuilder;

    #@341
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@344
    const-string/jumbo v6, "Unable to find app for caller "

    #@347
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v5

    #@34b
    move-object/from16 v0, p1

    #@34d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v5

    #@351
    .line 811
    const-string/jumbo v6, " (pid="

    #@354
    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v5

    #@358
    move/from16 v0, v20

    #@35a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v5

    #@35e
    .line 811
    const-string/jumbo v6, ") when starting: "

    #@361
    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v5

    #@365
    .line 812
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->toString()Ljava/lang/String;

    #@368
    move-result-object v6

    #@369
    .line 810
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36c
    move-result-object v5

    #@36d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@370
    move-result-object v5

    #@371
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@374
    .line 813
    invoke-static/range {v26 .. v26}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@377
    .line 814
    const/4 v4, -0x4

    #@378
    monitor-exit v54

    #@379
    .line 765
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@37c
    .line 814
    return v4

    #@37d
    .line 850
    .end local v33    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .end local v38    # "intent":Landroid/content/Intent;
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v40    # "newIntent":Landroid/content/Intent;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .restart local p4    # "intent":Landroid/content/Intent;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_17
    const/4 v13, 0x0

    #@37e
    goto :goto_a

    #@37f
    .line 891
    .end local v7    # "appCallingUid":I
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :cond_18
    :try_start_b
    move-object/from16 v0, p13

    #@381
    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@383
    if-nez v4, :cond_a

    #@385
    goto/16 :goto_7

    #@387
    .line 904
    .restart local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@38a
    move-result-wide v4

    #@38b
    move-object/from16 v0, p13

    #@38d
    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    #@38f
    .line 905
    move-object/from16 v0, p0

    #@391
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@393
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    #@395
    move-object/from16 v0, p13

    #@397
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    #@39a
    .line 908
    :goto_b
    :try_start_c
    move-object/from16 v0, p0

    #@39c
    iget-object v4, v0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@39e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    #@3a1
    .line 911
    :goto_c
    :try_start_d
    move-object/from16 v0, p13

    #@3a3
    iget-boolean v4, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    #@3a5
    if-nez v4, :cond_c

    #@3a7
    move-object/from16 v0, p13

    #@3a9
    iget-object v4, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    #@3ab
    if-nez v4, :cond_c

    #@3ad
    goto :goto_b

    #@3ae
    .line 917
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/4 v4, 0x0

    #@3af
    aget-object v39, v29, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    #@3b1
    .restart local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_9

    #@3b3
    .line 765
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v39    # "launchedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v42    # "origId":J
    .end local v47    # "res":I
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_1
    move-exception v4

    #@3b4
    move-object/from16 v13, v32

    #@3b6
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    #@3b8
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    #@3ba
    .end local v38    # "intent":Landroid/content/Intent;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_d
    monitor-exit v54

    #@3bb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@3be
    throw v4

    #@3bf
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v7    # "appCallingUid":I
    .restart local v20    # "callingPid":I
    .restart local v23    # "realCallingPid":I
    .restart local v24    # "realCallingUid":I
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "newIntent":Landroid/content/Intent;
    .restart local v42    # "origId":J
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v49    # "target":Landroid/content/IIntentSender;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :catchall_2
    move-exception v4

    #@3c0
    move-object/from16 v13, v32

    #@3c2
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    #@3c4
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_d

    #@3c5
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_3
    move-exception v4

    #@3c6
    move-object/from16 v13, v32

    #@3c8
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_d

    #@3c9
    .end local v7    # "appCallingUid":I
    .end local v36    # "heavy":Lcom/android/server/am/ProcessRecord;
    .end local v40    # "newIntent":Landroid/content/Intent;
    .end local v49    # "target":Landroid/content/IIntentSender;
    .end local p1    # "caller":Landroid/app/IApplicationThread;
    .end local p5    # "resolvedType":Ljava/lang/String;
    :catchall_4
    move-exception v4

    #@3ca
    goto :goto_d

    #@3cb
    .line 909
    .restart local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .restart local v45    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v47    # "res":I
    :catch_0
    move-exception v34

    #@3cc
    .local v34, "e":Ljava/lang/InterruptedException;
    goto :goto_c

    #@3cd
    .line 888
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v45    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v34

    #@3ce
    .restart local v34    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_8

    #@3d0
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v29    # "outRecord":[Lcom/android/server/am/ActivityRecord;
    .end local v34    # "e":Ljava/lang/InterruptedException;
    .end local v47    # "res":I
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "intent":Landroid/content/Intent;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p5, "resolvedType":Ljava/lang/String;
    :cond_1b
    move-object/from16 v13, v32

    #@3d2
    .end local v32    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v14, v46

    #@3d4
    .end local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 p4, v38

    #@3d6
    .end local v38    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_6

    #@3d8
    .end local v13    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "callingPid":I
    .end local v23    # "realCallingPid":I
    .end local v24    # "realCallingUid":I
    .end local v26    # "options":Landroid/app/ActivityOptions;
    .end local v30    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .end local v42    # "origId":J
    .end local v48    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v38    # "intent":Landroid/content/Intent;
    :cond_1c
    move-object/from16 v46, v14

    #@3da
    .end local v14    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v46    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_2
.end method

.method startConfirmCredentialIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 706
    const v1, 0x10804000

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6
    .line 709
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    #@9
    move-result-object v0

    #@a
    .line 710
    .local v0, "options":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    #@f
    move-result-object v1

    #@10
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    #@17
    .line 711
    iget-object v1, p0, Lcom/android/server/am/ActivityStarter;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@1e
    move-result-object v2

    #@1f
    .line 712
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    #@21
    .line 711
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    #@24
    .line 705
    return-void
.end method

.method startHomeActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 640
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    const/4 v2, 0x1

    #@5
    move-object/from16 v0, p3

    #@7
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@a
    .line 641
    const/4 v2, 0x0

    #@b
    const/4 v4, 0x0

    #@c
    .line 642
    const/4 v5, 0x0

    #@d
    const/4 v7, 0x0

    #@e
    const/4 v8, 0x0

    #@f
    .line 643
    const/4 v9, 0x0

    #@10
    const/4 v10, 0x0

    #@11
    const/4 v11, 0x0

    #@12
    .line 644
    const/4 v12, 0x0

    #@13
    const/4 v13, 0x0

    #@14
    const/4 v14, 0x0

    #@15
    const/4 v15, 0x0

    #@16
    .line 645
    const/16 v16, 0x0

    #@18
    const/16 v17, 0x0

    #@1a
    const/16 v18, 0x0

    #@1c
    const/16 v19, 0x0

    #@1e
    .line 646
    const/16 v20, 0x0

    #@20
    const/16 v21, 0x0

    #@22
    const/16 v22, 0x0

    #@24
    .line 647
    const/16 v23, 0x0

    #@26
    const/16 v24, 0x0

    #@28
    move-object/from16 v1, p0

    #@2a
    move-object/from16 v3, p1

    #@2c
    move-object/from16 v6, p2

    #@2e
    .line 641
    invoke-virtual/range {v1 .. v24}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I

    #@31
    .line 648
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@35
    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 652
    move-object/from16 v0, p0

    #@3b
    iget-object v1, v0, Lcom/android/server/am/ActivityStarter;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    #@40
    .line 639
    :cond_0
    return-void
.end method
