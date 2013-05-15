.class Lcom/avast/android/mobilesecurity/app/webshield/s;
.super Ljava/lang/Object;
.source "WebshieldSettingsFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "siteCorrect"

    if-eqz p2, :cond_1

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 181
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->e(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->setEnabled(Z)V

    .line 182
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/s;->a:Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;->f(Lcom/avast/android/mobilesecurity/app/webshield/WebshieldSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 186
    :cond_0
    return-void

    .line 180
    :cond_1
    const-string v3, "no"

    goto :goto_0
.end method
