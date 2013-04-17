.class public final Lcom/tencent/tmsecure/module/software/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    invoke-virtual {v0, v3, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppVersionStatus(Ljava/lang/String;I)I

    invoke-virtual {v0, v2, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-virtual {v0, v3, v3, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installAppSilently(Ljava/lang/String;)Z

    invoke-virtual {v0, v3, v3, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->uninstallAppSilently(Ljava/lang/String;)Z

    invoke-virtual {v0, v2, v2, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppsCanMovable(IIZ)Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->startUpApp(Ljava/lang/String;)Z

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->goToInstalledAppDetails(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v3, v2, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/tmsecure/module/software/AppEntity;

    invoke-direct {v1}, Lcom/tencent/tmsecure/module/software/AppEntity;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Lcom/tencent/tmsecure/module/software/AppEntity;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    return-void
.end method
