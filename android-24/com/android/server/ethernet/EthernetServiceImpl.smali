.class public Lcom/android/server/ethernet/EthernetServiceImpl;
.super Landroid/net/IEthernetManager$Stub;
.source "EthernetServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EthernetServiceImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

.field private mHandler:Landroid/os/Handler;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/net/IEthernetServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/IEthernetManager$Stub;-><init>()V

    #@3
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@9
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    #@d
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    #@10
    .line 57
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    #@12
    .line 61
    iput-object p1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@14
    .line 62
    const-string/jumbo v0, "EthernetServiceImpl"

    #@17
    const-string/jumbo v1, "Creating EthernetConfigStore"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 63
    new-instance v0, Lcom/android/server/ethernet/EthernetConfigStore;

    #@1f
    invoke-direct {v0}, Lcom/android/server/ethernet/EthernetConfigStore;-><init>()V

    #@22
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    #@24
    .line 64
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    #@26
    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetConfigStore;->readIpAndProxyConfigurations()Landroid/net/IpConfiguration;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2c
    .line 66
    const-string/jumbo v0, "EthernetServiceImpl"

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v2, "Read stored IP configuration: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 68
    new-instance v0, Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@4a
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    #@4c
    invoke-direct {v0, v1}, Lcom/android/server/ethernet/EthernetNetworkFactory;-><init>(Landroid/os/RemoteCallbackList;)V

    #@4f
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@51
    .line 60
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 73
    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    #@5
    .line 74
    const-string/jumbo v2, "EthernetService"

    #@8
    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 71
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@2
    .line 79
    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    #@5
    .line 80
    const-string/jumbo v2, "ConnectivityService"

    #@8
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 77
    return-void
.end method


# virtual methods
.method public addListener(Landroid/net/IEthernetServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    #@0
    .prologue
    .line 147
    if-nez p1, :cond_0

    #@2
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "listener must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    #@e
    .line 151
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    #@13
    .line 146
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 168
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    #@2
    const-string/jumbo v1, "  "

    #@5
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    #@8
    .line 169
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@a
    const-string/jumbo v2, "android.permission.DUMP"

    #@d
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "Permission Denial: can\'t dump EthernetService from pid="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@22
    move-result v2

    #@23
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 173
    const-string/jumbo v2, ", uid="

    #@2a
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@31
    move-result v2

    #@32
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 174
    return-void

    #@3e
    .line 177
    :cond_0
    const-string/jumbo v1, "Current Ethernet state: "

    #@41
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 178
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@47
    .line 179
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@49
    invoke-virtual {v1, p1, v0, p3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    #@4c
    .line 180
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@4f
    .line 182
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    #@52
    .line 183
    const-string/jumbo v1, "Stored Ethernet configuration: "

    #@55
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@58
    .line 184
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@5b
    .line 185
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@5d
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    #@60
    .line 186
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@63
    .line 188
    const-string/jumbo v1, "Handler:"

    #@66
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 189
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@6c
    .line 190
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    #@6e
    new-instance v2, Landroid/util/PrintWriterPrinter;

    #@70
    invoke-direct {v2, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@73
    const-string/jumbo v3, "EthernetServiceImpl"

    #@76
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@79
    .line 191
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@7c
    .line 167
    return-void
.end method

.method public getConfiguration()Landroid/net/IpConfiguration;
    .locals 3

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    #@3
    .line 103
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@5
    monitor-enter v1

    #@6
    .line 104
    :try_start_0
    new-instance v0, Landroid/net/IpConfiguration;

    #@8
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@a
    invoke-direct {v0, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    return-object v0

    #@f
    .line 103
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    #@3
    .line 139
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@5
    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->isTrackingInterface()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public removeListener(Landroid/net/IEthernetServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/IEthernetServiceListener;

    #@0
    .prologue
    .line 159
    if-nez p1, :cond_0

    #@2
    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "listener must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceAccessPermission()V

    #@e
    .line 163
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mListeners:Landroid/os/RemoteCallbackList;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    #@13
    .line 158
    return-void
.end method

.method public setConfiguration(Landroid/net/IpConfiguration;)V
    .locals 4
    .param p1, "config"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 114
    const-string/jumbo v0, "EthernetServiceImpl"

    #@b
    const-string/jumbo v1, "System isn\'t ready enough to change ethernet configuration"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ethernet/EthernetServiceImpl;->enforceConnectivityInternalPermission()V

    #@14
    .line 119
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@16
    monitor-enter v1

    #@17
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mEthernetConfigStore:Lcom/android/server/ethernet/EthernetConfigStore;

    #@19
    invoke-virtual {v0, p1}, Lcom/android/server/ethernet/EthernetConfigStore;->writeIpAndProxyConfigurations(Landroid/net/IpConfiguration;)V

    #@1c
    .line 124
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@1e
    invoke-virtual {p1, v0}, Landroid/net/IpConfiguration;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_1

    #@24
    .line 125
    new-instance v0, Landroid/net/IpConfiguration;

    #@26
    invoke-direct {v0, p1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    #@29
    iput-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2b
    .line 126
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@2d
    invoke-virtual {v0}, Lcom/android/server/ethernet/EthernetNetworkFactory;->stop()V

    #@30
    .line 127
    iget-object v0, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@32
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@34
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    #@36
    invoke-virtual {v0, v2, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->start(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    :cond_1
    monitor-exit v1

    #@3a
    .line 112
    return-void

    #@3b
    .line 119
    :catchall_0
    move-exception v0

    #@3c
    monitor-exit v1

    #@3d
    throw v0
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 84
    const-string/jumbo v1, "EthernetServiceImpl"

    #@3
    const-string/jumbo v2, "Starting Ethernet service"

    #@6
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    #@b
    const-string/jumbo v1, "EthernetServiceThread"

    #@e
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@11
    .line 87
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@14
    .line 88
    new-instance v1, Landroid/os/Handler;

    #@16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@1d
    iput-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    #@1f
    .line 90
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mTracker:Lcom/android/server/ethernet/EthernetNetworkFactory;

    #@21
    iget-object v2, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mContext:Landroid/content/Context;

    #@23
    iget-object v3, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mHandler:Landroid/os/Handler;

    #@25
    invoke-virtual {v1, v2, v3}, Lcom/android/server/ethernet/EthernetNetworkFactory;->start(Landroid/content/Context;Landroid/os/Handler;)V

    #@28
    .line 92
    iget-object v1, p0, Lcom/android/server/ethernet/EthernetServiceImpl;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2a
    const/4 v2, 0x1

    #@2b
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2e
    .line 83
    return-void
.end method
