.class public Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Lcom/antivirus/a;

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Intent;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    new-instance v0, Lcom/antivirus/ui/scan/e;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/scan/e;-><init>(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->b()V

    return-void
.end method

.method private b()V
    .locals 13

    const/4 v7, 0x0

    const v5, 0x7f090061

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->b:Lcom/antivirus/a;

    sget-object v1, Lcom/antivirus/core/scanners/c;->d:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    iget-object v3, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v9, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    if-nez v9, :cond_6

    iget-object v5, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    iget-object v0, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    iget-object v1, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/antivirus/core/scanners/f;

    iget-object v1, v1, Lcom/antivirus/core/scanners/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/antivirus/core/scanners/f;

    iget-object v2, v2, Lcom/antivirus/core/scanners/f;->g:Ljava/lang/String;

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    :goto_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v10, 0x1

    invoke-virtual {v0, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "packageinstaller"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v10, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    :goto_1
    move-object v7, v8

    :goto_2
    if-eqz v9, :cond_3

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v7

    :goto_4
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v5

    move-object v6, v4

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/antivirus/ui/scan/FileRemover;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "file_path"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "suspicious"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "continue"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "categtory"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "suspicious_package"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v3, v1, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v1, "appName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :cond_5
    move v0, v5

    goto :goto_1

    :cond_6
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->e:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->b:Lcom/antivirus/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->e:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    invoke-static {}, Lcom/antivirus/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/ui/main/ActivationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "ext_a_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/antivirus/ui/scan/f;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/scan/f;-><init>(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, ""

    const v0, 0x7f090042

    invoke-static {p0, v0}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/antivirus/ui/scan/g;

    invoke-direct {v5, p0}, Lcom/antivirus/ui/scan/g;-><init>(Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a:Landroid/app/ProgressDialog;

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerFilesConfig;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->d:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lcom/antivirus/core/scanners/ScannerFilesConfig;->e:Ljava/util/List;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "__SAD"

    sget-object v4, Lcom/antivirus/core/scanners/c;->d:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "__SAH"

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->c:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "ScannerConfig"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0x7d0

    invoke-static {p0, v0, v3, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/ScanBeforeInstallActivity;->a()V

    return-void
.end method
