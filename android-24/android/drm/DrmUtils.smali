.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .locals 2
    .param p0, "extendedMetadata"    # [B

    #@0
    .prologue
    .line 110
    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$ExtendedMetadataParser;)V

    #@6
    return-object v0
.end method

.method private static quietlyDispose(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 84
    if-eqz p0, :cond_0

    #@2
    .line 85
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 82
    :cond_0
    :goto_0
    return-void

    #@6
    .line 87
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static quietlyDispose(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 94
    if-eqz p0, :cond_0

    #@2
    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 92
    :cond_0
    :goto_0
    return-void

    #@6
    .line 97
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method static readBytes(Ljava/io/File;)[B
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 45
    new-instance v2, Ljava/io/FileInputStream;

    #@2
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@5
    .line 46
    .local v2, "inputStream":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    #@7
    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    #@a
    .line 47
    .local v0, "bufferedStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    #@b
    .line 50
    .local v1, "data":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    #@e
    move-result v3

    #@f
    .line 51
    .local v3, "length":I
    if-lez v3, :cond_0

    #@11
    .line 52
    new-array v1, v3, [B

    #@13
    .line 54
    .local v1, "data":[B
    invoke-virtual {v0, v1}, Ljava/io/FilterInputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 57
    .end local v1    # "data":[B
    :cond_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    #@19
    .line 58
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    #@1c
    .line 60
    return-object v1

    #@1d
    .line 56
    .end local v3    # "length":I
    :catchall_0
    move-exception v4

    #@1e
    .line 57
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    #@21
    .line 58
    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/InputStream;)V

    #@24
    .line 56
    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 39
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 40
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    .line 79
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@8
    .line 77
    return-void
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    .line 67
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    if-eqz p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 69
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    #@7
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 70
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@d
    .line 72
    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    #@10
    move-object v0, v1

    #@11
    .line 63
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    :cond_0
    return-void

    #@12
    .line 71
    .restart local v0    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    #@13
    .line 72
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/OutputStream;)V

    #@16
    .line 71
    throw v2

    #@17
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    #@18
    move-object v0, v1

    #@19
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
