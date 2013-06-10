.class final Lorg/antivirus/ui/antitheft/e;
.super Lorg/antivirus/ui/antitheft/l;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    iput-object p3, p0, Lorg/antivirus/ui/antitheft/e;->a:Landroid/widget/EditText;

    invoke-direct {p0, p1, p2}, Lorg/antivirus/ui/antitheft/l;-><init>(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/e;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    const-string v2, "anti_theft"

    const-string v3, "registered_account"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/antivirus/tools/MailUtils;->isValidMailAddress(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-static {v1}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    invoke-static {v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->d(Lorg/antivirus/ui/antitheft/AntiTheftActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    const v1, 0x7f090032

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901ce

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    iget-object v2, p0, Lorg/antivirus/ui/antitheft/e;->c:Lcom/android/vending/licensing/ObfuscatedSharedPreferences;

    invoke-static {v1, v0, v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Ljava/lang/String;Lcom/android/vending/licensing/ObfuscatedSharedPreferences;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/antitheft/e;->b:Lorg/antivirus/ui/antitheft/AntiTheftActivity;

    const v1, 0x7f09000d

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090005

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/antivirus/ui/antitheft/AntiTheftActivity;->a(Lorg/antivirus/ui/antitheft/AntiTheftActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
