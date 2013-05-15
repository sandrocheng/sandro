.class public Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;
.super Landroid/app/Activity;
.source "SiteCorrectActivity.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/avast/android/mobilesecurity/engine/ah;

.field private c:Lcom/avast/android/mobilesecurity/app/webshield/n;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/avast/android/mobilesecurity/app/webshield/f;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/webshield/f;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    const-string v1, "redirect_browser"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v1, "browser_type"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "tab_id"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b:Lcom/avast/android/mobilesecurity/engine/ah;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/ah;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->b(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-class v0, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->f(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/webshield/n;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    const-string v1, "redirect_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "browser_type"

    invoke-virtual {p3}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    if-eqz p5, :cond_0

    .line 55
    const-string v1, "tab"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_0
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Lcom/avast/android/mobilesecurity/app/webshield/n;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)Lcom/avast/android/mobilesecurity/engine/ah;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b:Lcom/avast/android/mobilesecurity/engine/ah;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a:Landroid/net/Uri;

    .line 67
    const-string v1, "browser_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/n;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/webshield/n;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->c:Lcom/avast/android/mobilesecurity/app/webshield/n;

    .line 68
    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->d:Ljava/lang/String;

    .line 69
    const-string v1, "redirect_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b:Lcom/avast/android/mobilesecurity/engine/ah;

    .line 72
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b:Lcom/avast/android/mobilesecurity/engine/ah;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->requestWindowFeature(I)Z

    .line 80
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->setContentView(I)V

    .line 82
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->e:Landroid/widget/CheckBox;

    .line 84
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/avast/android/mobilesecurity/app/webshield/d;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/d;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c0405

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<br/>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v2, Lcom/avast/android/mobilesecurity/app/webshield/e;

    invoke-direct {v2, p0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/e;-><init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    const v1, 0x7f0c0402

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b:Lcom/avast/android/mobilesecurity/engine/ah;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
