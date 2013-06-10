.class public Lorg/antivirus/ui/main/ActivationActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lorg/antivirus/core/EngineSettings;

.field private b:Landroid/widget/CheckBox;

.field private c:Lorg/antivirus/core/b/a;

.field private d:Z

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    new-instance v0, Lorg/antivirus/ui/main/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/main/a;-><init>(Lorg/antivirus/ui/main/ActivationActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->a:Lorg/antivirus/core/EngineSettings;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->a:Lorg/antivirus/core/EngineSettings;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->a:Lorg/antivirus/core/EngineSettings;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/main/ActivationActivity;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/main/ActivationActivity;)V
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f090132

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    const v0, 0x7f02002c

    iget-object v1, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090131

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    const v0, 0x7f02002b

    move v1, v0

    :goto_1
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    const v1, 0x7f090196

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090197

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090198

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090199

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09019a

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09019b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09019c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/URLSpan;

    const-string v3, "http://www.avgmobilation.com/static/terms-mobile"

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f080018

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09019d

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09019e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/URLSpan;

    const-string v3, "http://www.avgmobilation.com/privacy"

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    :cond_1
    move v1, v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lorg/antivirus/ui/main/ActivationActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/ui/main/ActivationActivity;->d:Z

    return p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->setResult(I)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClickActivate(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v5}, Lorg/antivirus/AVSettings;->setPowerSavingMode(Z)V

    invoke-static {v2}, Lorg/antivirus/AVSettings;->setLastBatteryThreshold(I)V

    sget-object v0, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->c:[I

    aget v0, v0, v5

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setPowerSavingThreshold(I)V

    invoke-virtual {p0}, Lorg/antivirus/ui/main/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/antivirus/core/EngineSettings;->setAutoScanSMS(Z)V

    invoke-static {v5}, Lorg/antivirus/AVSettings;->setUrlAntiPhishing(Z)V

    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->setResult(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lorg/antivirus/AVService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "__SAC"

    const/16 v3, 0x6d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "__SAD"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/ui/main/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "lcc"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    iget-boolean v2, v2, Lorg/antivirus/core/b/a;->t:Z

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "title"

    const v4, 0x7f09007e

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "firest_edit_text"

    const v4, 0x7f09007f

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v3, "lcc"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v2}, Lorg/antivirus/ui/main/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lorg/antivirus/ui/main/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ext_a_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v2, v0, Landroid/content/Intent;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->c:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-static {p0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/widget/a/k;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0, v5}, Lorg/antivirus/widget/a/k;->b(Ljava/lang/Boolean;Z)V

    :cond_5
    invoke-virtual {p0}, Lorg/antivirus/ui/main/ActivationActivity;->finish()V

    const-string v0, "activation"

    const-string v2, "activate"

    invoke-static {p0, v0, v2, v1}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {v2}, Lorg/antivirus/AVSettings;->setPowerSavingMode(Z)V

    invoke-virtual {p0}, Lorg/antivirus/ui/main/ActivationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/antivirus/core/EngineSettings;->setAutoScanSMS(Z)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/main/ActivationActivity;->e:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/antivirus/ui/main/ActivationActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->setContentView(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/ActivationActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/main/ActivationActivity;->d:Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
