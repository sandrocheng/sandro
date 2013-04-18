.class public Lcom/keniu/security/process/ProcessWhiteSettingActivity;
.super Landroid/app/ListActivity;
.source "ProcessWhiteSettingActivity.java"


# static fields
.field private static final h:I = 0x1


# instance fields
.field a:Ljava/util/List;

.field b:Landroid/widget/ListView;

.field c:Landroid/widget/ProgressBar;

.field d:Landroid/widget/Button;

.field e:Landroid/content/pm/PackageManager;

.field f:Lcom/keniu/security/a;

.field g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    .line 88
    new-instance v0, Lcom/keniu/security/process/w;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/w;-><init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->g:Landroid/os/Handler;

    .line 246
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 135
    new-instance v1, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1040

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 140
    new-instance v3, Lcom/keniu/security/d/e;

    invoke-direct {v3}, Lcom/keniu/security/d/e;-><init>()V

    .line 141
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 147
    invoke-virtual {v3, v4}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    .line 148
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_2

    .line 149
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    .line 153
    :goto_1
    invoke-virtual {v1, v4}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v3, v7}, Lcom/keniu/security/d/e;->a(Z)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 34
    new-instance v1, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1040

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v3, Lcom/keniu/security/d/e;

    invoke-direct {v3}, Lcom/keniu/security/d/e;-><init>()V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/keniu/security/d/e;->a(Ljava/lang/String;)V

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v4}, Lcom/jxphone/mosecurity/d/m;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v7}, Lcom/keniu/security/d/e;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/keniu/security/d/e;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->g:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->requestWindowFeature(I)Z

    .line 47
    const v0, 0x7f0300d9

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->setContentView(I)V

    .line 48
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8fdb\u7a0b\u767d\u540d\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v0, 0x7f08031e

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->c:Landroid/widget/ProgressBar;

    .line 51
    const v0, 0x7f08031d

    invoke-virtual {p0, v0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->d:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/keniu/security/process/x;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/x;-><init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->b:Landroid/widget/ListView;

    .line 54
    invoke-virtual {p0}, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    .line 55
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->f:Lcom/keniu/security/a;

    .line 56
    new-instance v0, Lcom/keniu/security/process/v;

    invoke-direct {v0, p0}, Lcom/keniu/security/process/v;-><init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    invoke-virtual {v0}, Lcom/keniu/security/process/v;->start()V

    .line 86
    return-void
.end method
