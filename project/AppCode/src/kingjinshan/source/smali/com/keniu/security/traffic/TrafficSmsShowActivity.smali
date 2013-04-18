.class public Lcom/keniu/security/traffic/TrafficSmsShowActivity;
.super Landroid/app/Activity;
.source "TrafficSmsShowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 42
    const v0, 0x7f0803cc

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0803cd

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    const v4, 0x7f0b0388

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v0, 0x7f0803ce

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f0803cf

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->b:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0803d0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->b:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 58
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/cs;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cs;-><init>(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    const v0, 0x7f0803d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->d:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->e:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/high16 v4, 0x4480

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const v0, 0x7f0b02ae

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 90
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0803d2

    if-ne v2, v3, :cond_1

    .line 93
    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    div-float/2addr v0, v4

    float-to-long v2, v0

    iput-wide v2, v1, Lcom/keniu/security/traffic/y;->i:J

    .line 102
    :goto_1
    const v0, 0x7f0b03c8

    invoke-virtual {v1, p0, v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 106
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 107
    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 108
    iget-wide v1, v1, Lcom/keniu/security/traffic/y;->i:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    .line 112
    const v0, 0x7f0b02e2

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->finish()V

    .line 116
    const-string v0, "7"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v3, 0x7f0803d1

    if-ne v2, v3, :cond_2

    .line 95
    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    div-float/2addr v0, v4

    div-float/2addr v0, v4

    float-to-long v2, v0

    iput-wide v2, v1, Lcom/keniu/security/traffic/y;->i:J

    goto :goto_1

    .line 98
    :cond_2
    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v4

    div-float/2addr v0, v4

    float-to-long v2, v0

    iput-wide v2, v1, Lcom/keniu/security/traffic/y;->i:J

    goto :goto_1

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->finish()V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803d4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v7}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->requestWindowFeature(I)Z

    .line 35
    const v0, 0x7f030110

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->setContentView(I)V

    .line 37
    const-string v0, "5"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    const v0, 0x7f0803cc

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0803cd

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "address"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0388

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0803ce

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f0803cf

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0803d0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->b:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/cs;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/cs;-><init>(Lcom/keniu/security/traffic/TrafficSmsShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0803d4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficSmsShowActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
