.class Lcom/avast/android/mobilesecurity/app/webshield/d;
.super Ljava/lang/Object;
.source "SiteCorrectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V

    .line 88
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->a(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->b(Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;)V

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/webshield/d;->b:Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/webshield/SiteCorrectActivity;->finish()V

    .line 91
    return-void
.end method
