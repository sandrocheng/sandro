.class Lcom/avast/android/mobilesecurity/app/scanner/al;
.super Ljava/lang/Object;
.source "VirusShieldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/al;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/al;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->a(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/al;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/al;->a:Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;->e(Lcom/avast/android/mobilesecurity/app/scanner/VirusShieldActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0700dd

    invoke-static {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V

    .line 207
    :cond_0
    return-void
.end method
