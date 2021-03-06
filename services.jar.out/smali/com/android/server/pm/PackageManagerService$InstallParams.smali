.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final certificates:[[Ljava/security/cert/Certificate;

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;[[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "certificates"    # [[Ljava/security/cert/Certificate;

    .prologue
    .line 12862
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12866
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 12867
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 12868
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 12869
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 12870
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 12871
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 12872
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 12873
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 12874
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 12875
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 12876
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    .line 12865
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 14
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 12886
    iget-object v8, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 12887
    .local v8, "packageName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 12888
    .local v4, "installLocation":I
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 12890
    .local v6, "onSd":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 12893
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 12898
    .local v5, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v0, v5

    .line 12899
    .local v0, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_0

    .line 12900
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 12901
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    .line 12902
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 12906
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz v0, :cond_2

    .line 12921
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 12923
    .local v2, "downgradeRequested":Z
    :goto_1
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 12926
    .local v7, "packageDebuggable":Z
    :goto_2
    if-eqz v2, :cond_1

    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_6

    move v1, v7

    .line 12927
    .local v1, "downgradePermitted":Z
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    .line 12929
    :try_start_1
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap22(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12937
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v7    # "packageDebuggable":Z
    :cond_2
    if-eqz v5, :cond_b

    .line 12938
    :try_start_2
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_e

    .line 12940
    iget-object v12, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    .line 12941
    if-eqz v6, :cond_7

    .line 12942
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v12, "Cannot install update to system app on sdcard"

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12943
    const/4 v10, -0x3

    monitor-exit v11

    return v10

    .line 12888
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "onSd":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "onSd":Z
    goto :goto_0

    .line 12921
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "downgradeRequested":Z
    goto :goto_1

    .line 12923
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "packageDebuggable":Z
    goto :goto_2

    :cond_6
    move v1, v10

    .line 12926
    goto :goto_3

    .line 12930
    .restart local v1    # "downgradePermitted":Z
    :catch_0
    move-exception v3

    .line 12931
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v10, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Downgrade detected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12932
    const/4 v10, -0x7

    monitor-exit v11

    return v10

    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "packageDebuggable":Z
    :cond_7
    monitor-exit v11

    .line 12945
    return v10

    .line 12947
    :cond_8
    if-eqz v6, :cond_9

    monitor-exit v11

    .line 12949
    return v13

    .line 12952
    :cond_9
    if-ne v4, v10, :cond_a

    monitor-exit v11

    .line 12954
    return v10

    .line 12955
    :cond_a
    if-ne v4, v13, :cond_c

    :cond_b
    monitor-exit v11

    .line 12973
    if-eqz v6, :cond_f

    .line 12974
    return v13

    .line 12959
    :cond_c
    :try_start_4
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    if-eqz v12, :cond_d

    monitor-exit v11

    .line 12960
    return v13

    :cond_d
    monitor-exit v11

    .line 12962
    return v10

    .line 12967
    :cond_e
    const/4 v10, -0x4

    monitor-exit v11

    return v10

    .line 12890
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 12976
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_f
    iget v10, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v10
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 13277
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 13278
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 13273
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 13284
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13285
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 13283
    return-void
.end method

.method public handleStartCopy()V
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12986
    const/16 v33, 0x1

    .line 12989
    .local v33, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    .line 12990
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_c

    .line 12991
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 12992
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13001
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_e

    const/16 v25, 0x1

    .line 13002
    .local v25, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_f

    const/16 v24, 0x1

    .line 13003
    .local v24, "onInt":Z
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_10

    const/16 v19, 0x1

    .line 13004
    .local v19, "ephemeral":Z
    :goto_3
    const/16 v29, 0x0

    .line 13006
    .local v29, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v24, :cond_11

    if-eqz v25, :cond_11

    .line 13008
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13009
    const/16 v33, -0x13

    .line 13058
    .end local v29    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_2

    .line 13059
    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v21, v0

    .line 13060
    .local v21, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_14

    .line 13061
    const/16 v33, -0x13

    .line 13100
    .end local v21    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap10(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v17

    .line 13101
    .local v17, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13103
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_b

    .line 13106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 13107
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v6, v4, :cond_3

    .line 13108
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 13115
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-nez v4, :cond_1e

    const/16 v31, -0x1

    .line 13119
    .local v31, "requiredUid":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v4, :cond_1f

    const/16 v26, -0x1

    .line 13123
    .local v26, "optionalUid":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_22

    const/4 v4, -0x1

    move/from16 v0, v31

    if-ne v0, v4, :cond_4

    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_22

    .line 13124
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    .line 13123
    if-eqz v4, :cond_22

    .line 13125
    new-instance v39, Landroid/content/Intent;

    .line 13126
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 13125
    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13127
    .local v39, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13128
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 13129
    const-string/jumbo v7, "application/vnd.android.package-archive"

    .line 13128
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 13130
    const/4 v4, 0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13134
    const-string/jumbo v7, "application/vnd.android.package-archive"

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v9, 0x0

    .line 13133
    move-object/from16 v0, v39

    invoke-static {v4, v0, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap18(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v30

    .line 13142
    .local v30, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get9(Lcom/android/server/pm/PackageManagerService;)I

    move-result v40

    add-int/lit8 v7, v40, 0x1

    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    .line 13144
    .local v40, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13146
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 13147
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 13146
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13149
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    .line 13150
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13149
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13152
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    .line 13153
    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 13152
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13155
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    .line 13156
    move-object/from16 v0, v29

    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 13155
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v4, :cond_8

    .line 13159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 13160
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    .line 13161
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 13160
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13163
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v4, :cond_6

    .line 13164
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    .line 13165
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 13164
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13167
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v4, :cond_7

    .line 13168
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    .line 13169
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 13168
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13171
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v4, :cond_8

    .line 13172
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 13173
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 13172
    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13177
    :cond_8
    new-instance v41, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v41

    move/from16 v1, v31

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 13180
    .local v41, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 13182
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v41

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v38

    .line 13189
    .local v38, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v38, :cond_9

    .line 13190
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v16

    .line 13191
    .local v16, "N":I
    if-nez v16, :cond_20

    .line 13192
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Additional verifiers required, but none installed."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13193
    const/16 v33, -0x16

    .line 13205
    .end local v16    # "N":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 13206
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, v39

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13207
    .local v5, "optionalIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13209
    const-string/jumbo v7, "application/vnd.android.package-archive"

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v9, 0x0

    .line 13208
    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap18(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v28

    .line 13210
    .local v28, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13211
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 13210
    move-object/from16 v0, v28

    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v27

    .line 13212
    .local v27, "optionalVerifierComponent":Landroid/content/ComponentName;
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13213
    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 13214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 13215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 13230
    .end local v5    # "optionalIntent":Landroid/content/Intent;
    .end local v27    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .end local v28    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13231
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 13230
    move-object/from16 v0, v30

    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v32

    .line 13232
    .local v32, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_b

    .line 13233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 13235
    const-string/jumbo v4, "verification"

    const-wide/32 v8, 0x40000

    .line 13234
    move/from16 v0, v40

    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 13241
    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13242
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 13243
    const-string/jumbo v10, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 13244
    new-instance v11, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v11, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    .line 13252
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, v39

    move-object v9, v6

    .line 13242
    invoke-virtual/range {v7 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 13258
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13269
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v26    # "optionalUid":I
    .end local v30    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "requiredUid":I
    .end local v32    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v39    # "verification":Landroid/content/Intent;
    .end local v40    # "verificationId":I
    .end local v41    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_b
    :goto_9
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 12985
    return-void

    .line 12993
    .end local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v19    # "ephemeral":Z
    .end local v24    # "onInt":Z
    .end local v25    # "onSd":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 12994
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 12995
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 12997
    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Invalid stage location"

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13001
    :cond_e
    const/16 v25, 0x0

    .restart local v25    # "onSd":Z
    goto/16 :goto_1

    .line 13002
    :cond_f
    const/16 v24, 0x0

    .restart local v24    # "onInt":Z
    goto/16 :goto_2

    .line 13003
    :cond_10
    const/16 v19, 0x0

    .restart local v19    # "ephemeral":Z
    goto/16 :goto_3

    .line 13010
    .restart local v29    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_11
    if-eqz v25, :cond_12

    if-eqz v19, :cond_12

    .line 13011
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13012
    const/16 v33, -0x13

    goto/16 :goto_4

    .line 13014
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13015
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13014
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v29

    .line 13017
    .local v29, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz v19, :cond_13

    .line 13018
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgLite for install: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13025
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v29

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 13026
    const/4 v7, -0x1

    .line 13025
    if-ne v4, v7, :cond_1

    .line 13028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v36

    .line 13030
    .local v36, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 13029
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v22

    .line 13032
    .local v22, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 13033
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13032
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v34

    .line 13036
    .local v34, "sizeBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v8, v34, v22

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V

    .line 13037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 13038
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13037
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 13050
    :goto_a
    move-object/from16 v0, v29

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 13051
    const/4 v7, -0x6

    .line 13050
    if-ne v4, v7, :cond_1

    .line 13053
    const/4 v4, -0x1

    .line 13052
    move-object/from16 v0, v29

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_4

    .line 13039
    :catch_0
    move-exception v18

    .line 13040
    .local v18, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Failed to free cache"

    move-object/from16 v0, v18

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 13062
    .end local v18    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v22    # "lowThreshold":J
    .end local v29    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v34    # "sizeBytes":J
    .end local v36    # "storage":Landroid/os/storage/StorageManager;
    .restart local v21    # "loc":I
    :cond_14
    const/4 v4, -0x4

    move/from16 v0, v21

    if-ne v0, v4, :cond_15

    .line 13063
    const/16 v33, -0x1

    goto/16 :goto_5

    .line 13064
    :cond_15
    const/4 v4, -0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_16

    .line 13065
    const/16 v33, -0x4

    goto/16 :goto_5

    .line 13066
    :cond_16
    const/4 v4, -0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_17

    .line 13067
    const/16 v33, -0x2

    goto/16 :goto_5

    .line 13068
    :cond_17
    const/4 v4, -0x6

    move/from16 v0, v21

    if-ne v0, v4, :cond_18

    .line 13069
    const/16 v33, -0x3

    goto/16 :goto_5

    .line 13070
    :cond_18
    const/4 v4, -0x5

    move/from16 v0, v21

    if-ne v0, v4, :cond_19

    .line 13071
    const/16 v33, -0x14

    goto/16 :goto_5

    .line 13074
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v21

    .line 13075
    const/4 v4, -0x7

    move/from16 v0, v21

    if-ne v0, v4, :cond_1a

    .line 13076
    const/16 v33, -0x19

    goto/16 :goto_5

    .line 13077
    :cond_1a
    if-nez v25, :cond_2

    if-nez v24, :cond_2

    .line 13079
    const/4 v4, 0x2

    move/from16 v0, v21

    if-ne v0, v4, :cond_1b

    .line 13081
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13082
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13083
    :cond_1b
    const/4 v4, 0x3

    move/from16 v0, v21

    if-ne v0, v4, :cond_1d

    .line 13084
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 13085
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13087
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13088
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13093
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13094
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13116
    .end local v21    # "loc":I
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v17    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 13117
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 13116
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v31

    .restart local v31    # "requiredUid":I
    goto/16 :goto_6

    .line 13120
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 13121
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 13120
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v26

    .restart local v26    # "optionalUid":I
    goto/16 :goto_7

    .line 13195
    .restart local v16    # "N":I
    .restart local v30    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v39    # "verification":Landroid/content/Intent;
    .restart local v40    # "verificationId":I
    .restart local v41    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_20
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_b
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_9

    .line 13196
    move-object/from16 v0, v38

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/ComponentName;

    .line 13198
    .local v42, "verifierComponent":Landroid/content/ComponentName;
    new-instance v37, Landroid/content/Intent;

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13199
    .local v37, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 13195
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 13217
    .end local v16    # "N":I
    .end local v20    # "i":I
    .end local v37    # "sufficientIntent":Landroid/content/Intent;
    .end local v42    # "verifierComponent":Landroid/content/ComponentName;
    .restart local v5    # "optionalIntent":Landroid/content/Intent;
    .restart local v27    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .restart local v28    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 13218
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    .line 13225
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13217
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 13226
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    goto/16 :goto_8

    .line 13265
    .end local v5    # "optionalIntent":Landroid/content/Intent;
    .end local v27    # "optionalVerifierComponent":Landroid/content/ComponentName;
    .end local v28    # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v30    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v38    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v39    # "verification":Landroid/content/Intent;
    .end local v40    # "verificationId":I
    .end local v41    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v33

    goto/16 :goto_9
.end method

.method public isForwardLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13289
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12882
    const-string/jumbo v1, " file="

    .line 12881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12882
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 12881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12882
    const-string/jumbo v1, " cid="

    .line 12881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12882
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    .line 12881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 12882
    const-string/jumbo v1, "}"

    .line 12881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
