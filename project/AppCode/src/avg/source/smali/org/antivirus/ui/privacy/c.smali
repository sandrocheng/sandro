.class final Lorg/antivirus/ui/privacy/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/privacy/PrivacyActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/privacy/PrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/privacy/c;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/privacy/c;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/privacy/c;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const v1, 0x7f0900d4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/c;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/privacy/c;->a:Lorg/antivirus/ui/privacy/PrivacyActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/privacy/PrivacyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
