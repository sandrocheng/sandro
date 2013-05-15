.class Lcom/avast/android/mobilesecurity/app/settings/o;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/settings/m;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/settings/m;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/o;->a:Lcom/avast/android/mobilesecurity/app/settings/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/o;->a:Lcom/avast/android/mobilesecurity/app/settings/m;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->f(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/settings/o;->a:Lcom/avast/android/mobilesecurity/app/settings/m;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/settings/m;->a:Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 246
    return-void
.end method
