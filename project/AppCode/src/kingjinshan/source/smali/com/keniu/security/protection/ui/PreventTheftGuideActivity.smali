.class public Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;
.super Landroid/app/Activity;
.source "PreventTheftGuideActivity.java"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/EditText;

.field d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/keniu/security/protection/ui/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/h;-><init>(Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 124
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->d(Landroid/content/Context;)V

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->b:Landroid/widget/EditText;

    const-string v1, "########"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->c:Landroid/widget/EditText;

    const-string v1, "########"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->requestWindowFeature(I)Z

    .line 31
    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    const v1, 0x7f0b079b

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    if-nez p1, :cond_0

    .line 37
    const-string v0, "pt"

    const-string v1, "3"

    invoke-static {p0, v0, v1}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->a:Landroid/widget/Button;

    .line 42
    const v0, 0x7f080206

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->b:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f080208

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->c:Landroid/widget/EditText;

    .line 44
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->finish()V

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ui/PreventTheftMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 62
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 50
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->d(Landroid/content/Context;)V

    :cond_0
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->b:Landroid/widget/EditText;

    const-string v1, "########"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideActivity;->c:Landroid/widget/EditText;

    const-string v1, "########"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_1
    return-void
.end method
