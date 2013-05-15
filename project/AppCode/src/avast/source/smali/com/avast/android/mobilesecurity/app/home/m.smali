.class Lcom/avast/android/mobilesecurity/app/home/m;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/home/l;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/home/l;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/m;->a:Lcom/avast/android/mobilesecurity/app/home/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/m;->a:Lcom/avast/android/mobilesecurity/app/home/l;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/home/l;->a:Lcom/avast/android/mobilesecurity/app/home/HomeActivity;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/home/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->a(Landroid/content/Context;)V

    .line 93
    return-void
.end method
