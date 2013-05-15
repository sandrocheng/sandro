.class public Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "InstallationModeFragment.java"


# static fields
.field private static final c:Landroid/net/Uri;


# instance fields
.field private a:Lcom/avast/android/generic/ui/widget/NextRow;

.field private b:Lcom/avast/android/generic/ui/widget/NextRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "market://details?id=com.avast.android.at_play"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    return-object v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    const-string v1, "breadcrumbs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking intent availability for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Lcom/avast/android/antitheft_setup_components/app/home/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 90
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 92
    sget-object v0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->c:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->ag:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->c(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->y:I

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Update Agent"

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Landroid/text/Spanned;)V

    .line 99
    iget-object v1, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/m;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/antitheft_setup_components/app/home/m;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->l:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->c(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->M:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->a(Landroid/text/Spanned;)V

    .line 114
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->a:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/n;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/n;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "/ms/antiTheftSetup/installationMode"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    sget v0, Lcom/avast/android/antitheft_setup_components/e;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v0, Lcom/avast/android/antitheft_setup_components/d;->a:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/NextRow;

    iput-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    .line 47
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->W:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->c(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    sget v2, Lcom/avast/android/antitheft_setup_components/g;->J:I

    invoke-virtual {p0, v2}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->d(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->b:Lcom/avast/android/generic/ui/widget/NextRow;

    new-instance v2, Lcom/avast/android/antitheft_setup_components/app/home/l;

    invoke-direct {v2, p0}, Lcom/avast/android/antitheft_setup_components/app/home/l;-><init>(Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;)V

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/widget/NextRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0, v1}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->c(Landroid/view/View;)V

    .line 76
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/avast/android/antitheft_setup_components/app/home/InstallationModeFragment;->j()V

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 172
    return-void
.end method
