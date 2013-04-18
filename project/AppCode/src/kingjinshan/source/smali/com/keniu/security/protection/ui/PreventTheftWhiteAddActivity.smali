.class public Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;
.super Landroid/app/Activity;
.source "PreventTheftWhiteAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 27
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    const v1, 0x7f0b0792

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 37
    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 40
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "modify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "save"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/protection/ui/ag;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    move v0, v8

    .line 127
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "modify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 81
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_7

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 83
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    if-nez v1, :cond_1

    .line 86
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 91
    :goto_1
    array-length v5, v3

    array-length v6, v4

    if-le v5, v6, :cond_3

    .line 92
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    move v6, v8

    .line 93
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_2

    .line 94
    aget-object v7, v4, v6

    aput-object v7, v5, v6

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 88
    :cond_1
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v5

    :cond_3
    move v5, v8

    .line 99
    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_c

    .line 100
    aget-object v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move v2, v9

    .line 106
    :goto_4
    if-eqz v2, :cond_7

    .line 107
    const-string v1, ""

    move-object v2, v1

    move v1, v8

    .line 108
    :goto_5
    array-length v5, v3

    if-ge v1, v5, :cond_6

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v1

    if-nez v5, :cond_5

    const-string v5, ""

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 99
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 109
    :cond_5
    aget-object v5, v4, v1

    goto :goto_6

    :cond_6
    move-object v1, v2

    :cond_7
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 119
    :goto_7
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 127
    goto/16 :goto_0

    .line 113
    :cond_8
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "save"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 114
    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_8
    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_7

    .line 114
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 115
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 123
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 125
    goto/16 :goto_0

    :cond_b
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_7

    :cond_c
    move v2, v8

    goto/16 :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080024

    if-ne v0, v1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->finish()V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080025

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->requestWindowFeature(I)Z

    .line 22
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0792

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "modify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->a:Ljava/lang/String;

    const-string v3, "save"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/protection/ui/PreventTheftWhiteAddActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
