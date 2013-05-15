.class Lcom/avast/android/mobilesecurity/app/messageshield/g;
.super Ljava/lang/Object;
.source "MessageShieldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;Z)Z

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/g;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    .line 191
    return-void
.end method
