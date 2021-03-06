.class Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field static final DEX_OPT_FAILED:I = -0x1

.field static final DEX_OPT_PERFORMED:I = 0x1

.field static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@5
    .line 68
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    #@7
    .line 70
    const-string/jumbo v1, "power"

    #@a
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/os/PowerManager;

    #@10
    .line 71
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    #@0
    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 75
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@7
    .line 76
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    #@9
    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    #@b
    .line 77
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@d
    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    .line 78
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@11
    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@13
    .line 74
    return-void
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 82
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@3
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5
    and-int/lit8 v1, v1, 0x4

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 292
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 293
    return-object v5

    #@8
    .line 295
    :cond_0
    new-instance v0, Ljava/io/File;

    #@a
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    #@c
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    .line 296
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 297
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    #@18
    move-result-object v2

    #@19
    .line 299
    .local v2, "oatDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@1b
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 304
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 300
    :catch_0
    move-exception v1

    #@28
    .line 301
    .local v1, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v3, "PackageManager.DexOptimizer"

    #@2b
    const-string/jumbo v4, "Failed to create oat dir"

    #@2e
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 302
    return-object v5

    #@32
    .line 306
    .end local v1    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v2    # "oatDir":Ljava/io/File;
    :cond_1
    return-object v5
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    #@0
    .prologue
    .line 310
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "oat"

    #@5
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    return-object v0
.end method

.method public static isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z
    .locals 11
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 324
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    #@4
    move-result v8

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 326
    return v10

    #@8
    .line 329
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@b
    move-result-object v8

    #@c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "apkPath$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_3

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/String;

    #@1c
    .line 331
    .local v0, "apkPath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    #@1e
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@21
    invoke-static {v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v0

    #@25
    .line 337
    const/16 v8, 0x2f

    #@27
    const/16 v9, 0x40

    #@29
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@2c
    move-result-object v7

    #@2d
    .line 338
    .local v7, "useMarker":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    #@34
    move-result-object v2

    #@35
    .line 339
    .local v2, "currentUserIds":[I
    const/4 v5, 0x0

    #@36
    .local v5, "i":I
    :goto_1
    array-length v8, v2

    #@37
    if-ge v5, v8, :cond_1

    #@39
    .line 341
    aget v8, v2, v5

    #@3b
    invoke-static {v8}, Landroid/os/Environment;->getDataProfilesDeForeignDexDirectory(I)Ljava/io/File;

    #@3e
    move-result-object v6

    #@3f
    .line 342
    .local v6, "profileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    #@41
    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@44
    .line 343
    .local v4, "foreignUseMark":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    #@47
    move-result v8

    #@48
    if-eqz v8, :cond_2

    #@4a
    .line 344
    const/4 v8, 0x1

    #@4b
    return v8

    #@4c
    .line 332
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@4d
    .line 334
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "PackageManager.DexOptimizer"

    #@50
    const-string/jumbo v9, "Failed to get canonical path"

    #@53
    invoke-static {v8, v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@56
    goto :goto_0

    #@57
    .line 339
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "currentUserIds":[I
    .restart local v4    # "foreignUseMark":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v6    # "profileDir":Ljava/io/File;
    .restart local v7    # "useMarker":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@59
    goto :goto_1

    #@5a
    .line 348
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "currentUserIds":[I
    .end local v4    # "foreignUseMark":Ljava/io/File;
    .end local v5    # "i":I
    .end local v6    # "profileDir":Ljava/io/File;
    .end local v7    # "useMarker":Ljava/lang/String;
    :cond_3
    return v10
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    .locals 32
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilerFilter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    if-eqz p3, :cond_0

    #@2
    .line 155
    move-object/from16 v17, p3

    #@4
    .line 157
    .local v17, "instructionSets":[Ljava/lang/String;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_1

    #@a
    .line 158
    const/4 v2, 0x0

    #@b
    return v2

    #@c
    .line 155
    .end local v17    # "instructionSets":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    #@e
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@10
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@13
    move-result-object v17

    #@14
    .restart local v17    # "instructionSets":[Ljava/lang/String;
    goto :goto_0

    #@15
    .line 161
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@18
    move-result-object v24

    #@19
    .line 162
    .local v24, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@1b
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1d
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1f
    invoke-static {v2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@22
    move-result v4

    #@23
    .line 164
    .local v4, "sharedGid":I
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    #@26
    move-result v19

    #@27
    .line 167
    .local v19, "isProfileGuidedFilter":Z
    if-eqz v19, :cond_3

    #@29
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageDexOptimizer;->isUsedByOtherApps(Landroid/content/pm/PackageParser$Package;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_3

    #@2f
    .line 168
    const/16 p4, 0x0

    #@31
    .line 170
    .local p4, "checkProfiles":Z
    invoke-static/range {p5 .. p5}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object p5

    #@35
    .line 171
    invoke-static/range {p5 .. p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_2

    #@3b
    .line 172
    new-instance v2, Ljava/lang/IllegalStateException;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 174
    :cond_2
    const/16 v19, 0x0

    #@45
    .line 178
    .end local v19    # "isProfileGuidedFilter":Z
    .end local p4    # "checkProfiles":Z
    :cond_3
    const/16 v22, 0x0

    #@47
    .line 179
    .local v22, "newProfile":Z
    if-eqz p4, :cond_4

    #@49
    if-eqz v19, :cond_4

    #@4b
    .line 182
    :try_start_0
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@4f
    move-object/from16 v0, p1

    #@51
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@53
    invoke-virtual {v2, v4, v5}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;)Z
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result v22

    #@57
    .line 188
    .end local v22    # "newProfile":Z
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    #@59
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5b
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5d
    and-int/lit16 v2, v2, 0x4000

    #@5f
    if-eqz v2, :cond_5

    #@61
    const/16 v29, 0x1

    #@63
    .line 189
    .local v29, "vmSafeMode":Z
    :goto_2
    move-object/from16 v0, p1

    #@65
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@67
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    #@69
    and-int/lit8 v2, v2, 0x2

    #@6b
    if-eqz v2, :cond_6

    #@6d
    const/4 v13, 0x1

    #@6e
    .line 191
    .local v13, "debuggable":Z
    :goto_3
    const/16 v25, 0x0

    #@70
    .line 192
    .local v25, "performedDexOpt":Z
    const/16 v28, 0x1

    #@72
    .line 194
    .local v28, "successfulDexOpt":Z
    invoke-static/range {v17 .. v17}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@75
    move-result-object v14

    #@76
    .line 195
    .local v14, "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x0

    #@77
    array-length v0, v14

    #@78
    move/from16 v31, v0

    #@7a
    move/from16 v30, v2

    #@7c
    :goto_4
    move/from16 v0, v30

    #@7e
    move/from16 v1, v31

    #@80
    if-ge v0, v1, :cond_11

    #@82
    aget-object v6, v14, v30

    #@84
    .line 196
    .local v6, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@87
    move-result-object v23

    #@88
    .local v23, "path$iterator":Ljava/util/Iterator;
    :goto_5
    :pswitch_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@8b
    move-result v2

    #@8c
    if-eqz v2, :cond_10

    #@8e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@91
    move-result-object v3

    #@92
    check-cast v3, Ljava/lang/String;

    #@94
    .line 199
    .local v3, "path":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p5

    #@96
    move/from16 v1, v22

    #@98
    invoke-static {v3, v6, v0, v1}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@9b
    move-result v7

    #@9c
    .line 205
    .local v7, "dexoptNeeded":I
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    #@a1
    move-result v7

    #@a2
    .line 212
    const/4 v8, 0x0

    #@a3
    .line 213
    .local v8, "oatDir":Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    #@a6
    .line 227
    new-instance v2, Ljava/lang/IllegalStateException;

    #@a8
    new-instance v5, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v10, "Invalid dexopt:"

    #@b0
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v2

    #@c0
    .line 183
    .end local v3    # "path":Ljava/lang/String;
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v8    # "oatDir":Ljava/lang/String;
    .end local v13    # "debuggable":Z
    .end local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v23    # "path$iterator":Ljava/util/Iterator;
    .end local v25    # "performedDexOpt":Z
    .end local v28    # "successfulDexOpt":Z
    .end local v29    # "vmSafeMode":Z
    .restart local v22    # "newProfile":Z
    :catch_0
    move-exception v16

    #@c1
    .line 184
    .local v16, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@c4
    const-string/jumbo v5, "Failed to merge profiles"

    #@c7
    move-object/from16 v0, v16

    #@c9
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@cc
    goto :goto_1

    #@cd
    .line 188
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v22    # "newProfile":Z
    :cond_5
    const/16 v29, 0x0

    #@cf
    .restart local v29    # "vmSafeMode":Z
    goto :goto_2

    #@d0
    .line 189
    :cond_6
    const/4 v13, 0x0

    #@d1
    .restart local v13    # "debuggable":Z
    goto :goto_3

    #@d2
    .line 201
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v14    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v23    # "path$iterator":Ljava/util/Iterator;
    .restart local v25    # "performedDexOpt":Z
    .restart local v28    # "successfulDexOpt":Z
    :catch_1
    move-exception v18

    #@d3
    .line 202
    .local v18, "ioe":Ljava/io/IOException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@d6
    new-instance v5, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v10, "IOException reading apk: "

    #@de
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v5

    #@e2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v5

    #@ea
    move-object/from16 v0, v18

    #@ec
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ef
    .line 203
    const/4 v2, -0x1

    #@f0
    return v2

    #@f1
    .line 217
    .end local v18    # "ioe":Ljava/io/IOException;
    .restart local v7    # "dexoptNeeded":I
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v15, "dex2oat"

    #@f4
    .line 218
    .local v15, "dexoptType":Ljava/lang/String;
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, p1

    #@f8
    invoke-direct {v0, v1, v6}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    #@fb
    move-result-object v8

    #@fc
    .line 230
    .end local v8    # "oatDir":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x0

    #@fd
    .line 231
    .local v12, "sharedLibrariesPath":Ljava/lang/String;
    if-eqz p2, :cond_9

    #@ff
    move-object/from16 v0, p2

    #@101
    array-length v2, v0

    #@102
    if-eqz v2, :cond_9

    #@104
    .line 232
    new-instance v27, Ljava/lang/StringBuilder;

    #@106
    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    #@109
    .line 233
    .local v27, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    #@10a
    move-object/from16 v0, p2

    #@10c
    array-length v5, v0

    #@10d
    :goto_7
    if-ge v2, v5, :cond_8

    #@10f
    aget-object v21, p2, v2

    #@111
    .line 234
    .local v21, "lib":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    #@114
    move-result v10

    #@115
    if-eqz v10, :cond_7

    #@117
    .line 235
    const-string/jumbo v10, ":"

    #@11a
    move-object/from16 v0, v27

    #@11c
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    .line 237
    :cond_7
    move-object/from16 v0, v27

    #@121
    move-object/from16 v1, v21

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    .line 233
    add-int/lit8 v2, v2, 0x1

    #@128
    goto :goto_7

    #@129
    .line 221
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v21    # "lib":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "oatDir":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v15, "patchoat"

    #@12c
    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    #@12d
    .line 224
    .end local v15    # "dexoptType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v15, "self patchoat"

    #@130
    .restart local v15    # "dexoptType":Ljava/lang/String;
    goto :goto_6

    #@131
    .line 239
    .end local v8    # "oatDir":Ljava/lang/String;
    .restart local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v12

    #@135
    .line 241
    .end local v12    # "sharedLibrariesPath":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@138
    new-instance v5, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v10, "Running dexopt ("

    #@140
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v5

    #@144
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v5

    #@148
    const-string/jumbo v10, ") on: "

    #@14b
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v5

    #@14f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v5

    #@153
    const-string/jumbo v10, " pkg="

    #@156
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v5

    #@15a
    .line 242
    move-object/from16 v0, p1

    #@15c
    iget-object v10, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@15e
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@160
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v5

    #@164
    .line 242
    const-string/jumbo v10, " isa="

    #@167
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v5

    #@16b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v5

    #@16f
    .line 243
    const-string/jumbo v10, " vmSafeMode="

    #@172
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v5

    #@176
    move/from16 v0, v29

    #@178
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v5

    #@17c
    .line 243
    const-string/jumbo v10, " debuggable="

    #@17f
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v5

    #@183
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@186
    move-result-object v5

    #@187
    .line 244
    const-string/jumbo v10, " target-filter="

    #@18a
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v5

    #@18e
    move-object/from16 v0, p5

    #@190
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@193
    move-result-object v5

    #@194
    .line 244
    const-string/jumbo v10, " oatDir = "

    #@197
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v5

    #@19b
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v5

    #@19f
    .line 245
    const-string/jumbo v10, " sharedLibraries="

    #@1a2
    .line 241
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v5

    #@1a6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v5

    #@1aa
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ad
    move-result-object v5

    #@1ae
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1b1
    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    #@1b4
    move-result v2

    #@1b5
    if-nez v2, :cond_a

    #@1b7
    if-eqz v19, :cond_b

    #@1b9
    :cond_a
    const/16 v20, 0x0

    #@1bb
    .line 248
    .local v20, "isPublic":Z
    :goto_8
    if-eqz v19, :cond_c

    #@1bd
    const/16 v26, 0x20

    #@1bf
    .line 250
    .local v26, "profileFlag":I
    :goto_9
    if-eqz v20, :cond_d

    #@1c1
    const/4 v2, 0x2

    #@1c2
    move v5, v2

    #@1c3
    .line 251
    :goto_a
    if-eqz v29, :cond_e

    #@1c5
    const/4 v2, 0x4

    #@1c6
    .line 250
    :goto_b
    or-int/2addr v5, v2

    #@1c7
    .line 252
    if-eqz v13, :cond_f

    #@1c9
    const/16 v2, 0x8

    #@1cb
    .line 250
    :goto_c
    or-int/2addr v2, v5

    #@1cc
    or-int v2, v2, v26

    #@1ce
    or-int/lit8 v2, v2, 0x10

    #@1d0
    .line 249
    move-object/from16 v0, p0

    #@1d2
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    #@1d5
    move-result v9

    #@1d6
    .line 257
    .local v9, "dexFlags":I
    :try_start_2
    move-object/from16 v0, p0

    #@1d8
    iget-object v2, v0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    #@1da
    move-object/from16 v0, p1

    #@1dc
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    #@1de
    .line 258
    move-object/from16 v0, p1

    #@1e0
    iget-object v11, v0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    #@1e2
    move-object/from16 v10, p5

    #@1e4
    .line 257
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_2 .. :try_end_2} :catch_2

    #@1e7
    .line 260
    const/16 v25, 0x1

    #@1e9
    goto/16 :goto_5

    #@1eb
    .line 247
    .end local v9    # "dexFlags":I
    .end local v20    # "isPublic":Z
    .end local v26    # "profileFlag":I
    :cond_b
    const/16 v20, 0x1

    #@1ed
    .restart local v20    # "isPublic":Z
    goto :goto_8

    #@1ee
    .line 248
    :cond_c
    const/16 v26, 0x0

    #@1f0
    .restart local v26    # "profileFlag":I
    goto :goto_9

    #@1f1
    .line 250
    :cond_d
    const/4 v2, 0x0

    #@1f2
    move v5, v2

    #@1f3
    goto :goto_a

    #@1f4
    .line 251
    :cond_e
    const/4 v2, 0x0

    #@1f5
    goto :goto_b

    #@1f6
    .line 252
    :cond_f
    const/4 v2, 0x0

    #@1f7
    goto :goto_c

    #@1f8
    .line 261
    .restart local v9    # "dexFlags":I
    :catch_2
    move-exception v16

    #@1f9
    .line 262
    .restart local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v2, "PackageManager.DexOptimizer"

    #@1fc
    const-string/jumbo v5, "Failed to dexopt"

    #@1ff
    move-object/from16 v0, v16

    #@201
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@204
    .line 263
    const/16 v28, 0x0

    #@206
    goto/16 :goto_5

    #@208
    .line 195
    .end local v3    # "path":Ljava/lang/String;
    .end local v7    # "dexoptNeeded":I
    .end local v9    # "dexFlags":I
    .end local v15    # "dexoptType":Ljava/lang/String;
    .end local v16    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v20    # "isPublic":Z
    .end local v26    # "profileFlag":I
    :cond_10
    add-int/lit8 v2, v30, 0x1

    #@20a
    move/from16 v30, v2

    #@20c
    goto/16 :goto_4

    #@20e
    .line 268
    .end local v6    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v23    # "path$iterator":Ljava/util/Iterator;
    :cond_11
    if-eqz v28, :cond_13

    #@210
    .line 273
    if-eqz v25, :cond_12

    #@212
    const/4 v2, 0x1

    #@213
    :goto_d
    return v2

    #@214
    :cond_12
    const/4 v2, 0x0

    #@215
    goto :goto_d

    #@216
    .line 275
    :cond_13
    const/4 v2, -0x1

    #@217
    return v2

    #@218
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    #@0
    .prologue
    .line 123
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    #@0
    .prologue
    .line 116
    return p1
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    #@0
    .prologue
    .line 130
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@2
    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 131
    .local v2, "instructionSets":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 133
    .local v0, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    #@d
    move-result-object v6

    #@e
    .line 135
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    #@f
    array-length v9, v0

    #@10
    :goto_0
    if-ge v8, v9, :cond_1

    #@12
    aget-object v1, v0, v8

    #@14
    .line 136
    .local v1, "instructionSet":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v11, "Instruction Set: "

    #@1c
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v10

    #@20
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v10

    #@24
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v10

    #@28
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 137
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    #@2e
    .line 138
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v5

    #@32
    .local v5, "path$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_0

    #@38
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v4

    #@3c
    check-cast v4, Ljava/lang/String;

    #@3e
    .line 139
    .local v4, "path":Ljava/lang/String;
    const/4 v7, 0x0

    #@3f
    .line 141
    .local v7, "status":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v1}, Ldalvik/system/DexFile;->getDexFileStatus(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result-object v7

    #@43
    .line 145
    .local v7, "status":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v11, "path: "

    #@4b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v10

    #@53
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v10

    #@57
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@5a
    .line 146
    new-instance v10, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v11, "status: "

    #@62
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v10

    #@66
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v10

    #@6a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v10

    #@6e
    invoke-virtual {p1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    #@71
    goto :goto_1

    #@72
    .line 142
    .local v7, "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    #@73
    .line 143
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v11, "[Exception]: "

    #@7b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v10

    #@7f
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@82
    move-result-object v11

    #@83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v10

    #@87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    .local v7, "status":Ljava/lang/String;
    goto :goto_2

    #@8c
    .line 148
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "status":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    #@8f
    .line 135
    add-int/lit8 v8, v8, 0x1

    #@91
    goto/16 :goto_0

    #@93
    .line 129
    .end local v1    # "instructionSet":Ljava/lang/String;
    .end local v5    # "path$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "sharedLibraries"    # [Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "checkProfiles"    # Z
    .param p5, "targetCompilationFilter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@5
    .line 96
    .local v0, "useLock":Z
    if-eqz v0, :cond_0

    #@7
    .line 97
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@9
    new-instance v3, Landroid/os/WorkSource;

    #@b
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@d
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@f
    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    #@12
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@15
    .line 98
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@17
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1a
    .line 101
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    move-result v1

    #@1e
    .line 104
    if-eqz v0, :cond_1

    #@20
    .line 105
    :try_start_2
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@22
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@25
    :cond_1
    monitor-exit v2

    #@26
    .line 101
    return v1

    #@27
    .line 103
    :catchall_0
    move-exception v1

    #@28
    .line 104
    if-eqz v0, :cond_2

    #@2a
    .line 105
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2c
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    #@2f
    .line 103
    :cond_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    .line 94
    .end local v0    # "useLock":Z
    :catchall_1
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
.end method

.method systemReady()V
    .locals 1

    #@0
    .prologue
    .line 314
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    #@3
    .line 313
    return-void
.end method
