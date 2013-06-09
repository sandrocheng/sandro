.class public Lorg/antivirus/ui/antitheft/AntiTheftActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;


# instance fields
.field private a:Lorg/antivirus/ui/antitheft/k;

.field private b:Landroid/app/AlertDialog;

.field private c:Ljava/lang/String;

.field private f:Landroid/app/ProgressDialog;

.field private g:Z

.field private h:Lorg/antivirus/ui/WebViewAdsManager;

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    new-instance v0, Lorg/antivirus/ui/antitheft/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/antitheft/a;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->i:Landroid/os/Handler;

    new-instance v0, Lorg/antivirus/ui/antitheft/c;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/antitheft/c;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)Lorg/antivirus/ui/WebViewAdsManager;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->h:Lorg/antivirus/ui/WebViewAdsManager;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const-string v0, "XX8R"

    invoke-virtual {p2, v0, p1}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->commit()Z

    :cond_0
    iput-object p1, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->c:Ljava/lang/String;

    const-string v1, ""

    const v0, 0x7f09017e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/antivirus/ui/antitheft/i;

    invoke-direct {v5, p0}, Lorg/antivirus/ui/antitheft/i;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/antivirus/ui/antitheft/j;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/antitheft/j;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->i:Landroid/os/Handler;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/4 v4, 0x7

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/16 v4, 0x406

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAH"

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "adminEmail"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lorg/antivirus/AVSettings;->setSendLocation(Z)V

    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/k;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/antitheft/b;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/antitheft/b;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Ljava/lang/String;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Ljava/lang/String;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Z)V
    .locals 4

    const v2, 0x7f090003

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    :cond_0
    if-eqz p1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090035

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090036

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/antitheft/g;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/antitheft/g;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    invoke-direct {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/antitheft/k;->setItems(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/k;->notifyDataSetChanged()V

    iget-boolean v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->setResult(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->setResult(I)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->finish()V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090037

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/antitheft/h;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/antitheft/h;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f090092

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/antivirus/AVSettings;->shouldSendLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setSendLocation(Z)V

    const-string v0, "anti_theft"

    const-string v1, "device_locator"

    const-string v2, "off"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    invoke-virtual {v0}, Lorg/antivirus/ui/antitheft/k;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/antivirus/AVSettings;->setSendLocation(Z)V

    const-string v0, "anti_theft"

    const-string v1, "device_locator"

    const-string v2, "on"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f09017f

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900d3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v0, "XX8R"

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v6, v2}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lorg/antivirus/tools/MailUtils;->getMainMailAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    const-string v2, "XX8R"

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090034

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200ad

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030015

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f080094

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    const v2, 0x7f090003

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/antivirus/ui/antitheft/e;

    invoke-direct {v4, p0, v1, v0}, Lorg/antivirus/ui/antitheft/e;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090004

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/antitheft/f;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/antitheft/f;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method static synthetic d(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v3, 0x7f09017d

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02002f

    invoke-direct {v2, v3, v0, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v0, 0x7f090033

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const v5, 0x7f0200ea

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldSendLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v6

    invoke-static {v0, v6}, Lorg/antivirus/antitheft/u;->b(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v3, v4, v5, v0}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v2, 0x7f09016f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090170

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02002e

    invoke-direct {v0, v2, v3, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->h:Lorg/antivirus/ui/WebViewAdsManager;

    const v1, 0x7f0800ba

    invoke-virtual {v0, p0, v1, p1}, Lorg/antivirus/ui/WebViewAdsManager;->onConfigurationChanged(Landroid/app/Activity;ILandroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->setContentView(I)V

    new-instance v0, Lorg/antivirus/ui/antitheft/k;

    invoke-direct {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lorg/antivirus/ui/antitheft/k;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a:Lorg/antivirus/ui/antitheft/k;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/antitheft/d;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/antitheft/d;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f020006

    const v1, 0x7f020009

    const v2, 0x7f090018

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(IILjava/lang/String;Z)V

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->c:Ljava/lang/String;

    iput-boolean v4, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->g:Z

    invoke-virtual {p0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "register"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->g:Z

    new-instance v1, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v2, "XX8R"

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    invoke-direct {p0, v0, v1}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Ljava/lang/String;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V

    :cond_0
    new-instance v0, Lorg/antivirus/ui/WebViewAdsManager;

    invoke-direct {v0}, Lorg/antivirus/ui/WebViewAdsManager;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->h:Lorg/antivirus/ui/WebViewAdsManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->j:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->f:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->h:Lorg/antivirus/ui/WebViewAdsManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->h:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-virtual {v0}, Lorg/antivirus/ui/WebViewAdsManager;->stop()V

    :cond_2
    iget-boolean v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->j:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->j:Z

    :cond_3
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    return-void
.end method
