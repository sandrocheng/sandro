.class public Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;
.super Landroid/app/Activity;
.source "IpDialHeaderAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08015e

    if-ne v0, v1, :cond_1

    .line 127
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 129
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->W()V

    .line 130
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->finish()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08015f

    if-ne v0, v1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->W()V

    .line 136
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->finish()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080160

    if-ne v0, v1, :cond_3

    .line 139
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->j(Ljava/lang/String;)V

    .line 141
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->W()V

    .line 142
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->finish()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080161

    if-ne v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f08015e

    const v5, 0x7f080160

    const v4, 0x7f08015f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->requestWindowFeature(I)Z

    .line 33
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->setContentView(I)V

    .line 35
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    const v1, 0x7f0b0079

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 42
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 43
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 50
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v2

    .line 75
    :goto_0
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a:Landroid/widget/RadioGroup;

    .line 76
    const-string v0, "\u672a\u9009\u62e9\u4efb\u4f55IP\u53f7\u7801"

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 88
    :goto_1
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v0, 0x7f080161

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v0, 0x7f080162

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->b:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->c:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/ca;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/ca;-><init>(Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-void

    .line 52
    :cond_1
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "10193"

    aput-object v1, v0, v3

    .line 55
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "17911"

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 57
    :cond_2
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "17901"

    aput-object v1, v0, v3

    .line 60
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "11808"

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 65
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "17951"

    aput-object v1, v0, v3

    .line 71
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    const-string v1, "12593"

    aput-object v1, v0, v2

    goto/16 :goto_0

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->d:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 157
    :cond_0
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;->finish()V

    .line 162
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
