.class public Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;
.super Ljava/lang/Object;
.source "KeyStoreCryptoOperationChunkedStreamer.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    iput-object p1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    #@5
    .line 328
    iput-object p2, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    #@7
    .line 326
    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "signature"    # [B
    .param p2, "additionalEntropy"    # [B

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    #@2
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "input"    # [B

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mKeyStore:Landroid/security/KeyStore;

    #@2
    iget-object v1, p0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;->mOperationToken:Landroid/os/IBinder;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, v2, p1}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
