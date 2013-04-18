.class public Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;
.super Landroid/app/Activity;
.source "PreventTheftGuideECActivity.java"


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lcom/keniu/security/protection/ui/j;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/j;-><init>(Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->d:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v0, Lcom/keniu/security/protection/ui/k;

    invoke-direct {v0, p0}, Lcom/keniu/security/protection/ui/k;-><init>(Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;)V

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 59
    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-eqz v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->requestWindowFeature(I)Z

    .line 32
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0b079b

    invoke-virtual {p0, v1}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v0, 0x7f080203

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->a:Landroid/widget/Button;

    .line 37
    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->b:Landroid/widget/ImageButton;

    .line 39
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    if-nez p1, :cond_0

    .line 43
    const-string v0, "pto"

    const-string v1, "13"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 51
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftGuideECActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
