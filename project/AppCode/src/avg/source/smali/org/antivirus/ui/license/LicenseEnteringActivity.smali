.class public Lorg/antivirus/ui/license/LicenseEnteringActivity;
.super Lorg/antivirus/ui/BaseToolActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/app/AlertDialog;

.field private d:Landroid/widget/Button;

.field private e:Landroid/os/Handler;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    new-instance v0, Lorg/antivirus/ui/license/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/license/a;-><init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/license/f;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/license/f;-><init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Ljava/util/Collection;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lorg/antivirus/license/qrreader/general/CaptureActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "SCAN_QR"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "SCAN_FORMATS"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v0, 0xc0de

    invoke-virtual {p0, v1, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/high16 v2, -0x8000

    const v0, 0xc0de

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string v0, "SCAN_RESULT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SCAN_RESULT_FORMAT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "SCAN_RESULT_BYTES"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    const-string v1, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :cond_0
    const-string v1, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/16 v9, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->setContentView(I)V

    const-string v4, ""

    const-string v1, ""

    const-string v8, ""

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "firest_edit_text"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "lcc"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v1

    :goto_0
    const/4 v1, 0x1

    const v2, 0x7f020016

    const v3, 0x7f020017

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f080072

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f080037

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    const v2, 0x400000ff

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const v1, 0x7f080074

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lorg/antivirus/core/b/g;

    invoke-direct {v2, p0}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lorg/antivirus/core/b/g;->a:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    const-string v3, "rishuy"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/licensing/ObfuscatedSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    move-object v3, v2

    :goto_1
    const v2, 0x7f080071

    invoke-virtual {p0, v2}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f090142

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lorg/antivirus/ui/license/c;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/license/c;-><init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    invoke-virtual {p0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez v6, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->d:Landroid/widget/Button;

    new-instance v1, Lorg/antivirus/ui/license/d;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/license/d;-><init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lorg/antivirus/ui/license/e;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/license/e;-><init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    move v2, v5

    :goto_3
    add-int/lit8 v8, v7, -0x1

    if-ge v2, v8, :cond_4

    if-lez v2, :cond_3

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v8, v3, v2

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_6
    move-object v6, v0

    move-object v7, v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->c:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->f:Landroid/content/BroadcastReceiver;

    :cond_2
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_2

    invoke-virtual {p0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->onBack()V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x5

    if-eq v1, p1, :cond_1

    const/16 v1, 0x54

    if-ne v1, p1, :cond_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method
