.class public Lorg/antivirus/ui/scan/results/ScanResultsExpandable;
.super Lorg/antivirus/ui/BaseToolActivity;

# interfaces
.implements Lorg/antivirus/ui/IhandleMenuItem;


# instance fields
.field public a:Lorg/antivirus/core/scanners/g;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lorg/antivirus/AVService$LocalBinder;

.field private g:Lorg/antivirus/ui/scan/results/d;

.field private h:Landroid/app/AlertDialog;

.field private i:Z

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v0, Lorg/antivirus/ui/scan/results/k;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/scan/results/k;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->j:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->d()V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Lorg/antivirus/core/b/a;)V
    .locals 6

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7f020027

    const v3, 0x7f020028

    const-string v4, ""

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(ZIILjava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f020029

    const v3, 0x7f02002a

    const-string v4, ""

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(ZIILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x100f

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The app: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->i:Z

    return p1
.end method

.method private b(I)Z
    .locals 4

    const/4 v3, 0x3

    if-nez p1, :cond_0

    const-string v0, "scan_results"

    const-string v1, "log"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f030030

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x7f0900be

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0200ba

    invoke-virtual {v1, v3, v0}, Landroid/app/Dialog;->setFeatureDrawableResource(II)V

    const v0, 0x7f0800e2

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900ca

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e3

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900cc

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e5

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e6

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900cb

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e7

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e8

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0900cd

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800e9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800ea

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "3.0.3-174757\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0900bc

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lorg/antivirus/ui/scan/results/m;

    invoke-direct {v2, p0, v1}, Lorg/antivirus/ui/scan/results/m;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->f:Lorg/antivirus/AVService$LocalBinder;

    if-nez v0, :cond_0

    const-string v0, "Service is null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    if-nez v0, :cond_1

    const-string v0, " mAdapter is null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->f:Lorg/antivirus/AVService$LocalBinder;

    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService$LocalBinder;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/antivirus/core/scanners/g;->a:J

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    if-nez v0, :cond_3

    const-string v0, "ScanResults is null"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090152

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090153

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090010

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/scan/results/n;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/scan/results/n;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lorg/antivirus/ui/scan/results/o;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/scan/results/o;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->b:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->c:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->d:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->e:Ljava/lang/String;

    :cond_5
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_6

    const-string v0, "Can\'t get headerTop in Header View"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const v1, 0x7f0800ce

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_7

    const-string v0, "Can\'t get headerBottom in Header View"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070038

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0900c0

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0900c1

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    sget-object v0, Lorg/antivirus/ui/scan/results/i;->a:Lorg/antivirus/ui/scan/results/i;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/i;)Lorg/antivirus/ui/scan/results/j;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/scan/results/a;

    if-nez v0, :cond_9

    const-string v0, "null AppsResultsData"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070039

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0900c9

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    :cond_a
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ad;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    sget-object v0, Lorg/antivirus/ui/scan/results/i;->b:Lorg/antivirus/ui/scan/results/i;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/i;)Lorg/antivirus/ui/scan/results/j;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/scan/results/q;

    if-nez v0, :cond_c

    const-string v0, "null SettingsResultsData"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/antivirus/ui/Tools;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/antivirus/ui/scan/results/a;

    invoke-direct {v4, v0, v2}, Lorg/antivirus/ui/scan/results/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-static {v2, v0}, Lorg/antivirus/ui/Tools;->getPackageCategory(Lorg/antivirus/core/scanners/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lorg/antivirus/ui/scan/results/j;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v4, Lorg/antivirus/ui/scan/results/a;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v4}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_15

    :cond_e
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-eqz v0, :cond_16

    :cond_f
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-boolean v0, v0, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    if-eqz v0, :cond_16

    :cond_10
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    sget-object v0, Lorg/antivirus/ui/scan/results/i;->c:Lorg/antivirus/ui/scan/results/i;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/i;)Lorg/antivirus/ui/scan/results/j;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/scan/results/b;

    if-nez v0, :cond_14

    const-string v0, "null ContentResultsData"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f0900c6

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v2, Lorg/antivirus/ui/scan/results/q;

    sget-object v4, Lorg/antivirus/ui/scan/results/r;->a:Lorg/antivirus/ui/scan/results/r;

    invoke-direct {v2, v0, v4}, Lorg/antivirus/ui/scan/results/q;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/r;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    :cond_12
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ad;->c()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0900c7

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v2, Lorg/antivirus/ui/scan/results/q;

    sget-object v4, Lorg/antivirus/ui/scan/results/r;->b:Lorg/antivirus/ui/scan/results/r;

    invoke-direct {v2, v0, v4}, Lorg/antivirus/ui/scan/results/q;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/r;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    :cond_13
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f090024

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v2, Lorg/antivirus/ui/scan/results/q;

    sget-object v4, Lorg/antivirus/ui/scan/results/r;->c:Lorg/antivirus/ui/scan/results/r;

    invoke-direct {v2, v0, v4}, Lorg/antivirus/ui/scan/results/q;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/r;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    goto/16 :goto_3

    :cond_14
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    :cond_15
    :goto_4
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->onResume()V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v2, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    move v1, v3

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lorg/antivirus/ui/scan/results/b;

    sget-object v4, Lorg/antivirus/ui/scan/results/c;->a:Lorg/antivirus/ui/scan/results/c;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v0, v5}, Lorg/antivirus/ui/scan/results/b;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-static {v4, v0}, Lorg/antivirus/ui/Tools;->getFileCategory(Lorg/antivirus/core/scanners/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lorg/antivirus/ui/scan/results/j;->e:Ljava/lang/String;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v3}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_17
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v6, v0, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090020

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v2, Lorg/antivirus/ui/scan/results/b;

    sget-object v3, Lorg/antivirus/ui/scan/results/c;->b:Lorg/antivirus/ui/scan/results/c;

    const-string v4, ""

    iget-object v5, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v5, v5, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v5, v5, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/antivirus/ui/scan/results/b;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    goto/16 :goto_4

    :cond_18
    if-le v0, v6, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090021

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    new-instance v2, Lorg/antivirus/ui/scan/results/b;

    sget-object v3, Lorg/antivirus/ui/scan/results/c;->b:Lorg/antivirus/ui/scan/results/c;

    const-string v4, ""

    iget-object v5, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v5, v5, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    iget-object v5, v5, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/antivirus/ui/scan/results/b;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/j;)V

    goto/16 :goto_4
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/ui/PopupMenuHoneycomb;-><init>(Lorg/antivirus/ui/IhandleMenuItem;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->show()V

    return-void
.end method

.method public final a_()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f0900be

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lorg/antivirus/tuneup/at;

    invoke-direct {v2, p0, v0, v3}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;[Ljava/lang/String;B)V

    new-instance v0, Lorg/antivirus/ui/scan/results/l;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/scan/results/l;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;)V

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    const v2, 0x7f0900be

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ContextMenu;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/Menu;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v1, v1, v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerSmsResult;-><init>()V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ScannerSmsResult;->a(Lorg/antivirus/core/scanners/ScannerSmsResult;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->g:Lorg/antivirus/core/scanners/ScannerSmsResult;

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/ScannerSmsResult;->b()V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v1}, Lorg/antivirus/ui/scan/results/d;->g()V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerClient"

    sget-object v3, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->c()V

    return-void
.end method

.method public handleMenuItem(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->b(I)Z

    move-result v0

    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->setContentView(I)V

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null == extra"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    const v1, 0x7f0800cc

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030029

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move-object v3, v1

    :goto_0
    if-nez v3, :cond_1

    const-string v1, "Can\'t create Header View"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    new-instance v1, Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/antivirus/ui/scan/results/d;-><init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Lorg/antivirus/core/EngineSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void

    :cond_1
    const v1, 0x7f0800cd

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800ce

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v5, v4

    div-int/lit8 v5, v5, 0x2

    float-to-int v6, v4

    div-int/lit8 v6, v6, 0x2

    float-to-int v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    float-to-int v5, v4

    div-int/lit8 v5, v5, 0x2

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v8, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v3, v1

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lorg/antivirus/core/scanners/g;->a:J

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->j:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->i:Z

    :cond_1
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->d()V

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->a(Landroid/widget/ExpandableListView;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :cond_2
    invoke-direct {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->d()V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->h:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v0, p0}, Lorg/antivirus/core/scanners/g;->b(Landroid/content/Context;)V

    :cond_1
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_notification"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "scan_results"

    const-string v3, "opened_from_notification"

    invoke-static {p0, v2, v3, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "from_notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->a()Lorg/antivirus/ui/scan/results/i;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lorg/antivirus/ui/scan/results/p;->b:[I

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->g()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/d;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/d;->c()V

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v2, v2, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v2, v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "firstScan"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatFound"

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatCount"

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ScannerClient"

    sget-object v2, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;)Z

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->f()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/scan/results/r;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/d;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    sget-object v2, Lorg/antivirus/ui/scan/results/p;->a:[I

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/r;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->c()V

    :cond_5
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->g:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->f()V

    goto/16 :goto_1

    :pswitch_2
    new-instance v0, Lorg/antivirus/core/scanners/ac;

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lorg/antivirus/core/scanners/ac;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;I)V

    invoke-static {p0}, Lorg/antivirus/core/scanners/ac;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ad;->c(Z)V

    goto :goto_2

    :pswitch_3
    new-instance v0, Lorg/antivirus/core/scanners/ac;

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/antivirus/core/scanners/ac;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;I)V

    invoke-static {p0}, Lorg/antivirus/core/scanners/ac;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ad;->b(Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
