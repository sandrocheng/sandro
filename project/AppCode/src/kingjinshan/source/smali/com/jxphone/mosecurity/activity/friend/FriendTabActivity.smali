.class public Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;
.super Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;
.source "FriendTabActivity.java"


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3


# instance fields
.field private i:Landroid/widget/RadioGroup;

.field private j:Landroid/content/Intent;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->k:Z

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 132
    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 133
    const-string v1, "\u4fee\u6539\u79c1\u5bc6\u7a7a\u95f4\u540d\u79f0\u548c\u56fe\u6807\u53ef\u4ee5\u66f4\u597d\u5730\u4fdd\u62a4\u60a8\u7684\u9690\u79c1"

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 134
    const-string v1, "\u7acb\u5373\u4fee\u6539"

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/az;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/az;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 143
    const-string v1, "\u6682\u4e0d\u4fee\u6539"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 144
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 145
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->setContentView(I)V

    .line 186
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->a(I)V

    .line 191
    packed-switch p1, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 193
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 194
    const/4 v0, 0x0

    sput v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    goto :goto_0

    .line 197
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    const v1, 0x7f080139

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 198
    const/4 v0, 0x1

    sput v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 202
    const/4 v0, 0x2

    sput v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    const v1, 0x7f080155

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 206
    const/4 v0, 0x3

    sput v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p0, v3}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->requestWindowFeature(I)Z

    .line 44
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->d:Landroid/widget/Button;

    .line 47
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    const-string v1, "isDummy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->k:Z

    .line 51
    :cond_0
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    .line 53
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/commui/CustomTabHost;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    .line 60
    sget-boolean v0, Lcom/keniu/security/h/b;->a:Z

    if-eqz v0, :cond_1

    .line 61
    const v0, 0x7f0b01f4

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b066d

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commui/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    const-string v1, "call"

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b066c

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commui/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    const-string v1, "friend"

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b0687

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commui/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 82
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->k:Z

    if-eqz v0, :cond_3

    .line 83
    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->i:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ay;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ay;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0}, Lcom/keniu/security/commui/CustomTabHost;->a()I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->b:I

    .line 119
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v2}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 120
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v0, v3}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 121
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->a(I)V

    .line 122
    sget v0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a:I

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->a(I)V

    .line 123
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/keniu/security/a;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v0}, Lcom/keniu/security/a;->p()V

    .line 126
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    const-string v1, "\u4fee\u6539\u79c1\u5bc6\u7a7a\u95f4\u540d\u79f0\u548c\u56fe\u6807\u53ef\u4ee5\u66f4\u597d\u5730\u4fdd\u62a4\u60a8\u7684\u9690\u79c1"

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const-string v1, "\u7acb\u5373\u4fee\u6539"

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/az;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/az;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const-string v1, "\u6682\u4e0d\u4fee\u6539"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 128
    :cond_2
    return-void

    .line 85
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/jxphone/mosecurity/activity/friend/FriendSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    .line 86
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    const-string v1, "setting"

    invoke-virtual {v0, v1}, Lcom/keniu/security/commui/CustomTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b066e

    invoke-virtual {p0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->j:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;->c:Lcom/keniu/security/commui/CustomTabHost;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commui/CustomTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/friend/BaseTabActivity;->onResume()V

    .line 181
    return-void
.end method
