.class Lcom/avast/android/mobilesecurity/app/settings/p;
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
    .line 260
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/settings/p;->a:Lcom/avast/android/mobilesecurity/app/settings/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/settings/p;->a:Lcom/avast/android/mobilesecurity/app/settings/m;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/settings/m;->b(Lcom/avast/android/mobilesecurity/app/settings/m;)V

    .line 264
    return-void
.end method
