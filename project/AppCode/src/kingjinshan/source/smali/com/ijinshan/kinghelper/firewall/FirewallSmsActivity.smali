.class public Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;
.super Landroid/app/Activity;
.source "FirewallSmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Z = true

.field private static final b:Ljava/lang/String; = "FirewallSmsActivity"

.field private static final c:I = 0x1986


# instance fields
.field private d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/at;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/firewall/at;-><init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 102
    const v1, 0x7f0b013e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 103
    const v1, 0x7f07003c

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 105
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 75
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/SmsBackupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    const-string v0, "FirewallSmsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SmsScannerActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/FirewallQuerySpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ijinshan/kinghelper/firewall/DeskSmsSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :sswitch_data_0
    .sparse-switch
        0x7f08006a -> :sswitch_3
        0x7f08006e -> :sswitch_2
        0x7f080072 -> :sswitch_1
        0x7f080076 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->setContentView(I)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    const-string v0, "smsman"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    :cond_0
    const v0, 0x7f080076

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget-boolean v0, Lcom/keniu/security/h/b;->a:Z

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f0b01f4

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_1
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
