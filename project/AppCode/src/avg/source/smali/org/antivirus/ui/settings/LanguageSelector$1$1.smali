.class Lorg/antivirus/ui/settings/LanguageSelector$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/antivirus/ui/settings/LanguageSelector$1;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/settings/LanguageSelector$1;J)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iput-wide p2, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iget-object v0, v0, Lorg/antivirus/ui/settings/LanguageSelector$1;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-virtual {v0}, Lorg/antivirus/ui/settings/LanguageSelector;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;

    iget-wide v1, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->a:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/settings/LanguageSelector$LanguageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const-string v1, "English"

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->mTitle:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iget-object v1, v1, Lorg/antivirus/ui/settings/LanguageSelector$1;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-static {v1, v0, v3}, Lorg/antivirus/Strings;->setLanguage(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    invoke-static {}, Lorg/antivirus/Strings;->setLangLocale()V

    iget-object v0, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iget-object v0, v0, Lorg/antivirus/ui/settings/LanguageSelector$1;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-static {v0}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/antivirus/widget/a/k;->b(Landroid/os/Bundle;)Z

    invoke-virtual {v0}, Lorg/antivirus/widget/a/k;->c()Z

    iget-object v0, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iget-object v0, v0, Lorg/antivirus/ui/settings/LanguageSelector$1;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/settings/LanguageSelector;->setResult(I)V

    iget-object v0, p0, Lorg/antivirus/ui/settings/LanguageSelector$1$1;->b:Lorg/antivirus/ui/settings/LanguageSelector$1;

    iget-object v0, v0, Lorg/antivirus/ui/settings/LanguageSelector$1;->a:Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-virtual {v0}, Lorg/antivirus/ui/settings/LanguageSelector;->finish()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
