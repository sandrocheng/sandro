.class public Lcom/keniu/security/traffic/TrafficTabActivity;
.super Landroid/app/TabActivity;
.source "TrafficTabActivity.java"


# static fields
.field public static a:Z = false

.field public static final b:Ljava/lang/String; = "tab_traffic_main"

.field public static final c:Ljava/lang/String; = "tab_soft_traffic"

.field public static final d:Ljava/lang/String; = "tab_traffic_settings"

.field public static final e:Ljava/lang/String; = "extra_from_auto_check_failed_notify"

.field public static final f:Ljava/lang/String; = "extra_to_main"

.field public static final g:Ljava/lang/String; = "extra_to_soft"

.field public static final h:Ljava/lang/String; = "extra_to_iptables"

.field public static final i:Ljava/lang/String; = "extra_num"


# instance fields
.field private j:Landroid/widget/TabHost;

.field private k:Landroid/content/Intent;

.field private l:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficTabActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficTabActivity;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v3}, Lcom/keniu/security/traffic/TrafficTabActivity;->requestWindowFeature(I)Z

    .line 46
    const v0, 0x7f0300c4

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->setContentView(I)V

    .line 47
    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->l:Landroid/widget/RadioGroup;

    .line 49
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    .line 59
    if-nez p1, :cond_0

    .line 60
    const-string v0, "traffic"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_from_auto_check_failed_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "6"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "autoadjustnotify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    const-string v1, "autoadjustnotify"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    const-string v1, "updateZFT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromTrafficUsedSettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    const-string v1, "fromTrafficUsedSettingActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_traffic_main"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b037e

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/keniu/security/traffic/TrafficSoftListActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    .line 89
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_soft_traffic"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b0380

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_traffic_settings"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0b0381

    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->k:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->l:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/keniu/security/traffic/da;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/da;-><init>(Lcom/keniu/security/traffic/TrafficTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_traffic_main"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 139
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 140
    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 143
    :goto_0
    return-void

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_iptables"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_iptables"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_traffic_settings"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 129
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 130
    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_soft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_to_soft"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_soft_traffic"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 134
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 135
    invoke-virtual {p0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 172
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 169
    :pswitch_0
    const-class v0, Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-static {p0, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f080427
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 148
    sget-boolean v0, Lcom/keniu/security/traffic/TrafficTabActivity;->a:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/traffic/TrafficTabActivity;->a:Z

    .line 150
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficTabActivity;->j:Landroid/widget/TabHost;

    const-string v1, "tab_traffic_main"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 151
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 157
    :cond_0
    return-void
.end method
