.class public Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;
.super Landroid/app/Activity;
.source "TrafficUsedSettingAcvitiy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private a:Lcom/keniu/security/util/SafeViewFlipper;

.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/widget/RadioGroup;

.field private d:J

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "monthUsed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->d:J

    .line 44
    const v0, 0x7f0803ec

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/SafeViewFlipper;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    .line 45
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    .line 46
    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    .line 47
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 48
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 49
    const v0, 0x7f08038d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b031e

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->d:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/util/ae;->a:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f080393

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->e:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f080390

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    .line 56
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    .line 58
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v0, 0x7f080396

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->c:Landroid/widget/RadioGroup;

    .line 61
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->c:Landroid/widget/RadioGroup;

    const v1, 0x7f080397

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 64
    const v0, 0x7f0803ed

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0803ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f080391

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f08038e

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    packed-switch p2, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f0803ea
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x4480

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 76
    :sswitch_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->finish()V

    goto :goto_0

    .line 80
    :sswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const v0, 0x7f0b02af

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f080397

    if-ne v1, v2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v3

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/keniu/security/traffic/y;->i:J

    .line 97
    :goto_1
    const v1, 0x7f0b03c8

    invoke-virtual {v0, p0, v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 101
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 102
    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 103
    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->i:J

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    .line 106
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->finish()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v3

    float-to-long v1, v1

    iput-wide v1, v0, Lcom/keniu/security/traffic/y;->i:J

    goto :goto_1

    .line 115
    :sswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :cond_2
    const v0, 0x7f0b02ab

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 122
    :cond_3
    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    invoke-static {}, Lcom/keniu/security/traffic/as;->a()Z

    .line 127
    const v0, 0x7f0b02e6

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 134
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    const-string v1, "fromTrafficUsedSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x7f08038e -> :sswitch_3
        0x7f080391 -> :sswitch_2
        0x7f0803ed -> :sswitch_1
        0x7f0803ee -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030114

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "monthUsed"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->d:J

    const v0, 0x7f0803ec

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/util/SafeViewFlipper;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->a:Lcom/keniu/security/util/SafeViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setDisplayedChild(I)V

    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f08038d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b031e

    invoke-virtual {p0, v2}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->d:J

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/keniu/security/util/ae;->a:Lcom/keniu/security/util/ae;

    invoke-static {v2, v3}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080393

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->e:Landroid/widget/EditText;

    const v0, 0x7f080390

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->f:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->g:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080396

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->c:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->c:Landroid/widget/RadioGroup;

    const v1, 0x7f080397

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    const v0, 0x7f0803ed

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0803ee

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080391

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08038e

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficUsedSettingAcvitiy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
