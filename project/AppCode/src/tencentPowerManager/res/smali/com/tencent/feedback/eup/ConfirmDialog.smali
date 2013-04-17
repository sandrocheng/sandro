.class public Lcom/tencent/feedback/eup/ConfirmDialog;
.super Landroid/app/Activity;
.source "ProGuard"


# instance fields
.field private confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

.field private noBtnListener:Landroid/view/View$OnClickListener;

.field private okBtnListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    .line 33
    new-instance v0, Lcom/tencent/feedback/eup/b;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/b;-><init>(Lcom/tencent/feedback/eup/ConfirmDialog;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->okBtnListener:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/tencent/feedback/eup/d;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/d;-><init>(Lcom/tencent/feedback/eup/ConfirmDialog;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->noBtnListener:Landroid/view/View$OnClickListener;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/feedback/eup/ConfirmDialog;)Lcom/tencent/feedback/eup/IEupUserConfirmer;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    return-object v0
.end method

.method private pkgNameToLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 156
    :cond_0
    const-string v0, ""

    .line 170
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/ConfirmDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 165
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/feedback/common/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->getEupUserConfirmer()Lcom/tencent/feedback/eup/IEupUserConfirmer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    .line 111
    iget-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Lcom/tencent/feedback/eup/f;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    .line 117
    invoke-static {p0}, Lcom/tencent/feedback/common/AppInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->pkgNameToLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    .line 122
    :cond_0
    const-string v1, "\u5f88\u62b1\u6b49\uff0c%s\u51fa\u73b0\u5f02\u5e38\u4e86\uff0c\u662f\u5426\u9700\u8981\u4e0a\u4f20\u60a8\u7684\u9519\u8bef\u4fe1\u606f\uff1f\n\u60a8\u53ef\u4ee5\u8f93\u5165\u60a8\u7684\u8054\u7cfb\u65b9\u5f0f(QQ\u53f7\u3001\u7535\u8bdd\u53f7\u7801\u6216\u90ae\u7bb1)\u65b9\u4fbf\u6211\u4eec\u8054\u7cfb\u60a8\u3002"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    iget-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    check-cast v0, Lcom/tencent/feedback/eup/f;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/eup/f;->a(Ljava/lang/String;)V

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    invoke-interface {v0}, Lcom/tencent/feedback/eup/IEupUserConfirmer;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    invoke-interface {v1}, Lcom/tencent/feedback/eup/IEupUserConfirmer;->getDoUploadClicker()Landroid/view/View;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->confirmer:Lcom/tencent/feedback/eup/IEupUserConfirmer;

    invoke-interface {v2}, Lcom/tencent/feedback/eup/IEupUserConfirmer;->getDoCancelClicker()Landroid/view/View;

    move-result-object v2

    .line 132
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    .line 134
    :cond_2
    const-string v0, "IEupUserConformer not available"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/tencent/feedback/eup/ConfirmDialog;->finish()V

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->okBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->noBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/ConfirmDialog;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/tencent/feedback/eup/ConfirmDialog;->noBtnListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 150
    return-void
.end method
