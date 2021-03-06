.class public Landroid/security/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final EXTENSION_CER:Ljava/lang/String; = ".cer"

.field public static final EXTENSION_CRT:Ljava/lang/String; = ".crt"

.field public static final EXTENSION_P12:Ljava/lang/String; = ".p12"

.field public static final EXTENSION_PFX:Ljava/lang/String; = ".pfx"

.field public static final EXTRA_CA_CERTIFICATES_DATA:Ljava/lang/String; = "ca_certificates_data"

.field public static final EXTRA_CA_CERTIFICATES_NAME:Ljava/lang/String; = "ca_certificates_name"

.field public static final EXTRA_INSTALL_AS_UID:Ljava/lang/String; = "install_as_uid"

.field public static final EXTRA_PRIVATE_KEY:Ljava/lang/String; = "PKEY"

.field public static final EXTRA_PUBLIC_KEY:Ljava/lang/String; = "KEY"

.field public static final EXTRA_USER_CERTIFICATE_DATA:Ljava/lang/String; = "user_certificate_data"

.field public static final EXTRA_USER_CERTIFICATE_NAME:Ljava/lang/String; = "user_certificate_name"

.field public static final EXTRA_USER_PRIVATE_KEY_DATA:Ljava/lang/String; = "user_private_key_data"

.field public static final EXTRA_USER_PRIVATE_KEY_NAME:Ljava/lang/String; = "user_private_key_name"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.credentials.INSTALL"

.field public static final INSTALL_AS_USER_ACTION:Ljava/lang/String; = "android.credentials.INSTALL_AS_USER"

.field public static final LOCKDOWN_VPN:Ljava/lang/String; = "LOCKDOWN_VPN"

.field private static final LOGTAG:Ljava/lang/String; = "Credentials"

.field public static final UNLOCK_ACTION:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final USER_PRIVATE_KEY:Ljava/lang/String; = "USRPKEY_"

.field public static final USER_SECRET_KEY:Ljava/lang/String; = "USRSKEY_"

.field public static final VPN:Ljava/lang/String; = "VPN_"

.field public static final WIFI:Ljava/lang/String; = "WIFI_"

.field private static singleton:Landroid/security/Credentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertFromPem([B)Ljava/util/List;
    .locals 10
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@5
    .line 149
    .local v0, "bai":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    #@7
    sget-object v7, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@9
    invoke-direct {v5, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@c
    .line 150
    .local v5, "reader":Ljava/io/Reader;
    new-instance v4, Lcom/android/org/bouncycastle/util/io/pem/PemReader;

    #@e
    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;-><init>(Ljava/io/Reader;)V

    #@11
    .line 153
    .local v4, "pr":Lcom/android/org/bouncycastle/util/io/pem/PemReader;
    :try_start_0
    const-string/jumbo v7, "X509"

    #@14
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    #@17
    move-result-object v2

    #@18
    .line 155
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@1d
    .line 157
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->readPemObject()Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@20
    move-result-object v3

    #@21
    .local v3, "o":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    if-eqz v3, :cond_1

    #@23
    .line 158
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    const-string/jumbo v8, "CERTIFICATE"

    #@2a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v7

    #@2e
    if-eqz v7, :cond_0

    #@30
    .line 159
    new-instance v7, Ljava/io/ByteArrayInputStream;

    #@32
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getContent()[B

    #@35
    move-result-object v8

    #@36
    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@39
    invoke-virtual {v2, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    #@3c
    move-result-object v1

    #@3d
    .line 160
    .local v1, "c":Ljava/security/cert/Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    #@3f
    .end local v1    # "c":Ljava/security/cert/Certificate;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    goto :goto_0

    #@43
    .line 166
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "o":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .end local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catchall_0
    move-exception v7

    #@44
    .line 167
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    #@47
    .line 166
    throw v7

    #@48
    .line 162
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "o":Lcom/android/org/bouncycastle/util/io/pem/PemObject;
    .restart local v6    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4a
    new-instance v8, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v9, "Unknown type "

    #@52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v8

    #@56
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;->getType()Ljava/lang/String;

    #@59
    move-result-object v9

    #@5a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v8

    #@62
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@65
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@66
    .line 167
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/util/io/pem/PemReader;->close()V

    #@69
    .line 165
    return-object v6
.end method

.method public static varargs convertToPem([Ljava/security/cert/Certificate;)[B
    .locals 9
    .param p0, "objects"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 134
    .local v0, "bao":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    #@7
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@9
    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@c
    .line 135
    .local v3, "writer":Ljava/io/Writer;
    new-instance v2, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;

    #@e
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;-><init>(Ljava/io/Writer;)V

    #@11
    .line 136
    .local v2, "pw":Lcom/android/org/bouncycastle/util/io/pem/PemWriter;
    const/4 v4, 0x0

    #@12
    array-length v5, p0

    #@13
    :goto_0
    if-ge v4, v5, :cond_0

    #@15
    aget-object v1, p0, v4

    #@17
    .line 137
    .local v1, "o":Ljava/security/cert/Certificate;
    new-instance v6, Lcom/android/org/bouncycastle/util/io/pem/PemObject;

    #@19
    const-string/jumbo v7, "CERTIFICATE"

    #@1c
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    #@1f
    move-result-object v8

    #@20
    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    #@23
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->writeObject(Lcom/android/org/bouncycastle/util/io/pem/PemObjectGenerator;)V

    #@26
    .line 136
    add-int/lit8 v4, v4, 0x1

    #@28
    goto :goto_0

    #@29
    .line 139
    .end local v1    # "o":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/util/io/pem/PemWriter;->close()V

    #@2c
    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2f
    move-result-object v4

    #@30
    return-object v4
.end method

.method public static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 238
    invoke-static {p0, p1, p2}, Landroid/security/Credentials;->deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@3
    move-result v0

    #@4
    .line 239
    invoke-static {p0, p1, p2}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@7
    move-result v1

    #@8
    .line 238
    and-int/2addr v0, v1

    #@9
    .line 240
    invoke-static {p0, p1, p2}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@c
    move-result v1

    #@d
    .line 238
    and-int/2addr v0, v1

    #@e
    return v0
.end method

.method public static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 249
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USRCERT_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "CACERT_"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v1, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@2f
    move-result v1

    #@30
    .line 262
    and-int/2addr v0, v1

    #@31
    return v0
.end method

.method static deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 271
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method static deletePrivateKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USRPKEY_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public static deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z
    .locals 1
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    const/4 v0, -0x1

    #@1
    invoke-static {p0, p1, v0}, Landroid/security/Credentials;->deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public static deleteSecretKeyTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "keystore"    # Landroid/security/KeyStore;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "USRSKEY_"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public static getInstance()Landroid/security/Credentials;
    .locals 1

    #@0
    .prologue
    .line 174
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 175
    new-instance v0, Landroid/security/Credentials;

    #@6
    invoke-direct {v0}, Landroid/security/Credentials;-><init>()V

    #@9
    sput-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    #@b
    .line 177
    :cond_0
    sget-object v0, Landroid/security/Credentials;->singleton:Landroid/security/Credentials;

    #@d
    return-object v0
.end method


# virtual methods
.method public install(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 191
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 192
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 189
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    #@8
    .line 193
    :catch_0
    move-exception v0

    #@9
    .line 194
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    #@c
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # [B

    #@0
    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 212
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@7
    .line 213
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 209
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    #@b
    .line 214
    :catch_0
    move-exception v0

    #@c
    .line 215
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    #@f
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/security/KeyPair;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pair"    # Ljava/security/KeyPair;

    #@0
    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    #@3
    move-result-object v1

    #@4
    .line 201
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "PKEY"

    #@7
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/security/PrivateKey;->getEncoded()[B

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@12
    .line 202
    const-string/jumbo v2, "KEY"

    #@15
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    #@18
    move-result-object v3

    #@19
    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    #@20
    .line 203
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 198
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    #@24
    .line 204
    :catch_0
    move-exception v0

    #@25
    .line 205
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    #@28
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    goto :goto_0
.end method

.method public unlock(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 182
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "com.android.credentials.UNLOCK"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 183
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 180
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    #@c
    .line 184
    :catch_0
    move-exception v0

    #@d
    .line 185
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Credentials"

    #@10
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_0
.end method
