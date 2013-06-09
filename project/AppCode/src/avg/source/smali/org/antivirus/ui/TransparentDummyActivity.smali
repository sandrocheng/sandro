.class public Lorg/antivirus/ui/TransparentDummyActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/TransparentDummyActivity;->setContentView(I)V

    invoke-virtual {p0}, Lorg/antivirus/ui/TransparentDummyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FEATURE_EXPIRED_TITLE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "FEATURE_EXPIRED_SUBTITLE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "FEATURE_EXPIRED_BODY"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "FEATURE_EXPIRED_ICON"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/antivirus/ui/TransparentDummyActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/antivirus/ui/privacy/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Dialog;

    goto :goto_0
.end method
