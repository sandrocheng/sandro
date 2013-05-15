.class Lcom/avast/android/mobilesecurity/app/filter/core/o;
.super Ljava/lang/Object;
.source "PhoneStateChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/core/n;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/core/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/o;->b:Lcom/avast/android/mobilesecurity/app/filter/core/n;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/o;->b:Lcom/avast/android/mobilesecurity/app/filter/core/n;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/core/n;->b:Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/o;->b:Lcom/avast/android/mobilesecurity/app/filter/core/n;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/filter/core/n;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/o;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;->a(Lcom/avast/android/mobilesecurity/app/filter/core/PhoneStateChangeReceiver;Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method
