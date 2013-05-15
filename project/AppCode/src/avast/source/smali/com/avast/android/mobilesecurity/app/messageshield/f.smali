.class Lcom/avast/android/mobilesecurity/app/messageshield/f;
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
    .line 172
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/f;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/f;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    .line 176
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/f;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;Z)Z

    .line 177
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/f;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    .line 178
    return-void
.end method
