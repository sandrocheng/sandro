.class public Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;
.super Landroid/app/Activity;
.source "PreventTheftGuideCompleteActivity.java"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/keniu/security/protection/ui/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/i;-><init>(Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0b0774

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->k(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0b0778

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const v0, 0x7f0b07a0

    invoke-static {p0, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0b07a0

    invoke-static {p0, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;I)V

    .line 84
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->requestWindowFeature(I)Z

    .line 24
    const v0, 0x7f030079

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 26
    const v1, 0x7f0b079b

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    if-nez p1, :cond_0

    .line 30
    const-string v0, "pto"

    const-string v1, "9"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->a:Landroid/widget/Button;

    .line 35
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->b:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0b0774

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->k(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const v2, 0x7f0b0778

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideCompleteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method
