.class public Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;
.super Landroid/app/TabActivity;
.source "FirewallLogTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final a:Ljava/lang/String; = "FirewallLogTabActivity_current_tab"

.field public static final b:Ljava/lang/String; = "FirewallLogTabActivity_current_tab_call"

.field public static final c:Ljava/lang/String; = "FirewallLogTabActivity_current_tab_sms"

.field public static final d:Ljava/lang/String; = "FirewallLogTabActivity_current_tab_blacklist"

.field public static final e:Ljava/lang/String; = "FirewallLogTabActivity_current_tab_whitelist"

.field public static final f:Ljava/lang/String; = "FirewallLogTabActivity_current_tab_setting"

.field public static final g:Ljava/lang/String; = "FirewallLogTabActivity_force_rubbish_scan"

.field public static final h:Ljava/lang/String; = "FirewallLogTabActivity_rubbish_scan_res"

.field public static final i:Ljava/lang/String; = "FirewallLogTabActivity_LOG_FromNotify"


# instance fields
.field private j:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f080138

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "saolan"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->requestWindowFeature(I)Z

    .line 60
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->j:Landroid/widget/RadioGroup;

    .line 63
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_force_rubbish_scan"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "FirewallLogTabActivity_force_rubbish_scan"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_rubbish_scan_res"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 77
    if-lez v2, :cond_2

    .line 78
    const-string v3, "FirewallLogTabActivity_rubbish_scan_res"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    :cond_2
    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    const-string v2, "rule_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "FirewallLogTabActivity_current_tab_blacklist"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_current_tab_blacklist"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    const-string v2, "rule_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "FirewallLogTabActivity_current_tab_whitelist"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_current_tab_whitelist"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 112
    const-string v2, "FirewallLogTabActivity_current_tab_setting"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const-string v3, "FirewallLogTabActivity_current_tab_setting"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 118
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_9

    .line 120
    const-string v2, "FirewallLogTabActivity_current_tab"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_8

    .line 123
    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    const-string v0, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FirewallLogTabActivity_LOG_FromNotify"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-string v0, "1"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->j:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/ae;

    invoke-direct {v2, p0, v1}, Lcom/ijinshan/kinghelper/firewall/ae;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;Landroid/widget/TabHost;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 194
    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 195
    return-void

    .line 132
    :cond_4
    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 133
    const-string v0, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 134
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 135
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FirewallLogTabActivity_LOG_FromNotify"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const-string v0, "3"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    const-string v2, "FirewallLogTabActivity_current_tab_blacklist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    const-string v0, "FirewallLogTabActivity_current_tab_blacklist"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 143
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 144
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 146
    :cond_6
    const-string v2, "FirewallLogTabActivity_current_tab_whitelist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    const-string v0, "FirewallLogTabActivity_current_tab_whitelist"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_7
    const-string v0, "FirewallLogTabActivity_current_tab_setting"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 153
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 154
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 158
    :cond_8
    const-string v0, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 160
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 164
    :cond_9
    const-string v0, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 166
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 201
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->finish()V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/main/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f080141

    const v6, 0x7f080139

    const v5, 0x7f080138

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 210
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 211
    invoke-virtual {p0, v7}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 215
    const-string v0, "FirewallLogTabActivity_current_tab"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 218
    const-string v2, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 220
    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v2, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v1, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 224
    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 226
    :cond_2
    const-string v2, "FirewallLogTabActivity_current_tab_blacklist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 228
    invoke-virtual {p0, v7}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 230
    :cond_3
    const-string v2, "FirewallLogTabActivity_current_tab_whitelist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 235
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 236
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallLogTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    const-string v0, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-super {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_current_tab_sms"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->b()V

    .line 248
    :cond_0
    const-string v0, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    invoke-super {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    const-string v1, "FirewallLogTabActivity_current_tab_call"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    .line 250
    if-eqz p0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->a()V

    .line 253
    :cond_1
    return-void
.end method
