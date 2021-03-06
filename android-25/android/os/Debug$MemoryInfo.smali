.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$MemoryInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEAP_DALVIK:I = 0x1

.field public static final HEAP_NATIVE:I = 0x2

.field public static final HEAP_UNKNOWN:I = 0x0

.field public static final NUM_CATEGORIES:I = 0x8

.field public static final NUM_DVK_STATS:I = 0x8

.field public static final NUM_OTHER_STATS:I = 0x11

.field public static final OTHER_APK:I = 0x8

.field public static final OTHER_ART:I = 0xc

.field public static final OTHER_ASHMEM:I = 0x3

.field public static final OTHER_CURSOR:I = 0x2

.field public static final OTHER_DALVIK_ACCOUNTING:I = 0x14

.field public static final OTHER_DALVIK_CODE_CACHE:I = 0x15

.field public static final OTHER_DALVIK_INDIRECT_REFERENCE_TABLE:I = 0x18

.field public static final OTHER_DALVIK_LARGE:I = 0x12

.field public static final OTHER_DALVIK_LINEARALLOC:I = 0x13

.field public static final OTHER_DALVIK_NON_MOVING:I = 0x17

.field public static final OTHER_DALVIK_NORMAL:I = 0x11

.field public static final OTHER_DALVIK_OTHER:I = 0x0

.field public static final OTHER_DALVIK_ZYGOTE:I = 0x16

.field public static final OTHER_DEX:I = 0xa

.field public static final OTHER_GL:I = 0xf

.field public static final OTHER_GL_DEV:I = 0x4

.field public static final OTHER_GRAPHICS:I = 0xe

.field public static final OTHER_JAR:I = 0x7

.field public static final OTHER_OAT:I = 0xb

.field public static final OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final OTHER_SO:I = 0x6

.field public static final OTHER_STACK:I = 0x1

.field public static final OTHER_TTF:I = 0x9

.field public static final OTHER_UNKNOWN_DEV:I = 0x5

.field public static final OTHER_UNKNOWN_MAP:I = 0xd

.field public static final offsetPrivateClean:I = 0x4

.field public static final offsetPrivateDirty:I = 0x2

.field public static final offsetPss:I = 0x0

.field public static final offsetSharedClean:I = 0x5

.field public static final offsetSharedDirty:I = 0x3

.field public static final offsetSwappablePss:I = 0x1

.field public static final offsetSwappedOut:I = 0x6

.field public static final offsetSwappedOutPss:I = 0x7


# instance fields
.field public dalvikPrivateClean:I

.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedClean:I

.field public dalvikSharedDirty:I

.field public dalvikSwappablePss:I

.field public dalvikSwappedOut:I

.field public dalvikSwappedOutPss:I

.field public hasSwappedOutPss:Z

.field public nativePrivateClean:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedClean:I

.field public nativeSharedDirty:I

.field public nativeSwappablePss:I

.field public nativeSwappedOut:I

.field public nativeSwappedOutPss:I

.field public otherPrivateClean:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedClean:I

.field public otherSharedDirty:I

.field private otherStats:[I

.field public otherSwappablePss:I

.field public otherSwappedOut:I

.field public otherSwappedOutPss:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 746
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    #@2
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    const/16 v0, 0xc8

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@9
    .line 269
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 267
    const/16 v0, 0xc8

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@9
    .line 756
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@c
    .line 755
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getOtherLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "which"    # I

    #@0
    .prologue
    .line 389
    packed-switch p0, :pswitch_data_0

    #@3
    .line 415
    const-string/jumbo v0, "????"

    #@6
    return-object v0

    #@7
    .line 390
    :pswitch_0
    const-string/jumbo v0, "Dalvik Other"

    #@a
    return-object v0

    #@b
    .line 391
    :pswitch_1
    const-string/jumbo v0, "Stack"

    #@e
    return-object v0

    #@f
    .line 392
    :pswitch_2
    const-string/jumbo v0, "Cursor"

    #@12
    return-object v0

    #@13
    .line 393
    :pswitch_3
    const-string/jumbo v0, "Ashmem"

    #@16
    return-object v0

    #@17
    .line 394
    :pswitch_4
    const-string/jumbo v0, "Gfx dev"

    #@1a
    return-object v0

    #@1b
    .line 395
    :pswitch_5
    const-string/jumbo v0, "Other dev"

    #@1e
    return-object v0

    #@1f
    .line 396
    :pswitch_6
    const-string/jumbo v0, ".so mmap"

    #@22
    return-object v0

    #@23
    .line 397
    :pswitch_7
    const-string/jumbo v0, ".jar mmap"

    #@26
    return-object v0

    #@27
    .line 398
    :pswitch_8
    const-string/jumbo v0, ".apk mmap"

    #@2a
    return-object v0

    #@2b
    .line 399
    :pswitch_9
    const-string/jumbo v0, ".ttf mmap"

    #@2e
    return-object v0

    #@2f
    .line 400
    :pswitch_a
    const-string/jumbo v0, ".dex mmap"

    #@32
    return-object v0

    #@33
    .line 401
    :pswitch_b
    const-string/jumbo v0, ".oat mmap"

    #@36
    return-object v0

    #@37
    .line 402
    :pswitch_c
    const-string/jumbo v0, ".art mmap"

    #@3a
    return-object v0

    #@3b
    .line 403
    :pswitch_d
    const-string/jumbo v0, "Other mmap"

    #@3e
    return-object v0

    #@3f
    .line 404
    :pswitch_e
    const-string/jumbo v0, "EGL mtrack"

    #@42
    return-object v0

    #@43
    .line 405
    :pswitch_f
    const-string/jumbo v0, "GL mtrack"

    #@46
    return-object v0

    #@47
    .line 406
    :pswitch_10
    const-string/jumbo v0, "Other mtrack"

    #@4a
    return-object v0

    #@4b
    .line 407
    :pswitch_11
    const-string/jumbo v0, ".Heap"

    #@4e
    return-object v0

    #@4f
    .line 408
    :pswitch_12
    const-string/jumbo v0, ".LOS"

    #@52
    return-object v0

    #@53
    .line 409
    :pswitch_13
    const-string/jumbo v0, ".LinearAlloc"

    #@56
    return-object v0

    #@57
    .line 410
    :pswitch_14
    const-string/jumbo v0, ".GC"

    #@5a
    return-object v0

    #@5b
    .line 411
    :pswitch_15
    const-string/jumbo v0, ".JITCache"

    #@5e
    return-object v0

    #@5f
    .line 412
    :pswitch_16
    const-string/jumbo v0, ".Zygote"

    #@62
    return-object v0

    #@63
    .line 413
    :pswitch_17
    const-string/jumbo v0, ".NonMoving"

    #@66
    return-object v0

    #@67
    .line 414
    :pswitch_18
    const-string/jumbo v0, ".IndirectRef"

    #@6a
    return-object v0

    #@6b
    .line 389
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 689
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "statName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 501
    const-string/jumbo v0, "summary.java-heap"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 503
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 501
    :cond_0
    const-string/jumbo v0, "summary.native-heap"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 505
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 501
    :cond_1
    const-string/jumbo v0, "summary.code"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 507
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@30
    move-result v0

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 501
    :cond_2
    const-string/jumbo v0, "summary.stack"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_3

    #@3f
    .line 509
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@42
    move-result v0

    #@43
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 501
    :cond_3
    const-string/jumbo v0, "summary.graphics"

    #@4b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 511
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@54
    move-result v0

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 501
    :cond_4
    const-string/jumbo v0, "summary.private-other"

    #@5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_5

    #@63
    .line 513
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@66
    move-result v0

    #@67
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    return-object v0

    #@6c
    .line 501
    :cond_5
    const-string/jumbo v0, "summary.system"

    #@6f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_6

    #@75
    .line 515
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@78
    move-result v0

    #@79
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    return-object v0

    #@7e
    .line 501
    :cond_6
    const-string/jumbo v0, "summary.total-pss"

    #@81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_7

    #@87
    .line 517
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@8a
    move-result v0

    #@8b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    return-object v0

    #@90
    .line 501
    :cond_7
    const-string/jumbo v0, "summary.total-swap"

    #@93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_8

    #@99
    .line 519
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@9c
    move-result v0

    #@9d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    return-object v0

    #@a2
    .line 521
    :cond_8
    const/4 v0, 0x0

    #@a3
    return-object v0
.end method

.method public getMemoryStats()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 532
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 533
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "summary.java-heap"

    #@8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 534
    const-string/jumbo v1, "summary.native-heap"

    #@16
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@19
    move-result v2

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 535
    const-string/jumbo v1, "summary.code"

    #@24
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@27
    move-result v2

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 536
    const-string/jumbo v1, "summary.stack"

    #@32
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@35
    move-result v2

    #@36
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 537
    const-string/jumbo v1, "summary.graphics"

    #@40
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@43
    move-result v2

    #@44
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 538
    const-string/jumbo v1, "summary.private-other"

    #@4e
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@51
    move-result v2

    #@52
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 539
    const-string/jumbo v1, "summary.system"

    #@5c
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@5f
    move-result v2

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 540
    const-string/jumbo v1, "summary.total-pss"

    #@6a
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@6d
    move-result v2

    #@6e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 541
    const-string/jumbo v1, "summary.total-swap"

    #@78
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@7b
    move-result v2

    #@7c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 542
    return-object v0
.end method

.method public getOtherPrivate(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getOtherPrivateClean(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 364
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x4

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherPrivateDirty(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherPss(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x0

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSharedClean(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 374
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x5

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSharedDirty(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x3

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSwappablePss(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSwappedOut(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x6

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSwappedOutPss(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 384
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x8

    #@4
    add-int/lit8 v1, v1, 0x7

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getSummaryCode()I
    .locals 2

    #@0
    .prologue
    .line 581
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@4
    move-result v0

    #@5
    .line 582
    const/4 v1, 0x7

    #@6
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@9
    move-result v1

    #@a
    .line 581
    add-int/2addr v0, v1

    #@b
    .line 583
    const/16 v1, 0x8

    #@d
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@10
    move-result v1

    #@11
    .line 581
    add-int/2addr v0, v1

    #@12
    .line 584
    const/16 v1, 0x9

    #@14
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@17
    move-result v1

    #@18
    .line 581
    add-int/2addr v0, v1

    #@19
    .line 585
    const/16 v1, 0xa

    #@1b
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@1e
    move-result v1

    #@1f
    .line 581
    add-int/2addr v0, v1

    #@20
    .line 586
    const/16 v1, 0xb

    #@22
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@25
    move-result v1

    #@26
    .line 581
    add-int/2addr v0, v1

    #@27
    return v0
.end method

.method public getSummaryGraphics()I
    .locals 2

    #@0
    .prologue
    .line 614
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@4
    move-result v0

    #@5
    .line 615
    const/16 v1, 0xe

    #@7
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@a
    move-result v1

    #@b
    .line 614
    add-int/2addr v0, v1

    #@c
    .line 616
    const/16 v1, 0xf

    #@e
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@11
    move-result v1

    #@12
    .line 614
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public getSummaryJavaHeap()I
    .locals 2

    #@0
    .prologue
    .line 560
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@2
    const/16 v1, 0xc

    #@4
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getSummaryNativeHeap()I
    .locals 1

    #@0
    .prologue
    .line 572
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@2
    return v0
.end method

.method public getSummaryPrivateOther()I
    .locals 2

    #@0
    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@3
    move-result v0

    #@4
    .line 626
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@7
    move-result v1

    #@8
    .line 625
    add-int/2addr v0, v1

    #@9
    .line 627
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@c
    move-result v1

    #@d
    .line 625
    sub-int/2addr v0, v1

    #@e
    .line 628
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@11
    move-result v1

    #@12
    .line 625
    sub-int/2addr v0, v1

    #@13
    .line 629
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@16
    move-result v1

    #@17
    .line 625
    sub-int/2addr v0, v1

    #@18
    .line 630
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@1b
    move-result v1

    #@1c
    .line 625
    sub-int/2addr v0, v1

    #@1d
    .line 631
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@20
    move-result v1

    #@21
    .line 625
    sub-int/2addr v0, v1

    #@22
    return v0
.end method

.method public getSummaryStack()I
    .locals 1

    #@0
    .prologue
    .line 599
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getSummarySystem()I
    .locals 2

    #@0
    .prologue
    .line 641
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@3
    move-result v0

    #@4
    .line 642
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@7
    move-result v1

    #@8
    .line 641
    sub-int/2addr v0, v1

    #@9
    .line 643
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@c
    move-result v1

    #@d
    .line 641
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method public getSummaryTotalPss()I
    .locals 1

    #@0
    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSummaryTotalSwap()I
    .locals 1

    #@0
    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSummaryTotalSwapPss()I
    .locals 1

    #@0
    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPrivateClean()I
    .locals 2

    #@0
    .prologue
    .line 314
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalPrivateDirty()I
    .locals 2

    #@0
    .prologue
    .line 300
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalPss()I
    .locals 2

    #@0
    .prologue
    .line 276
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@7
    add-int/2addr v0, v1

    #@8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getTotalSharedClean()I
    .locals 2

    #@0
    .prologue
    .line 321
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSharedDirty()I
    .locals 2

    #@0
    .prologue
    .line 307
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSwappablePss()I
    .locals 2

    #@0
    .prologue
    .line 293
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSwappedOut()I
    .locals 2

    #@0
    .prologue
    .line 329
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSwappedOutPss()I
    .locals 2

    #@0
    .prologue
    .line 337
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalUss()I
    .locals 2

    #@0
    .prologue
    .line 283
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    .line 284
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@7
    .line 283
    add-int/2addr v0, v1

    #@8
    .line 284
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@a
    .line 283
    add-int/2addr v0, v1

    #@b
    .line 285
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@d
    .line 283
    add-int/2addr v0, v1

    #@e
    .line 285
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@10
    .line 283
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public hasSwappedOutPss()Z
    .locals 1

    #@0
    .prologue
    .line 685
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@2
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@7
    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v1

    #@b
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@d
    .line 722
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v1

    #@11
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@13
    .line 723
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@19
    .line 724
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@1f
    .line 725
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v1

    #@23
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@25
    .line 726
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v1

    #@29
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@2b
    .line 727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@31
    .line 728
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v1

    #@35
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@37
    .line 729
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3a
    move-result v1

    #@3b
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@3d
    .line 730
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v1

    #@41
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@43
    .line 731
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@46
    move-result v1

    #@47
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@49
    .line 732
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4c
    move-result v1

    #@4d
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@4f
    .line 733
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@52
    move-result v1

    #@53
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@55
    .line 734
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@58
    move-result v1

    #@59
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@5b
    .line 735
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5e
    move-result v1

    #@5f
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@61
    .line 736
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@64
    move-result v1

    #@65
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@67
    .line 737
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6a
    move-result v1

    #@6b
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@6d
    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v1

    #@71
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@73
    .line 739
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@76
    move-result v1

    #@77
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@79
    .line 740
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7c
    move-result v1

    #@7d
    iput v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@7f
    .line 741
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@82
    move-result v1

    #@83
    if-eqz v1, :cond_0

    #@85
    const/4 v0, 0x1

    #@86
    :cond_0
    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@88
    .line 742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v0

    #@8c
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    #@8e
    .line 743
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@91
    move-result-object v0

    #@92
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@94
    .line 719
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 693
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 694
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 695
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 696
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 697
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 698
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 699
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 700
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 701
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 702
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 703
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 704
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 705
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 706
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 707
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 708
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 709
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 710
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 711
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 712
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 713
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 714
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    #@6b
    if-eqz v0, :cond_0

    #@6d
    const/4 v0, 0x1

    #@6e
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    .line 715
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    #@73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@76
    .line 716
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@78
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@7b
    .line 692
    return-void

    #@7c
    .line 714
    :cond_0
    const/4 v0, 0x0

    #@7d
    goto :goto_0
.end method
