.class public Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;
.super Landroid/app/Activity;
.source "TrafficAdjustByHandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/RadioGroup;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    const-wide/16 v11, 0xa

    const-wide/32 v9, 0x100000

    .line 47
    const v0, 0x7f080393

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    .line 48
    const v0, 0x7f080394

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f080396

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    .line 50
    const v0, 0x7f080399

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    .line 51
    const v0, 0x7f08039a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f08039b

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->f:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->g:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f08039e

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->h:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v13}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 62
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/w;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/w;-><init>(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "month_used"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 79
    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 80
    rem-long v2, v0, v9

    .line 81
    mul-long v4, v2, v11

    rem-long/2addr v4, v9

    .line 82
    mul-long v6, v4, v11

    rem-long/2addr v6, v9

    .line 83
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-long v1, v2, v11

    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-long v1, v4, v11

    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-long v1, v6, v11

    div-long/2addr v1, v9

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 90
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v13

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 95
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {p0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    .line 169
    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcom/keniu/security/traffic/a;

    invoke-direct {v0, p1, p2, p0}, Lcom/keniu/security/traffic/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 173
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    sget v2, Lcom/keniu/security/monitor/a;->r:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 174
    invoke-virtual {v0}, Lcom/keniu/security/traffic/a;->c()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/high16 v3, 0x4480

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    const v0, 0x7f0b02ab

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, "2"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {p0, v0, v1}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    invoke-static {}, Lcom/keniu/security/traffic/as;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const v2, 0x7f0b02e6

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/keniu/security/traffic/a;

    invoke-direct {v2, v0, v1, p0}, Lcom/keniu/security/traffic/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/monitor/a;->r:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    invoke-virtual {v2}, Lcom/keniu/security/traffic/a;->c()V

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const v0, 0x7f0b02af

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 126
    :cond_3
    invoke-static {p0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

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

    .line 139
    :goto_1
    const v1, 0x7f0b03c8

    invoke-virtual {v0, p0, v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 143
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 144
    invoke-virtual {v0, v5}, Lcom/keniu/security/traffic/y;->a(Ljava/util/Date;)J

    move-result-wide v3

    .line 145
    iget-wide v1, v0, Lcom/keniu/security/traffic/y;->i:J

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;JJJZ)V

    .line 149
    const v0, 0x7f0b02e2

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 152
    :pswitch_3
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->finish()V

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

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

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f08039b
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f030103

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f080393

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    const v0, 0x7f080394

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f080396

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    const v0, 0x7f080399

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f08039a

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f08039b

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08039d

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08039e

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->b:Landroid/widget/TextView;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->c:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/w;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/w;-><init>(Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->d:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->e:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/keniu/security/traffic/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "month_used"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x100000

    rem-long v2, v0, v2

    const-wide/16 v4, 0xa

    mul-long/2addr v4, v2

    const-wide/32 v6, 0x100000

    rem-long/2addr v4, v6

    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    const-wide/32 v8, 0x100000

    rem-long/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v9, 0x100000

    div-long/2addr v0, v9

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v8, 0xa

    mul-long v1, v2, v8

    const-wide/32 v8, 0x100000

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0xa

    mul-long/2addr v1, v4

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0xa

    mul-long/2addr v1, v6

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficAdjustByHandActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 44
    :cond_0
    return-void
.end method
