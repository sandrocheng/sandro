.class public Lcom/antivirus/ui/scan/results/m;
.super Lcom/antivirus/ui/a/a/a;


# instance fields
.field public a:Lcom/antivirus/core/scanners/h;

.field private b:Lcom/antivirus/ui/scan/results/d;

.field private c:Landroid/app/AlertDialog;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    return-void
.end method

.method private H()Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    const v2, 0x7f08010e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030037

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_0

    const-string v0, "Can\'t create Header View"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    const v0, 0x7f08010f

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080110

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v4, v3

    div-int/lit8 v4, v4, 0x2

    float-to-int v5, v3

    div-int/lit8 v5, v5, 0x2

    float-to-int v6, v3

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    float-to-int v0, v3

    div-int/lit8 v0, v0, 0x2

    float-to-int v4, v3

    div-int/lit8 v4, v4, 0x2

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v7, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->h:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

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
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/m;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic b(Lcom/antivirus/ui/scan/results/m;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
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

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not installed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V
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


# virtual methods
.method public F()V
    .locals 0

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->G()V

    return-void
.end method

.method public G()V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/scan/results/ScanResultsActivity;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/ScanResultsActivity;->n:Lcom/antivirus/a;

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Service is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iget-object v0, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->o:Lcom/antivirus/a;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    if-nez v1, :cond_2

    const-string v0, " mAdapter is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lcom/antivirus/a;->a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->a()V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    if-nez v0, :cond_4

    const-string v0, "ScanResults is null"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/m;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/antivirus/ui/scan/results/m;->I()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    const v1, 0x7f08010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_5

    const-string v0, "Can\'t get headerTop in Header View"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    const v2, 0x7f080110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_6

    const-string v0, "Can\'t get headerBottom in Header View"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/h;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->i()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070039

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090187

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v5, 0x7f090188

    invoke-static {v4, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->a:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/a;

    if-nez v0, :cond_8

    const-string v0, "null AppsResultsData"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->i()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07003a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v4, 0x7f090192

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, v2

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    :cond_9
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ag;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->b:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/r;

    if-nez v0, :cond_b

    const-string v0, "null SettingsResultsData"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/antivirus/ui/scan/results/a;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v4, v5, v0, v1}, Lcom/antivirus/ui/scan/results/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v5}, Lcom/antivirus/g;->a(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/antivirus/ui/scan/results/a;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/antivirus/ui/scan/results/m;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/antivirus/ui/scan/results/a;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v4}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    new-instance v1, Lcom/antivirus/ui/scan/results/a;

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v4, v0, v0}, Lcom/antivirus/ui/scan/results/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v4, v4, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v5}, Lcom/antivirus/g;->a(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/antivirus/ui/scan/results/a;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/antivirus/ui/scan/results/m;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/a;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_15

    :cond_d
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-eqz v0, :cond_16

    :cond_e
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerSmsResult;->a:Z

    if-eqz v0, :cond_16

    :cond_f
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->c:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    if-nez v0, :cond_14

    const-string v0, "null ContentResultsData"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/avg/ui/general/o;->a:Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->c:Lcom/avg/ui/general/q;

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09018e

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    new-instance v2, Lcom/antivirus/ui/scan/results/r;

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v5, Lcom/antivirus/ui/scan/results/s;->a:Lcom/antivirus/ui/scan/results/s;

    invoke-direct {v2, v4, v0, v5}, Lcom/antivirus/ui/scan/results/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/s;)V

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    :cond_11
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f090190

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    new-instance v2, Lcom/antivirus/ui/scan/results/r;

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v5, Lcom/antivirus/ui/scan/results/s;->b:Lcom/antivirus/ui/scan/results/s;

    invoke-direct {v2, v4, v0, v5}, Lcom/antivirus/ui/scan/results/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/s;)V

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    :cond_12
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0900f6

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    new-instance v2, Lcom/antivirus/ui/scan/results/r;

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v5, Lcom/antivirus/ui/scan/results/s;->c:Lcom/antivirus/ui/scan/results/s;

    invoke-direct {v2, v4, v0, v5}, Lcom/antivirus/ui/scan/results/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/s;)V

    invoke-virtual {v1, v2}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    goto/16 :goto_4

    :cond_13
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v1, 0x7f09018f

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_14
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    :cond_15
    :goto_6
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->r()V

    goto/16 :goto_1

    :cond_16
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v7, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    move v6, v3

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_17

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v3, Lcom/antivirus/ui/scan/results/c;->a:Lcom/antivirus/ui/scan/results/c;

    const/4 v5, 0x0

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v3, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v3}, Lcom/antivirus/g;->a(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v8, v0, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900ee

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    new-instance v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v3, Lcom/antivirus/ui/scan/results/c;->b:Lcom/antivirus/ui/scan/results/c;

    const-string v4, ""

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v5, v5, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v5, v5, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    goto/16 :goto_6

    :cond_18
    if-le v0, v8, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900ef

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    new-instance v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    sget-object v3, Lcom/antivirus/ui/scan/results/c;->b:Lcom/antivirus/ui/scan/results/c;

    const-string v4, ""

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v5, v5, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v5, v5, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/k;)V

    goto/16 :goto_6
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0}, Lcom/antivirus/ui/scan/results/m;->H()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->G()V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/m;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7

    const v6, 0x7f090185

    const v5, 0x7f090184

    const/16 v4, 0x10

    const/16 v3, 0xf

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ContextMenu;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/ContextMenu;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/avg/ui/general/c/f;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v1, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v2, v1}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v4, v2, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lcom/antivirus/ui/callmessagefilter/CallMessageFilterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "default_tab_name"

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/n;->b:Lcom/antivirus/ui/callmessagefilter/fragment/n;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "default_filter_option"

    sget-object v2, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->b:Lcom/antivirus/ui/callmessagefilter/fragment/ah;

    invoke-virtual {v2}, Lcom/antivirus/ui/callmessagefilter/fragment/ah;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/i;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/antivirus/core/scanners/ad;->a(Z)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const-string v1, "category_call_message_blocker"

    const-string v2, "action_call_message_blocker_scan_results"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901b5

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901b6

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0900e1

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/scan/results/n;

    invoke-direct {v2, p0, p1}, Lcom/antivirus/ui/scan/results/n;-><init>(Lcom/antivirus/ui/scan/results/m;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/antivirus/ui/scan/results/o;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/scan/results/o;-><init>(Lcom/antivirus/ui/scan/results/m;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null == extra"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/antivirus/ui/scan/results/d;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->af:Lcom/antivirus/core/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/antivirus/ui/scan/results/d;-><init>(Lcom/antivirus/ui/scan/results/m;Lcom/antivirus/core/b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/m;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/a;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/m;->b(I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->d()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Landroid/widget/ExpandableListView;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/m;->G()V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xf

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const-string v4, "category_scan_results"

    const-string v5, "action_log"

    invoke-static {v0, v4, v5, v2, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v0, 0x7f03003d

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v5, 0x7f090184

    invoke-static {v0, v5}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0200e7

    invoke-virtual {v4, v6, v0}, Landroid/app/Dialog;->setFeatureDrawableResource(II)V

    const v0, 0x7f080123

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f090193

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080124

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080125

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f090195

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080126

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080127

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f090194

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080128

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080129

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f090196

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012a

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012c

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v6, 0x7f090197

    invoke-static {v5, v6}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012d

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/ui/general/c/i;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    const v1, 0x7f08012b

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08012e

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :try_start_0
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v5}, Lcom/avg/ui/general/a/a;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012f

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090182

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/antivirus/ui/scan/results/p;

    invoke-direct {v1, p0, v4}, Lcom/antivirus/ui/scan/results/p;-><init>(Lcom/antivirus/ui/scan/results/m;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    move v1, v3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move-object v1, v2

    goto :goto_1

    :cond_2
    const/16 v0, 0x10

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->b()V

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    iput-boolean v3, v0, Lcom/antivirus/ui/tablet/DualPaneActivity;->p:Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->i()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    sget-object v2, Lcom/antivirus/ui/tablet/e;->d:Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v0, v2}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const-class v4, Lcom/antivirus/ui/main/HandheldMainActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "avmsStartScan"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x3400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/m;->a(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->e()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/m;->a(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public r()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->r()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "from_notification"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const-string v3, "category_scan_results"

    const-string v4, "action_opened_from_notification"

    invoke-static {v2, v3, v4, v5, v1}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "from_notification"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->a()Lcom/antivirus/ui/scan/results/i;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/antivirus/ui/scan/results/q;->b:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lcom/antivirus/ui/scan/results/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v2}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/antivirus/ui/scan/results/m;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lcom/antivirus/ui/scan/results/d;->c()V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v2, v2, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/s;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v2}, Lcom/antivirus/ui/scan/results/d;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/antivirus/ui/scan/results/q;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->c()V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/antivirus/core/scanners/af;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->af:Lcom/antivirus/core/b;

    const/4 v3, 0x4

    invoke-direct {v0, v2, v5, v3}, Lcom/antivirus/core/scanners/af;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v2}, Lcom/antivirus/core/scanners/af;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v2, v2, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/scanners/ag;->c(Z)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/antivirus/core/scanners/af;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->af:Lcom/antivirus/core/b;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v5, v3}, Lcom/antivirus/core/scanners/af;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v2}, Lcom/antivirus/core/scanners/af;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v2, v2, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v2, v0}, Lcom/antivirus/core/scanners/ag;->b(Z)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->b:Lcom/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/d;->f()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public s()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/m;->c:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/h;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->e()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    sget-object v1, Lcom/antivirus/ui/tablet/e;->b:Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->ag:Lcom/avg/ui/general/a/a;

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->s()V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/h;->b()V

    :cond_0
    invoke-super {p0}, Lcom/antivirus/ui/a/a/a;->t()V

    return-void
.end method
