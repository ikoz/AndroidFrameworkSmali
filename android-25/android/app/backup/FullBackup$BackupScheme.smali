.class public Landroid/app/backup/FullBackup$BackupScheme;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupScheme"
.end annotation


# instance fields
.field private final CACHE_DIR:Ljava/io/File;

.field private final DATABASE_DIR:Ljava/io/File;

.field private final DEVICE_CACHE_DIR:Ljava/io/File;

.field private final DEVICE_DATABASE_DIR:Ljava/io/File;

.field private final DEVICE_FILES_DIR:Ljava/io/File;

.field private final DEVICE_NOBACKUP_DIR:Ljava/io/File;

.field private final DEVICE_ROOT_DIR:Ljava/io/File;

.field private final DEVICE_SHAREDPREF_DIR:Ljava/io/File;

.field private final EXTERNAL_DIR:Ljava/io/File;

.field private final FILES_DIR:Ljava/io/File;

.field private final NOBACKUP_DIR:Ljava/io/File;

.field private final ROOT_DIR:Ljava/io/File;

.field private final SHAREDPREF_DIR:Ljava/io/File;

.field mExcludes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mFullBackupContent:I

.field mIncludes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mPackageManager:Landroid/content/pm/PackageManager;

.field final mPackageName:Ljava/lang/String;

.field final mStorageManager:Landroid/os/storage/StorageManager;

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 232
    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    #@6
    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v2

    #@a
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    #@c
    iput v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@e
    .line 317
    const-string/jumbo v2, "storage"

    #@11
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/storage/StorageManager;

    #@17
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    #@19
    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    #@1f
    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    #@25
    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    #@28
    move-result-object v0

    #@29
    .line 324
    .local v0, "ceContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@2f
    .line 325
    const-string/jumbo v2, "foo"

    #@32
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@39
    move-result-object v2

    #@3a
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@3c
    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@3f
    move-result-object v2

    #@40
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@42
    .line 327
    const-string/jumbo v2, "foo"

    #@45
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@4c
    move-result-object v2

    #@4d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@4f
    .line 328
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@52
    move-result-object v2

    #@53
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    #@55
    .line 329
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@58
    move-result-object v2

    #@59
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    #@5b
    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    #@5e
    move-result-object v1

    #@5f
    .line 332
    .local v1, "deContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@62
    move-result-object v2

    #@63
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    #@65
    .line 333
    const-string/jumbo v2, "foo"

    #@68
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    #@72
    .line 334
    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    #@75
    move-result-object v2

    #@76
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    #@78
    .line 335
    const-string/jumbo v2, "foo"

    #@7b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@82
    move-result-object v2

    #@83
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    #@85
    .line 336
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@88
    move-result-object v2

    #@89
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    #@8b
    .line 337
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    #@8e
    move-result-object v2

    #@8f
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    #@91
    .line 339
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@94
    move-result v2

    #@95
    const/16 v3, 0x3e8

    #@97
    if-eq v2, v3, :cond_0

    #@99
    .line 340
    invoke-virtual {p1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@9c
    move-result-object v2

    #@9d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@9f
    .line 315
    :goto_0
    return-void

    #@a0
    .line 342
    :cond_0
    iput-object v4, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@a2
    goto :goto_0
.end method

.method private extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "domain"    # Ljava/io/File;
    .param p2, "filePathFromXml"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 596
    if-nez p2, :cond_0

    #@4
    .line 598
    const-string/jumbo p2, ""

    #@7
    .line 600
    :cond_0
    const-string/jumbo v0, ".."

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 601
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 602
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "...resolved \""

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, " "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 603
    const-string/jumbo v2, "\", but the \"..\" path is not permitted; skipping."

    #@3e
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 605
    :cond_1
    return-object v3

    #@4a
    .line 607
    :cond_2
    const-string/jumbo v0, "//"

    #@4d
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@50
    move-result v0

    #@51
    if-eqz v0, :cond_4

    #@53
    .line 608
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_3

    #@5c
    .line 609
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v2, "...resolved \""

    #@67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    const-string/jumbo v2, " "

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    .line 610
    const-string/jumbo v2, "\", which contains the invalid \"//\" sequence; skipping."

    #@81
    .line 609
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8c
    .line 612
    :cond_3
    return-object v3

    #@8d
    .line 614
    :cond_4
    new-instance v0, Ljava/io/File;

    #@8f
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@92
    return-object v0
.end method

.method private getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "domain"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 623
    return-object v1

    #@8
    .line 625
    :cond_0
    const-string/jumbo v0, "file"

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 626
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@13
    return-object v0

    #@14
    .line 627
    :cond_1
    const-string/jumbo v0, "database"

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 628
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@1f
    return-object v0

    #@20
    .line 629
    :cond_2
    const-string/jumbo v0, "root"

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_3

    #@29
    .line 630
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@2b
    return-object v0

    #@2c
    .line 631
    :cond_3
    const-string/jumbo v0, "sharedpref"

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 632
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@37
    return-object v0

    #@38
    .line 633
    :cond_4
    const-string/jumbo v0, "device_file"

    #@3b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_5

    #@41
    .line 634
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    #@43
    return-object v0

    #@44
    .line 635
    :cond_5
    const-string/jumbo v0, "device_database"

    #@47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_6

    #@4d
    .line 636
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    #@4f
    return-object v0

    #@50
    .line 637
    :cond_6
    const-string/jumbo v0, "device_root"

    #@53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_7

    #@59
    .line 638
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    #@5b
    return-object v0

    #@5c
    .line 639
    :cond_7
    const-string/jumbo v0, "device_sharedpref"

    #@5f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_8

    #@65
    .line 640
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    #@67
    return-object v0

    #@68
    .line 641
    :cond_8
    const-string/jumbo v0, "external"

    #@6b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_9

    #@71
    .line 642
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@73
    return-object v0

    #@74
    .line 644
    :cond_9
    return-object v1
.end method

.method private getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "xmlDomain"    # Ljava/lang/String;

    #@0
    .prologue
    .line 565
    const-string/jumbo v0, "root"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 566
    const-string/jumbo v0, "r"

    #@c
    return-object v0

    #@d
    .line 567
    :cond_0
    const-string/jumbo v0, "file"

    #@10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 568
    const-string/jumbo v0, "f"

    #@19
    return-object v0

    #@1a
    .line 569
    :cond_1
    const-string/jumbo v0, "database"

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 570
    const-string/jumbo v0, "db"

    #@26
    return-object v0

    #@27
    .line 571
    :cond_2
    const-string/jumbo v0, "sharedpref"

    #@2a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_3

    #@30
    .line 572
    const-string/jumbo v0, "sp"

    #@33
    return-object v0

    #@34
    .line 573
    :cond_3
    const-string/jumbo v0, "device_root"

    #@37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v0

    #@3b
    if-eqz v0, :cond_4

    #@3d
    .line 574
    const-string/jumbo v0, "d_r"

    #@40
    return-object v0

    #@41
    .line 575
    :cond_4
    const-string/jumbo v0, "device_file"

    #@44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_5

    #@4a
    .line 576
    const-string/jumbo v0, "d_f"

    #@4d
    return-object v0

    #@4e
    .line 577
    :cond_5
    const-string/jumbo v0, "device_database"

    #@51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_6

    #@57
    .line 578
    const-string/jumbo v0, "d_db"

    #@5a
    return-object v0

    #@5b
    .line 579
    :cond_6
    const-string/jumbo v0, "device_sharedpref"

    #@5e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_7

    #@64
    .line 580
    const-string/jumbo v0, "d_sp"

    #@67
    return-object v0

    #@68
    .line 581
    :cond_7
    const-string/jumbo v0, "external"

    #@6b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_8

    #@71
    .line 582
    const-string/jumbo v0, "ef"

    #@74
    return-object v0

    #@75
    .line 584
    :cond_8
    const/4 v0, 0x0

    #@76
    return-object v0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 2

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 295
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 296
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mStorageManager:Landroid/os/storage/StorageManager;

    #@a
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    #@10
    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    #@12
    return-object v0

    #@13
    .line 299
    :cond_1
    const-string/jumbo v0, "FullBackup"

    #@16
    const-string/jumbo v1, "Unable to access Storage Manager"

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    goto :goto_0
.end method

.method private maybeParseBackupSchemeLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 384
    new-instance v2, Landroid/util/ArrayMap;

    #@3
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    #@6
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@8
    .line 385
    new-instance v2, Landroid/util/ArraySet;

    #@a
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@d
    iput-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@f
    .line 387
    iget v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@11
    if-nez v2, :cond_1

    #@13
    .line 389
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@16
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 390
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@1f
    const-string/jumbo v3, "android:fullBackupContent - \"true\""

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 382
    :cond_0
    :goto_0
    return-void

    #@26
    .line 394
    :cond_1
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@29
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 395
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@32
    .line 396
    const-string/jumbo v3, "android:fullBackupContent - found xml resource"

    #@35
    .line 395
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 398
    :cond_2
    const/4 v1, 0x0

    #@39
    .line 400
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageManager:Landroid/content/pm/PackageManager;

    #@3b
    .line 401
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mPackageName:Ljava/lang/String;

    #@3d
    .line 400
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@40
    move-result-object v2

    #@41
    .line 402
    iget v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@43
    .line 400
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@46
    move-result-object v1

    #@47
    .line 403
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@49
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@4b
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/backup/FullBackup$BackupScheme;->parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4e
    .line 408
    if-eqz v1, :cond_0

    #@50
    .line 409
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@53
    goto :goto_0

    #@54
    .line 404
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v0

    #@55
    .line 406
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    #@57
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@5a
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5b
    .line 407
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    #@5c
    .line 408
    if-eqz v1, :cond_3

    #@5e
    .line 409
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    #@61
    .line 407
    :cond_3
    throw v2
.end method

.method private parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 538
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v2, "include"

    #@3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 539
    invoke-direct {p0, p4}, Landroid/app/backup/FullBackup$BackupScheme;->getTokenForXmlDomain(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 540
    .local v0, "domainToken":Ljava/lang/String;
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Set;

    #@17
    .line 541
    .local v1, "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    #@19
    .line 542
    new-instance v1, Landroid/util/ArraySet;

    #@1b
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@1e
    .line 543
    .restart local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 545
    :cond_0
    return-object v1

    #@22
    .line 546
    .end local v0    # "domainToken":Ljava/lang/String;
    .end local v1    # "includeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v2, "exclude"

    #@25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 547
    return-object p2

    #@30
    .line 550
    :cond_2
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@33
    const/4 v3, 0x2

    #@34
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 551
    const-string/jumbo v2, "BackupXmlParserLogging"

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v4, "Invalid tag found in xml \""

    #@45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v3

    #@49
    .line 552
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    .line 551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    .line 552
    const-string/jumbo v4, "\"; aborting operation."

    #@54
    .line 551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 554
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@61
    new-instance v3, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v4, "Unrecognised tag in backup criteria xml ("

    #@69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v3

    #@6d
    .line 555
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@70
    move-result-object v4

    #@71
    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    .line 555
    const-string/jumbo v4, ")"

    #@78
    .line 554
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v2
.end method

.method private sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    const-string/jumbo v3, "shared/"

    #@3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    .line 285
    .local v1, "volume":Ljava/lang/String;
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->getVolumeList()[Landroid/os/storage/StorageVolume;

    #@e
    move-result-object v2

    #@f
    .line 286
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@12
    move-result v0

    #@13
    .line 287
    .local v0, "volNum":I
    iget-object v3, p0, Landroid/app/backup/FullBackup$BackupScheme;->mVolumes:[Landroid/os/storage/StorageVolume;

    #@15
    array-length v3, v3

    #@16
    if-ge v0, v3, :cond_0

    #@18
    .line 288
    aget-object v3, v2, v0

    #@1a
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    return-object v3

    #@23
    .line 290
    :cond_0
    const/4 v3, 0x0

    #@24
    return-object v3
.end method

.method private validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 654
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-le v0, v1, :cond_0

    #@7
    .line 655
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "At most 2 tag attributes allowed for \""

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 656
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 656
    const-string/jumbo v2, "\" tag (\"domain\" & \"path\"."

    #@20
    .line 655
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 658
    :cond_0
    const-string/jumbo v0, "include"

    #@2f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_1

    #@39
    const-string/jumbo v0, "exclude"

    #@3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_2

    #@46
    .line 653
    :cond_1
    return-void

    #@47
    .line 659
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "A valid tag is one of \"<include/>\" or \"<exclude/>. You provided \""

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 660
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 660
    const-string/jumbo v2, "\""

    #@60
    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0
.end method


# virtual methods
.method isFullBackupContentEnabled()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 347
    iget v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mFullBackupContent:I

    #@3
    if-gez v0, :cond_1

    #@5
    .line 349
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@8
    const/4 v1, 0x2

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 350
    const-string/jumbo v0, "BackupXmlParserLogging"

    #@12
    const-string/jumbo v1, "android:fullBackupContent - \"false\""

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 352
    :cond_0
    return v2

    #@19
    .line 354
    :cond_1
    const/4 v0, 0x1

    #@1a
    return v0
.end method

.method public declared-synchronized maybeParseAndGetCanonicalExcludePaths()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 377
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    #@8
    .line 379
    :cond_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public declared-synchronized maybeParseAndGetCanonicalIncludePaths()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 365
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 366
    invoke-direct {p0}, Landroid/app/backup/FullBackup$BackupScheme;->maybeParseBackupSchemeLocked()V

    #@8
    .line 368
    :cond_0
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public parseBackupSchemeFromXmlLocked(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;)V
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 420
    .local p2, "excludes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "includes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@3
    move-result v13

    #@4
    .line 421
    .local v13, "event":I
    :goto_0
    const/16 v18, 0x2

    #@6
    move/from16 v0, v18

    #@8
    if-eq v13, v0, :cond_0

    #@a
    .line 422
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@d
    move-result v13

    #@e
    goto :goto_0

    #@f
    .line 425
    :cond_0
    const-string/jumbo v18, "full-backup-content"

    #@12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@15
    move-result-object v19

    #@16
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v18

    #@1a
    if-nez v18, :cond_1

    #@1c
    .line 426
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@1e
    new-instance v19, Ljava/lang/StringBuilder;

    #@20
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v20, "Xml file didn\'t start with correct tag (<full-backup-content>). Found \""

    #@26
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v19

    #@2a
    .line 427
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2d
    move-result-object v20

    #@2e
    .line 426
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v19

    #@32
    .line 427
    const-string/jumbo v20, "\""

    #@35
    .line 426
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v19

    #@39
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v19

    #@3d
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@40
    throw v18

    #@41
    .line 430
    :cond_1
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@44
    const/16 v19, 0x2

    #@46
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@49
    move-result v18

    #@4a
    if-eqz v18, :cond_2

    #@4c
    .line 431
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@4f
    const-string/jumbo v19, "\n"

    #@52
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 432
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@58
    const-string/jumbo v19, "===================================================="

    #@5b
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 433
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@61
    const-string/jumbo v19, "Found valid fullBackupContent; parsing xml resource."

    #@64
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 434
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@6a
    const-string/jumbo v19, "===================================================="

    #@6d
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    .line 435
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@73
    const-string/jumbo v19, ""

    #@76
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 438
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7c
    move-result v13

    #@7d
    const/16 v18, 0x1

    #@7f
    move/from16 v0, v18

    #@81
    if-eq v13, v0, :cond_8

    #@83
    .line 439
    packed-switch v13, :pswitch_data_0

    #@86
    goto :goto_1

    #@87
    .line 441
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/FullBackup$BackupScheme;->validateInnerTagContents(Lorg/xmlpull/v1/XmlPullParser;)V

    #@8a
    .line 442
    const-string/jumbo v18, "domain"

    #@8d
    const/16 v19, 0x0

    #@8f
    move-object/from16 v0, p1

    #@91
    move-object/from16 v1, v19

    #@93
    move-object/from16 v2, v18

    #@95
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@98
    move-result-object v10

    #@99
    .line 444
    .local v10, "domainFromXml":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9b
    invoke-direct {v0, v10}, Landroid/app/backup/FullBackup$BackupScheme;->getDirectoryForCriteriaDomain(Ljava/lang/String;)Ljava/io/File;

    #@9e
    move-result-object v9

    #@9f
    .line 445
    .local v9, "domainDirectory":Ljava/io/File;
    if-nez v9, :cond_3

    #@a1
    .line 446
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@a4
    const/16 v19, 0x2

    #@a6
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@a9
    move-result v18

    #@aa
    if-eqz v18, :cond_2

    #@ac
    .line 447
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@af
    new-instance v19, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v20, "...parsing \""

    #@b7
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v19

    #@bb
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@be
    move-result-object v20

    #@bf
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v19

    #@c3
    const-string/jumbo v20, "\": "

    #@c6
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v19

    #@ca
    .line 448
    const-string/jumbo v20, "domain=\""

    #@cd
    .line 447
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v19

    #@d1
    move-object/from16 v0, v19

    #@d3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v19

    #@d7
    .line 448
    const-string/jumbo v20, "\" invalid; skipping"

    #@da
    .line 447
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v19

    #@de
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v19

    #@e2
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    goto :goto_1

    #@e6
    .line 454
    :cond_3
    const-string/jumbo v18, "path"

    #@e9
    const/16 v19, 0x0

    #@eb
    move-object/from16 v0, p1

    #@ed
    move-object/from16 v1, v19

    #@ef
    move-object/from16 v2, v18

    #@f1
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f4
    move-result-object v18

    #@f5
    .line 453
    move-object/from16 v0, p0

    #@f7
    move-object/from16 v1, v18

    #@f9
    invoke-direct {v0, v9, v1}, Landroid/app/backup/FullBackup$BackupScheme;->extractCanonicalFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    #@fc
    move-result-object v5

    #@fd
    .line 455
    .local v5, "canonicalFile":Ljava/io/File;
    if-eqz v5, :cond_2

    #@ff
    .line 459
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, p1

    #@103
    move-object/from16 v2, p2

    #@105
    move-object/from16 v3, p3

    #@107
    invoke-direct {v0, v1, v2, v3, v10}, Landroid/app/backup/FullBackup$BackupScheme;->parseCurrentTagForDomain(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    #@10a
    move-result-object v4

    #@10b
    .line 461
    .local v4, "activeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@10e
    move-result-object v18

    #@10f
    move-object/from16 v0, v18

    #@111
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@114
    .line 462
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@117
    const/16 v19, 0x2

    #@119
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11c
    move-result v18

    #@11d
    if-eqz v18, :cond_4

    #@11f
    .line 463
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@122
    new-instance v19, Ljava/lang/StringBuilder;

    #@124
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    const-string/jumbo v20, "...parsed "

    #@12a
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v19

    #@12e
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@131
    move-result-object v20

    #@132
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v19

    #@136
    .line 464
    const-string/jumbo v20, " for domain \""

    #@139
    .line 463
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v19

    #@13d
    move-object/from16 v0, v19

    #@13f
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v19

    #@143
    .line 464
    const-string/jumbo v20, "\""

    #@146
    .line 463
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v19

    #@14a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v19

    #@14e
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@151
    .line 471
    :cond_4
    const-string/jumbo v18, "database"

    #@154
    move-object/from16 v0, v18

    #@156
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@159
    move-result v18

    #@15a
    if-eqz v18, :cond_5

    #@15c
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    #@15f
    move-result v18

    #@160
    if-eqz v18, :cond_6

    #@162
    .line 489
    :cond_5
    :goto_2
    const-string/jumbo v18, "sharedpref"

    #@165
    move-object/from16 v0, v18

    #@167
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16a
    move-result v18

    #@16b
    if-eqz v18, :cond_2

    #@16d
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    #@170
    move-result v18

    #@171
    if-nez v18, :cond_2

    #@173
    .line 490
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@176
    move-result-object v18

    #@177
    const-string/jumbo v19, ".xml"

    #@17a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@17d
    move-result v18

    #@17e
    if-nez v18, :cond_2

    #@180
    .line 492
    new-instance v18, Ljava/lang/StringBuilder;

    #@182
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@185
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@188
    move-result-object v19

    #@189
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v18

    #@18d
    const-string/jumbo v19, ".xml"

    #@190
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v18

    #@194
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@197
    move-result-object v8

    #@198
    .line 493
    .local v8, "canonicalXmlPath":Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@19b
    .line 494
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@19e
    const/16 v19, 0x2

    #@1a0
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1a3
    move-result v18

    #@1a4
    if-eqz v18, :cond_2

    #@1a6
    .line 495
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@1a9
    new-instance v19, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string/jumbo v20, "...automatically generated "

    #@1b1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v19

    #@1b5
    move-object/from16 v0, v19

    #@1b7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v19

    #@1bb
    .line 496
    const-string/jumbo v20, ". Ignore if nonexistent."

    #@1be
    .line 495
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v19

    #@1c2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c5
    move-result-object v19

    #@1c6
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c9
    goto/16 :goto_1

    #@1cb
    .line 473
    .end local v8    # "canonicalXmlPath":Ljava/lang/String;
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    #@1cd
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@1d0
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@1d3
    move-result-object v19

    #@1d4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v18

    #@1d8
    const-string/jumbo v19, "-journal"

    #@1db
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v18

    #@1df
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v6

    #@1e3
    .line 474
    .local v6, "canonicalJournalPath":Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1e6
    .line 475
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@1e9
    const/16 v19, 0x2

    #@1eb
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@1ee
    move-result v18

    #@1ef
    if-eqz v18, :cond_7

    #@1f1
    .line 476
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@1f4
    new-instance v19, Ljava/lang/StringBuilder;

    #@1f6
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@1f9
    const-string/jumbo v20, "...automatically generated "

    #@1fc
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ff
    move-result-object v19

    #@200
    move-object/from16 v0, v19

    #@202
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v19

    #@206
    .line 477
    const-string/jumbo v20, ". Ignore if nonexistent."

    #@209
    .line 476
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    move-result-object v19

    #@20d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@210
    move-result-object v19

    #@211
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@214
    .line 480
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    #@216
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@219
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@21c
    move-result-object v19

    #@21d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@220
    move-result-object v18

    #@221
    const-string/jumbo v19, "-wal"

    #@224
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@227
    move-result-object v18

    #@228
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22b
    move-result-object v7

    #@22c
    .line 481
    .local v7, "canonicalWalPath":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@22f
    .line 482
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@232
    const/16 v19, 0x2

    #@234
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@237
    move-result v18

    #@238
    if-eqz v18, :cond_5

    #@23a
    .line 483
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@23d
    new-instance v19, Ljava/lang/StringBuilder;

    #@23f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@242
    const-string/jumbo v20, "...automatically generated "

    #@245
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@248
    move-result-object v19

    #@249
    move-object/from16 v0, v19

    #@24b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v19

    #@24f
    .line 484
    const-string/jumbo v20, ". Ignore if nonexistent."

    #@252
    .line 483
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v19

    #@256
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@259
    move-result-object v19

    #@25a
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@25d
    goto/16 :goto_2

    #@25f
    .line 501
    .end local v4    # "activeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "canonicalFile":Ljava/io/File;
    .end local v6    # "canonicalJournalPath":Ljava/lang/String;
    .end local v7    # "canonicalWalPath":Ljava/lang/String;
    .end local v9    # "domainDirectory":Ljava/io/File;
    .end local v10    # "domainFromXml":Ljava/lang/String;
    :cond_8
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@262
    const/16 v19, 0x2

    #@264
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@267
    move-result v18

    #@268
    if-eqz v18, :cond_b

    #@26a
    .line 502
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@26d
    const-string/jumbo v19, "\n"

    #@270
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@273
    .line 503
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@276
    const-string/jumbo v19, "Xml resource parsing complete."

    #@279
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@27c
    .line 504
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@27f
    const-string/jumbo v19, "Final tally."

    #@282
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@285
    .line 505
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@288
    const-string/jumbo v19, "Includes:"

    #@28b
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28e
    .line 506
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->isEmpty()Z

    #@291
    move-result v18

    #@292
    if-eqz v18, :cond_c

    #@294
    .line 507
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@297
    const-string/jumbo v19, "  ...nothing specified (This means the entirety of app data minus excludes)"

    #@29a
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29d
    .line 518
    :cond_9
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@2a0
    const-string/jumbo v19, "Excludes:"

    #@2a3
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a6
    .line 519
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    #@2a9
    move-result v18

    #@2aa
    if-eqz v18, :cond_e

    #@2ac
    .line 520
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@2af
    const-string/jumbo v19, "  ...nothing to exclude."

    #@2b2
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b5
    .line 527
    :cond_a
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@2b8
    const-string/jumbo v19, "  "

    #@2bb
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2be
    .line 528
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@2c1
    const-string/jumbo v19, "===================================================="

    #@2c4
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c7
    .line 529
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@2ca
    const-string/jumbo v19, "\n"

    #@2cd
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2d0
    .line 419
    :cond_b
    return-void

    #@2d1
    .line 510
    :cond_c
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@2d4
    move-result-object v18

    #@2d5
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d8
    move-result-object v12

    #@2d9
    .local v12, "entry$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@2dc
    move-result v18

    #@2dd
    if-eqz v18, :cond_9

    #@2df
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e2
    move-result-object v11

    #@2e3
    check-cast v11, Ljava/util/Map$Entry;

    #@2e5
    .line 511
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string/jumbo v19, "BackupXmlParserLogging"

    #@2e8
    new-instance v18, Ljava/lang/StringBuilder;

    #@2ea
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2ed
    const-string/jumbo v20, "  domain="

    #@2f0
    move-object/from16 v0, v18

    #@2f2
    move-object/from16 v1, v20

    #@2f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f7
    move-result-object v20

    #@2f8
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2fb
    move-result-object v18

    #@2fc
    check-cast v18, Ljava/lang/String;

    #@2fe
    move-object/from16 v0, v20

    #@300
    move-object/from16 v1, v18

    #@302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v18

    #@306
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@309
    move-result-object v18

    #@30a
    move-object/from16 v0, v19

    #@30c
    move-object/from16 v1, v18

    #@30e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@311
    .line 512
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@314
    move-result-object v18

    #@315
    check-cast v18, Ljava/util/Set;

    #@317
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31a
    move-result-object v17

    #@31b
    .local v17, "includeData$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@31e
    move-result v18

    #@31f
    if-eqz v18, :cond_d

    #@321
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@324
    move-result-object v16

    #@325
    check-cast v16, Ljava/lang/String;

    #@327
    .line 513
    .local v16, "includeData":Ljava/lang/String;
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@32a
    new-instance v19, Ljava/lang/StringBuilder;

    #@32c
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@32f
    const-string/jumbo v20, "  "

    #@332
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    move-result-object v19

    #@336
    move-object/from16 v0, v19

    #@338
    move-object/from16 v1, v16

    #@33a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v19

    #@33e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@341
    move-result-object v19

    #@342
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@345
    goto :goto_3

    #@346
    .line 522
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "entry$iterator":Ljava/util/Iterator;
    .end local v16    # "includeData":Ljava/lang/String;
    .end local v17    # "includeData$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@349
    move-result-object v15

    #@34a
    .local v15, "excludeData$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@34d
    move-result v18

    #@34e
    if-eqz v18, :cond_a

    #@350
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@353
    move-result-object v14

    #@354
    check-cast v14, Ljava/lang/String;

    #@356
    .line 523
    .local v14, "excludeData":Ljava/lang/String;
    const-string/jumbo v18, "BackupXmlParserLogging"

    #@359
    new-instance v19, Ljava/lang/StringBuilder;

    #@35b
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@35e
    const-string/jumbo v20, "  "

    #@361
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v19

    #@365
    move-object/from16 v0, v19

    #@367
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v19

    #@36b
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36e
    move-result-object v19

    #@36f
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@372
    goto :goto_4

    #@373
    .line 439
    nop

    #@374
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method tokenToDirectoryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "domainToken"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 239
    :try_start_0
    const-string/jumbo v1, "f"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 240
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->FILES_DIR:Ljava/io/File;

    #@c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 241
    :cond_0
    const-string/jumbo v1, "db"

    #@14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 242
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DATABASE_DIR:Ljava/io/File;

    #@1c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 243
    :cond_1
    const-string/jumbo v1, "r"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 244
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->ROOT_DIR:Ljava/io/File;

    #@2c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    return-object v1

    #@31
    .line 245
    :cond_2
    const-string/jumbo v1, "sp"

    #@34
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 246
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->SHAREDPREF_DIR:Ljava/io/File;

    #@3c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    return-object v1

    #@41
    .line 247
    :cond_3
    const-string/jumbo v1, "c"

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 248
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->CACHE_DIR:Ljava/io/File;

    #@4c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    return-object v1

    #@51
    .line 249
    :cond_4
    const-string/jumbo v1, "nb"

    #@54
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_5

    #@5a
    .line 250
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->NOBACKUP_DIR:Ljava/io/File;

    #@5c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@5f
    move-result-object v1

    #@60
    return-object v1

    #@61
    .line 251
    :cond_5
    const-string/jumbo v1, "d_f"

    #@64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v1

    #@68
    if-eqz v1, :cond_6

    #@6a
    .line 252
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_FILES_DIR:Ljava/io/File;

    #@6c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    return-object v1

    #@71
    .line 253
    :cond_6
    const-string/jumbo v1, "d_db"

    #@74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_7

    #@7a
    .line 254
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_DATABASE_DIR:Ljava/io/File;

    #@7c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    return-object v1

    #@81
    .line 255
    :cond_7
    const-string/jumbo v1, "d_r"

    #@84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v1

    #@88
    if-eqz v1, :cond_8

    #@8a
    .line 256
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_ROOT_DIR:Ljava/io/File;

    #@8c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    return-object v1

    #@91
    .line 257
    :cond_8
    const-string/jumbo v1, "d_sp"

    #@94
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_9

    #@9a
    .line 258
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_SHAREDPREF_DIR:Ljava/io/File;

    #@9c
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    return-object v1

    #@a1
    .line 259
    :cond_9
    const-string/jumbo v1, "d_c"

    #@a4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result v1

    #@a8
    if-eqz v1, :cond_a

    #@aa
    .line 260
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_CACHE_DIR:Ljava/io/File;

    #@ac
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@af
    move-result-object v1

    #@b0
    return-object v1

    #@b1
    .line 261
    :cond_a
    const-string/jumbo v1, "d_nb"

    #@b4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b7
    move-result v1

    #@b8
    if-eqz v1, :cond_b

    #@ba
    .line 262
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->DEVICE_NOBACKUP_DIR:Ljava/io/File;

    #@bc
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@bf
    move-result-object v1

    #@c0
    return-object v1

    #@c1
    .line 263
    :cond_b
    const-string/jumbo v1, "ef"

    #@c4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_d

    #@ca
    .line 264
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@cc
    if-eqz v1, :cond_c

    #@ce
    .line 265
    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme;->EXTERNAL_DIR:Ljava/io/File;

    #@d0
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    #@d3
    move-result-object v1

    #@d4
    return-object v1

    #@d5
    .line 267
    :cond_c
    return-object v4

    #@d6
    .line 269
    :cond_d
    const-string/jumbo v1, "shared/"

    #@d9
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@dc
    move-result v1

    #@dd
    if-eqz v1, :cond_e

    #@df
    .line 270
    invoke-direct {p0, p1}, Landroid/app/backup/FullBackup$BackupScheme;->sharedDomainToPath(Ljava/lang/String;)Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    return-object v1

    #@e4
    .line 273
    :cond_e
    const-string/jumbo v1, "FullBackup"

    #@e7
    new-instance v2, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v3, "Unrecognized domain "

    #@ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v2

    #@f7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v2

    #@fb
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@fe
    .line 274
    return-object v4

    #@ff
    .line 275
    :catch_0
    move-exception v0

    #@100
    .line 276
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "FullBackup"

    #@103
    new-instance v2, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v3, "Error reading directory for domain: "

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v2

    #@113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v2

    #@117
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    .line 277
    return-object v4
.end method
