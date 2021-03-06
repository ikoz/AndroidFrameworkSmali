.class public Lorg/apache/http/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 150
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    #@2
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    #@5
    .line 149
    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@7
    .line 153
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    #@9
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    #@c
    .line 152
    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@e
    .line 156
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    #@10
    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    #@13
    .line 155
    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@15
    .line 143
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 180
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@6
    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@8
    .line 250
    iput-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    #@a
    .line 251
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #@10
    .line 252
    iput-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@12
    .line 248
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 180
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@5
    iput-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@7
    .line 192
    if-nez p1, :cond_0

    #@9
    .line 193
    const-string/jumbo p1, "TLS"

    #@c
    .line 195
    :cond_0
    const/4 v0, 0x0

    #@d
    .line 196
    .local v0, "keymanagers":[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_1

    #@f
    .line 197
    invoke-static {p2, p3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    #@12
    move-result-object v0

    #@13
    .line 199
    .end local v0    # "keymanagers":[Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v1, 0x0

    #@14
    .line 200
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_2

    #@16
    .line 201
    invoke-static {p4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    #@19
    move-result-object v1

    #@1a
    .line 203
    .end local v1    # "trustmanagers":[Ljavax/net/ssl/TrustManager;
    :cond_2
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    #@1d
    move-result-object v2

    #@1e
    iput-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    #@20
    .line 204
    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    #@22
    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    #@25
    .line 205
    iget-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    #@27
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2d
    .line 206
    iput-object p6, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@2f
    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 227
    const-string/jumbo v1, "TLS"

    #@4
    move-object v0, p0

    #@5
    move-object v3, v2

    #@6
    move-object v4, p1

    #@7
    move-object v5, v2

    #@8
    move-object v6, v2

    #@9
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    #@c
    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 221
    const-string/jumbo v1, "TLS"

    #@4
    move-object v0, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v5, v4

    #@8
    move-object v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    #@c
    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 215
    const-string/jumbo v1, "TLS"

    #@4
    move-object v0, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v6, v5

    #@9
    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    #@c
    .line 213
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "socketfactory"    # Ljavax/net/ssl/SSLSocketFactory;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 180
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@6
    iput-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@8
    .line 238
    iput-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    #@a
    .line 239
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #@c
    .line 240
    iput-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@e
    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>()V

    #@3
    return-void
.end method

.method private static createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 257
    if-nez p0, :cond_0

    #@3
    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "Keystore may not be null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 261
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 260
    invoke-static {v2}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    #@13
    move-result-object v0

    #@14
    .line 262
    .local v0, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_1

    #@16
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@19
    move-result-object v1

    #@1a
    :cond_1
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    #@1d
    .line 263
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method private static createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    if-nez p0, :cond_0

    #@2
    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Keystore may not be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 272
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 271
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    #@12
    move-result-object v0

    #@13
    .line 273
    .local v0, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    #@16
    .line 274
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->-get0()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 9
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 297
    if-nez p2, :cond_0

    #@2
    .line 298
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v8, "Target host may not be null."

    #@7
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v7

    #@b
    .line 300
    :cond_0
    if-nez p6, :cond_1

    #@d
    .line 301
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v8, "Parameters may not be null."

    #@12
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v7

    #@16
    .line 305
    :cond_1
    if-eqz p1, :cond_5

    #@18
    move-object v5, p1

    #@19
    .line 304
    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    #@1b
    .line 307
    .local v5, "sslsock":Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_2

    #@1d
    if-lez p5, :cond_4

    #@1f
    .line 310
    :cond_2
    if-gez p5, :cond_3

    #@21
    .line 311
    const/4 p5, 0x0

    #@22
    .line 314
    :cond_3
    new-instance v2, Ljava/net/InetSocketAddress;

    #@24
    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@27
    .line 315
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v5, v2}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    #@2a
    .line 318
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    #@2d
    move-result v0

    #@2e
    .line 319
    .local v0, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    #@31
    move-result v4

    #@32
    .line 322
    .local v4, "soTimeout":I
    iget-object v7, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@34
    if-eqz v7, :cond_6

    #@36
    .line 323
    new-instance v3, Ljava/net/InetSocketAddress;

    #@38
    iget-object v7, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    #@3a
    invoke-interface {v7, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    #@3d
    move-result-object v7

    #@3e
    invoke-direct {v3, v7, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    #@41
    .line 328
    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v5, v3, v0}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    #@44
    .line 330
    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    #@47
    .line 338
    :try_start_0
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@4a
    .line 340
    iget-object v7, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@4c
    invoke-interface {v7, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@4f
    .line 348
    return-object v5

    #@50
    .line 305
    .end local v0    # "connTimeout":I
    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "soTimeout":I
    .end local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    #@53
    move-result-object v5

    #@54
    goto :goto_0

    #@55
    .line 325
    .restart local v0    # "connTimeout":I
    .restart local v4    # "soTimeout":I
    .restart local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_6
    new-instance v3, Ljava/net/InetSocketAddress;

    #@57
    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    #@5a
    .restart local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_1

    #@5b
    .line 342
    :catch_0
    move-exception v1

    #@5c
    .line 344
    .local v1, "iox":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5f
    .line 345
    :goto_2
    throw v1

    #@60
    .line 344
    :catch_1
    move-exception v6

    #@61
    .local v6, "x":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@8
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    #@0
    .prologue
    .line 394
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    #@2
    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    #@8
    .line 406
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    #@b
    .line 408
    iget-object v1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@d
    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    #@10
    .line 410
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    #@0
    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@2
    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 369
    if-nez p1, :cond_0

    #@2
    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Socket may not be null."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 373
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 375
    const-string/jumbo v1, "Socket not created by this factory."

    #@14
    .line 374
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 378
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "Socket is closed."

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 382
    :cond_2
    const/4 v0, 0x1

    #@28
    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@0
    .prologue
    .line 414
    if-nez p1, :cond_0

    #@2
    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Hostname verifier may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 417
    :cond_0
    iput-object p1, p0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    #@d
    .line 413
    return-void
.end method
