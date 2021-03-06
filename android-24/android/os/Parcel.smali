.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$1;
    }
.end annotation


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_SERVICE_SPECIFIC:I = -0x8

.field private static final EX_TRANSACTION_FAILED:I = -0x81

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_DOUBLEARRAY:I = 0x1c

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SIZE:I = 0x1a

.field private static final VAL_SIZEF:I = 0x1b

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:J

.field private mNativeSize:J

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 206
    new-array v0, v1, [Landroid/os/Parcel;

    #@3
    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@5
    .line 207
    new-array v0, v1, [Landroid/os/Parcel;

    #@7
    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@9
    .line 303
    new-instance v0, Landroid/os/Parcel$1;

    #@b
    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    #@e
    .line 302
    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 2625
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@17
    .line 188
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 2652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2657
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    #@6
    .line 2652
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2677
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2678
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2679
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@e
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    #@11
    .line 2680
    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@14
    .line 2682
    :cond_0
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@16
    .line 2676
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 2

    #@0
    .prologue
    .line 2671
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2672
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@6
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)J

    #@9
    move-result-wide v0

    #@a
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@d
    .line 2670
    :cond_0
    return-void
.end method

.method public static native getGlobalAllocCount()J
.end method

.method public static native getGlobalAllocSize()J
.end method

.method private init(J)V
    .locals 3
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 2661
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2662
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    #@8
    .line 2663
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@b
    .line 2660
    :goto_0
    return-void

    #@c
    .line 2665
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@12
    .line 2666
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@15
    goto :goto_0
.end method

.method private static native nativeAppendFrom(JJII)J
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
.end method

.method private static native nativeDataCapacity(J)I
.end method

.method private static native nativeDataPosition(J)I
.end method

.method private static native nativeDataSize(J)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(J)J
.end method

.method private static native nativeGetBlobAshmemSize(J)J
.end method

.method private static native nativeHasFileDescriptors(J)Z
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativePushAllowFds(JZ)Z
.end method

.method private static native nativeReadBlob(J)[B
.end method

.method private static native nativeReadDouble(J)D
.end method

.method private static native nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(J)F
.end method

.method private static native nativeReadInt(J)I
.end method

.method private static native nativeReadLong(J)J
.end method

.method private static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(J)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(JZ)V
.end method

.method private static native nativeSetDataCapacity(JI)V
.end method

.method private static native nativeSetDataPosition(JI)V
.end method

.method private static native nativeSetDataSize(JI)J
.end method

.method private static native nativeUnmarshall(J[BII)J
.end method

.method private static native nativeWriteBlob(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
.end method

.method private static native nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J
.end method

.method private static native nativeWriteFloat(JF)V
.end method

.method private static native nativeWriteInt(JI)V
.end method

.method private static native nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native nativeWriteLong(JJ)V
.end method

.method private static native nativeWriteString(JLjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(JLandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 6

    #@0
    .prologue
    .line 316
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@2
    .line 317
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    #@3
    .line 319
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 320
    :try_start_0
    aget-object v1, v2, v0

    #@9
    .line 321
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    #@b
    .line 322
    const/4 v3, 0x0

    #@c
    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 326
    return-object v1

    #@10
    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2

    #@14
    .line 330
    new-instance v3, Landroid/os/Parcel;

    #@16
    const-wide/16 v4, 0x0

    #@18
    invoke-direct {v3, v4, v5}, Landroid/os/Parcel;-><init>(J)V

    #@1b
    return-object v3

    #@1c
    .line 317
    :catchall_0
    move-exception v3

    #@1d
    monitor-exit v2

    #@1e
    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 1
    .param p0, "obj"    # I

    #@0
    .prologue
    .line 2629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected static final obtain(J)Landroid/os/Parcel;
    .locals 4
    .param p0, "obj"    # J

    #@0
    .prologue
    .line 2634
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@2
    .line 2635
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    #@3
    .line 2637
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 2638
    :try_start_0
    aget-object v1, v2, v0

    #@9
    .line 2639
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    #@b
    .line 2640
    const/4 v3, 0x0

    #@c
    aput-object v3, v2, v0

    #@e
    .line 2644
    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;->init(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 2645
    return-object v1

    #@13
    .line 2637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2

    #@17
    .line 2649
    new-instance v3, Landroid/os/Parcel;

    #@19
    invoke-direct {v3, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    #@1c
    return-object v3

    #@1d
    .line 2635
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v2

    #@1f
    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2787
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@3
    .line 2788
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 2790
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    #@9
    .line 2787
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2786
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2777
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2778
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 2780
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 2781
    add-int/lit8 p2, p2, -0x1

    #@b
    goto :goto_0

    #@c
    .line 2776
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private final readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .locals 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2584
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 2585
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    .line 2589
    return-object v6

    #@8
    .line 2592
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@b
    move-result-object v5

    #@c
    .line 2593
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@e
    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@11
    .line 2595
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Landroid/os/Parcel$2;

    #@13
    invoke-direct {v4, p0, v0, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    #@16
    .line 2609
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v6

    #@1d
    .line 2614
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    #@1e
    .line 2615
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@20
    new-instance v7, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v8, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 2617
    const-string/jumbo v8, ")"

    #@33
    .line 2615
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v6

    #@3f
    .line 2610
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    #@40
    .line 2611
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@42
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "Parcelable encountered IOException reading a Serializable object (name = "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 2613
    const-string/jumbo v8, ")"

    #@55
    .line 2611
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@60
    throw v6
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2796
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2797
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    .line 2798
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2800
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@d
    .line 2801
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2795
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 5
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2807
    :goto_0
    if-lez p2, :cond_1

    #@4
    .line 2808
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 2809
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@b
    move-result v4

    #@c
    if-ne v4, v2, :cond_0

    #@e
    move v1, v2

    #@f
    .line 2811
    .local v1, "value":Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@12
    .line 2812
    add-int/lit8 p2, p2, -0x1

    #@14
    goto :goto_0

    #@15
    .end local v1    # "value":Z
    :cond_0
    move v1, v3

    #@16
    .line 2809
    goto :goto_1

    #@17
    .line 2806
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method private updateNativeSize(J)V
    .locals 5
    .param p1, "newNativeSize"    # J

    #@0
    .prologue
    .line 619
    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 620
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v1, p1, v2

    #@9
    if-lez v1, :cond_0

    #@b
    .line 621
    const-wide/32 p1, 0x7fffffff

    #@e
    .line 623
    :cond_0
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    #@10
    cmp-long v1, p1, v2

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 624
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    #@16
    sub-long v2, p1, v2

    #@18
    long-to-int v0, v2

    #@19
    .line 625
    .local v0, "delta":I
    if-lez v0, :cond_2

    #@1b
    .line 626
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@22
    .line 630
    :goto_0
    iput-wide p1, p0, Landroid/os/Parcel;->mNativeSize:J

    #@24
    .line 618
    .end local v0    # "delta":I
    :cond_1
    return-void

    #@25
    .line 628
    .restart local v0    # "delta":I
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@28
    move-result-object v1

    #@29
    neg-int v2, v0

    #@2a
    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@2d
    goto :goto_0
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 462
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)J

    #@9
    move-result-wide v0

    #@a
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@d
    .line 461
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    #@0
    .prologue
    .line 1172
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1173
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    .line 1174
    new-array v2, v0, [Landroid/os/IBinder;

    #@8
    .line 1175
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1176
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v1

    #@11
    .line 1175
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1178
    :cond_0
    return-object v2

    #@15
    .line 1180
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2187
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2188
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2189
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2191
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2192
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_1

    #@f
    .line 2193
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2194
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2196
    :cond_1
    return-object v1
.end method

.method public final createBooleanArray()[Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 884
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 888
    .local v0, "N":I
    if-ltz v0, :cond_2

    #@7
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@a
    move-result v3

    #@b
    shr-int/lit8 v3, v3, 0x2

    #@d
    if-gt v0, v3, :cond_2

    #@f
    .line 889
    new-array v2, v0, [Z

    #@11
    .line 890
    .local v2, "val":[Z
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 891
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    const/4 v3, 0x1

    #@1b
    :goto_1
    aput-boolean v3, v2, v1

    #@1d
    .line 890
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    :cond_0
    move v3, v4

    #@21
    .line 891
    goto :goto_1

    #@22
    .line 893
    :cond_1
    return-object v2

    #@23
    .line 895
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_2
    const/4 v3, 0x0

    #@24
    return-object v3
.end method

.method public final createByteArray()[B
    .locals 2

    #@0
    .prologue
    .line 1936
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    #@0
    .prologue
    .line 923
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 924
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 925
    new-array v2, v0, [C

    #@10
    .line 926
    .local v2, "val":[C
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 927
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    int-to-char v3, v3

    #@18
    aput-char v3, v2, v1

    #@1a
    .line 926
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 929
    :cond_0
    return-object v2

    #@1e
    .line 931
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_1
    const/4 v3, 0x0

    #@1f
    return-object v3
.end method

.method public final createDoubleArray()[D
    .locals 6

    #@0
    .prologue
    .line 1069
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1071
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x3

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 1072
    new-array v2, v0, [D

    #@10
    .line 1073
    .local v2, "val":[D
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1074
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@16
    move-result-wide v4

    #@17
    aput-wide v4, v2, v1

    #@19
    .line 1073
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1076
    :cond_0
    return-object v2

    #@1d
    .line 1078
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createFloatArray()[F
    .locals 4

    #@0
    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1034
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 1035
    new-array v2, v0, [F

    #@10
    .line 1036
    .local v2, "val":[F
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1037
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@16
    move-result v3

    #@17
    aput v3, v2, v1

    #@19
    .line 1036
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1039
    :cond_0
    return-object v2

    #@1d
    .line 1041
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createIntArray()[I
    .locals 4

    #@0
    .prologue
    .line 959
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 960
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 961
    new-array v2, v0, [I

    #@10
    .line 962
    .local v2, "val":[I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 963
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    aput v3, v2, v1

    #@19
    .line 962
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 965
    :cond_0
    return-object v2

    #@1d
    .line 967
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createLongArray()[J
    .locals 6

    #@0
    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 997
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x3

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 998
    new-array v2, v0, [J

    #@10
    .line 999
    .local v2, "val":[J
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1000
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@16
    move-result-wide v4

    #@17
    aput-wide v4, v2, v1

    #@19
    .line 999
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1002
    :cond_0
    return-object v2

    #@1d
    .line 1004
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .locals 4

    #@0
    .prologue
    .line 1774
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1775
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 1776
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 1778
    :cond_0
    new-array v1, v0, [Ljava/io/FileDescriptor;

    #@a
    .line 1779
    .local v1, "f":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@d
    .line 1780
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v1, v2

    #@13
    .line 1779
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1782
    :cond_1
    return-object v1
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1107
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    .line 1108
    new-array v2, v0, [Ljava/lang/String;

    #@8
    .line 1109
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1110
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v1

    #@11
    .line 1109
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1112
    :cond_0
    return-object v2

    #@15
    .line 1114
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2163
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2164
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2165
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2167
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2168
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_1

    #@f
    .line 2169
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2170
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2172
    :cond_1
    return-object v1
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2260
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2261
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2262
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 2264
    :cond_0
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .line 2265
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@f
    .line 2266
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 2267
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v2, v1

    #@1b
    .line 2265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2270
    :cond_2
    return-object v2
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 2100
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 2101
    .local v0, "N":I
    if-gez v0, :cond_0

    #@7
    .line 2102
    return-object v3

    #@8
    .line 2104
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2105
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_2

    #@f
    .line 2106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 2107
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 2111
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2109
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_1

    #@23
    .line 2113
    :cond_2
    return-object v1
.end method

.method public final dataAvail()I
    .locals 2

    #@0
    .prologue
    .line 377
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataCapacity()I
    .locals 2

    #@0
    .prologue
    .line 395
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataPosition()I
    .locals 2

    #@0
    .prologue
    .line 385
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataSize()I
    .locals 2

    #@0
    .prologue
    .line 369
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 482
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    #@5
    .line 481
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2693
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    #@3
    .line 2687
    return-void
.end method

.method public getBlobAshmemSize()J
    .locals 2

    #@0
    .prologue
    .line 2820
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetBlobAshmemSize(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final hasFileDescriptors()Z
    .locals 2

    #@0
    .prologue
    .line 469
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final marshall()[B
    .locals 2

    #@0
    .prologue
    .line 451
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    #@0
    .prologue
    .line 431
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2046
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2047
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2048
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2050
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    #@a
    .line 2051
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    #@d
    .line 2052
    return-object v1
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2030
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2031
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2032
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2034
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2035
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    #@10
    .line 2036
    return-object v1
.end method

.method public readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2748
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2749
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2750
    return-void

    #@7
    .line 2752
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    #@a
    .line 2747
    return-void
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2714
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2716
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2717
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2721
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 2722
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2724
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    #@13
    .line 2707
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2734
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2735
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2738
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2739
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2740
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2728
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2763
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 2764
    .local v2, "size":I
    if-gez v2, :cond_0

    #@6
    .line 2765
    const/4 v4, 0x0

    #@7
    return-object v4

    #@8
    .line 2767
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    #@a
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@d
    .line 2768
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@10
    .line 2769
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 2770
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    #@17
    .line 2768
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2772
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .param p1, "val"    # [Landroid/os/IBinder;

    #@0
    .prologue
    .line 1185
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1186
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1187
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1188
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1187
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1191
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1184
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2233
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2234
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 2235
    .local v1, "N":I
    const/4 v2, 0x0

    #@9
    .line 2236
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    if-ge v2, v1, :cond_0

    #@d
    .line 2237
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2236
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2239
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    #@19
    .line 2240
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 2239
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 2242
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    #@25
    .line 2243
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@28
    .line 2242
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 2232
    :cond_2
    return-void
.end method

.method public final readBlob()[B
    .locals 2

    #@0
    .prologue
    .line 1959
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 900
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 901
    .local v0, "N":I
    array-length v2, p1

    #@6
    if-ne v0, v2, :cond_1

    #@8
    .line 902
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@b
    .line 903
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_1
    aput-boolean v2, p1, v1

    #@14
    .line 902
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    :cond_0
    move v2, v3

    #@18
    .line 903
    goto :goto_1

    #@19
    .line 906
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "bad array lengths"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 899
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1862
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1872
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 1873
    .local v1, "length":I
    if-gez v1, :cond_0

    #@7
    .line 1875
    return-object v2

    #@8
    .line 1878
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    #@d
    .line 1879
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    #@f
    .line 1880
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@12
    .line 1882
    :cond_1
    return-object v0
.end method

.method public final readByte()B
    .locals 1

    #@0
    .prologue
    .line 1815
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    int-to-byte v0, v0

    #@7
    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1945
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 1946
    .local v0, "ba":[B
    array-length v1, v0

    #@6
    array-length v2, p1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1947
    array-length v1, v0

    #@a
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 1943
    return-void

    #@e
    .line 1949
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "bad array lengths"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .param p1, "val"    # [C

    #@0
    .prologue
    .line 936
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 937
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 938
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 939
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    int-to-char v2, v2

    #@f
    aput-char v2, p1, v1

    #@11
    .line 938
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 942
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v3, "bad array lengths"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 935
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1745
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/CharSequence;

    #@8
    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    .line 1988
    const/4 v0, 0x0

    #@1
    .line 1990
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 1991
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 1993
    new-array v0, v2, [Ljava/lang/CharSequence;

    #@9
    .line 1995
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1997
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v0, v1

    #@12
    .line 1995
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 2001
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCharSequenceList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2009
    const/4 v0, 0x0

    #@1
    .line 2011
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 2012
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 2013
    new-instance v0, Ljava/util/ArrayList;

    #@9
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 2015
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    .line 2016
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2015
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2020
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2477
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v1, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 2479
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 2480
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/os/Parcelable;

    #@d
    return-object v1

    #@e
    .line 2482
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/Parcelable;

    #@14
    return-object v1
.end method

.method public final readDouble()D
    .locals 2

    #@0
    .prologue
    .line 1730
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    #@0
    .prologue
    .line 1083
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1084
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1085
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1086
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@d
    move-result-wide v2

    #@e
    aput-wide v2, p1, v1

    #@10
    .line 1085
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1089
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1082
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    #@0
    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    #@3
    move-result v0

    #@4
    .line 1634
    .local v0, "code":I
    if-eqz v0, :cond_0

    #@6
    .line 1635
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1636
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    #@d
    .line 1632
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1681
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1699
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown exception code: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1700
    const-string/jumbo v2, " msg "

    #@18
    .line 1699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1683
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    #@2a
    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1685
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    #@30
    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1687
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 1689
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    #@3c
    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 1691
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@42
    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 1693
    :pswitch_5
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    #@48
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    #@4b
    throw v0

    #@4c
    .line 1695
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4e
    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 1697
    :pswitch_7
    new-instance v0, Landroid/os/ServiceSpecificException;

    #@54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v1

    #@58
    invoke-direct {v0, v1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 1681
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1654
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 1655
    .local v0, "code":I
    const/16 v2, -0x80

    #@7
    if-ne v0, v2, :cond_1

    #@9
    .line 1656
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    .line 1657
    .local v1, "headerSize":I
    if-nez v1, :cond_0

    #@f
    .line 1658
    const-string/jumbo v2, "Parcel"

    #@12
    const-string/jumbo v3, "Unexpected zero-sized Parcel reply header."

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1668
    :goto_0
    return v4

    #@19
    .line 1664
    :cond_0
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    #@1c
    goto :goto_0

    #@1d
    .line 1670
    .end local v1    # "headerSize":I
    :cond_1
    return v0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1759
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@3
    invoke-static {v2, v3}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    #@6
    move-result-object v0

    #@7
    .line 1760
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    #@9
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@b
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    :cond_0
    return-object v1
.end method

.method public final readFloat()F
    .locals 2

    #@0
    .prologue
    .line 1722
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .param p1, "val"    # [F

    #@0
    .prologue
    .line 1046
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1047
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1048
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1049
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@d
    move-result v2

    #@e
    aput v2, p1, v1

    #@10
    .line 1048
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1052
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1045
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1847
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1848
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 1849
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 1851
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    #@a
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    #@d
    .line 1852
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    #@10
    .line 1853
    return-object v1
.end method

.method public final readInt()I
    .locals 2

    #@0
    .prologue
    .line 1707
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .param p1, "val"    # [I

    #@0
    .prologue
    .line 972
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 973
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 974
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 975
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    aput v2, p1, v1

    #@10
    .line 974
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 978
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 971
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1834
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1835
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    #@7
    .line 1833
    return-void
.end method

.method public final readLong()J
    .locals 2

    #@0
    .prologue
    .line 1714
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    #@0
    .prologue
    .line 1009
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1010
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1011
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1012
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@d
    move-result-wide v2

    #@e
    aput-wide v2, p1, v1

    #@10
    .line 1011
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1015
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1008
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1825
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    #@7
    .line 1823
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2698
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2699
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 2700
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2701
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2702
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2697
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2461
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    #@4
    move-result-object v1

    #@5
    .line 2462
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v1, :cond_0

    #@7
    .line 2463
    return-object v2

    #@8
    .line 2465
    :cond_0
    instance-of v2, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    #@a
    if-eqz v2, :cond_1

    #@c
    move-object v0, v1

    #@d
    .line 2467
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    #@f
    .line 2468
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/os/Parcelable;

    #@15
    return-object v2

    #@16
    .line 2470
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_1
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/os/Parcelable;

    #@1c
    return-object v2
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2563
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2564
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2565
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 2567
    :cond_0
    new-array v2, v0, [Landroid/os/Parcelable;

    #@a
    .line 2568
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@d
    .line 2569
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v1

    #@13
    .line 2568
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2571
    :cond_1
    return-object v2
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 14
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2487
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    .line 2488
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    #@7
    .line 2489
    return-object v10

    #@8
    .line 2492
    :cond_0
    sget-object v11, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@a
    monitor-enter v11

    #@b
    .line 2493
    :try_start_0
    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@d
    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/util/HashMap;

    #@13
    .line 2494
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    if-nez v6, :cond_1

    #@15
    .line 2495
    new-instance v6, Ljava/util/HashMap;

    #@17
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 2496
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v10, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 2498
    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 2499
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_7

    #@27
    .line 2504
    if-nez p1, :cond_2

    #@29
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@30
    move-result-object v9

    #@31
    .line 2507
    .local v9, "parcelableClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v10, 0x0

    #@32
    invoke-static {v7, v10, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@35
    move-result-object v8

    #@36
    .line 2509
    .local v8, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Landroid/os/Parcelable;

    #@38
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3b
    move-result v10

    #@3c
    if-nez v10, :cond_3

    #@3e
    .line 2510
    new-instance v10, Landroid/os/BadParcelableException;

    #@40
    const-string/jumbo v12, "Parcelable protocol requires that the class implements Parcelable"

    #@43
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@46
    throw v10
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 2528
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v3

    #@48
    .line 2529
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string/jumbo v10, "Parcel"

    #@4b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v13, "Illegal access when unmarshalling: "

    #@53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v12

    #@57
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 2530
    new-instance v10, Landroid/os/BadParcelableException;

    #@64
    .line 2531
    new-instance v12, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v13, "IllegalAccessException when unmarshalling: "

    #@6c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v12

    #@74
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    .line 2530
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    .line 2492
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :catchall_0
    move-exception v10

    #@7d
    monitor-exit v11

    #@7e
    throw v10

    #@7f
    .line 2504
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :cond_2
    move-object v9, p1

    #@80
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    #@81
    .line 2513
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_3
    const-string/jumbo v10, "CREATOR"

    #@84
    invoke-virtual {v8, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@87
    move-result-object v5

    #@88
    .line 2514
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    #@8b
    move-result v10

    #@8c
    and-int/lit8 v10, v10, 0x8

    #@8e
    if-nez v10, :cond_4

    #@90
    .line 2515
    new-instance v10, Landroid/os/BadParcelableException;

    #@92
    new-instance v12, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v13, "Parcelable protocol requires the CREATOR object to be static on class "

    #@9a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v12

    #@a2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v12

    #@a6
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v10
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 2533
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    #@ab
    .line 2534
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string/jumbo v10, "Parcel"

    #@ae
    new-instance v12, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v13, "Class not found when unmarshalling: "

    #@b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v12

    #@ba
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v12

    #@c2
    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c5
    .line 2535
    new-instance v10, Landroid/os/BadParcelableException;

    #@c7
    .line 2536
    new-instance v12, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v13, "ClassNotFoundException when unmarshalling: "

    #@cf
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v12

    #@d3
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v12

    #@d7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v12

    #@db
    .line 2535
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@de
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@df
    .line 2518
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@e2
    move-result-object v1

    #@e3
    .line 2519
    .local v1, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Landroid/os/Parcelable$Creator;

    #@e5
    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@e8
    move-result v10

    #@e9
    if-nez v10, :cond_5

    #@eb
    .line 2522
    new-instance v10, Landroid/os/BadParcelableException;

    #@ed
    new-instance v12, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    #@f5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v12

    #@fd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v12

    #@101
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@104
    throw v10
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@105
    .line 2538
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_2
    move-exception v4

    #@106
    .line 2539
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    :try_start_6
    new-instance v10, Landroid/os/BadParcelableException;

    #@108
    new-instance v12, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    #@110
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v12

    #@114
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v12

    #@118
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v12

    #@11c
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@11f
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@120
    .line 2526
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_5
    const/4 v10, 0x0

    #@121
    :try_start_7
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    move-result-object v0

    #@125
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@127
    .line 2543
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_6

    #@129
    .line 2544
    :try_start_8
    new-instance v10, Landroid/os/BadParcelableException;

    #@12b
    new-instance v12, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v13, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    #@133
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v12

    #@137
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v12

    #@13b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v12

    #@13f
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@142
    throw v10

    #@143
    .line 2549
    :cond_6
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@146
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    monitor-exit v11

    #@147
    .line 2553
    return-object v0
.end method

.method public final readPersistableBundle()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 1891
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1901
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 1902
    .local v1, "length":I
    if-gez v1, :cond_0

    #@7
    .line 1904
    return-object v2

    #@8
    .line 1907
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    #@a
    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    #@d
    .line 1908
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_1

    #@f
    .line 1909
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@12
    .line 1911
    :cond_1
    return-object v0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    #@0
    .prologue
    .line 1765
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "val"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 1792
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1793
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1794
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1795
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1794
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1798
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1791
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 1

    #@0
    .prologue
    .line 2580
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1918
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 1919
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 1920
    .local v0, "height":I
    new-instance v2, Landroid/util/Size;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    #@d
    return-object v2
.end method

.method public final readSizeF()Landroid/util/SizeF;
    .locals 3

    #@0
    .prologue
    .line 1927
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v1

    #@4
    .line 1928
    .local v1, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@7
    move-result v0

    #@8
    .line 1929
    .local v0, "height":F
    new-instance v2, Landroid/util/SizeF;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    #@d
    return-object v2
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2062
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2063
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2064
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2066
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    #@a
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    #@d
    .line 2067
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    #@10
    .line 2068
    return-object v1
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 3

    #@0
    .prologue
    .line 2077
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2078
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2079
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2081
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@a
    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@d
    .line 2082
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    #@10
    .line 2083
    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1737
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1119
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1120
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1121
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1122
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1121
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1125
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1118
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1967
    const/4 v0, 0x0

    #@1
    .line 1969
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 1970
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 1972
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 1974
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1976
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v0, v1

    #@12
    .line 1974
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1980
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2209
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2210
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 2211
    .local v1, "N":I
    const/4 v2, 0x0

    #@9
    .line 2212
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    if-ge v2, v1, :cond_0

    #@d
    .line 2213
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2212
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2215
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    #@19
    .line 2216
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 2215
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 2218
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    #@25
    .line 2219
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@28
    .line 2218
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 2208
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    .line 1752
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2274
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2275
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_1

    #@7
    .line 2276
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 2277
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2278
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    aput-object v2, p1, v1

    #@16
    .line 2276
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2280
    :cond_0
    const/4 v2, 0x0

    #@1a
    aput-object v2, p1, v1

    #@1c
    goto :goto_1

    #@1d
    .line 2284
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v3, "bad array lengths"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 2273
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2294
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 2129
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v0

    #@5
    .line 2130
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    .line 2131
    .local v1, "N":I
    const/4 v2, 0x0

    #@a
    .line 2132
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@c
    if-ge v2, v1, :cond_1

    #@e
    .line 2133
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2134
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 2132
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2136
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_1

    #@22
    .line 2139
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    #@24
    .line 2140
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 2141
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 2139
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_2

    #@34
    .line 2143
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_3

    #@38
    .line 2146
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    #@3a
    .line 2147
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3d
    .line 2146
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_4

    #@40
    .line 2128
    :cond_4
    return-void
.end method

.method public final readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2309
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2310
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 2312
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2348
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 2350
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    #@8
    .line 2442
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x4

    #@e
    .line 2443
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    .line 2444
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Parcel "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, ": Unmarshalling unknown type code "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, " at offset "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 2443
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 2352
    .end local v0    # "off":I
    :pswitch_0
    const/4 v2, 0x0

    #@3f
    return-object v2

    #@40
    .line 2355
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    return-object v2

    #@45
    .line 2358
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v2

    #@49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    return-object v2

    #@4e
    .line 2361
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@51
    move-result-object v2

    #@52
    return-object v2

    #@53
    .line 2364
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 2367
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v2

    #@5c
    int-to-short v2, v2

    #@5d
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@60
    move-result-object v2

    #@61
    return-object v2

    #@62
    .line 2370
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@65
    move-result-wide v2

    #@66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@69
    move-result-object v2

    #@6a
    return-object v2

    #@6b
    .line 2373
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@6e
    move-result v2

    #@6f
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@72
    move-result-object v2

    #@73
    return-object v2

    #@74
    .line 2376
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@77
    move-result-wide v2

    #@78
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7b
    move-result-object v2

    #@7c
    return-object v2

    #@7d
    .line 2379
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v3

    #@81
    if-ne v3, v2, :cond_0

    #@83
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@86
    move-result-object v2

    #@87
    return-object v2

    #@88
    :cond_0
    const/4 v2, 0x0

    #@89
    goto :goto_0

    #@8a
    .line 2382
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    .line 2385
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@92
    move-result-object v2

    #@93
    return-object v2

    #@94
    .line 2388
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    #@97
    move-result-object v2

    #@98
    return-object v2

    #@99
    .line 2391
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@9c
    move-result-object v2

    #@9d
    return-object v2

    #@9e
    .line 2394
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    return-object v2

    #@a3
    .line 2397
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    #@a6
    move-result-object v2

    #@a7
    return-object v2

    #@a8
    .line 2400
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ab
    move-result-object v2

    #@ac
    return-object v2

    #@ad
    .line 2403
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    #@b0
    move-result-object v2

    #@b1
    return-object v2

    #@b2
    .line 2406
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    #@b5
    move-result-object v2

    #@b6
    return-object v2

    #@b7
    .line 2409
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    #@ba
    move-result-object v2

    #@bb
    return-object v2

    #@bc
    .line 2412
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@bf
    move-result v2

    #@c0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@c3
    move-result-object v2

    #@c4
    return-object v2

    #@c5
    .line 2415
    :pswitch_15
    invoke-direct {p0, p1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    #@c8
    move-result-object v2

    #@c9
    return-object v2

    #@ca
    .line 2418
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@cd
    move-result-object v2

    #@ce
    return-object v2

    #@cf
    .line 2421
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    #@d2
    move-result-object v2

    #@d3
    return-object v2

    #@d4
    .line 2424
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    #@d7
    move-result-object v2

    #@d8
    return-object v2

    #@d9
    .line 2427
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@dc
    move-result-object v2

    #@dd
    return-object v2

    #@de
    .line 2430
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    #@e1
    move-result-object v2

    #@e2
    return-object v2

    #@e3
    .line 2433
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    #@e6
    move-result-object v2

    #@e7
    return-object v2

    #@e8
    .line 2436
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    #@eb
    move-result-object v2

    #@ec
    return-object v2

    #@ed
    .line 2439
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    #@f0
    move-result-object v2

    #@f1
    return-object v2

    #@f2
    .line 2350
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public final recycle()V
    .locals 4

    #@0
    .prologue
    .line 339
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    #@3
    .line 342
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 343
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@9
    .line 349
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    #@a
    .line 350
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 351
    :try_start_0
    aget-object v2, v1, v0

    #@10
    if-nez v2, :cond_1

    #@12
    .line 352
    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 353
    return-void

    #@16
    .line 345
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@1a
    .line 346
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@1c
    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_0

    #@1d
    .line 350
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    :cond_2
    monitor-exit v1

    #@21
    .line 337
    return-void

    #@22
    .line 349
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v1

    #@24
    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 2
    .param p1, "lastValue"    # Z

    #@0
    .prologue
    .line 436
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    #@5
    .line 435
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 426
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    #@5
    .line 425
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 415
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    #@5
    .line 414
    return-void
.end method

.method public final setDataSize(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 406
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 405
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 458
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 457
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 822
    if-nez p1, :cond_0

    #@2
    .line 823
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 824
    return-void

    #@7
    .line 826
    :cond_0
    array-length v0, p1

    #@8
    .line 827
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .line 828
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 829
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 830
    aget-object v2, p1, v1

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@13
    .line 831
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 821
    :cond_1
    return-void
.end method

.method public writeArrayMap(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 735
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    #@3
    .line 734
    return-void
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 706
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 707
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 708
    return-void

    #@7
    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v0

    #@b
    .line 713
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 720
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 722
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 723
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@21
    .line 720
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 705
    :cond_1
    return-void
.end method

.method public writeArraySet(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 746
    .local p1, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v1

    #@6
    .line 747
    .local v1, "size":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 748
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@c
    .line 749
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@13
    .line 748
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_1

    #@16
    .line 746
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 745
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    return-void
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    #@0
    .prologue
    .line 1130
    if-eqz p1, :cond_0

    #@2
    .line 1131
    array-length v0, p1

    #@3
    .line 1132
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1133
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1134
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 1133
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1137
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1129
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1266
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    #@2
    .line 1267
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1268
    return-void

    #@7
    .line 1270
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 1271
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 1272
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1273
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 1274
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/IBinder;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1275
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1265
    :cond_1
    return-void
.end method

.method public final writeBlob([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 518
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeBlob([BII)V

    #@7
    .line 517
    return-void

    #@8
    :cond_0
    move v0, v1

    #@9
    .line 518
    goto :goto_0
.end method

.method public final writeBlob([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 531
    if-nez p1, :cond_0

    #@2
    .line 532
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 533
    return-void

    #@7
    .line 535
    :cond_0
    array-length v0, p1

    #@8
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@b
    .line 536
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@d
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    #@10
    .line 530
    return-void
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    #@0
    .prologue
    .line 872
    if-eqz p1, :cond_1

    #@2
    .line 873
    array-length v0, p1

    #@3
    .line 874
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 875
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 876
    aget-boolean v2, p1, v1

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 875
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 876
    :cond_0
    const/4 v2, 0x0

    #@15
    goto :goto_1

    #@16
    .line 879
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 871
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 758
    if-nez p1, :cond_0

    #@2
    .line 759
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 760
    return-void

    #@7
    .line 763
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@b
    .line 757
    return-void
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    #@0
    .prologue
    .line 666
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@3
    .line 665
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 491
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@7
    .line 490
    return-void

    #@8
    :cond_0
    move v0, v1

    #@9
    .line 491
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 502
    if-nez p1, :cond_0

    #@2
    .line 503
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 504
    return-void

    #@7
    .line 506
    :cond_0
    array-length v0, p1

    #@8
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@b
    .line 507
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@d
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    #@10
    .line 501
    return-void
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    #@0
    .prologue
    .line 911
    if-eqz p1, :cond_0

    #@2
    .line 912
    array-length v0, p1

    #@3
    .line 913
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 914
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 915
    aget-char v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 914
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 918
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 910
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 585
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@4
    .line 584
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1145
    if-eqz p1, :cond_0

    #@2
    .line 1146
    array-length v0, p1

    #@3
    .line 1147
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1148
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1149
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@e
    .line 1148
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1152
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1144
    :cond_1
    return-void
.end method

.method public final writeCharSequenceList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1160
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    #@2
    .line 1161
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1162
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1163
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 1164
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/CharSequence;

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@15
    .line 1163
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1167
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@19
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1159
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D

    #@0
    .prologue
    .line 568
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)V

    #@5
    .line 567
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    #@0
    .prologue
    .line 1057
    if-eqz p1, :cond_0

    #@2
    .line 1058
    array-length v0, p1

    #@3
    .line 1059
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1060
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1061
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    #@e
    .line 1060
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1064
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1056
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 1556
    const/4 v0, 0x0

    #@1
    .line 1557
    .local v0, "code":I
    instance-of v1, p1, Ljava/lang/SecurityException;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1558
    const/4 v0, -0x1

    #@6
    .line 1574
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1575
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@c
    .line 1576
    if-nez v0, :cond_9

    #@e
    .line 1577
    instance-of v1, p1, Ljava/lang/RuntimeException;

    #@10
    if-eqz v1, :cond_8

    #@12
    .line 1578
    check-cast p1, Ljava/lang/RuntimeException;

    #@14
    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    #@15
    .line 1559
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v1, p1, Landroid/os/BadParcelableException;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1560
    const/4 v0, -0x2

    #@1a
    goto :goto_0

    #@1b
    .line 1561
    :cond_2
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1562
    const/4 v0, -0x3

    #@20
    goto :goto_0

    #@21
    .line 1563
    :cond_3
    instance-of v1, p1, Ljava/lang/NullPointerException;

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 1564
    const/4 v0, -0x4

    #@26
    goto :goto_0

    #@27
    .line 1565
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    #@29
    if-eqz v1, :cond_5

    #@2b
    .line 1566
    const/4 v0, -0x5

    #@2c
    goto :goto_0

    #@2d
    .line 1567
    :cond_5
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    #@2f
    if-eqz v1, :cond_6

    #@31
    .line 1568
    const/4 v0, -0x6

    #@32
    goto :goto_0

    #@33
    .line 1569
    :cond_6
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    #@35
    if-eqz v1, :cond_7

    #@37
    .line 1570
    const/4 v0, -0x7

    #@38
    goto :goto_0

    #@39
    .line 1571
    :cond_7
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 1572
    const/4 v0, -0x8

    #@3e
    goto :goto_0

    #@3f
    .line 1580
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    #@41
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@44
    throw v1

    #@45
    .line 1582
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4c
    .line 1583
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    #@4e
    if-eqz v1, :cond_a

    #@50
    .line 1584
    check-cast p1, Landroid/os/ServiceSpecificException;

    #@52
    .end local p1    # "e":Ljava/lang/Exception;
    iget v1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    #@54
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 1555
    :cond_a
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 615
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 614
    return-void
.end method

.method public final writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    #@0
    .prologue
    .line 560
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)V

    #@5
    .line 559
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    #@0
    .prologue
    .line 1020
    if-eqz p1, :cond_0

    #@2
    .line 1021
    array-length v0, p1

    #@3
    .line 1022
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1023
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1024
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    #@e
    .line 1023
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1027
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1019
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    #@0
    .prologue
    .line 544
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)V

    #@5
    .line 543
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    #@0
    .prologue
    .line 947
    if-eqz p1, :cond_0

    #@2
    .line 948
    array-length v0, p1

    #@3
    .line 949
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 950
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 951
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 950
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 954
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 946
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 478
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    #@5
    .line 477
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    #@0
    .prologue
    .line 803
    if-nez p1, :cond_0

    #@2
    .line 804
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 805
    return-void

    #@7
    .line 807
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 808
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 809
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 810
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 811
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@18
    .line 812
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 802
    :cond_1
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "val"    # J

    #@0
    .prologue
    .line 552
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)V

    #@5
    .line 551
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    #@0
    .prologue
    .line 983
    if-eqz p1, :cond_0

    #@2
    .line 984
    array-length v0, p1

    #@3
    .line 985
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 986
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 987
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@e
    .line 986
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 990
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 982
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    #@0
    .prologue
    .line 681
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    #@3
    .line 680
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 689
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 690
    const/4 v3, -0x1

    #@3
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 691
    return-void

    #@7
    .line 693
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    .line 694
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 695
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 696
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@29
    .line 697
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@30
    goto :goto_0

    #@31
    .line 688
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public final writeNoException()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1609
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1610
    const/16 v2, -0x80

    #@9
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1611
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v1

    #@10
    .line 1612
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1613
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    #@16
    .line 1614
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@19
    move-result v0

    #@1a
    .line 1615
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@1d
    .line 1616
    sub-int v2, v0, v1

    #@1f
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1617
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@25
    .line 1595
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_0
    return-void

    #@26
    .line 1619
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1490
    if-nez p1, :cond_0

    #@3
    .line 1491
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 1492
    return-void

    #@7
    .line 1494
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    #@a
    .line 1495
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@d
    .line 1489
    return-void
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2331
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_0

    #@2
    .line 2332
    array-length v0, p1

    #@3
    .line 2333
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 2334
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 2335
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@e
    .line 2334
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2338
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2330
    :cond_1
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1501
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1499
    return-void
.end method

.method public final writePersistableBundle(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 771
    if-nez p1, :cond_0

    #@2
    .line 772
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 773
    return-void

    #@7
    .line 776
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@b
    .line 770
    return-void
.end method

.method public final writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 640
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    #@5
    .line 639
    return-void
.end method

.method public final writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "value"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 650
    if-eqz p1, :cond_0

    #@2
    .line 651
    array-length v0, p1

    #@3
    .line 652
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 653
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 654
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    #@e
    .line 653
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 657
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 649
    :cond_1
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .param p1, "s"    # Ljava/io/Serializable;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1511
    if-nez p1, :cond_0

    #@3
    .line 1512
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 1513
    return-void

    #@7
    .line 1515
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1516
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1518
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@14
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@17
    .line 1520
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    #@19
    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1c
    .line 1521
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1f
    .line 1522
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    #@22
    .line 1524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1510
    return-void

    #@2a
    .line 1525
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    #@2b
    .line 1526
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Parcelable encountered IOException writing serializable object (name = "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1528
    const-string/jumbo v6, ")"

    #@40
    .line 1526
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    throw v4
.end method

.method public final writeSize(Landroid/util/Size;)V
    .locals 1
    .param p1, "val"    # Landroid/util/Size;

    #@0
    .prologue
    .line 784
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 785
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 783
    return-void
.end method

.method public final writeSizeF(Landroid/util/SizeF;)V
    .locals 1
    .param p1, "val"    # Landroid/util/SizeF;

    #@0
    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@7
    .line 794
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@e
    .line 792
    return-void
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 842
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 843
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 844
    return-void

    #@7
    .line 846
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v0

    #@b
    .line 847
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 848
    const/4 v1, 0x0

    #@f
    .line 849
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 850
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 851
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@1f
    .line 852
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 841
    :cond_1
    return-void
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    #@0
    .prologue
    .line 857
    if-nez p1, :cond_0

    #@2
    .line 858
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 859
    return-void

    #@7
    .line 861
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@a
    move-result v0

    #@b
    .line 862
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 863
    const/4 v1, 0x0

    #@f
    .line 864
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@11
    .line 865
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 866
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :goto_1
    int-to-byte v2, v2

    #@20
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@23
    .line 867
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 866
    :cond_1
    const/4 v2, 0x0

    #@27
    goto :goto_1

    #@28
    .line 856
    :cond_2
    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 576
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    #@5
    .line 575
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1094
    if-eqz p1, :cond_0

    #@2
    .line 1095
    array-length v0, p1

    #@3
    .line 1096
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1097
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1098
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 1097
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1101
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1093
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1241
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 1242
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1243
    return-void

    #@7
    .line 1245
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 1246
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 1247
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1248
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 1249
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1250
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1240
    :cond_1
    return-void
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "val"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 593
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    #@5
    .line 592
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 601
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@6
    .line 600
    return-void

    #@7
    .line 601
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1299
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    #@2
    .line 1300
    array-length v0, p1

    #@3
    .line 1301
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1302
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 1303
    aget-object v2, p1, v1

    #@b
    .line 1304
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_0

    #@d
    .line 1305
    const/4 v3, 0x1

    #@e
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1306
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 1302
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1308
    :cond_0
    const/4 v3, 0x0

    #@18
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    goto :goto_1

    #@1c
    .line 1312
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const/4 v3, -0x1

    #@1d
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1298
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 1210
    if-nez p1, :cond_0

    #@3
    .line 1211
    const/4 v3, -0x1

    #@4
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1212
    return-void

    #@8
    .line 1214
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 1215
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .line 1216
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1217
    :goto_0
    if-ge v1, v0, :cond_2

    #@12
    .line 1218
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/os/Parcelable;

    #@18
    .line 1219
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    #@1a
    .line 1220
    const/4 v3, 0x1

    #@1b
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1221
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1225
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1223
    :cond_1
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    goto :goto_1

    #@28
    .line 1209
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_2
    return-void
.end method

.method public final writeTypedObject(Landroid/os/Parcelable;I)V
    .locals 1
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1326
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .line 1327
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1328
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 1325
    :goto_0
    return-void

    #@a
    .line 1330
    :cond_0
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    goto :goto_0
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1378
    if-nez p1, :cond_0

    #@4
    .line 1379
    const/4 v1, -0x1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1377
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    #@9
    .line 1380
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 1381
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1382
    check-cast p1, Ljava/lang/String;

    #@12
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    goto :goto_0

    #@16
    .line 1383
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Integer;

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 1384
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1385
    check-cast p1, Ljava/lang/Integer;

    #@1f
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v1

    #@23
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    goto :goto_0

    #@27
    .line 1386
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/util/Map;

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 1387
    const/4 v1, 0x2

    #@2c
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1388
    check-cast p1, Ljava/util/Map;

    #@31
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@34
    goto :goto_0

    #@35
    .line 1389
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Landroid/os/Bundle;

    #@37
    if-eqz v3, :cond_4

    #@39
    .line 1391
    const/4 v1, 0x3

    #@3a
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 1392
    check-cast p1, Landroid/os/Bundle;

    #@3f
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@42
    goto :goto_0

    #@43
    .line 1393
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Landroid/os/PersistableBundle;

    #@45
    if-eqz v3, :cond_5

    #@47
    .line 1394
    const/16 v1, 0x19

    #@49
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 1395
    check-cast p1, Landroid/os/PersistableBundle;

    #@4e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@51
    goto :goto_0

    #@52
    .line 1396
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Landroid/os/Parcelable;

    #@54
    if-eqz v3, :cond_6

    #@56
    .line 1400
    const/4 v1, 0x4

    #@57
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 1401
    check-cast p1, Landroid/os/Parcelable;

    #@5c
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5f
    goto :goto_0

    #@60
    .line 1402
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, Ljava/lang/Short;

    #@62
    if-eqz v3, :cond_7

    #@64
    .line 1403
    const/4 v1, 0x5

    #@65
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 1404
    check-cast p1, Ljava/lang/Short;

    #@6a
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    #@6d
    move-result v1

    #@6e
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    goto :goto_0

    #@72
    .line 1405
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/lang/Long;

    #@74
    if-eqz v3, :cond_8

    #@76
    .line 1406
    const/4 v1, 0x6

    #@77
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 1407
    check-cast p1, Ljava/lang/Long;

    #@7c
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@7f
    move-result-wide v2

    #@80
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@83
    goto :goto_0

    #@84
    .line 1408
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Float;

    #@86
    if-eqz v3, :cond_9

    #@88
    .line 1409
    const/4 v1, 0x7

    #@89
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 1410
    check-cast p1, Ljava/lang/Float;

    #@8e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@91
    move-result v1

    #@92
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@95
    goto/16 :goto_0

    #@97
    .line 1411
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Double;

    #@99
    if-eqz v3, :cond_a

    #@9b
    .line 1412
    const/16 v1, 0x8

    #@9d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    .line 1413
    check-cast p1, Ljava/lang/Double;

    #@a2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@a5
    move-result-wide v2

    #@a6
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1414
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Boolean;

    #@ad
    if-eqz v3, :cond_c

    #@af
    .line 1415
    const/16 v3, 0x9

    #@b1
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 1416
    check-cast p1, Ljava/lang/Boolean;

    #@b6
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_b

    #@bc
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bf
    goto/16 :goto_0

    #@c1
    :cond_b
    move v1, v2

    #@c2
    goto :goto_1

    #@c3
    .line 1417
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/CharSequence;

    #@c5
    if-eqz v1, :cond_d

    #@c7
    .line 1419
    const/16 v1, 0xa

    #@c9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@cc
    .line 1420
    check-cast p1, Ljava/lang/CharSequence;

    #@ce
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1421
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/util/List;

    #@d5
    if-eqz v1, :cond_e

    #@d7
    .line 1422
    const/16 v1, 0xb

    #@d9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 1423
    check-cast p1, Ljava/util/List;

    #@de
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1424
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v1, p1, Landroid/util/SparseArray;

    #@e5
    if-eqz v1, :cond_f

    #@e7
    .line 1425
    const/16 v1, 0xc

    #@e9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ec
    .line 1426
    check-cast p1, Landroid/util/SparseArray;

    #@ee
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 1427
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v1, p1, [Z

    #@f5
    if-eqz v1, :cond_10

    #@f7
    .line 1428
    const/16 v1, 0x17

    #@f9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 1429
    check-cast p1, [Z

    #@fe
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@101
    goto/16 :goto_0

    #@103
    .line 1430
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v1, p1, [B

    #@105
    if-eqz v1, :cond_11

    #@107
    .line 1431
    const/16 v1, 0xd

    #@109
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    .line 1432
    check-cast p1, [B

    #@10e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@111
    goto/16 :goto_0

    #@113
    .line 1433
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v1, p1, [Ljava/lang/String;

    #@115
    if-eqz v1, :cond_12

    #@117
    .line 1434
    const/16 v1, 0xe

    #@119
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11c
    .line 1435
    check-cast p1, [Ljava/lang/String;

    #@11e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@121
    goto/16 :goto_0

    #@123
    .line 1436
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v1, p1, [Ljava/lang/CharSequence;

    #@125
    if-eqz v1, :cond_13

    #@127
    .line 1438
    const/16 v1, 0x18

    #@129
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 1439
    check-cast p1, [Ljava/lang/CharSequence;

    #@12e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    #@131
    goto/16 :goto_0

    #@133
    .line 1440
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, Landroid/os/IBinder;

    #@135
    if-eqz v1, :cond_14

    #@137
    .line 1441
    const/16 v1, 0xf

    #@139
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13c
    .line 1442
    check-cast p1, Landroid/os/IBinder;

    #@13e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@141
    goto/16 :goto_0

    #@143
    .line 1443
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v1, p1, [Landroid/os/Parcelable;

    #@145
    if-eqz v1, :cond_15

    #@147
    .line 1444
    const/16 v1, 0x10

    #@149
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14c
    .line 1445
    check-cast p1, [Landroid/os/Parcelable;

    #@14e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@151
    goto/16 :goto_0

    #@153
    .line 1446
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v1, p1, [I

    #@155
    if-eqz v1, :cond_16

    #@157
    .line 1447
    const/16 v1, 0x12

    #@159
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15c
    .line 1448
    check-cast p1, [I

    #@15e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@161
    goto/16 :goto_0

    #@163
    .line 1449
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v1, p1, [J

    #@165
    if-eqz v1, :cond_17

    #@167
    .line 1450
    const/16 v1, 0x13

    #@169
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16c
    .line 1451
    check-cast p1, [J

    #@16e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@171
    goto/16 :goto_0

    #@173
    .line 1452
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v1, p1, Ljava/lang/Byte;

    #@175
    if-eqz v1, :cond_18

    #@177
    .line 1453
    const/16 v1, 0x14

    #@179
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17c
    .line 1454
    check-cast p1, Ljava/lang/Byte;

    #@17e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@181
    move-result v1

    #@182
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@185
    goto/16 :goto_0

    #@187
    .line 1455
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v1, p1, Landroid/util/Size;

    #@189
    if-eqz v1, :cond_19

    #@18b
    .line 1456
    const/16 v1, 0x1a

    #@18d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@190
    .line 1457
    check-cast p1, Landroid/util/Size;

    #@192
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    #@195
    goto/16 :goto_0

    #@197
    .line 1458
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_19
    instance-of v1, p1, Landroid/util/SizeF;

    #@199
    if-eqz v1, :cond_1a

    #@19b
    .line 1459
    const/16 v1, 0x1b

    #@19d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a0
    .line 1460
    check-cast p1, Landroid/util/SizeF;

    #@1a2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 1461
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1a
    instance-of v1, p1, [D

    #@1a9
    if-eqz v1, :cond_1b

    #@1ab
    .line 1462
    const/16 v1, 0x1c

    #@1ad
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b0
    .line 1463
    check-cast p1, [D

    #@1b2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    #@1b5
    goto/16 :goto_0

    #@1b7
    .line 1465
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1ba
    move-result-object v0

    #@1bb
    .line 1466
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@1be
    move-result v1

    #@1bf
    if-eqz v1, :cond_1c

    #@1c1
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1c4
    move-result-object v1

    #@1c5
    const-class v2, Ljava/lang/Object;

    #@1c7
    if-ne v1, v2, :cond_1c

    #@1c9
    .line 1469
    const/16 v1, 0x11

    #@1cb
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ce
    .line 1470
    check-cast p1, [Ljava/lang/Object;

    #@1d0
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 1471
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1c
    instance-of v1, p1, Ljava/io/Serializable;

    #@1d7
    if-eqz v1, :cond_1d

    #@1d9
    .line 1473
    const/16 v1, 0x15

    #@1db
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 1474
    check-cast p1, Ljava/io/Serializable;

    #@1e0
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 1476
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    #@1e7
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string/jumbo v3, "Parcel: unable to marshal value "

    #@1ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v2

    #@1f3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v2

    #@1f7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v2

    #@1fb
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1fe
    throw v1
.end method
